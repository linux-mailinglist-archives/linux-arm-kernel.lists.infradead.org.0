Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276B2A357D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 13:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D4Tc018ITM5x6KTu4wHuuXm+qULtC5qxUKpG3oYLd3I=; b=oJy4eY9Upw0lpeuHIJmuct0si
	+2ZhhvoohWe/ULfL6t1ec/66vSr3ZDWaju+ipytAv1ErmdmVSddZXvDz2OU/j41e3j2Dbe0gx8qad
	9iafZekfLmKxJwHLYcxK9kwuIr1zare0rftpthF9lrKhOS16b1gK20HvSpczeXx4/wT1MRWFCgIZD
	hcnlYxSbbVPmPMEia9PMa4k5qri6TFl7PLluNbWX+LZi5OyDSzfe8EiJhKlSvwhlD53dYV0HN3FxV
	M3s9xiG7FyJzgYt7FyzMn8YjOHNlkBqaii9MRImkMOQPyvXOUCCpjsuF5LxtTranBYG5N3ibfDAoF
	KVUT72eFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3erp-000336-DL; Fri, 30 Aug 2019 11:14:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3eri-00032j-T8
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 11:14:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id t9so7034433wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 04:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hSYAq4sNLBANo6XopvpmS+ZLIgrnfGchaR+MSg6zRQk=;
 b=swc147YiD1hTkQMVs3j8eSZPwJ75gmdJL7WJvQRhwzGH8P3pqKp0h3fW3Xw/r6aNJJ
 wrOjTwXI26OzyPOTK1VKn1ZFIUIHGUVdxhb0U2TVD8EAsCfD7NZxri2mEgZOEEqRRAAI
 +ZM86IJvvd8JX8uubdjCHzgKGobcPZS+LUWVyRuPdhI/KvXtNVdz6+La/B1ajV1FjHv5
 EsNHEZtlMIjbWhOBh5rE+GerGL8u2fUhKv0gQiZgQXXAjNG3XCngA5DFBw9A4o9rrFlU
 /d/Eq4chNIYY3F9qBlhsOteSqvYNmXQ7UP0J+kbnJGJ5bER/Yulc7yFn7n9wC5jXcKoN
 kQ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hSYAq4sNLBANo6XopvpmS+ZLIgrnfGchaR+MSg6zRQk=;
 b=QbkdITHpVFrUXEY0FNcHNO6J+lkWS1q26YXhoTvSecw1Jq31gvxvgiu1ioVuPUWJmp
 fxQBL+B/1v5PIPkEHFt09bFDYXnnQYmaZYPBoKCz1vhc6KAQaQ2syP7cDBni/khDaAwA
 b0gjlfd8mVGvUusja6Zok9GKjmwd1UCurkZ8/ZL3TyqJOFsx90MRrr83qB51N8kzKVeZ
 tmz01CM6yy7DxvrodcW+lJVaI5dDmpYl867urOiQ6++FVTOnE0uFXtIMNPLsPix3+YSo
 w/UUBEV57pfJQ40nX6szwXR2vTxnJXAocgO7R4+YMicpMxSodgxHNlJQTJthA9RxE0pw
 B+MA==
X-Gm-Message-State: APjAAAVYdLQURp6LdDAnjpHl5o1WX0IzDlC0+TCaAAypW5EW/ELp9hz3
 xwlzYxLLR976/+ibU0vYUlkFUMOp
X-Google-Smtp-Source: APXvYqzf1BOs1k9qqYOdUV8xiUSs3dlXRV9oMWXV0IcM1uJiVGKLXERr7a9JXq6CtrMFQs1FCaAnlg==
X-Received: by 2002:a05:600c:231a:: with SMTP id
 26mr16734766wmo.136.1567163689074; 
 Fri, 30 Aug 2019 04:14:49 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id t14sm6222778wrs.58.2019.08.30.04.14.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 04:14:47 -0700 (PDT)
Date: Fri, 30 Aug 2019 13:14:46 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Krishna Reddy <vdumpa@nvidia.com>
Subject: Re: [PATCH 3/7] iommu/arm-smmu: Add tlb_sync implementation hook
Message-ID: <20190830111446.GC23902@ulmo>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-4-git-send-email-vdumpa@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <1567118827-26358-4-git-send-email-vdumpa@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_041450_963393_2DDF4FAF 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
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
Cc: snikam@nvidia.com, thomasz@nvidia.com, jtukkinen@nvidia.com,
 mperttunen@nvidia.com, praithatha@nvidia.com, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, talho@nvidia.com, olof@lixom.net,
 yhsu@nvidia.com, linux-tegra@vger.kernel.org, treding@nvidia.com,
 avanbrunt@nvidia.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5484413533326776479=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5484413533326776479==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xo44VMWPx7vlQ2+2"
Content-Disposition: inline


--xo44VMWPx7vlQ2+2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 29, 2019 at 03:47:03PM -0700, Krishna Reddy wrote:
> tlb_sync hook allows nvidia smmu handle tlb sync
> across multiple SMMUs as necessary.
>=20
> Signed-off-by: Krishna Reddy <vdumpa@nvidia.com>
> ---
>  drivers/iommu/arm-smmu-nvidia.c | 32 ++++++++++++++++++++++++++++++++
>  drivers/iommu/arm-smmu.c        |  8 +++++---
>  drivers/iommu/arm-smmu.h        |  4 ++++
>  3 files changed, 41 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/iommu/arm-smmu-nvidia.c b/drivers/iommu/arm-smmu-nvi=
dia.c
> index d93ceda..a429b2c 100644
> --- a/drivers/iommu/arm-smmu-nvidia.c
> +++ b/drivers/iommu/arm-smmu-nvidia.c
> @@ -56,11 +56,43 @@ static void nsmmu_write_reg64(struct arm_smmu_device =
*smmu,
>  		writeq_relaxed(val, nsmmu_page(smmu, i, page) + offset);
>  }
> =20
> +static void nsmmu_tlb_sync_wait(struct arm_smmu_device *smmu, int page,
> +				int sync, int status, int inst)
> +{
> +	u32 reg;
> +	unsigned int spin_cnt, delay;
> +
> +	for (delay =3D 1; delay < TLB_LOOP_TIMEOUT; delay *=3D 2) {
> +		for (spin_cnt =3D TLB_SPIN_COUNT; spin_cnt > 0; spin_cnt--) {
> +			reg =3D readl_relaxed(
> +			      nsmmu_page(smmu, inst, page) + status);
> +			if (!(reg & sTLBGSTATUS_GSACTIVE))
> +				return;
> +			cpu_relax();
> +		}
> +		udelay(delay);
> +	}
> +	dev_err_ratelimited(smmu->dev,
> +			    "TLB sync timed out -- SMMU may be deadlocked\n");
> +}
> +
> +static void nsmmu_tlb_sync(struct arm_smmu_device *smmu, int page,
> +			   int sync, int status)
> +{
> +	int i;
> +
> +	arm_smmu_writel(smmu, page, sync, 0);
> +
> +	for (i =3D 0; i < to_nsmmu(smmu)->num_inst; i++)
> +		nsmmu_tlb_sync_wait(smmu, page, sync, status, i);
> +}
> +
>  static const struct arm_smmu_impl nsmmu_impl =3D {
>  	.read_reg =3D nsmmu_read_reg,
>  	.write_reg =3D nsmmu_write_reg,
>  	.read_reg64 =3D nsmmu_read_reg64,
>  	.write_reg64 =3D nsmmu_write_reg64,
> +	.tlb_sync =3D nsmmu_tlb_sync,
>  };
> =20
>  struct arm_smmu_device *nvidia_smmu_impl_init(struct arm_smmu_device *sm=
mu)
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 46e1641..f5454e71 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -52,9 +52,6 @@
>   */
>  #define QCOM_DUMMY_VAL -1
> =20
> -#define TLB_LOOP_TIMEOUT		1000000	/* 1s! */
> -#define TLB_SPIN_COUNT			10
> -
>  #define MSI_IOVA_BASE			0x8000000
>  #define MSI_IOVA_LENGTH			0x100000
> =20
> @@ -244,6 +241,11 @@ static void __arm_smmu_tlb_sync(struct arm_smmu_devi=
ce *smmu, int page,
>  	unsigned int spin_cnt, delay;
>  	u32 reg;
> =20
> +	if (smmu->impl->tlb_sync) {
> +		smmu->impl->tlb_sync(smmu, page, sync, status);
> +		return;
> +	}
> +

Wouldn't it work if you replaced all calls of __arm_smmu_tlb_sync() by
smmu->impl->tlb_sync() and assign __arm_smmu_tlb_sync() as default for
devices that don't need to override it? That makes this patch slightly
larger, but it saves us one level of indirection.

> +
>  	arm_smmu_writel(smmu, page, sync, QCOM_DUMMY_VAL);
>  	for (delay =3D 1; delay < TLB_LOOP_TIMEOUT; delay *=3D 2) {
>  		for (spin_cnt =3D TLB_SPIN_COUNT; spin_cnt > 0; spin_cnt--) {
> diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> index 9645bf1..d3217f1 100644
> --- a/drivers/iommu/arm-smmu.h
> +++ b/drivers/iommu/arm-smmu.h
> @@ -207,6 +207,8 @@ enum arm_smmu_cbar_type {
>  /* Maximum number of context banks per SMMU */
>  #define ARM_SMMU_MAX_CBS		128
> =20
> +#define TLB_LOOP_TIMEOUT		1000000	/* 1s! */
> +#define TLB_SPIN_COUNT			10
> =20
>  /* Shared driver definitions */
>  enum arm_smmu_arch_version {
> @@ -336,6 +338,8 @@ struct arm_smmu_impl {
>  	int (*cfg_probe)(struct arm_smmu_device *smmu);
>  	int (*reset)(struct arm_smmu_device *smmu);
>  	int (*init_context)(struct arm_smmu_domain *smmu_domain);
> +	void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
> +			 int status);

Can't page, sync and status all be unsigned?

Thierry

--xo44VMWPx7vlQ2+2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1pBSYACgkQ3SOs138+
s6GamhAAm9NP9HwE2om5HwmvNF1hvSJvdYGIs8Hb+6SK7HaysBo/UItRO7PatkiM
I3Dy8/4A8G8usJbwN7+MgFMqLU+aaEA+4iqHdAm8e/4OSZhzjiLu5/hhKAlUgCUn
booaUKUu9PdhunwyuWoS3Baz3pCTjJgGEr4BdtT/DpikFZXLzouG5r+n7bp85B8a
M3n7J3nd/1eWpPUGohLnK74ZE/rtX9p6/s9U6aJE8dwoyIulMGVlW+iV42fEfVCS
FREDgmrVme/6QjpvsHZYNtkUNcwI0DvoTsJrCUnp7m5NCpXkXTZY9YkwcYOAeeAZ
sLQ464W8Fh+s8m0ZyEmOx6TnDClrFzOyyT/CxMB+B0P7Ro/1xvDVEt/UBdsVj6cY
NIw15iqmh6y9OYxQr5xFiHm5VjOnTuKUESkUKTp5TDgoP9aAYNxJM+sOgK++3k2Q
Tw38fWKoLd3Ar6EuvnGbmVXSpqWVmfNxTS8BRUfeLtadXdrMitKO+Qlz5ZTI3GW7
A5RFA+n8dgTNQaOKgm+s1e6lm4EIvb9ifKrDziuHTW1Zvc3JBQUO8zuuctaR6IAl
mS4wyFCLdVWFQiVUM05HxdjxWGu5Dd2ZKStGAkkMt2epWtDV6Hg/WP22D0F+iYHN
4x3H7TF6Qu9D/ZkLt7wt5KjA4v6irlhrb8ZFF/rCTTRAijtUKtg=
=lYk9
-----END PGP SIGNATURE-----

--xo44VMWPx7vlQ2+2--


--===============5484413533326776479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5484413533326776479==--

