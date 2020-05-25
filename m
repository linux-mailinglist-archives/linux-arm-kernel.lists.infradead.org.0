Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6381D1E0B46
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 12:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1GVH9XPn5Z7AlbApNUbvpJ7c8SEhjlZpCEM7cVVBeg=; b=qR1LBgvbG0M6FC
	R/5SzcQBEvYKMvXG8p9PZUYSHYxi5jhHhYAGPWE7h1COfZ/OBxY9ztF+H73h+OfCGiknC+EMoFy0e
	fwvwYxg3e0ZUCyNE/diQNHHjtUykVyNM25JsT5U8JLVE7nzVmZTmc8AMTWBwEysfVrV6R721WfLjZ
	OaG3oRwiyXipcfXQlZ3a9Gbn5N8r2cA77uqO6yCSRJ6YA/KNLX8B9Oa0aDYCMZCBVTF5/LbYMHKEk
	E+xrgjagofRq+RZGCXhAtIZA8XPsSVMl54uQHBrpekKOdOn4oyc4qVWmj+SfDqwqG++J/je0PrxHL
	44lAE6O/mrMP75errQDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9wz-0008Eo-9d; Mon, 25 May 2020 10:03:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9wo-0008EP-V7
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 10:03:08 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4FBA22078B;
 Mon, 25 May 2020 10:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590400986;
 bh=QWmuTSIms62P0ZYptnY7ALuk/JmBEu/4ATlRN4c6WG0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YoeaMU/SbkGTLQ6xEGnChjsBOp7rUe0dCs/y8iSUU/j0luFmUeT6GKsjn3haZyRtj
 esNhyCzUmzfMJr3FIkTfhh/xvomBTNj9kwLz2NvBBCfjaLAU+uPkfumTxgUwvYIC1p
 YCGQ1+5H4EtfEf49lgv2DmL8Doeg63qBXnKuGnxE=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jd9wm-00F7o7-Fo; Mon, 25 May 2020 11:03:04 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-kernel@vger.kernel.org,
 Valentin Schneider <valentin.schneider@arm.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] irqchip/gic-v2,
 v3: Drop extra IRQ_NOAUTOEN setting for (E)PPIs
Date: Mon, 25 May 2020 11:02:59 +0100
Message-Id: <159040068512.385398.8830285697021452481.b4-ty@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521223500.834-1-valentin.schneider@arm.com>
References: <20200521223500.834-1-valentin.schneider@arm.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, valentin.schneider@arm.com,
 linux-arm-kernel@lists.infradead.org, tglx@linutronix.de, jason@lakedaemon.net
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_030307_021303_94068ACA 
X-CRM114-Status: GOOD (  11.35  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 23:35:00 +0100, Valentin Schneider wrote:
> (E)PPIs are per-CPU interrupts, so we want each CPU to go and enable them
> via enable_percpu_irq(); this also means we want IRQ_NOAUTOEN for them as
> the autoenable would lead to calling irq_enable() instead of the more
> appropriate irq_percpu_enable().
> 
> Calling irq_set_percpu_devid() is enough to get just that since it trickles
> down to irq_set_percpu_devid_flags(), which gives us IRQ_NOAUTOEN (and a
> few others). Setting IRQ_NOAUTOEN *again* right after this call is just
> redundant, so don't do it.
> 
> [...]

Applied to irq/irqchip-next, thanks!

[1/1] irqchip/gic-v2, v3: Drop extra IRQ_NOAUTOEN setting for (E)PPIs
      commit: cc86432aa8cc5a81f99d79eea2a29099da694df3

Cheers,

	M.
-- 
Without deviation from the norm, progress is not possible.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
