Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131C76C086
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 19:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9N3oXq7X3SQzgo+jOz2oqcuVM9qvx9Tn01WT3Bb/TM4=; b=ByCLQlW2lX0zyY
	8fTkLoxQ2rWfebciKr9AAFSWWzj1M4IrgtlDDsH1OLB0nPqcOqSjES8LiVR+FmKZR1dMzmuaMZgca
	YeY+3h6H5MT+MN2QaIzPsxFI6bXHH4vjxxpuYOAe0jismTpUpgE+3xY8bRkVaPq0/wPqjnkFAo44X
	FGB5yF4V9Zaa1mzK/k0NPHtYmN3d0RxCgNIDo5xQOFziJgsq0JMnIgvMK7+gQonaXJJXso6QC+kqN
	ZQkdOzZaYRHWxd4bvtpbvWS6mcZVIzFCl8MidzlmurOtn0KHlX+Pz6ibCk6ZywpHts9t7FUBK01a8
	b0pfHfjowi3pE5VT1KjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnv7-0005bR-2x; Wed, 17 Jul 2019 17:40:49 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnuv-0005aw-01
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 17:40:38 +0000
Received: by mail-io1-xd43.google.com with SMTP id f4so47089494ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 10:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EtprvX2m2jiKjt40HUaqm6DF0L2XmUgvKFNwlwgfe5s=;
 b=onK1uDlvUzpAH0JWEzYwI7Gvf91+DZjaIi9SPNFqZfxsb53+3NAu9LR1/dWib49xfe
 uLFyJ7FMnIQIEGQ0aAA+BOeKB0M4zkzQtNBj+FPZfXsvN+zJTblXWCFNbsMLdd87p1PR
 f1FYO8LUIwH3rWdYJcjYDHTdKo7cRweLAnYd5imd3r9/s3Kn8G7/qyVZ1kGVccRhQv5q
 e/0VOtTsNvHhAcAE9qQ8EBKMHPWb1ByA5GRMc9o5r+lh1AT4G4zCxJxc7maGfwIzw2bi
 Voqkjz3HnbhFHZQhBQxtLooaZKPUcCXzbifFxSHKQy2lB7vIH/Kk9T3ucsueYKFKCEo8
 EZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EtprvX2m2jiKjt40HUaqm6DF0L2XmUgvKFNwlwgfe5s=;
 b=eUaxqjEbRZ2A6oRa+PuQj6ax4urx+alv3GEGWuYW6t8pdaUJIoUlYQoQKSUSB7xbsm
 nEJc7dJp/80KNe6KTAbhYpYBNinVEatLygPxpt8tLx22rk7RGPmIx7qaKYi23rxFaGJm
 CvESlMTKZ9/TkphnH/CVeM+4R1o4DD1rUoHxOOv2cr+M7410pSClESuaEaG84j6YbLUS
 Y95/LIkppbx++lPWAqufu47hkjkdcgNzuEt22NqiYRN8W8u8WXkjehwL/dKTfgJtU+FT
 9lYuNwYlrpXlz3MIP6fZa7X6AKas71ENBg8wB0ZSDRr091ZlxlAwR/vsaFmdx3FSjD9V
 BNXA==
X-Gm-Message-State: APjAAAVbeou1clAISUhior/LXeQAUuhzWKrWc0GdT8gsutogWdQAwPos
 QhZyeYqa4n1LEzT/nmHoMowNjujAmRUJ3K1aZf4qnQ==
X-Google-Smtp-Source: APXvYqz7WG1PnvWMnC23sD+cAu0oINpZh2KIZQ4xQZPYqy1GNt03lquLmfPyqP+Hp51HDnWuG4zkofIf1ZyJXjMZovg=
X-Received: by 2002:a5d:9dc7:: with SMTP id 7mr39088762ioo.237.1563385235830; 
 Wed, 17 Jul 2019 10:40:35 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <2694eae0731a07eeda11f666526ccff8c6b5842e.1562940244.git.saiprakash.ranjan@codeaurora.org>
In-Reply-To: <2694eae0731a07eeda11f666526ccff8c6b5842e.1562940244.git.saiprakash.ranjan@codeaurora.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 17 Jul 2019 11:40:24 -0600
Message-ID: <CANLsYkw=pAmwoEmXCjLtrUtxLnE8KY5o72Of3aq_-_JHeHyhTA@mail.gmail.com>
Subject: Re: [PATCHv8 4/5] coresight: etm4x: Add ETM PIDs for SDM845 and
 MSM8996
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_104037_039375_64AF798E 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 12 Jul 2019 at 08:17, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Instead of overriding the peripheral id(PID) check in AMBA
> by hardcoding them in DT, add the PIDs to the ETM4x driver.
> Here we use Unique Component Identifier(UCI) for MSM8996
> since the ETM and CPU debug module shares the same PIDs.
> SDM845 does not support CPU debug module.
>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-etm4x.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index 7bcac8896fc1..28bcc0e58d7a 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -1192,11 +1192,15 @@ static struct amba_cs_uci_id uci_id_etm4[] = {
>  };
>
>  static const struct amba_id etm4_ids[] = {
> -       CS_AMBA_ID(0x000bb95d),         /* Cortex-A53 */
> -       CS_AMBA_ID(0x000bb95e),         /* Cortex-A57 */
> -       CS_AMBA_ID(0x000bb95a),         /* Cortex-A72 */
> -       CS_AMBA_ID(0x000bb959),         /* Cortex-A73 */
> -       CS_AMBA_UCI_ID(0x000bb9da, uci_id_etm4),        /* Cortex-A35 */
> +       CS_AMBA_ID(0x000bb95d),                 /* Cortex-A53 */
> +       CS_AMBA_ID(0x000bb95e),                 /* Cortex-A57 */
> +       CS_AMBA_ID(0x000bb95a),                 /* Cortex-A72 */
> +       CS_AMBA_ID(0x000bb959),                 /* Cortex-A73 */
> +       CS_AMBA_UCI_ID(0x000bb9da, uci_id_etm4),/* Cortex-A35 */
> +       CS_AMBA_UCI_ID(0x000f0205, uci_id_etm4),/* Qualcomm Kryo */
> +       CS_AMBA_UCI_ID(0x000f0211, uci_id_etm4),/* Qualcomm Kryo */
> +       CS_AMBA_ID(0x000bb802),                 /* Qualcomm Kryo 385 Cortex-A55 */
> +       CS_AMBA_ID(0x000bb803),                 /* Qualcomm Kryo 385 Cortex-A75 */
>         {},
>  };
>

I have also queued this patch.

> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
