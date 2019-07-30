Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBD57A41F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:28:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/fjZL7DZ9zS08JRDuvjtGGV/ML2E8GnTNVu4Kt6jVw=; b=cvpXni2nuL0IVs
	VXYWfWCqztfXtfy28ll0K/MOHJhX9ZJy0lpyxUm+xuRh56cbyJvsbcPvyas4nef0IvOPvDE9yeDks
	vYvnuMNkDkd6DuFib7L7X15A/z7kk/anXNe7SguhrnF7CjGb6QEgwYAYj1v13EVCy3dKCgIdwevvz
	uGkP09FlOsBR/kZ95/9P0JIRwcqyTDoqxXrDHPmQVGFwumV8hPvKuIERybprSDLJzAgXfppC9huHf
	6d5f2PogFsVbmz6JevgI8Zp/4SNrg9zpY/541Vt1wbvt9VqMnj5poiQBenk34Yc+tkNWbtCfzAvY0
	YHVplorH4NrCuWwUam2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOR8-0003D8-UN; Tue, 30 Jul 2019 09:28:50 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOQp-0003CY-M9
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:28:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eOdp7yrij87Xefi1BK0fLqCGB7I+gB65SxV1pD0puy8=; b=cC7izDYouyiZZCgG23OUZdEg2
 SaSuYzS+UPphWsOhv4HLEZHMP+2zv/Fuq6a3o0xx0gIHDRlHZQBnc5p5DAdDr/un8MauFVnXCKDMP
 LCdAiNZSXfpx8Xw1YzCThvZukJy+uH2/lvDMS5g3pGHT/UexzALEMMdjbYLQ4m0/5asSCAZiL7mh0
 8TSe7hA2z7rlh0iGV3fWt3fiT7OtI+ziAtuEb3g86AKz0ZL7Giuu8pPed+vBY+4aiPtBj2JZery7a
 U9BVF5Hsvzf391WmCqPJnIOtN8wbfOIjtkdbwsEUoXlH3pBB1xYTsGPAyHWYiPw74yC/3OFm6zJ5u
 wmCvWgurQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46318)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hsOQk-0004H5-IV; Tue, 30 Jul 2019 10:28:26 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hsOQi-00026H-6R; Tue, 30 Jul 2019 10:28:24 +0100
Date: Tue, 30 Jul 2019 10:28:24 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v4 9/9] arm_pmu: Use NMIs for PMU
Message-ID: <20190730092824.GY1330@shell.armlinux.org.uk>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
 <1563351432-55652-10-git-send-email-julien.thierry@arm.com>
 <20190730091143.GX1330@shell.armlinux.org.uk>
 <95e39e79-e400-f516-c6c6-f2c15b39d26b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <95e39e79-e400-f516-c6c6-f2c15b39d26b@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_022831_721654_2F52B0C7 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, peterz@infradead.org, liwei391@huawei.com,
 will.deacon@arm.com, acme@kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, sthotton@marvell.com, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 10:18:16AM +0100, Julien Thierry wrote:
> Hi Russell,
> 
> On 30/07/2019 10:11, Russell King - ARM Linux admin wrote:
> > On Wed, Jul 17, 2019 at 09:17:12AM +0100, Julien Thierry wrote:
> >> Add required PMU interrupt operations for NMIs. Request interrupt lines as
> >> NMIs when possible, otherwise fall back to normal interrupts.
> >>
> >> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
> >> Tested-by: Shijith Thotton <sthotton@marvell.com>
> >> Cc: Will Deacon <will.deacon@arm.com>
> >> Cc: Mark Rutland <mark.rutland@arm.com>
> > 
> > This has no effect on 32-bit ARM?
> > 
> 
> It shouldn't. request_nmi()/request_percpu_nmi() should fail on a
> platform that doesn't have the NMI (through IRQ framework) support .
> Currently, only arm64 with GICv3 provides that support.
> 
> So the pmu driver should fallback to request_irq()/request_percpu_irq()
> for a 32-bit ARM kernel platforms and work as before. I can clarify that
> in the commit message if there is a respin (or if maintainers agree to
> amend).

Has it been tested with a 32-bit guest kernel running on ARM64?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
