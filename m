Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3D517A29F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 11:01:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NoVqmGauE8cucqZwR3xMx03lSNYUWnALsnj6fcBl4lg=; b=iodPqpg1rMkmI5
	5FB/KzEct+77GFs6nUhhO/1zJZswfqmpV37hkm6XsgNBBBLy9DZZ+V+YtnP535K1lwKqxbrZ6sgGC
	eLclDDNm14qdrMl/C088mx6+OghWkC90iZ4ic0P6JHv+FnkplMZaQaaAJCm3sfYLy8F53B2UK+yot
	FgJTLsnq5GEVlVToVhHiSOay3oRVdWtUbJzxaEdoKmHFH5QoKEyR+mhR1ImlKdrU1WGsS5HEACc5s
	3DmVYHrQSnOjLso9I+YHMPOQfG4HuMVsL8gXosWJZNu4fgiL13ngzIa7RaZV/5RToCv0A6lFkuvvk
	9t/uKUzu0d+jdClH6sWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9nJm-0004YV-H1; Thu, 05 Mar 2020 10:01:26 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9nJc-0004XJ-TA
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 10:01:18 +0000
Received: by mail-pg1-x541.google.com with SMTP id u12so2510076pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 02:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d+aqQE01oMJb6UAMOBubBoPlQDg0qTH2nDZoUSvA2Pw=;
 b=sAdchzbzWdhLon0k5KU9t969rKbfqBHE5ntd8N0XREvIVOQx75SkoByrm8ZtpBglwn
 JJwH+kZSo7V/xCdkndKCh+lFMzbfUjv2Ir9+VCbd1X+M1N1Vn6XWMdhFpdHIJ9AsBIEe
 /juGIbSFekuuNZl8IP1yGZpwpqyvTiXVpqlpYiyvf0HKPaMmi5Kppi3Oj12PyV1Bi7IH
 pishhBkEccoaWKKJF5dPSq8B3ToteJr8pHBxbflhJdhNWtETENPUr51Qvo9YbTz+D983
 G5O/+EFXyo5OYGBh9r9qucLV80RCKMyGcQa8r5LjSrNnTTsCizsY6sLSgS+HH311phvh
 mwyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d+aqQE01oMJb6UAMOBubBoPlQDg0qTH2nDZoUSvA2Pw=;
 b=et+rERaYidETpQOteEZ1wFC1EpjFwe1j6T7E6kHmab/QK7j72Uj1fBwEAPmfLjAwqw
 TWpwlmAw+zNNpK5ZYQ2ZsFu81xXx/Lz7P7mJb9ldJJvs0eUn1pnyZC9u9//7ivWnZBE8
 4PGtnZc5D7reRo+7+g3JM7xSkcNbLAHUQrvwPA3QwkNKrspZL+Db2yJAXMqC63xC3MOx
 FfzmDF2OQfVwA6eNVX9JxjlrUQxsddJUDWHJu3Ml6nFe2xXv9ClIBeKOUbWGoIeSkdMA
 MmKv0sdWJ3Rjviwq3tcnwoZFYamEpHSIyl6SZ9WLpIiUsqNJDfKn/DteIhA6RNEQVHaw
 rMpQ==
X-Gm-Message-State: ANhLgQ0wa6RJGffsMjXxX85XGO8rKc/xZdZ4DrVw2OpKcA4iF1ZLikt+
 NX3AugmOeBMup4LxCnlY7tQdYw==
X-Google-Smtp-Source: ADFU+vshcthIRHvuvF4c67fKbNw4z5+YYa5m9qu+uE4WbbYTJtO7NJ2lNM6SgCVG0yZe2IUd7F7Ang==
X-Received: by 2002:aa7:958f:: with SMTP id z15mr7770264pfj.205.1583402474728; 
 Thu, 05 Mar 2020 02:01:14 -0800 (PST)
Received: from starnight.local ([150.116.255.181])
 by smtp.googlemail.com with ESMTPSA id x4sm26340400pgi.76.2020.03.05.02.01.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 02:01:14 -0800 (PST)
From: Jian-Hong Pan <jian-hong@endlessm.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 70/89] drm/vc4: hdmi: Remove vc4_dev hdmi pointer
Date: Thu,  5 Mar 2020 18:00:46 +0800
Message-Id: <20200305100046.55388-1-jian-hong@endlessm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_020116_938310_CB455FF8 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux@endlessm.com,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
> index 1e44a3a8c2b0..d5c832c99460 100644
> --- a/drivers/gpu/drm/vc4/vc4_drv.h
> +++ b/drivers/gpu/drm/vc4/vc4_drv.h
> @@ -73,7 +73,6 @@  struct vc4_perfmon {
>  struct vc4_dev {
>  	struct drm_device *dev;
>  
> -	struct vc4_hdmi *hdmi;

Tested the building based on kernel v5.6-rc4 and linux-next/next-20200225.
The hdmi removed here still be used in drivers/gpu/drm/vc4/vc4_hdmi.c.
If DRM_VC4_HDMI_CEC is not disabled in building config, then it will hit
building error.

Jian-Hong Pan

>  	struct vc4_hvs *hvs;
>  	struct vc4_v3d *v3d;
>  	struct vc4_dpi *dpi;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
