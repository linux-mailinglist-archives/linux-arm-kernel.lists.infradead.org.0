Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 219F710DC9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Vo4XLTTliQ0c6lEzBhniun06dst7r/0GYeAI2w2jXY=; b=lt2ktefdgD4UP+
	xnJ+JN8tI3/uNL1tANQf/ihqsN9XS77QToA+zqE7demNvZNLgfUPcCaWM2pWNdaBMSOOv9cwWByzO
	PqwYU55J2PYpLUqORDs1G8XzpsEt9rC68mGKpkfP3Pc2awMAOxv6qp4A6nur/yNGR/SDcQcgBMOlJ
	Oa7VDpBa58sS9qD1zCZlWYzH+tS+3GI4Y/Renpe08Ihyxj38QgAurqxFjHdM5I5M2MRvobGOoMEjE
	KjMPJ0X0qIBjj8VqD50h+aZR3vfond4rb0gwajcmvUJFoE5CQ8mR6D6NQXmT3rJ7yxEggt4xV4eXB
	EsNwi+h2x3E6FYi4hPlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvYa-0004Y6-Og; Wed, 01 May 2019 20:10:20 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvX9-0004SR-M4
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 20:08:53 +0000
Received: by mail-ot1-f65.google.com with SMTP id a10so48949otl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 13:08:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MhhNnHbahaGD1ttZfVO4EhM/RU7xN3mKfU+xr7R87yk=;
 b=jIjgguNHYWtDcNmLWRi6v+KSeT7aH4U4+Fyp2/Kp0qobpYd0gMrjDLbNxroerMaibD
 ddnVIniQSmISDkmPSCmEKk2zrN0EJMvuTjyXFqgvDxFLB3x/rrY7bavGmVImstX0b4kH
 /0Cmoh9eEiuriHDSLMAbOkjWaIMtfT5oOKehTACZ/YRkL94PpX3dXYrg+338MVSbxU1D
 9o2fWmVIq/IuhkxockpuNw5A+Gb4TwsMdRNmWDNTI9weF9eyxsSdp+SerG2TvGX5/cK5
 icn5XgwNdHZ/eQOru5LWBBOaFSw/XXZY5VrjZd4izSqJ2cWGr/pUPPV8JFxqRdaWjK4r
 m1dw==
X-Gm-Message-State: APjAAAXs2yiYAR5yrpiLglwraLBeLRtOY/P3LC86WZHjzWw9UzH363RV
 goysF//ZQM/EYpsF1RhhwxbvvkEbaEs=
X-Google-Smtp-Source: APXvYqxkxh+t9pKId2l0kOY2agg+X8afwPjMSIIUCFLgLYKopXltnk0j1mEf04EpvXwxjpB6H5g8Dg==
X-Received: by 2002:a9d:6c83:: with SMTP id c3mr30647062otr.362.1556741330449; 
 Wed, 01 May 2019 13:08:50 -0700 (PDT)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com.
 [209.85.167.172])
 by smtp.gmail.com with ESMTPSA id y9sm16242121otk.20.2019.05.01.13.08.49
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 13:08:49 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id t81so14651397oig.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 13:08:49 -0700 (PDT)
X-Received: by 2002:aca:4e83:: with SMTP id c125mr62690oib.13.1556741329634;
 Wed, 01 May 2019 13:08:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190427071031.6563-1-laurentiu.tudor@nxp.com>
 <20190427071031.6563-2-laurentiu.tudor@nxp.com>
In-Reply-To: <20190427071031.6563-2-laurentiu.tudor@nxp.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 1 May 2019 15:08:38 -0500
X-Gmail-Original-Message-ID: <CADRPPNRGxEz_YXhzrJPCZrz_Xc-9Fh21tgbjERoOazMMQmiVbA@mail.gmail.com>
Message-ID: <CADRPPNRGxEz_YXhzrJPCZrz_Xc-9Fh21tgbjERoOazMMQmiVbA@mail.gmail.com>
Subject: Re: [PATCH v2 1/9] soc/fsl/qman: fixup liodns only on ppc targets
To: Laurentiu Tudor <laurentiu.tudor@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_130852_318598_6281BF05 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: madalin.bucur@nxp.com, Netdev <netdev@vger.kernel.org>,
 Roy Pledge <roy.pledge@nxp.com>, lkml <linux-kernel@vger.kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, camelia.groza@nxp.com,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 David Miller <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 27, 2019 at 2:14 AM <laurentiu.tudor@nxp.com> wrote:
>
> From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
>
> ARM SoCs use SMMU so the liodn fixup done in the qman driver is no
> longer making sense and it also breaks the ICID settings inherited
> from u-boot. Do the fixups only for PPC targets.
>
> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>

Applied for next.  Thanks.

Leo
> ---
>  drivers/soc/fsl/qbman/qman_ccsr.c | 2 +-
>  drivers/soc/fsl/qbman/qman_priv.h | 9 ++++++++-
>  2 files changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/soc/fsl/qbman/qman_ccsr.c b/drivers/soc/fsl/qbman/qman_ccsr.c
> index 109b38de3176..a6bb43007d03 100644
> --- a/drivers/soc/fsl/qbman/qman_ccsr.c
> +++ b/drivers/soc/fsl/qbman/qman_ccsr.c
> @@ -596,7 +596,7 @@ static int qman_init_ccsr(struct device *dev)
>  }
>
>  #define LIO_CFG_LIODN_MASK 0x0fff0000
> -void qman_liodn_fixup(u16 channel)
> +void __qman_liodn_fixup(u16 channel)
>  {
>         static int done;
>         static u32 liodn_offset;
> diff --git a/drivers/soc/fsl/qbman/qman_priv.h b/drivers/soc/fsl/qbman/qman_priv.h
> index 75a8f905f8f7..04515718cfd9 100644
> --- a/drivers/soc/fsl/qbman/qman_priv.h
> +++ b/drivers/soc/fsl/qbman/qman_priv.h
> @@ -193,7 +193,14 @@ extern struct gen_pool *qm_cgralloc; /* CGR ID allocator */
>  u32 qm_get_pools_sdqcr(void);
>
>  int qman_wq_alloc(void);
> -void qman_liodn_fixup(u16 channel);
> +#ifdef CONFIG_FSL_PAMU
> +#define qman_liodn_fixup __qman_liodn_fixup
> +#else
> +static inline void qman_liodn_fixup(u16 channel)
> +{
> +}
> +#endif
> +void __qman_liodn_fixup(u16 channel);
>  void qman_set_sdest(u16 channel, unsigned int cpu_idx);
>
>  struct qman_portal *qman_create_affine_portal(
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
