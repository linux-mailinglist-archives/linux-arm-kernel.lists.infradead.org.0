Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2ABE8E05
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:24:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zpPOa3W1PYqu0b2qHeiKUivB3bwcNGZwocNPADuzfYk=; b=thyOz1lbSfo9L3
	FjdapgYaCthyuZFRk++OMPCidwA43L7uTrD1Kg+qaUOn8zgEkuqVHt1iMeYXNvt59j7JcrejpzZ6f
	XHjrUQcQCZ1Vp3P3ab3ytFno/TgM87RV77/FSnb7qbdH5cIOo3sN96oJFfCKYNJv+JP8DgTcUJOKO
	ywQk4rKbPjC96cJrfhuIPJqJ1ZW+aadDujKLJpqKTjI7EMUfMGMvj2Tv5dJaPsxowAH5/uiRPgyw1
	XnkTWWwwsidMAD9uUldEH4ZMEg///0Jjx9DQkdlu86X55UGs9GzkVJ4v2BWBfgaUKxWI5O7o+71q3
	E9a/jmN5QimvOg7Sf62g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPVEd-0004RI-C6; Tue, 29 Oct 2019 17:24:47 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPVER-0004Q1-Vp
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:24:37 +0000
Received: by mail-pl1-x642.google.com with SMTP id q16so7715339pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 10:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=D988j7nxePJvhbrARcDGhWwamnWrYkBVzSnWRIC5KfI=;
 b=xYlRm4ukFhyZyY8yGMyhb9fCZy4Sypc+bwJb/yS5r1Xqo8fiyDFKw295jEd1AzGhIt
 N2SUI+ob8lY7eJV6MMkP6s66E7w8NsTySgW/k7+uVJrFGQ3Owa8Jy0W697G0fB8+Gq3D
 A9lhs5D2EUmeXE4FVENWdKkFaUjRE3PAPwCoBMiuhcB5V5z87LZyFaYPPzp6TX4Dtjgb
 mBxP+++NODKRl1fjWLQDsR/t0mQn7uqw7zGeN9rz2D73eEvrNsD4WU0SThjGh4v+2E0N
 RJ/CRwTo+kdRKrI/wh81tBP+P5rGE3zXKrlhIOM8OtfbPiLx5Ih2MsBBORlozoWy6eLT
 JqvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=D988j7nxePJvhbrARcDGhWwamnWrYkBVzSnWRIC5KfI=;
 b=Yr4c4cJUcLomX6NTWLLdu0WTCxJvofiwJv4LIoG6NX6oxSN2ICneaJ0fjcgVJOMKh/
 jkgLyKAce3qAwh1t6p7NBJOVXMgto1wawRVxLmObO7P0/bDkH1Ib0aCnxlSG3pbo2vlP
 7FS9N/yXwRf76d1dWjogPGIf7Q/iXM4myAkfBDs+5mRTEoyOEtqruIsJfP5v0UJbgT4p
 Nh6AO3bGOi1vOY0mY3M2TD0hdZtjS/5C3fPypadSpLCrxUFZCrcKuIK1jWHHOqFB6NuR
 h1ND+acQ7jy8Vl5rdWWUubWJAe4bgSEtHxP5VZUdoSChS7Sc/NzoRw7x6icQdK8oZsuG
 B1QA==
X-Gm-Message-State: APjAAAWoCPAQvezWcIacAJKUqZJthtV4g0vHpqoijKiCiGUGG8x1yorG
 vHIOo8gGPssSRwdUABNGWNxyMA==
X-Google-Smtp-Source: APXvYqwb/AiauyxMbmB6UShIuFo/DUzUsBmBhxbUgEo7JDSSYS/27dWFw9Km+BO5e2aT7ZNARHN3jg==
X-Received: by 2002:a17:902:9b93:: with SMTP id
 y19mr5168098plp.96.1572369874655; 
 Tue, 29 Oct 2019 10:24:34 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id t1sm4288687pgp.9.2019.10.29.10.24.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 10:24:33 -0700 (PDT)
Date: Tue, 29 Oct 2019 10:24:31 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: cpufeature: Enable Qualcomm Falkor errata 1009
 for Kryo
Message-ID: <20191029172431.GY571@minitux>
References: <20191029060604.1208925-1-bjorn.andersson@linaro.org>
 <20191029115008.GD12103@willie-the-truck>
 <16ccb343-8253-0224-e957-c73f51f110a1@codeaurora.org>
 <d9700408-b11e-b5c8-db9d-f70ccd1bde73@codeaurora.org>
 <20191029171149.GB13281@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029171149.GB13281@willie-the-truck>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_102436_029768_3957EE72 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jeffrey Hugo <jhugo@codeaurora.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 29 Oct 10:11 PDT 2019, Will Deacon wrote:

> On Tue, Oct 29, 2019 at 09:07:53AM -0600, Jeffrey Hugo wrote:
> > On 10/29/2019 7:44 AM, Jeffrey Hugo wrote:
> > > On 10/29/2019 4:50 AM, Will Deacon wrote:
> > > > On Mon, Oct 28, 2019 at 11:06:04PM -0700, Bjorn Andersson wrote:
> > > > > The Kryo cores share errata 1009 with Falkor, so add their model
> > > > > definitions and enable it for them as well.
> > > > > =

> > > > > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > > > ---
> > > > > =A0 arch/arm64/include/asm/cputype.h | 4 ++++
> > > > > =A0 arch/arm64/kernel/cpu_errata.c=A0=A0 | 2 ++
> > > > > =A0 2 files changed, 6 insertions(+)
> > > > > =

> > > > > diff --git a/arch/arm64/include/asm/cputype.h
> > > > > b/arch/arm64/include/asm/cputype.h
> > > > > index b1454d117cd2..8067476ea2e4 100644
> > > > > --- a/arch/arm64/include/asm/cputype.h
> > > > > +++ b/arch/arm64/include/asm/cputype.h
> > > > > @@ -84,6 +84,8 @@
> > > > > =A0 #define QCOM_CPU_PART_FALKOR_V1=A0=A0=A0=A0=A0=A0=A0 0x800
> > > > > =A0 #define QCOM_CPU_PART_FALKOR=A0=A0=A0=A0=A0=A0=A0 0xC00
> > > > > =A0 #define QCOM_CPU_PART_KRYO=A0=A0=A0=A0=A0=A0=A0 0x200
> > > > > +#define QCOM_CPU_PART_KRYO_GOLD=A0=A0=A0=A0=A0=A0=A0 0x211
> > > > > +#define QCOM_CPU_PART_KRYO_SILVER=A0=A0=A0 0x205
> > > =

> > > These are not Kryo part numbers (8998+).=A0 They are Hydra ones.
> > > =

> > > > =

> > > > Can you double-check this, please? My Pixel-1 phone claims somethin=
g with
> > > > 0x201, but I don't know if that's what you were aiming for. It woul=
d be
> > > > great if Qualcomm could document these register fields somewhere,
> > > > especially
> > > > since we're trying to work around their hardware errata for them.
> > > =

> > > I wish I could point you to public documentation.=A0 I don't happen to
> > > know where it is.=A0 As far as 8996 goes, there are quite a few part
> > > numbers.=A0 The ones I could find are:
> > > 201
> > > 205
> > > 211
> > > 241
> > > 251
> > > =

> > > 281 happens to be QDF2432
> > =

> > From asking around, I found someone in the know.  We don't have public
> > documentation, but I can follow up to try to create something - its lik=
ely
> > going to take a bit.  I was given the following information to share.  =
This
> > is specific to Hydra only-
> > =

> > MIDR[15:12] =3D PART[11:8]
> > Hydra and technology node differentiator (0x1 =3D Hydra 16nm; 0x2 =3D H=
ydra
> > 14nm; 0x3 =3D Hydra 10nm)
> > =

> > MIDR[11:10] =3D PART[7:6]
> > This corresponds to the cluster revision number
> > =

> > MIDR[9:8] =3D PART[5:4]
> > Technology variant within the node
> > =

> > MIDR[7:6] =3D PART[3:2]
> > 0b00 =3D 512KB L2
> > 0b01 =3D 1MB L2
> > 0b10 =3D 2MB L2
> > 0b11 =3D 4MB L2
> > =

> > MIDR[5:4] =3D PART[1:0]
> > 0b00 =3D uni-core
> > 0b01 =3D dual-core cluster
> > 0b10 =3D tri-core cluster
> > 0b11 =3D quad-core cluster
> =

> Thanks for digging up the details, Jeffrey. As far as I can tell, our
> 'is_kryo_midr()' function will return 'true' for all of these, so I think
> that's what we should be using for this erratum workaround. Would that wo=
rk
> for you?
> =


Yes, I agree. There's a fair amount of variants involved, so let's go
for is_kryo_midr() (which should be is_hydra_midr()).

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
