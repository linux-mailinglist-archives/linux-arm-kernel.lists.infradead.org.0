Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1237E1C704B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhdPdzHmq5DAWj1abO/iOhsTmmcX4EoPgWW0LBUolm4=; b=oB07zjbcaeYR3M
	MsCTnv7OSPKR2oD7QY8gx7/jyeexdRRe1IWOIQzWFh9zAOSUL+QCNNuYBcdOC53qJmWsI3U5tMLYy
	MGVEQiG0Ah1U3JzZlVN5bdHLLJl1Ql5oS45/DNMR112dkcXeEyV4eL5LRrwcz/81tRAjFDf0B1y90
	xW2gnkbjyA3VFvYG6RcfEPhYtxRIBDZnHAK7fMlYkl9wP5MRhxj5UWJDSGcQbUW32MB4wonH6GU+z
	GQpAWjbCrK42i+1Dn6aqW+5S8YQzS3mp0du6QfPPGDfJiTeAir3w5HPj9QetnrMV2k8/jxcMWCbQR
	LkVlgGhdqoZgv5FuWkZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJCy-0000xW-GW; Wed, 06 May 2020 12:31:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJCn-0000vw-H2; Wed, 06 May 2020 12:31:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A50FF206D5;
 Wed,  6 May 2020 12:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588768277;
 bh=O3I3Jq8U9Mm/K4aGuDavCDPQbee/VahNNCbOqVSXyT0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VY2AeqrDHqC376XgYjNf+vNJ9IeFxGVRDFKHxQrDa+tmTkPjKQmXtjoTWbyQUMOF3
 thH76ZQCRBAxU2Mf2J0I6tDZSVOBhbjA2CGXsC6O+Znja2F9iXHNb7F6Jo0jC0oo81
 vmfG42QBFTaI1SVU8XWH0zt8xvaJ6AkYaxRK/FZA=
Date: Wed, 6 May 2020 13:31:12 +0100
From: Will Deacon <will@kernel.org>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v2 1/2] arm64/crash_core: Export KERNELPACMASK in
 vmcoreinfo
Message-ID: <20200506123112.GF8043@willie-the-truck>
References: <1587968702-19996-1-git-send-email-amit.kachhap@arm.com>
 <20200504171741.GD1833@willie-the-truck>
 <bc5e6fc5-15f4-40bb-4466-816de5912893@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bc5e6fc5-15f4-40bb-4466-816de5912893@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_053117_588180_A2C9AAE2 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 05:32:56PM +0530, Amit Kachhap wrote:
> On 5/4/20 10:47 PM, Will Deacon wrote:
> > On Mon, Apr 27, 2020 at 11:55:01AM +0530, Amit Daniel Kachhap wrote:
> > > diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
> > > index eece20d..32d5900 100644
> > > --- a/arch/arm64/include/asm/compiler.h
> > > +++ b/arch/arm64/include/asm/compiler.h
> > > @@ -19,6 +19,9 @@
> > >   #define __builtin_return_address(val)					\
> > >   	(void *)(ptrauth_clear_pac((unsigned long)__builtin_return_address(val)))
> > > +#else  /* !CONFIG_ARM64_PTR_AUTH */
> > > +#define	ptrauth_user_pac_mask()		0ULL
> > > +#define	ptrauth_kernel_pac_mask()	0ULL
> > 
> > This doesn't look quite right to me, since you still have to take into
> > account the case where CONFIG_ARM64_PTR_AUTH=y but the feature is not
> > available at runtime:
> 
> Yes agree with you here. However the config gaurd is saving some extra
> computation for __builtin_return_address. There are some compiler
> support being added in __builtin_extract_return_address to mask the PAC.
> Hopefully that will improve this code. In the meantime let it be like this.

Does the extra computation matter? Isn't it just a couple of instructions?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
