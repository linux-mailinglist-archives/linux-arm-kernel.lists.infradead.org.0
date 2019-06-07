Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2697383FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 08:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZfcQt73RbItDpWY7Nnaj6iucmxUbom8G++XdX2bR/50=; b=ThrBtgE+Nxt+Vi
	DC3xh/EDxRIhvpqcxSQN/i3HstXe5i43uxxL83l27dimOalqMtTRFuAg/Q5oBxhNU/o/UYlum8veo
	mY5mJSoewIMW1ghjxkg9fi7HheHIvCkn+flXLnB5rASJIsISaYTbSS83+N1C3IIQQnNOmq0w40eij
	2jc0suNOEBKV/gBmF6ntqn17J49jF7BJv43Ajns038D9Ri8aS1w9MCTIQacyAcQoHAqNcRdg6ih9+
	nrAIS9+ws7XYnSLGPqmEyNq+ccvHPyZpfu67xjTzc53vwwUlNegP2o9zqOCcwtD2irdkBcu47EYIC
	ggAgIOy/IMhztRs0UbVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ7vx-00015c-AM; Fri, 07 Jun 2019 06:01:01 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ7vh-00014W-0S
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 06:00:46 +0000
Received: by mail-pl1-x644.google.com with SMTP id go2so388106plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 23:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sNeYqqj7A5jsZjI23KJv1FicJVOUSHOJooPoBup8FeM=;
 b=I+DO+bXX3/U0c5/tJe9YZdOfd9awmUKsKrvLQ6RM5e7ZPbpVdNQ6p467NhbVoMoarQ
 ZTrXnuYi/GBo+EETAJBGN7Pbc4eyxedjJgINnFW2Ljv5sN9z7vOHs6OG+Gfjx+nUFata
 r/SNJ3fb38yconRfVgfs5zO505iUUyDV4G/jHwXknqC1Y7Z1U8rC0v+rvDJyZqa/2SDY
 dFJFBnKgq948wzi26ZcXJ+LY/RNrc3C7DV8bcYap3C5SQTdSlGOwcqCDiElfo5zU+Fni
 UXim+fepv1U8X+0j4guVpm6nZtJBCDBnu6scNE5hLkz6jskKt97gH5ftrO8QkfNEvFqD
 KgJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sNeYqqj7A5jsZjI23KJv1FicJVOUSHOJooPoBup8FeM=;
 b=sRgwVHhiKXSxSNU2uBpHVNjNbR588w88FD63w/Hy4lJ29qK0gISZVYM3mbm3uzPzyT
 kO6jfArSX7ueW0dhDl330L4Kb+XvzwF2Bl7WDs6klMn1C4CiyY2QaaJGEVOyIENKCTfv
 etLiWUHfG7TGUSnjTnawr+HINNeObY69lg8p4HzBJxbHOtYVGYP6GzVMhkXoO3cYfBm8
 dQ69igW4XK/4KF/RZvCEQA5oYhuVG3vD40gBAZv38EtW1UzYhxEiZMWa4C3h4tRw2okg
 F1mbgqxOvej3RpJV1ZE+18zkDziBcLa241Wno1b6HZVr/2JuMdRe8+xQlnTxpB519mv4
 4mvA==
X-Gm-Message-State: APjAAAWtx04tR9weh+XBRcf/G9CLacnQ0Fh8TxtsxTCOmJBBRgRoLvnS
 5tlP24BMdXThrSNJeU0VFrJu4FGuGiU=
X-Google-Smtp-Source: APXvYqxOAWcArkn2cVZZlioTLt/qQbVmliWaDP7qBUla76loZRkDUMwoTY7MzTYQenlQtRiEFq12yQ==
X-Received: by 2002:a17:902:6a4:: with SMTP id
 33mr53039518plh.338.1559887241528; 
 Thu, 06 Jun 2019 23:00:41 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id s42sm1593160pjc.5.2019.06.06.23.00.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 23:00:40 -0700 (PDT)
Date: Fri, 7 Jun 2019 11:30:37 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH] KVM: arm64: Drop 'const' from argument of vq_present()
Message-ID: <20190607060037.eaof3hllyombxlhc@vireshk-i7>
References: <699121e5c938c6f4b7b14a7e2648fa15af590a4a.1559623368.git.viresh.kumar@linaro.org>
 <20190604095915.GW28398@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604095915.GW28398@e103592.cambridge.arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_230045_060049_D8C278DD 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-06-19, 10:59, Dave Martin wrote:
> On Tue, Jun 04, 2019 at 10:13:19AM +0530, Viresh Kumar wrote:
> > We currently get following compilation warning:
> > 
> > arch/arm64/kvm/guest.c: In function 'set_sve_vls':
> > arch/arm64/kvm/guest.c:262:18: warning: passing argument 1 of 'vq_present' from incompatible pointer type
> > arch/arm64/kvm/guest.c:212:13: note: expected 'const u64 (* const)[8]' but argument is of type 'u64 (*)[8]'
> > 
> > The argument can't be const, as it is copied at runtime using
> > copy_from_user(). Drop const from the prototype of vq_present().
> > 
> > Fixes: 9033bba4b535 ("KVM: arm64/sve: Add pseudo-register for the guest's vector lengths")
> > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> > ---
> >  arch/arm64/kvm/guest.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
> > index 3ae2f82fca46..78f5a4f45e0a 100644
> > --- a/arch/arm64/kvm/guest.c
> > +++ b/arch/arm64/kvm/guest.c
> > @@ -209,7 +209,7 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
> >  #define vq_mask(vq) ((u64)1 << ((vq) - SVE_VQ_MIN) % 64)
> >  
> >  static bool vq_present(
> > -	const u64 (*const vqs)[KVM_ARM64_SVE_VLS_WORDS],
> > +	u64 (*const vqs)[KVM_ARM64_SVE_VLS_WORDS],
> >  	unsigned int vq)
> >  {
> >  	return (*vqs)[vq_word(vq)] & vq_mask(vq);
> 
> Ack, but maybe this should just be converted to a macro?

I will send a patch with that if that's what you want.

Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
