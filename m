Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAC11D56E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 18:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AtYJE84gW4ucd4OOEAQs+OP7o77ICYedch8VvdKw0q8=; b=NKhpazayfCmLRQ
	nPsEfpNBTWl0s1ljkFwOTaKMnoKQ+5suDb/VCP9LlVJyTjz1AcTSbTdnv8R98aAAn2CXZfp3X1V0f
	J4zhNCdJTAGWofgbRPM6QhU3LLzBO2/ucHcNc+zrSndBbC86pfW0uW1xj16FF6btuTwMUUEx/gZJq
	qtt+VtZZCU4njkSFeiKswjd7DXas0mvtV1MiYxGV8263k+B8kVRut/fI51UU1IcUjkwkEPZPOEHlk
	bduJYNfyLHlEy8y2AuKg4FH1VRaPxcuyBf4YKyVrNiKjF61mISii/vb5Oak72zbZWwJiTEtr3T6D3
	p8hUL68iSgLjRAOtYA6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdf3-0004sn-9l; Fri, 15 May 2020 16:58:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdet-0004rp-NA
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 16:58:04 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 041CF206C0;
 Fri, 15 May 2020 16:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589561883;
 bh=Jr8RWO2hebBgByv9c7P4kyiawF8c8Qgaavm6YeRiLs0=;
 h=From:To:Cc:Subject:Date:From;
 b=cKKw8kejPfZBRQDJkXrbTZUYlBpzB0WtP1ZPDXuFHRUkglSDPf0KJHjrRZyFCidrn
 oqITzG9xZod2XWzfkdyWj9MunZLEz+sPTbXtC5Vf9nxtUP0T6kqf26b6thkHg7kDQ+
 0fJgIXoNsNdK/9UuVofb8U8ziQh+4qATer/Ttu3c=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jZder-00Cdec-CP; Fri, 15 May 2020 17:58:01 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/2] irqchip/gic-v3-its: Balance LPI affinity across CPUs
Date: Fri, 15 May 2020 17:57:50 +0100
Message-Id: <20200515165752.121296-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, john.garry@huawei.com,
 chenxiang66@hisilicon.com, wangzhou1@hisilicon.com, ming.lei@redhat.com,
 jason@lakedaemon.net, tglx@linutronix.de, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_095803_772295_C13C96D2 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jason Cooper <jason@lakedaemon.net>, chenxiang <chenxiang66@hisilicon.com>,
 John Garry <john.garry@huawei.com>, Ming Lei <ming.lei@redhat.com>,
 Zhou Wang <wangzhou1@hisilicon.com>, Thomas Gleixner <tglx@linutronix.de>,
 kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When mapping a LPI, the ITS driver picks the first possible
affinity, which is in most cases CPU0, assuming that if
that's not suitable, someone will come and set the affinity
to something more interesting.

It apparently isn't the case, and people complain of poor
performance when many interrupts are glued to the same CPU.
So let's place the interrupts by finding the "least loaded"
CPU (that is, the one that has the fewer LPIs mapped to it).
So called 'managed' interrupts are an interesting case where
the affinity is actually dictated by the kernel itself, and
we should honor this.

* From v3:
  - Always pre-decrement/post-increment affinity to avoid useless
    changes of affinity (John)
  - Don't use the node mask as a superset of the proposed affinity
    as the ACPI tables can't really describe this (John)
  - Rebased on v5.7-rc5

* From v2:
  - Split accounting from CPU selection
  - Track managed and unmanaged interrupts separately

Marc Zyngier (2):
  irqchip/gic-v3-its: Track LPI distribution on a per CPU basis
  irqchip/gic-v3-its: Balance initial LPI affinity across CPUs

 drivers/irqchip/irq-gic-v3-its.c | 170 ++++++++++++++++++++++++++-----
 1 file changed, 143 insertions(+), 27 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
