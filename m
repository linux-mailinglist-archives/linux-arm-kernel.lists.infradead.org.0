Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF9DF7286
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 11:52:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MYL7lm59c360Upq0bnjoDTl3oYTuUZpAmyxDncUYfv0=; b=SkrrENPipRmx8FLNIepdWTrDV
	KKQI/f18+UmSwie+Jo+d9c9j7CMg2wEz52Vw5qIblYKgxt5LzkRmHKzVn1E3WVSXQN0yrL1QBLU55
	xaGiSkTrcm+TsJC777otEJY1UbluDkbCQs8cVdyXykCay69I04xuIVGaBgJP/yT7a+apBjVZa1Nsu
	kIbEZeZ/ksjPYwMIaK3C3etHK2a36kDHQ0NfzWqU8PGbqfsBjCs9Epo8CoWSLcPTpxiGm9AGvM5ZF
	pep64pJroNd/OUG6Fl9mnI303JK3ekb/u0xKMTz7uNNtRaGRcde3QqZzHP90N9ijYtZkfMMcHjt/U
	TjnR9hAsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU7J5-0006RE-N9; Mon, 11 Nov 2019 10:52:27 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU7Iu-0006QR-G5
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 10:52:18 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iU7Io-0008PX-1f; Mon, 11 Nov 2019 11:52:10 +0100
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v3 0/5] irqchip/irq-bcm7038-l1 updates
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 11 Nov 2019 12:01:30 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191024201415.23454-1-f.fainelli@gmail.com>
References: <20191024201415.23454-1-f.fainelli@gmail.com>
Message-ID: <12f7194ba09174ad8ebd55f15ce05353@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: f.fainelli@gmail.com, linux-kernel@vger.kernel.org,
 tglx@linutronix.de, jason@lakedaemon.net, robh+dt@kernel.org,
 mark.rutland@arm.com, bcm-kernel-feedback-list@broadcom.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_025216_963005_BA7E05C4 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-24 21:23, Florian Fainelli wrote:
> Hi Marc, Jason, Thomas,
>
> This patch series contains some updates from our internal tree to
> support power management and allow configuring specific instances of 
> the
> brcm,bcm7038-l1-intc to leave some interrupts untouched and how the
> firmware might have configured them.

Applied to irqchip-next.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
