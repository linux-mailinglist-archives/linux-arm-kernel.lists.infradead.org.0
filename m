Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37600180759
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:49:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XUwNEhULOA/qLsZdgNkVIPdB5FvZJIBIy0NHgQ2igWg=; b=B8WvMlna100QbP
	R9QyDl/muDvRU8wxPzrMR6ogoVQeJv+b2uCdO04AYJFLLLc6l/04tukIWsDGSALHbHBeLS5gTtbgy
	eSaCdh8XwV6sfAiXbf/OCaczzGqlNDUq5Hi0H/+mq/t7X+Tt0HoAgvh9xsKD3XdFZc7f10X8XBGK7
	Uz4SUel/gSkUepfdLUom7KFie9eefkWlMT0PHaC7F0LD/j7Zba3DNvNmQqEEUJidal7a4oulrv4Yn
	Xk7YZf8v8evlbcjaleflqcvOvQbiLcMcehWbcROYpofUJQ7EMEujbpRw9mvK3GEPgw9zvkf4vA/lf
	84KIM79yjBm74XVVbPwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjwB-0007UL-UH; Tue, 10 Mar 2020 18:49:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjuE-0005ld-FG
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 18:47:07 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A9D920873;
 Tue, 10 Mar 2020 18:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583866025;
 bh=Z+esqeekOvcK2NlG82c5Na805Zd2SVU9aa9FMtHbcgI=;
 h=From:To:Cc:Subject:Date:From;
 b=Dw5jTlja9XP7O1fqEFD4L6MkTZj+EU7cladxfLVf1k3Mr1RiCGHzVo3nhaFgaHf7U
 wUAFvkpY4VEBekOd8lyR2m2h+fuu1upgLipXpZTTjDNd9ImS1InEsHxa7rgnLNXoRN
 hhnTZMOUzweHmK8HjbFWXz67vuHr3w13DZ+eqleQ=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jBjuB-00Bi21-U7; Tue, 10 Mar 2020 18:47:04 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/4] irqchip: Random irq_retrigger fixes
Date: Tue, 10 Mar 2020 18:46:53 +0000
Message-Id: <20200310184653.23204-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, tglx@linutronix.de, jason@lakedaemon.net,
 linux@arm.linux.org.uk, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 yuzenghui@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_114706_580165_D1297B65 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Russell King <linux@arm.linux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As I was investigating some ugly retrigger locking issues (see patch 4),
I managed to find three occurences of irq_retrigger callbacks that return
the wrong value, leading to a SW retrigger on top of the HW one.

Not really a big deal, but definitely worth fixing.

Marc Zyngier (4):
  irqchip/atmel-aic: Fix irq_retrigger callback return value
  irqchip/atmel-aic5: Fix irq_retrigger callback return value
  ARM: sa1111: Fix irq_retrigger callback return value
  irqchip/gic-v4: Provide irq_retrigger to avoid circular locking
    dependency

 arch/arm/common/sa1111.c         | 7 +++++--
 drivers/irqchip/irq-atmel-aic.c  | 2 +-
 drivers/irqchip/irq-atmel-aic5.c | 2 +-
 drivers/irqchip/irq-gic-v3-its.c | 6 ++++++
 4 files changed, 13 insertions(+), 4 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
