Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AB57D4D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 07:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szjg3WtYo+3I4xOQjdp2J63R1G292McGaIs3JhYGcxA=; b=A5nU/yXVBq8oeA
	CfwBxm4nw7rqixhVlpHnp6pmmfmHpt83iquCTVgfEPM+tYBYrJJGPpS76ZMr2aoqNt7+kWMzOAomS
	P2nXpmU4J/FmXv1dc8/rcd2zv1r4lhRPOCFNt6MyxIkVExagf2JjGig36Nng6OtNTIB7dKKlIyFUs
	nZqv9sVLmFHygutG1G897Sodw9OjahmJNZHwuvDuX/opr2F6Bpbj3QcnYEticlHpFU7Z/g/T3NLOI
	2ZscIHVhPc0MUJ8JWa1eJPTPIPD7cd6T3wjPKfPSNslrYVG3aylFxvbUGHem0T5YwEvp7/klrlaGZ
	HGRlsDMYXRjzQpL8VmvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht3Vm-0006H7-Nh; Thu, 01 Aug 2019 05:20:22 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht3Vf-0006GS-KF
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 05:20:16 +0000
Received: by mail-pg1-x544.google.com with SMTP id i18so33422003pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 22:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ByilU0oHOLjKLDAdcNFMrrRyGOR7w5s2w9IJUNLzc/Q=;
 b=TM1wwx99Yv8fB9IJPm1UXWFNGGOC0TweHVPmdsTIlI/yvJ2ElLvfQsmO+TZzISOqPo
 GIDdHMBkaRsgHN/m3BWiv9ZNU8YG3ZPMESEWB7VxaazWDK6YChN7mVWERKuwqPKR3/o9
 cCNTVq5AgTJVNHdQovjcMTrAL8XcHMQQStVbau9jgTNVMtDmJiCz8G4SvPS9Mn/+8DG/
 RwNRfllVFdVkbBw2F6wM4UpKl1mYyvjeNa8+ues2fbx+vtFN7QJ9ej+lrkRfCnz1Cr5i
 3bQhPaRxLvaifPJERA1cTcM57Mtvun2e8AMLY+OmlmT3pWFNX7ngiiD+luI7w0T4UqAM
 K+0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ByilU0oHOLjKLDAdcNFMrrRyGOR7w5s2w9IJUNLzc/Q=;
 b=FDP7FWcfinf6aj28gVKFHX7r+OGPDr6Rz71npnaJVSxCnEYY1vromL2vgL4g5f3iqk
 aND6KzKO9iqQH4OcMia6ZQpsYSgDTY5M8sP5JHByFwMqSAbwKphPnRGm/vjwEHoMTarA
 ru1vW2bpJ5De16QBCw+KQrkFQNcyVCOzt5kGuvOjxWUMYLBRUWjB5w155Fzitmrpo1J+
 8gTneV+l06Ay3eHT4+AgqYqULMi0Qe2Ptk2HvEz1TeNOsnnVWLI+aIpEdzhIXLOUtTbx
 HkovvsQKRtXe3miYyV8YQP9vHUYuLAHl+YQTZhrRiZix4ZiiUtlKMHdGZ2tP3bn6UMBU
 15Bw==
X-Gm-Message-State: APjAAAX/HoOsizWQeVLGlfZc3iRKTuv5Ttrtx9hw+N3dNLKmiHURfkpk
 WYimouYl7wu4ve/VHaBbzQ2YwTc0lOo=
X-Google-Smtp-Source: APXvYqx+yL0UJaSz+q9AN3LrrV43T11zeoEPEKnpQ9C6/VjWRF61rdKAr4tBlUF2gIlwAswV0U/SOw==
X-Received: by 2002:a65:64cf:: with SMTP id t15mr113670369pgv.88.1564636813755; 
 Wed, 31 Jul 2019 22:20:13 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id r13sm98686393pfr.25.2019.07.31.22.20.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 22:20:12 -0700 (PDT)
Date: Thu, 1 Aug 2019 10:50:11 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v4.4 V2 24/43] arm64: Add skeleton to harden the branch
 predictor against aliasing attacks
Message-ID: <20190801052011.2hrei36v4zntyfn5@vireshk-i7>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <4349161f0ed572bbc6bff64bad94aa96d07b27ff.1562908075.git.viresh.kumar@linaro.org>
 <20190731164556.GI39768@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731164556.GI39768@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_222015_673842_20FB0D28 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31-07-19, 17:45, Mark Rutland wrote:
> On Fri, Jul 12, 2019 at 10:58:12AM +0530, Viresh Kumar wrote:
> > From: Will Deacon <will.deacon@arm.com>
> > 
> > commit 0f15adbb2861ce6f75ccfc5a92b19eae0ef327d0 upstream.
> > 
> > Aliasing attacks against CPU branch predictors can allow an attacker to
> > redirect speculative control flow on some CPUs and potentially divulge
> > information from one context to another.
> > 
> > This patch adds initial skeleton code behind a new Kconfig option to
> > enable implementation-specific mitigations against these attacks for
> > CPUs that are affected.
> > 
> > Co-developed-by: Marc Zyngier <marc.zyngier@arm.com>
> > Signed-off-by: Will Deacon <will.deacon@arm.com>
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > [ v4.4: Changes made according to 4.4 codebase ]
> > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> 
> [...]
> 
> >  /* id_aa64pfr0 */
> > +#define ID_AA64PFR0_CSV2_SHIFT		56
> 
> Note: CSV3 is bits 63-60, 
> 
> > diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> > index 474b34243521..040a42d79990 100644
> > --- a/arch/arm64/kernel/cpufeature.c
> > +++ b/arch/arm64/kernel/cpufeature.c
> > @@ -83,7 +83,8 @@ static struct arm64_ftr_bits ftr_id_aa64isar0[] = {
> >  };
> >  
> >  static struct arm64_ftr_bits ftr_id_aa64pfr0[] = {
> > -	ARM64_FTR_BITS(FTR_STRICT, FTR_EXACT, 32, 32, 0),
> > +	ARM64_FTR_BITS(FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_CSV2_SHIFT, 4, 0),
> > +	ARM64_FTR_BITS(FTR_STRICT, FTR_EXACT, 32, 28, 0),
> 
> This line should be:
> 
> 	ARM64_FTR_BITS(FTR_STRICT, FTR_EXACT, 32, 24, 0),
> 
> ... as it was in the v4.9 backbort, making it cover bits 55:32. As in
> this patch, it covers 59:32, overlapping with CSV2.

Fixed thanks.

> We also need to cater for bits 63:60. In the v4.9 backport, the meltdown
> bits were applied first, so nothing special was necessary.
> 
> What's the plan w.r.t. meltdown mitigations and v4.4?

I haven't started looking at meltdown patches yet and so that will be
done at a later point of time, if at all done by me. I have been asked
to backport both Spectre and Meltdown though to 4.4.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
