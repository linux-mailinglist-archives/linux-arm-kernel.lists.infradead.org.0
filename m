Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7498D7A3A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZDOFstZBB5VWcasKcVH3GfwsVhAk9pmpZTBRwJ30r0=; b=Vg6YF8YU2xrf2i
	8ijlUaBJmyv4Jx/5E4B4HVzb7Y4DxYvCAl48Pwu7Oxuq2+uRTGtV51y76lb4AFW//fkMNjfc9GU5W
	d85NKlz/bTUGV0YAR4zn6PGJqSK0MNj8u1yl1ksMqrnIkb9g1Y6o0yKdeYheszBorX7F+KQ08GSc3
	uvvatY/FEL0whBAEPD/U6xfRW7l/IhubA1jgoNx+5TTT1vqoz2o2rxGBwVukZUPrxFVNCZEyDWmG7
	xMmI2/QJWkaLHJNmVDiE14xMLlIwCfQC2CdeR/5hOe0TcIXLNpkKZZgAtHuYkTqPz/fnsm5wivTL8
	uNsRSxpciKQ1bBr4gSgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsO4m-0000r2-4f; Tue, 30 Jul 2019 09:05:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsO4I-0000jh-5g
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:05:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id s3so56343116wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 02:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=qGr1BDi0c/2TdLi67wBjX5+c8yyhM7Ix8wxZtUpjo5g=;
 b=fEKj3pYgSNCVMZDZdtCMHO/oPs4i0a3ucUE9X2f6nEaNA0gJ6xnCUEYQqZ00SDkZAe
 qas/HbrLLEkz1D1pAtQ0eQ3wbYrSzEYtopSM0GOB8MIEy2HNTIgm8bZpUa0uQdrS+ry5
 Ne6PdJltp47jtCpLzC/hSV0txKprnYrdf7hcB9QJEoZuNd6bhX94afsdewA44zIui5Jq
 jYZ/6zgBV0UAJuGwJLXrq0OKWBPwWtsgz6mPLYohbxRL64rFDevg+IhYhSu0HYGtRu8D
 HUWYZlLszd41A+FTo3tYjcTk8Dnk0YVRQmW3qKsL6FJ6MAm1kwoq4DhoOxe89TiJszof
 qu3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=qGr1BDi0c/2TdLi67wBjX5+c8yyhM7Ix8wxZtUpjo5g=;
 b=HGKxw3Q2xH3irrl5DlRRuabM19QOsyMwauVrjaG6H+6PA8YIf9LWE0U4b+C81M4k/d
 7w88gg1v3aFZD64rPwybLrbw/YEOEs6pVdml5ADEZp5TOXc3u9T3H2B7YXONy1QPqLDb
 gEvCw8gnYdMnl4x5iIU7lS0qiTgWAicB/auKMG/mI+AWRWbPSYLOQKZw02NwyauFkuNs
 GTWVlW2TrBVyYpCZvgN3C0iI278qQBCmOr39OEC2B1TbmglAZpvlu/FBfhQZ+CKPrL6S
 al+1ADNz5BxWXvRqqJslHkmzqqMkYwK6bLiB/yL70J5QsKnL7TrrwAzjoWyGNFM96Fxh
 urPg==
X-Gm-Message-State: APjAAAU8ruQ3Wbyz+15PhcAOV4sTtYOurZvAcdyIRZEgYWX829FioHRo
 Dv8bNiXHT/tnB4P+wBd2jLlr8A==
X-Google-Smtp-Source: APXvYqwFlbUFxsYoSDxGSyZmNiW7VbV+zb0tbv/uEpdFegDVeNvxUOUn6FwGoEV4Xa9IoHuoN+8obg==
X-Received: by 2002:a1c:c188:: with SMTP id r130mr98830929wmf.73.1564477512141; 
 Tue, 30 Jul 2019 02:05:12 -0700 (PDT)
Received: from localhost ([2a01:e34:eeb6:4690:ecfa:1144:aa53:4a82])
 by smtp.gmail.com with ESMTPSA id f12sm69804468wrg.5.2019.07.30.02.05.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 02:05:11 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Carlo Caione <ccaione@baylibre.com>, srinivas.kandagatla@linaro.org,
 khilman@baylibre.com, narmstrong@baylibre.com, robh+dt@kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/5] firmware: meson_sm: Mark chip struct as static const
In-Reply-To: <20190729183941.18164-3-ccaione@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com>
 <20190729183941.18164-3-ccaione@baylibre.com>
Date: Tue, 30 Jul 2019 11:05:10 +0200
Message-ID: <1jv9vj28qh.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_020515_047524_A47168F5 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Carlo Caione <ccaione@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 29 Jul 2019 at 19:39, Carlo Caione <ccaione@baylibre.com> wrote:

> No need to be a global struct.
>
> Signed-off-by: Carlo Caione <ccaione@baylibre.com>

Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>

> ---
>  drivers/firmware/meson/meson_sm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson/meson_sm.c
> index 8d908a8e0d20..772ca6726e7b 100644
> --- a/drivers/firmware/meson/meson_sm.c
> +++ b/drivers/firmware/meson/meson_sm.c
> @@ -35,7 +35,7 @@ struct meson_sm_chip {
>  	struct meson_sm_cmd cmd[];
>  };
>  
> -struct meson_sm_chip gxbb_chip = {
> +static const struct meson_sm_chip gxbb_chip = {
>  	.shmem_size		= SZ_4K,
>  	.cmd_shmem_in_base	= 0x82000020,
>  	.cmd_shmem_out_base	= 0x82000021,
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
