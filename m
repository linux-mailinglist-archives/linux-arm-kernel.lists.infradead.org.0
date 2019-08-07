Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A668431B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 06:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ro96Yg/d1W7ATsSADCgJ6DlThsUILNrEe/aE1Gvx9hw=; b=FtvZ8Rf7zLQtHT
	rBQFqvqeGyr2duRMRHBMzRUrCz4HrqhTBPz7q2CJGwKc8n3tGMiy1vIU532IDeHtvH5G+tDcGeZ1e
	Asm3hpP6daI4xupkZ0AjAaVKFYziU7DVZYObVAOJamRD4EvFWcZD5bzSdkFfE1NWPJLxwAKyL/Tza
	w2Sep8GLrRPET6u7en6hYPb4WrBhVrH5gQyDULBTXmr2lf1SIkKhIgp7E8veF9XUFqehnKdrGpUTu
	lHNHHQxqEWwQ6EbA528QDGe2tC1aWQRCnRi+rEwQbWaP+/Vav4Tzjoh1Hkt9FMVLhAS7PgpKTKtIj
	U2NbOJ4fde3GuqyJPO7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvDAd-0005Qp-DR; Wed, 07 Aug 2019 04:03:27 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvDAS-0005QD-Qp
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 04:03:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id p13so15287139wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 21:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DS8TkoatmhBOAOl9/V+vPjhoaY+z/XSVugAwkdDAxDE=;
 b=b/fjFJD70KifetHPM3oBOkfqbuB3X8qM5XiUKl/O/ygxcK8TRWfCWG3yAyHX2mcX4u
 bda+TLKIzAwYDK+F0sxMuVEQClgAT/+1Vg2JeqrnqIeyxVEfojTLSRejKQogYrJay/j0
 z8hegFZhwSrUn0I/Z1GT442l9JkU8oZViVDsS2mSBmLTDjIZtdoUFuZ5cjZXaZ7+84UL
 zKeLNG9zlKXrrWy/jiMmmOMP2BcdMU59OwboLM+TeviH2blbVrJg+cFTv/s5soekn0/A
 wIhMmt6YZIxphAguaEg97B7e39vt13CU/8n9FpO/Aj6ocPPSvAk9UIDlpaa++u1Z4HFj
 cQ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DS8TkoatmhBOAOl9/V+vPjhoaY+z/XSVugAwkdDAxDE=;
 b=QVSSJIHEYuLvnlPwD6I33k7oM4HYj3u1kGv01k+BCrx4KhYrUxuCdUI4U0hLbgpbk/
 PojK1B34/fJQjguuIYpgipsRse9igcwbUMpxf5jxziIraWCjy6BGIQU+SOWu9YT6E3L8
 e4J6Hzu0goeoftT6quwxWf+/nlMN9E89LaW2DLE/IDugJuUWhbn9c0TPlbvex/UzfvWm
 HhDBmrQzV2jTleAB3hQ8ch986ppERtNGe/mmHCTqp4Y9E9P08XtIIZI3/21mBm0y7VVg
 cdtneIW29OH9I7lMROodKkGxphuCK7IrDzJlPnkxpUMUqImVad0LChjife8O4jGjw0rN
 uAAQ==
X-Gm-Message-State: APjAAAVBHZ3pjh4z0PvwB/7DGUCEVM4zdCa+UjQRfYvWuQVDiRmvMTEf
 P8LGZKS6tQcFv4gKDZmtYRkK0pZxQFtFI/3Golc=
X-Google-Smtp-Source: APXvYqypr7OZCh/KU83kbzMyUIE6B2KmPb/cud+JZwza2yq2Tl4YmBUJEBmRnmQ76YWLN1ImgGN8IIxHwo/lzSs3tWM=
X-Received: by 2002:adf:f94a:: with SMTP id q10mr7224149wrr.341.1565150595348; 
 Tue, 06 Aug 2019 21:03:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190807025640.682-1-tao.zhou1@amd.com>
In-Reply-To: <20190807025640.682-1-tao.zhou1@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 7 Aug 2019 00:03:03 -0400
Message-ID: <CADnq5_Pet0SMuxayjJpWpBuWP4gZvkeCbOuQmw=z=iSi9bdNrQ@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
To: Tao Zhou <tao.zhou1@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_210316_864991_9C89A7E6 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexdeucher[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 kernel-build-reports@lists.linaro.org,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Mark Brown <broonie@kernel.org>,
 Linux-Next Mailing List <linux-next@vger.kernel.org>, "Deucher,
 Alexander" <alexander.deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Christian Koenig <christian.koenig@amd.com>, Dennis Li <dennis.li@amd.com>,
 Hawking Zhang <hawking.zhang@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 10:56 PM Tao Zhou <tao.zhou1@amd.com> wrote:
>
> readq/writeq are not supported on all architectures
>
> Signed-off-by: Tao Zhou <tao.zhou1@amd.com>

Reviewed-by: Alex Deucher <alexander.deucher@amd.com>

> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> index 558fe6d091ed..7eb9e0b9235a 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> @@ -272,14 +272,10 @@ void amdgpu_mm_wreg(struct amdgpu_device *adev, uint32_t reg, uint32_t v,
>   */
>  uint64_t amdgpu_mm_rreg64(struct amdgpu_device *adev, uint32_t reg)
>  {
> -       uint64_t ret;
> -
>         if ((reg * 4) < adev->rmmio_size)
> -               ret = readq(((void __iomem *)adev->rmmio) + (reg * 4));
> +               return atomic64_read((atomic64_t *)(adev->rmmio + (reg * 4)));
>         else
>                 BUG();
> -
> -       return ret;
>  }
>
>  /**
> @@ -294,7 +290,7 @@ uint64_t amdgpu_mm_rreg64(struct amdgpu_device *adev, uint32_t reg)
>  void amdgpu_mm_wreg64(struct amdgpu_device *adev, uint32_t reg, uint64_t v)
>  {
>         if ((reg * 4) < adev->rmmio_size)
> -               writeq(v, ((void __iomem *)adev->rmmio) + (reg * 4));
> +               atomic64_set((atomic64_t *)(adev->rmmio + (reg * 4)), v);
>         else
>                 BUG();
>  }
> --
> 2.17.1
>
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
