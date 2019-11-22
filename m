Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAAE1071BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 12:53:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MuO6gjQ2AC+bEj7Z8fcxocP9V50KmJcJ/Inzq7cjcg8=; b=VIHHdcaaXh4YWD
	6AGUZUJNePwkYKIOTPIQjbJ/4fVhQIDpm5cpkcOii6yQzTQOuTyo+ZOlbN7nnw5ERcMbU9zVXWY8M
	oCZqdS2nn8wJKhgDshhxujACTmfio6nRUXety7s1kpqVW+XeXn4sMHYtdg+qHmmzJ/ZCS/H8fG9hy
	kfiwCGy5iO/CHN5FMAGHaA+Efa6roAvsluGrE5qfzqrAINacsRNkrJRBQeyYLt1hYwHlxy7R31CBd
	HKYs12AE3vwbcW6gAhSfrOo2WZvIRgvw68Ky4kpW+T4xq1+tuSsGDjX6Y6ipiFr65wLgHZBjrlKjG
	LoKHOLNhc5kBBYbSSnCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY7VD-00032z-BA; Fri, 22 Nov 2019 11:53:31 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY7V1-00031u-Hj
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 11:53:21 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 22 Nov 2019 20:53:16 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id F1575603AB;
 Fri, 22 Nov 2019 20:53:16 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Fri, 22 Nov 2019 20:53:34 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id B562B4031E;
 Fri, 22 Nov 2019 20:53:16 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 88DF0120456;
 Fri, 22 Nov 2019 20:53:16 +0900 (JST)
Date: Fri, 22 Nov 2019 20:53:16 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH 2/2] PCI: uniphier: Add checking whether PERST# is
 deasserted
In-Reply-To: <20191121164705.GA14229@e121166-lin.cambridge.arm.com>
References: <20191108163026.0DFB.4A936039@socionext.com>
 <20191121164705.GA14229@e121166-lin.cambridge.arm.com>
Message-Id: <20191122205316.297B.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_035319_695394_30F8E1C1 
X-CRM114-Status: GOOD (  22.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Jassi Brar <jaswinder.singh@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Lorenzo,

On Thu, 21 Nov 2019 16:47:05 +0000 <lorenzo.pieralisi@arm.com> wrote:

> On Fri, Nov 08, 2019 at 04:30:27PM +0900, Kunihiko Hayashi wrote:
> > > However, If I understand correctly, doesn't your solution only work some
> > > of the time? What happens if you boot both machines at the same time,
> > > and PERST# isn't asserted prior to the kernel booting?
> > 
> > I think it contains an annoying problem.
> > 
> > If PERST# isn't toggled prior to the kernel booting, PERST# remains asserted
> > and the RC driver can't access PCI bus.
> > 
> > As a result, this patch works and deasserts PERST# (and EP configuration will
> > be lost). So boot sequence needs to include deasserting PERST#.
> 
> I am sorry but I have lost you. Can you explain to us why checking
> that PERST# is deasserted guarantees you that:
> 
> - The EP has bootstrapped
> - It is safe not to toggle it again (and also skip
>   uniphier_pcie_ltssm_enable())
> 
> Please provide details of the HW configuration so that we understand
> what's actually supposed to happen and why this patch fixes the
> issue you are facing.

I tried to connect between the following boards, and do pci-epf-test:
 - "RC board": UniPhier ld20 board that has DWC RC controller
 - "EP board": UniPhier legacy board that has DWC EP controller

This EP has power-on-state configuration, but it's necessary to set
class ID, BAR sizes, etc. after starting up.

In case of that starting up RC board before EP board, the RC driver
can't establish link. So we need to boot EP board first.

 - EP/RC: power on both boards

 - EP: start up the kernel on EP board

 - EP: according to the following guide, configurate pci-epf-test
      https://www.kernel.org/doc/html/latest/PCI/endpoint/pci-test-howto.html

 - RC: start up the kernel on RC board

At that time, because RC driver toggled PERST#, the EP configuration
values are initialized to the power on state. After that, RC can't
access EP collectly.

I think there is a following solution:

 - EP/RC: power on both boards

 - RC: [deassert PERST# by boot firmware]

 - EP: start up the kernel on EP board

 - EP: configurate pci-epf-test

 - RC: start up the kernel on RC board [without toggling PERST# by this patch]

Deasserting PERST# before EP configuration avoids the issue, however,
this relies on boot firmware, so I think this isn't enough to solve
the issue.

Thank you,

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
