Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFAD1F78FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j5RNesGp/G7eCa8yAdR9QCTm3gS+zYJtOE5HH+kEk7c=; b=BBQ
	ZKrmEcu5kep6LXxvdo6ZAcOvLnjTnOpamSpm9zAiFd6tkQGcrvBaAfPsYQ0m+95r22LWE03fprXQD
	noBfxNep43/7l7rZHUtp9DtxbeINDRqZxcpsXMG8lMaO+aKeQXR11v6O3SR7tfg9OcFDztr8nZAzM
	2ee8xggBT1NxBrCMXLLKnLLPf8Up5JLtsmcrEtOXcA9ccrc42Vppyl1tLmfIah0SH+1p9TDqM2+jS
	uHZfWe9u6CekERNxLHhOXcQXk7LBHqdafjTau7EyE/Ji7ZFUI7AFzVkJQZNH+ftoshS1+bpQO+wfO
	STAMmoX5d+Zea4dPgKTF227odWtqx7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjk8Y-0002Sn-3s; Fri, 12 Jun 2020 13:54:26 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjk8M-0002SF-8m
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:54:16 +0000
Received: by mail-lf1-x141.google.com with SMTP id c21so5535631lfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=3vT+wZ8ziAs7E5VUjyW0FBdqzQlsXKfHF9W52Q5ad+c=;
 b=zGmvAh/ZGt/vXHZt15aQA54OP1BiGscyEILqX9sLVHbugga06Px5iVZuHl/BgKZs2L
 iSTKyq49oQSV5KOjj7nsgIvgySsjzXLuMR0mB/nFxBXmcyMbmoqzc6MnBVPb2UE4ANcB
 mnRxBY9ltz2fprsMwW6CzkO3ZAXw8vULAqH3rM8mNjcfolBQZeEkLRG5IvIl0ucIm8Jy
 YokIBvSfG70XYCC7E0fo1iFGq/C8QZsTbHNkwguVhC4cYIvsK+vVLZHHIflOpGw95St2
 pPtTtNf1SBpUEVEZA2tMB9omveGeXag0P57aEqXK6yyQZ4Uhbo7f7F6Ztpr2NTdLl+5E
 oLJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3vT+wZ8ziAs7E5VUjyW0FBdqzQlsXKfHF9W52Q5ad+c=;
 b=sxi0pFXkk1BP7xJY6PdyaN1uL7UYMXAhsY85uq+qnEqRadwa/zDNgtT0UAyOypSBdh
 Vo11Pxzl+6qYtauGxr50FTNM0tGLyfHA7+Y27AZPoEkEmc3C8zhOesHsrLo8jInz/DVQ
 txj4DCPpYv1Mpyr9wrcL61JkJ+sYhMzOBC1y2HrmwLpcV2nYm663nzhqOVUXIBKIgUI9
 dcGQHaNYqfAUv+NQFZfxuvUJp4h2QdqlWbdZC+GNZM/QE5fcmwYHhSaIzvLKt6OfH6jm
 qZ2A8Ku2ze5GgxozqH3dnI0bsIfrGSB3TRcqMVNRakTXZeDs208fd7vhrqFZXj2knNkf
 RCHw==
X-Gm-Message-State: AOAM531vCLQnCLn8vUZ93xwWO+q06Haz5kTHFABcOtlgudOqsITxFRCK
 bhQmymDAdUAbW+a6ZwdVK5zUkQ==
X-Google-Smtp-Source: ABdhPJzm6BPlNgl41jkg6bQdqNLPtT3HfnpNXfIX/zwF/eepS4r0yWPRsSw2UAFyp0UmDO2to8svIQ==
X-Received: by 2002:ac2:4d25:: with SMTP id h5mr6879237lfk.87.1591970051731;
 Fri, 12 Jun 2020 06:54:11 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id a1sm2414415lfi.36.2020.06.12.06.54.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:54:10 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v5 00/10] Improvements to IMX290 CMOS driver
Date: Fri, 12 Jun 2020 16:53:45 +0300
Message-Id: <20200612135355.30286-1-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_065414_372682_DB1A4815 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Changes in v5:

* Fixed the "Possible unwrapped commit description" issues reported by
  checkpatch.pl. The "msleep < 20ms can sleep for up to 20ms" warnings
  are still here, as sleeping for 20ms when the imx290 driver calls
  msleep(10) is fine

Changes in v4:

* The review comments from Sakari and Dave are addressed
  https://lkml.org/lkml/2020/5/24/294
  In particular,
  . HMAX values are included into struct imx290_mode. As the consequence,
    imx290_modes[] table splitted in two (one for 2-lane configuration,
    and another for the 4-lane one)
  . link frequency indexes are kept in struct imx290_mode to
    avoid using the width field as the key for modes table by
    imx290_get_link_freq_index(). These are still indexes, not the
    frequencies themselves: we need a separate tables of the frequencies
    for the V4L2_CID_LINK_FREQ integer menu control anyway, so the
    link frequency values should be better kept there (in one place)
  . imx290_modes_[ptr,num]() and imx290_link_freqs_[ptr,num]() helpers
    introduced to get rid of repeating lane configuration checks in the code
  . do_div() is used in imx290_calc_pixel_rate() to fix the build error
    on 32-bit systems
  . the check for the link frequencies listed in the device tree is
    reworked to handle multiple frequencies (vs removing the check entirely
    in v3)
  . imx290_enum_frame_size() is not changed since v3: all (of the 2) modes
    are supported for all the media codes. So the available modes / frame
    sizes have no dependency on the media code. The fse->code check in
    imx290_enum_frame_size() just guards against the codes not supported
    by the driver at all
* removed calling imx290_set_data_lanes() from imx290_probe(): the probe()
  calls imx290_power_on() a bit earlier, and imx290_power_on() sets the
  number of data lanes
* FREQ_INDEX_1080P/FREQ_INDEX_720P #define's introduced to make using
  imx290_link_freq_* tables a bit more error-proof
* the values in the imx290_link_freq_*[] tables are devided by 2: the
  previous ones were equal to the data rates which are twice as the link
  frequency

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

 drivers/media/i2c/imx290.c | 404 +++++++++++++++++++++++++++++++------
 1 file changed, 343 insertions(+), 61 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
