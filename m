Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9451268E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 19:23:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SobQZ4MynkpOsvTEwH4P+uLmINcwO2jewrdnhuOdVgQ=; b=blg
	3M9O8UXEr8H+LhEu5B71P6B3FcOtv6uM+lvzBvTjNgMv84NQNFfy+1WeY2dT3ljbLzR4Y6HGY7P5h
	WDnpnwP3sCme89fczhRcvYaXEa9HnafYD9UggWu5jMht6D3cHLj1n5go8kvDILS/BcDTLQJqgy2Km
	PJYaaN7Hb6iGKv62ohj7uP5TgN0O5IMMQG06GTbyVj8k3C0FsguN+0RU1kWCel+nNgSlvdHjjyTGz
	W1tmMaXbPT5F914aQl8k1NaSyRY/6tQvZctsrY/cALmijtNRmLXRIfCG8vGXIG3Pw3i2OwdzhOgZO
	PKBdKuRIWX50B3+5ehiBWFNWHIhLK0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0Rz-0000q3-I1; Thu, 19 Dec 2019 18:23:03 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0Ri-0000pK-LY
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 18:22:48 +0000
Received: by mail-pl1-x642.google.com with SMTP id bd4so2925279plb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 10:22:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=KXwFzfFzkYhY2Rnva/wezf54bh0dmerJAZ0lGR8bFSM=;
 b=Ob3u1ZS5Y2lM+xNn3smagXJWwa+13n2h9N1s/MqmA/ZeLp8npgsWnqOQglR44wkR8t
 HwDBZruhxNK+aDv7mQMK68l5P/N4C3O2JckUUbSHKkEGsbWvu/qUFOcQqSTODZhCRUse
 9ZFwm+rdTllSQV5tl4j2ccySo67lLA6HifXiCaRp6gpWjStS4Q1/fijvecPvOoij2Dex
 /nlE6Yr5Z6tQIWzXKs/NOpbaV/umuWhjvUfJbruMq16PVbMR5XloFfGuajjYq39ELwgO
 kP56uIFCttgb3blX2KKbPrbwhtXs+SqvS9ZIUvRI9tsPaZky9umRogofXWZc2EA75coY
 +XRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KXwFzfFzkYhY2Rnva/wezf54bh0dmerJAZ0lGR8bFSM=;
 b=O7gnNQq4RdwJKTR2N8gCQS7hkmesGuNc+OI/LvO3dIdRDy0iM0ZNqp/CUWWjt4qHGk
 LWmtX6HH0vqThzs9Gv4RrJALb3kxyAS4qIKZtsxdVSrZIUI6KZs+YHFUMi9dQHSvqZo/
 w0ATqJkOuvnV3lL9aGjNS0cspTfBk1M1iXvOPylB+Dm0q2oSYJrMUN+6R+MXOxGAJQrb
 1MunrZ9GKYOzQwCqrxdIbCi9WVAB01yYv7FU75Kvzb260xnzs3Rr1xyH6kQ7Ofy86HTD
 EL0roHzjDUBTqKAMZNg+cv1SD8E0LaQO+8CMVN6yaQaue/l+bimhjm6n0/j+vsAfNq+3
 1k2g==
X-Gm-Message-State: APjAAAUhhYIm2dPc4xKisR17obft7iKCP6MEJsv1BBpz3EiyXVrbzeHJ
 3nGlzd3DfTuLRVSh5YsWErQ5
X-Google-Smtp-Source: APXvYqwHxxL4wmdr1ywy2f+7iVqrfz0NIx6K6ZuFNh1p+BD48pNF3UuYWRUx2XBjCUe57WmKnFOgdA==
X-Received: by 2002:a17:90a:f84:: with SMTP id 4mr11269191pjz.74.1576779765730; 
 Thu, 19 Dec 2019 10:22:45 -0800 (PST)
Received: from localhost.localdomain
 ([2409:4072:6010:65a5:a416:e9bd:178a:9286])
 by smtp.gmail.com with ESMTPSA id i3sm9085735pfg.94.2019.12.19.10.22.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 10:22:45 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v2 0/6] Improvements to IMX290 CMOS driver
Date: Thu, 19 Dec 2019 23:52:16 +0530
Message-Id: <20191219182222.18961-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_102246_758466_75AB2CE3 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds improvements to the existing media driver for IMX290
CMOS sensor from Sony. The major changes are adding 2 lane support, test
pattern generation, RAW12 mode support, configurable link frequency &
pixel rate.

The link frequency & pixel rate combinations depend on various factors like
lane count, resolution and image format as per the datasheet.

Thanks,
Mani

Changes in v2:

* Incorporated review comments from Sakari
  https://lkml.org/lkml/2019/11/29/428
* Added a patch to move settle time delay out of for loop in
  imx290_set_register_array()

Manivannan Sadhasivam (6):
  media: i2c: imx290: Add support for 2 data lanes
  media: i2c: imx290: Add support for test pattern generation
  media: i2c: imx290: Add RAW12 mode support
  media: i2c: imx290: Add support to enumerate all frame sizes
  media: i2c: imx290: Add configurable link frequency and pixel rate
  media: i2c: imx290: Move the settle time delay out of loop

 drivers/media/i2c/imx290.c | 337 +++++++++++++++++++++++++++++++------
 1 file changed, 283 insertions(+), 54 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
