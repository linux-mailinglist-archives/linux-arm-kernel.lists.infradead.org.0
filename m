Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 591C01E0286
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 21:29:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oPmc8r5xfH5bZ6Jt3KyGMrocvNiFQ+rLb/9tjk8ivMk=; b=Dp/
	C38ND5AkVmzvMAWKZPzqGuxyqVddKMw8CrEE4l98dWaB4ajHfDcsdGy2IHJ8+yqjug92kIwO7/X3t
	HgXK0DqqyTKtrD9PCGHxkugAbSxhtduS1JpFNiLLsc/CjwkiX3VIy2XMWqUSGaDzmtK1O83rV065f
	CUB7WHCIxV/D+cA/cDZwxUsCnz52Yt/XrEzR3imJAlAzeTtExsHNv8N/V2DslNHhIsn3hIbr/P+eE
	vZhu59o2xzNSBSNuoZTqhA3sXZXTKqYo/hzw/eBGbtXyna6F86kXd/o1gTDVXM06oToe269rWit1R
	i76DXIJjY8kW7latq/YvjrX7lthVUJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwJ5-0000dX-9X; Sun, 24 May 2020 19:29:11 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcwFX-000664-Bp
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 19:25:33 +0000
Received: by mail-lf1-x141.google.com with SMTP id 202so9379663lfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 12:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=XhMEpClAt+PfIQ8hr+BTzgcAeLpej4vtVsIBoCgk0eo=;
 b=fnypOXGv7rlaol6AuYJkXTQLV72KGeSUudg5L4No9mxAlzpJ3C6XqiaKk7aRKPYA7O
 8q4zXDIoYp6A8Um2W7XAw72Oi+JRFwF5pyayBOOWj4CaHqLkPq1poPE5+6b5p6CKdJHP
 1sWnJM1+g4ef+VYkH2HmR7X7LuAOTv5WENIVS9NkZVX/76PaL0f+pamQBDOkZSyV7H90
 /z+9SgJU5CQxLkelbL4KwR6DG58MoGvsNAxEd2CrYhv4SdMLK0psA1+QfF4a7grKoVOL
 Yw1199ehj7j95er4PtLXRPTc2BgOWgePZvxkwGX3bIJttyKlrNE2qTrdLezs6wUUIHJc
 k8AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XhMEpClAt+PfIQ8hr+BTzgcAeLpej4vtVsIBoCgk0eo=;
 b=gVCpU1uDjtR7Hgh9QePuthb6isHAyYzKe1BuiXqXLLPSsKvY4DoN8NK2WabhyBkUeY
 7uoK6QCvyHxFTeosbNjSUTjo2STr+By+3FfkFeZetCfBTgTlZ4R8JNE3htPhcWPW3tkC
 sWaVituQFfADS3r4bZNhP2ABcLtzifb5ZLNE7X743N3nZevBQJcTzzrvhGgwUTvBtOlD
 XuAKE2NOySkCDZ9eOVbVwcGFy2cm7KjflWbY8i9N9WQOo7TkKp7zULm5UCVeygtcpmfp
 HQLpgxAbLQVPdmaHX6eQ+Vs8YJ2i7oYlDQrIb+wwJNIED16gD7yh4Is6ls9XFTl/k90c
 j/CA==
X-Gm-Message-State: AOAM530nM8fnscx11iSuDryvYFQyLIEcrtcR58nOSdPwf3AM3HKSuO63
 kbm5sWnscr+mojlPqZf7V3tt1g==
X-Google-Smtp-Source: ABdhPJxakEWM+ccUlpzVYyhXRAXmUISbly2mfW/PY88vHmfEHP6oj3oOO2LmhhCAz9H58mliNHM5rw==
X-Received: by 2002:a19:7e15:: with SMTP id z21mr12730265lfc.103.1590348328855; 
 Sun, 24 May 2020 12:25:28 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id v10sm3878137lja.23.2020.05.24.12.25.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 12:25:27 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v3 00/10] Improvements to IMX290 CMOS driver
Date: Sun, 24 May 2020 22:24:55 +0300
Message-Id: <20200524192505.20682-1-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_122531_447129_E3D448B0 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Andrey Konovalov <andrey.konovalov@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds improvements to the existing media driver for IMX290
CMOS sensor from Sony. The major changes are adding 2 lane support,
configurable link frequency & pixel rate, test pattern generation, and
RAW12 mode support.

The link frequency & pixel rate combinations depend on various factors like
lane count, resolution and image format as per the datasheet.

Also fixes for the following issues in the existing driver are included:
* the current_format field in the struct imx290 can be used before
  initialization,
* the reset signal to IMX290 isn't handled correctly,
* the bus_type field of v4l2_fwnode_endpoint structure passed as the
  argument to v4l2_fwnode_endpoint_alloc_parse() function is not
  initiaized.

Changes in v3:

* The review comments from Sakari are addressed
  https://lkml.org/lkml/2019/12/19/705
  As a part of those changes:
  . null ptr checks are added to imx290_set_fmt() so that it can be called
    early in the probe() function to set the default format, and to
    initialize imx290->current_mode and imx290->bpp - these last two must be 
    set before imx290_calc_pixel_rate() is called when creating the controls
  . setting imx290->bpp removed from imx290_write_current_format(). Now this
    function only writes to the camera sensor registers. The call to
    imx290_write_current_format() is moved from imx290_set_fmt() back to
    imx290_start_streaming(): imx290_set_fmt() can be called when the sensor
    is powered off, and writes to the sensor registers would fail.
  . in imx290_set_ctrl() in the 12 bpp case the value the BLKLEVEL register
    is restored to when the test pattern is disabled is made consistent with
    imx290_12bit_settings[]
* The "IMX290 sensor driver fixes" patchset included
  https://patchwork.kernel.org/cover/11407347/
* Added a patch to set the bus_type field of v4l2_fwnode_endpoint structure
  before calling v4l2_fwnode_endpoint_alloc_parse()

Andrey Konovalov (4):
  media: i2c: imx290: set the format before VIDIOC_SUBDEV_G_FMT is
    called
  media: i2c: imx290: fix the order of the args in SET_RUNTIME_PM_OPS()
  media: i2c: imx290: fix reset GPIO pin handling
  media: i2c: imx290: set bus_type before calling
    v4l2_fwnode_endpoint_alloc_parse()

Manivannan Sadhasivam (6):
  media: i2c: imx290: Add support for 2 data lanes
  media: i2c: imx290: Add configurable link frequency and pixel rate
  media: i2c: imx290: Add support for test pattern generation
  media: i2c: imx290: Add RAW12 mode support
  media: i2c: imx290: Add support to enumerate all frame sizes
  media: i2c: imx290: Move the settle time delay out of loop

 drivers/media/i2c/imx290.c | 358 ++++++++++++++++++++++++++++++-------
 1 file changed, 297 insertions(+), 61 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
