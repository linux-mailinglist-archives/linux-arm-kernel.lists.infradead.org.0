Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC98C1BF41E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1cnmkGge6f8TV5YDJzMk85jGyFthrebhtW8zH6wMJ4=; b=ft6y85yTp+8bO1
	vby+Wq5BITTSNprMmCRIb6+J0ZS/8kCsEff1MND9qm62WxFH/iUkwJE940HJKxd1esfAFz/zkJfmZ
	4OJG6QKaWtIF9S7QLSxYL0VQZevRsWLLNF5p4t+GZltfzEnrRce1mREj7YiyoNxsfYpIFTEamFdEh
	oXuyZkRO4pZf1aJidQbhKH8dlAZtGsdnQkFh9hmIiYnUiD/yuuyxNWMNZu2mk+ZvEB7d46yKDNSK5
	RGs46z1RgviklDqZi/5emy2XK1Gz+xK0vf+ERQ6rOS0JmuVqe1lXD1t/liiOEbSTP+2DkvRTjp97Z
	SEMqsF2IG3ZeeeAlQweg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5Td-0003c4-TT; Thu, 30 Apr 2020 09:27:29 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5TI-0003aW-Dg
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 09:27:10 +0000
Received: by mail-wr1-x443.google.com with SMTP id x18so5991390wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 02:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=USjIGVhWOh7s7FNpGRPObIs3K/tQd5FXhV8J+B/lAQk=;
 b=sev0RdWrDsI1k4SKZ2ClO+eqqDlLSi/X3Hq0Hwm6NuW4/E6/aLIqyMzcZvqhZR+J6c
 eUIxWtZR77N0Pv0Y4R55NsjIra2VIWrslAhrIuH8cj2aH2FILfWnwTBDEmoP6X8xpHGr
 +pMIL/nORGtb23Q7Gqw1TB/rFmceMz+uJjfFgyg1sCEq2z+mKuKq4qZ1Ag1RY1dNnLkW
 Iu9WJ/r57i1hI3vsLD5RojTkpnMVzKno357mok+W7VqLE1DFmANm0WRM7Vbj7N9jd3oV
 yid5orRXgtJKlQQXUA728cybZ6Yb6/ifuOSzoo44eK4HoAM1FYIWrV3cWUh97laqY/wV
 cD6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=USjIGVhWOh7s7FNpGRPObIs3K/tQd5FXhV8J+B/lAQk=;
 b=BOmIFQtxLQ5sx9DBSdQZw8Tvx3S+/qsakQJLNW6vLTpKp9cB536KngTB4MSqolRR+s
 dX2dUwu9joXoSe4JwrGqbheGgHBcewrkdgW/y0tO9AAmaJ6cv/KxACblV0YvkzU2T5Ln
 phLFqg+tDSUjvY7HIMMkitmVcq79rCoTxbgy2xK+I8EtYzB33ya/tCx7cQlQCko1NN1i
 h7SByGJs+f+gTYA1L9Tb0U3pVR6mFc3nDhrPU+/PyioXYpxb129Klqnx12bXnXinqPDu
 vklcTIEPqK3ScdymgBr5q+iWdSVcZCOILDkcckOfxMeOyGy+KP+qw1weCf5M1NHRDKKn
 8UNw==
X-Gm-Message-State: AGi0PubG5FX3c9ewATTKgmhwD27dlzDpNwzP8AMg+GR0OND3IT48z6Sr
 FnPtXJfmAntivE1gJ1Rv/0g7VA==
X-Google-Smtp-Source: APiQypJ/7f3QnMFmCrai7poM2/q9I4XlvyLP2DcEusXJJVO9kgxdMGnvXsEUZaGfBg2W8rHlAmov6A==
X-Received: by 2002:adf:cc8d:: with SMTP id p13mr3124810wrj.114.1588238823516; 
 Thu, 30 Apr 2020 02:27:03 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id q10sm3158515wrv.95.2020.04.30.02.27.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 02:27:02 -0700 (PDT)
Date: Thu, 30 Apr 2020 10:26:58 +0100
From: Andrew Scull <ascull@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2] arm64: Unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
Message-ID: <20200430092658.GF15669@google.com>
References: <20200422161346.67325-1-ascull@google.com>
 <20200429212120.GC8604@willie-the-truck>
 <5f391a75142a8ae2263e52d37d73526d@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5f391a75142a8ae2263e52d37d73526d@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_022708_489292_F2C1CA13 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Steven Price <steven.price@arm.com>, James Morse <james.morse@arm.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 10:16:03AM +0100, Marc Zyngier wrote:
> On 2020-04-29 22:21, Will Deacon wrote:
> > Hi Andrew,
> > 
> > On Wed, Apr 22, 2020 at 05:13:46PM +0100, Andrew Scull wrote:
> > > Errata 1165522, 1319367 and 1530923 each allow TLB entries to be
> > > allocated as a result of a speculative AT instruction. In order to
> > > avoid mandating VHE on certain affected CPUs, apply the workaround to
> > > both the nVHE and the VHE case for all affected CPUs.
> > > 
> > > Signed-off-by: Andrew Scull <ascull@google.com>
> > > CC: Marc Zyngier <maz@kernel.org>
> > > CC: James Morse <james.morse@arm.com>
> > > CC: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > CC: Will Deacon <will@kernel.org>
> > > CC: Steven Price <steven.price@arm.com>
> > > ---
> > > * From v1 <20200327143941.195626-1-ascull@google.com>:
> > >   - Restored registers in VHE path
> > 
> > This largely looks good to me, but I don't understand these bits:
> > 
> > > diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
> > > index 8a1e81a400e0..651820f537fb 100644
> > > --- a/arch/arm64/kvm/hyp/switch.c
> > > +++ b/arch/arm64/kvm/hyp/switch.c
> > > @@ -138,7 +138,7 @@ static void __hyp_text
> > > __activate_traps_nvhe(struct kvm_vcpu *vcpu)
> > > 
> > >  	write_sysreg(val, cptr_el2);
> > > 
> > > -	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
> > > +	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
> > 
> > It seems like you consistently replace cpus_have_final_cap() with
> > cpus_have_const_cap(), but I can't figure out why that's required.
> 
> Seems like a bad conflict resolution. We definitely want to keep the
> final_cap checks for anything that will run at EL2, and probably
> everywhere else (if capabilities are not final by the time we hit KVM,
> we have bigger problems to solve).
> 
> Thanks,
> 
>         M.
> -- 
> Jazz is not dead. It just smells funny...

Indeed, those weren't the 5 characters my eye was interested in. Looks
like we'll be having a v3..

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
