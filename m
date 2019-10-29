Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4616E8DC7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:12:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SoSXgSTaAOTKMSL1H7Xp844u7cDaOY6ojTK+XLD3wsA=; b=UuecJsJ+wnpmXj
	NnhPfw9FQa1u6YhG/dAZv0CiFajDVCrETbccvRhx7NJT6tqErMeGckuROWmkOBcDltkpk/4l7E78U
	qXsBGzNH519GnNcdEzAdBOh6SMiU1HUkBNgrbStPPItspFLUKxe81FZTiC3J2WeA/MURFkhH9gwox
	J3CAMCT8JMlV9vVIA07n9jdcGrWC04k56shujEDA84gJc0vLODg4u668c9ChcQ6k/7rOD151FZhFM
	d2WyaSkmaGbSLq8D7TvPRG3bCI6ZtdO3b4teo8t3O0XowhAA67BtcUtkL+lO8Oye3eahAJtelLLwJ
	uwjKGeSojHJhjZ7+bUvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPV2M-0006U8-Pd; Tue, 29 Oct 2019 17:12:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPV2B-0006TU-0d
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:11:56 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 753E0204FD;
 Tue, 29 Oct 2019 17:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572369114;
 bh=a8J3E226HwdH6en4L5EYVMCVtE8D6UkmSmKh15CsHkM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yPyaZrqI7TnypsOIHD2s0sr0X3sXzLl2lGc1Kbeo8orKWeXGHH4ILHvmzDRXhz43B
 i9h/DFmButTJM/AO+b2b90WlCcSBoX+I7bIjtXXfq4djA4rsIBdQ25KynfeO+l1VCr
 FKl5yba81M9QrkCCaM5kfWtuPF5vWDo7aPzygc6k=
Date: Tue, 29 Oct 2019 17:11:50 +0000
From: Will Deacon <will@kernel.org>
To: Jeffrey Hugo <jhugo@codeaurora.org>
Subject: Re: [PATCH] arm64: cpufeature: Enable Qualcomm Falkor errata 1009
 for Kryo
Message-ID: <20191029171149.GB13281@willie-the-truck>
References: <20191029060604.1208925-1-bjorn.andersson@linaro.org>
 <20191029115008.GD12103@willie-the-truck>
 <16ccb343-8253-0224-e957-c73f51f110a1@codeaurora.org>
 <d9700408-b11e-b5c8-db9d-f70ccd1bde73@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d9700408-b11e-b5c8-db9d-f70ccd1bde73@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_101155_113230_06F1C017 
X-CRM114-Status: GOOD (  20.68  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 09:07:53AM -0600, Jeffrey Hugo wrote:
> On 10/29/2019 7:44 AM, Jeffrey Hugo wrote:
> > On 10/29/2019 4:50 AM, Will Deacon wrote:
> > > On Mon, Oct 28, 2019 at 11:06:04PM -0700, Bjorn Andersson wrote:
> > > > The Kryo cores share errata 1009 with Falkor, so add their model
> > > > definitions and enable it for them as well.
> > > > =

> > > > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > > ---
> > > > =A0 arch/arm64/include/asm/cputype.h | 4 ++++
> > > > =A0 arch/arm64/kernel/cpu_errata.c=A0=A0 | 2 ++
> > > > =A0 2 files changed, 6 insertions(+)
> > > > =

> > > > diff --git a/arch/arm64/include/asm/cputype.h
> > > > b/arch/arm64/include/asm/cputype.h
> > > > index b1454d117cd2..8067476ea2e4 100644
> > > > --- a/arch/arm64/include/asm/cputype.h
> > > > +++ b/arch/arm64/include/asm/cputype.h
> > > > @@ -84,6 +84,8 @@
> > > > =A0 #define QCOM_CPU_PART_FALKOR_V1=A0=A0=A0=A0=A0=A0=A0 0x800
> > > > =A0 #define QCOM_CPU_PART_FALKOR=A0=A0=A0=A0=A0=A0=A0 0xC00
> > > > =A0 #define QCOM_CPU_PART_KRYO=A0=A0=A0=A0=A0=A0=A0 0x200
> > > > +#define QCOM_CPU_PART_KRYO_GOLD=A0=A0=A0=A0=A0=A0=A0 0x211
> > > > +#define QCOM_CPU_PART_KRYO_SILVER=A0=A0=A0 0x205
> > =

> > These are not Kryo part numbers (8998+).=A0 They are Hydra ones.
> > =

> > > =

> > > Can you double-check this, please? My Pixel-1 phone claims something =
with
> > > 0x201, but I don't know if that's what you were aiming for. It would =
be
> > > great if Qualcomm could document these register fields somewhere,
> > > especially
> > > since we're trying to work around their hardware errata for them.
> > =

> > I wish I could point you to public documentation.=A0 I don't happen to
> > know where it is.=A0 As far as 8996 goes, there are quite a few part
> > numbers.=A0 The ones I could find are:
> > 201
> > 205
> > 211
> > 241
> > 251
> > =

> > 281 happens to be QDF2432
> =

> From asking around, I found someone in the know.  We don't have public
> documentation, but I can follow up to try to create something - its likely
> going to take a bit.  I was given the following information to share.  Th=
is
> is specific to Hydra only-
> =

> MIDR[15:12] =3D PART[11:8]
> Hydra and technology node differentiator (0x1 =3D Hydra 16nm; 0x2 =3D Hyd=
ra
> 14nm; 0x3 =3D Hydra 10nm)
> =

> MIDR[11:10] =3D PART[7:6]
> This corresponds to the cluster revision number
> =

> MIDR[9:8] =3D PART[5:4]
> Technology variant within the node
> =

> MIDR[7:6] =3D PART[3:2]
> 0b00 =3D 512KB L2
> 0b01 =3D 1MB L2
> 0b10 =3D 2MB L2
> 0b11 =3D 4MB L2
> =

> MIDR[5:4] =3D PART[1:0]
> 0b00 =3D uni-core
> 0b01 =3D dual-core cluster
> 0b10 =3D tri-core cluster
> 0b11 =3D quad-core cluster

Thanks for digging up the details, Jeffrey. As far as I can tell, our
'is_kryo_midr()' function will return 'true' for all of these, so I think
that's what we should be using for this erratum workaround. Would that work
for you?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
