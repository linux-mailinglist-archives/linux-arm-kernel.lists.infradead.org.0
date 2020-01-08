Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7133413417F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 13:17:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHsKU/9QnEj8xa/uDh71Yxt/8fIyv2LV/o++gh06bDE=; b=doSyqmBbjUU9IV
	gaJLud3oAFjphD0KVRpDae00/fJ91Z1JLJkAbNpCyKH7w9TCng2Fm/Y0wITKY6yWtgSyfUldMOcgj
	T8Rz1rcBdmDkvD7+CIBMgn7a6GGDK5/v0m+OKyJ9Ga72Vswoy34mSMWpIuVY/vObUQgrwoFMpxrjl
	GU8AKI0VuJP+9+OpDMAD2RB+3JO+taAbML0n7Gi8sWNom/gNj+MXNy+PD1rS9cLEwzv3rPQv0OfrH
	K/xAL0QiRVXC8VaM+0sE3zMUlOqlOBaYcK9vd0ZW+QqMBBAe+hJXcWaV9ZF4FSgCw6o8QgRtlRlPF
	TmXpIA8BA2GzaWUz+huw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipAHH-0002Ea-Up; Wed, 08 Jan 2020 12:17:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipAH9-0002ED-Kz
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 12:17:28 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D8C4206DB;
 Wed,  8 Jan 2020 12:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578485846;
 bh=zUPwOMSMpywyPowBn56LEAJh1P5uDz5XgjKI4h4lfyA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iG0Yahb4H1tSh2r9UbZpv2jS3RBig+gBJSpq3r7i4I4PVj7FRmFzh9z+BsA2tVMmo
 FWFoHUOLLFSzIWrPI83vZDFFntXWUBoggCr+pDvh5MUVwXqNY+xwfVGqJ8NtmOCSmD
 PNpRxQG8fIFCSN9arqqALlhF01mEvhLPpg6/vLV4=
Date: Wed, 8 Jan 2020 12:17:17 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 3/3] arm64: mm: Use modern annotations for assembly
 functions
Message-ID: <20200108121717.GA16398@willie-the-truck>
References: <20200106195818.56351-1-broonie@kernel.org>
 <20200106195818.56351-4-broonie@kernel.org>
 <20200107144357.GA29001@willie-the-truck>
 <20200107164234.GE4877@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107164234.GE4877@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_041727_706736_7D0969F1 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 04:42:34PM +0000, Mark Brown wrote:
> On Tue, Jan 07, 2020 at 02:43:58PM +0000, Will Deacon wrote:
> > On Mon, Jan 06, 2020 at 07:58:18PM +0000, Mark Brown wrote:
> > > In an effort to clarify and simplify the annotation of assembly functions
> > > in the kernel new macros have been introduced. These replace ENTRY and
> > > ENDPROC and also add a new annotation for static functions which previously
> 
> > Can we remove ENDPIPROC after this patch?
> 
> We can eventually, there's more stuff coming (very soon) for kernel/ and
> kvm/ - once those are in I've got a patch sitting ready to remove
> ENDPIPROC.  That's basically the only patch for any of this stuff with
> any interdependencies so I'm sending stuff as it's ready.

Hmm, but with this series applied I don't see any remaining users of
ENDPIPROC. Or are you saying that there are new users in the pipeline?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
