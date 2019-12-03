Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 509C210FBA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 11:18:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ibbT6W02G2txmZ/lUIQBs7SGjHsrDZ6Feitlh0DV64=; b=rmM+8Gf1db9DxD
	+TL91NOmkVGJMdCrmW56qBMb1Kpiwu+nCaj0k/6TxC41dU5MY/oeOSCd7unMp49ccAFkQfR2jdq2v
	pKB7dwa4yRxVPOa33NPgFSpItTS7inAaxB0ahW3b6RfQg595R5flYBxhPCHrXQyYvBCb0lQ2RFHNd
	ITKDsxa9DBRNDNCeebnJOAEi4OUmAM59UJpsY0rjPKJ0idNAZ46nYOO97H7+P6FPH+IgQrIhnN+hA
	oEL/iNTFsyw0lqt5NwTajFFJmxe2Sif7Zz/OkcMzaL8bioCD/dGyzm9+4Bhmcfz9Y/MZZuCVST7Zl
	yh4zg7NDPhhkFxwPPFhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic5Fx-0001N1-2E; Tue, 03 Dec 2019 10:18:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic5FU-0001LY-MT; Tue, 03 Dec 2019 10:17:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CBC562068E;
 Tue,  3 Dec 2019 10:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575368260;
 bh=5ySN3e5aUDRbhiQLCPyxs/vWIneLIy4KAn4LJwCq6Qs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kMScm8GSzW4KeDWfSNSKzpGeRbVVCFvwkHxu3o+HncYmc1ZMD9uM8+flajxYG3OSj
 /3ciRNYMo3BiZw+E7eMtEjiYd7+acvkY5XsvqH5JshHzGPG8kNDM9bW1JHSNuNlDOg
 pVuRor6iCytI5GH4UIuH6jiB6DLUtCW0mKX2yae8=
Date: Tue, 3 Dec 2019 10:17:20 +0000
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v5 3/3] hwrng: add mtk-sec-rng driver
Message-ID: <20191203101720.GD6815@willie-the-truck>
References: <1574864578-467-1-git-send-email-neal.liu@mediatek.com>
 <1574864578-467-4-git-send-email-neal.liu@mediatek.com>
 <CADnJP=uhD=J2NrpSwiX8oCTd-u_q05=HhsAV-ErCsXNDwVS0rA@mail.gmail.com>
 <1575027046.24848.4.camel@mtkswgap22>
 <CAKv+Gu_um7eRYXbieW7ogDX5mmZaxP7JQBJM9CajK+6CsO5RgQ@mail.gmail.com>
 <20191202191146.79e6368c@why>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202191146.79e6368c@why>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_021740_795914_312B84D5 
X-CRM114-Status: GOOD (  22.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 wsd_upstream <wsd_upstream@mediatek.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Sean Wang <sean.wang@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Neal Liu <neal.liu@mediatek.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal Guo =?utf-8?B?KOmDreaZtik=?= <Crystal.Guo@mediatek.com>,
 Lars Persson <lists@bofh.nu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 07:11:46PM +0000, Marc Zyngier wrote:
> On Mon, 2 Dec 2019 16:12:09 +0000
> Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
> 
> > (adding some more arm64 folks)
> > 
> > On Fri, 29 Nov 2019 at 11:30, Neal Liu <neal.liu@mediatek.com> wrote:
> > >
> > > On Fri, 2019-11-29 at 18:02 +0800, Lars Persson wrote:  
> > > > Hi Neal,
> > > >
> > > > On Wed, Nov 27, 2019 at 3:23 PM Neal Liu <neal.liu@mediatek.com> wrote:  
> > > > >
> > > > > For MediaTek SoCs on ARMv8 with TrustZone enabled, peripherals like
> > > > > entropy sources is not accessible from normal world (linux) and
> > > > > rather accessible from secure world (ATF/TEE) only. This driver aims
> > > > > to provide a generic interface to ATF rng service.
> > > > >  
> > > >
> > > > I am working on several SoCs that also will need this kind of driver
> > > > to get entropy from Arm trusted firmware.
> > > > If you intend to make this a generic interface, please clean up the
> > > > references to MediaTek and give it a more generic name. For example
> > > > "Arm Trusted Firmware random number driver".
> > > >
> > > > It will also be helpful if the SMC call number is configurable.
> > > >
> > > > - Lars  
> > >
> > > Yes, I'm trying to make this to a generic interface. I'll try to make
> > > HW/platform related dependency to be configurable and let it more
> > > generic.
> > > Thanks for your suggestion.
> > >  
> > 
> > I don't think it makes sense for each arm64 platform to expose an
> > entropy source via SMC calls in a slightly different way, and model it
> > as a h/w driver. Instead, we should try to standardize this, and
> > perhaps expose it via the architectural helpers that already exist
> > (get_random_seed_long() and friends), so they get plugged into the
> > kernel random pool driver directly.
> 
> Absolutely. I'd love to see a standard, ARM-specified, virtualizable
> RNG that is abstracted from the HW.

Same here. I hacked up some initial code for doing this with KVM [1], but
I'd much rather it was part of a standard service specification so that
we could use the same interface for talking to the firmware and the
hypervisor.

Will

[1] https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=kvm/hvc

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
