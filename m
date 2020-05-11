Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 797311CD690
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 12:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ilI38STsID77GBO/fewX8xwcykxTC6m8bQ0nqHsx5GI=; b=kkweFYQMo1rXBX
	5Ww5lk8sF38xxHjGBYWXc5S4qhTwGQVZ8F7Rb4DErAYUXyrkWMy5LTaqjE0kUUl+DFfFpy6TNZw6s
	0xgweDr6Eb/w1KiyGifbTU+JuenHc/1x+ecNbLkALavlp5kgyPmSXsrYY+KwCJKOy2/v+kbuSdWcz
	d+1L2nNhtGWxGP5c/r8ChsuxIQnMQw4/XsvfISmXU9irvTzrYSUNZJUPuNyvBaWmrDK04kzvwKI4f
	UmTnvoepgZ+MnFtVm3WEAm0iIfII9o4J7WNGh2yjD7ASP5fleF69lmL6pdUMGnLIxaNBmeTYW4+hc
	QVMhrsT3FdxUE2IgfnzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5gk-0008Bu-VO; Mon, 11 May 2020 10:29:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5gc-0008BE-TZ
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 10:29:28 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E97C02080C;
 Mon, 11 May 2020 10:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589192966;
 bh=/HtkDEUSJNCGLykcJeF51FbbiEEPPZDAt/jaVHdhRWc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J0vuf+ZotQeRxth/qHzk0monizmO/oZrY0XlTEMp3GOvKC2C9ZGzbBQsmEje6tfhV
 drhODojTl9CKLTGN3jGxEvkg0amm8cChelSejV1audJqLmta+BCdVclouAv4z/FqLZ
 5UsKODnRShHCuOk9nIvWvHXpIdZ2tVePfXGqPstU=
Date: Mon, 11 May 2020 11:29:21 +0100
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 06/15] arm64: kvm: Move __smccc_workaround_1_smc to .rodata
Message-ID: <20200511102921.GA18310@willie-the-truck>
References: <20200430144831.59194-1-dbrazdil@google.com>
 <20200430144831.59194-7-dbrazdil@google.com>
 <20200511110459.1fcf4db7@why>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511110459.1fcf4db7@why>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_032926_973552_F6B8E286 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 David Brazdil <dbrazdil@google.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 11:04:59AM +0100, Marc Zyngier wrote:
> On Thu, 30 Apr 2020 15:48:22 +0100
> David Brazdil <dbrazdil@google.com> wrote:
> 
> > This snippet of assembly is used by cpu_errata.c to overwrite parts of KVM hyp
> > vector. It is never directly executed, so move it from .text to .rodata.
> > 
> > Signed-off-by: David Brazdil <dbrazdil@google.com>
> > ---
> >  arch/arm64/kvm/hyp/hyp-entry.S | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
> > index 5986e1d78d3f..7e5f386c5c2d 100644
> > --- a/arch/arm64/kvm/hyp/hyp-entry.S
> > +++ b/arch/arm64/kvm/hyp/hyp-entry.S
> > @@ -364,6 +364,11 @@ SYM_CODE_END(__bp_harden_hyp_vecs)
> >  	.popsection
> >  
> >  #ifndef __HYPERVISOR__
> > +	/*
> > +	 * This is not executed directly and is instead copied into the vectors
> > +	 * by install_bp_hardening_cb().
> > +	 */
> > +	.pushsection	.rodata
> >  SYM_CODE_START(__smccc_workaround_1_smc)
> 
> I wonder whether we should keep the SYM_CODE_START() annotation or not.
> It feels weird to say "code" in a rodata section, and the alignment
> doesn't matter as we copy it in place, as you noticed.

The BTI patches hook these, but I don't see that being relevant for a
vector entry as PSTATE.BTYPE is zapped to 0.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
