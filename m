Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B43E21C3004
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 00:28:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ALlNrHHoOepyqsquzL/PTJxhI6ipSHUyIR7VAJ7aSRw=; b=UA3lg7cUyfmlu0
	vEgpUIKT/IvwEpLiH40gKHW5RoPk8MXOGNtgFzmvyfc+DLT/DInFq09HgXpGcvLrLkCAx2NuxGYkA
	YwGFWSQ2ZuXUL6js3s0/v5NwkMFAa8xpeazgrc5pXt6LmPo/TuXQVkzXAU6lkFpb/oDxZPswZ6U5e
	60pWuwFC1O1Yh798Q0ILORPYBR+Nti+T5oFbxdNeYnbzF5r3B5e7x0Xr6x5Ep56ynhF0Mt3hHuARh
	OPnJjDyqfXEgPtvI04CkVGIRr42g8ihFfQScDewVgj4qntLp+qYqz33DHcKbNx7vLyXIyOqkEpJps
	xrkfxutMS8f1HgtXE/wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVN67-0000MR-DT; Sun, 03 May 2020 22:28:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVN5x-0000Kc-1N; Sun, 03 May 2020 22:28:22 +0000
Received: by mail-wr1-x443.google.com with SMTP id f13so18659944wrm.13;
 Sun, 03 May 2020 15:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y69lAmBUHqgE1AImwpWCVOk5aRft5ihzG6qW/7B3meA=;
 b=g5CtopVisuuYHom2E36JzSmflZ8Vpts4weEltBoFA5PHeqZuw7xpF4tDEugEIDRJTT
 TSB2h+14aRVNkj+RQbcbjhQQdnxc8Kq2mlRrdjUItjzh1V4liq3aYuRgmnadNQ8usjgA
 YM7ogrF4rnFPdpKT6rijBFR9aemkr8yt7UJRt/Ke97sabnwNNB3HqBewu9sbrEh9QOR4
 wCHVpKdtEzfjFb6Ji23FM4HfLGh/FdkDPnpPZWY8pk7HycjmCWAWf3xWDNvYGOVKQT8U
 O7KmlKYW2V/+xzF56s5uTVYaBP3Fmx727jy1s/DXxOdh8wRJhR0IYipKQ8Jck434a0ic
 Ttqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y69lAmBUHqgE1AImwpWCVOk5aRft5ihzG6qW/7B3meA=;
 b=Kk1WN6mHSiwoYpFSgR4V+fNG/0ai1klzRCbZ2gO8gRC4rAj/AxVhQ+wml2jXx5BSz8
 YEMch45HfrAxd/8gjUBKu4OZ88XCuOEFdM00oQE0Ew/JNrviz7073gNW+KRQ7vPgvmnJ
 vRcDKHrqp8jAziOZyOanh9K3wYJpzg/lXLtx41Cepq62U99IuvxVCwbEnDcInsNEK5ZF
 1awA8w0Y7JbO5UNGxCJGXOVXBjKQeT6h1qZwGFmLsJhF29Sqpwf4NqG9fEIWYa+Dsofn
 4j4H5vQ9y2EHBY6V+cfSvS4ck8U6mZv1vZACdwbKRkAbeFpQDPxt5Y8u+TTRxj035r/l
 9Ptw==
X-Gm-Message-State: AGi0Pua/zGWklgrtSirnWgb7/MnTNHXCnPvEuVRz7vQPY2Zvka8am22Q
 UhGeFQA3EQUb+EIm7dPjEoukuy/g
X-Google-Smtp-Source: APiQypKTFvLpzJxWxC/mVKGKRYn8CTyLnoU9CuxJncu5LvibrivSYXR2dENDCWKJUUC+YmHk1ohmUw==
X-Received: by 2002:adf:cd88:: with SMTP id q8mr13169106wrj.67.1588544898444; 
 Sun, 03 May 2020 15:28:18 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id
 i129sm11200081wmi.20.2020.05.03.15.28.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 15:28:17 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 ulf.hansson@linaro.org
Subject: [PATCH] mmc: meson-mx-sdio: trigger a soft reset after a timeout or
 CRC error
Date: Mon,  4 May 2020 00:28:05 +0200
Message-Id: <20200503222805.2668941-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_152821_104266_9F7B2B84 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The vendor driver (from the 3.10 kernel) triggers a soft reset every
time before starting a new command. While this fixes a problem where
SDIO cards are not detected at all (because all commands simply
timed out) this hurts SD card read performance a bit (in my tests
between 10% to 20%).

Trigger a soft reset after we got a CRC error or if the previous command
timed out (just like the vendor driver from the same 3.10 kernel for the
newer SDHC controller IP does). This fixes detection of SDIO cards and
doesn't hurt SD card read performance at the same time.

With this patch the initialization of an RTL8723BS SDIO card looks like
this:
  req done (CMD52): -110: 00000000 00000000 00000000 00000000
  clock 400000Hz busmode 2 powermode 2 cs 1 Vdd 21 width 1 timing 0
  starting CMD0 arg 00000000 flags 000000c0
  req done (CMD0): 0: 00000000 00000000 00000000 00000000
  clock 400000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 1 timing 0
  starting CMD8 arg 000001aa flags 000002f5
  req done (CMD8): -110: 00000000 00000000 00000000 00000000
  starting CMD5 arg 00000000 flags 000002e1
  req done (CMD5): 0: 90ff0000 00000000 00000000 00000000
  starting CMD5 arg 00200000 flags 000002e1
  req done (CMD5): 0: 90ff0000 00000000 00000000 00000000
  starting CMD3 arg 00000000 flags 00000075
  req done (CMD3): 0: 00010000 00000000 00000000 00000000
  starting CMD7 arg 00010000 flags 00000015
  req done (CMD7): 0: 00001e00 00000000 00000000 00000000
  starting CMD52 arg 00000000 flags 00000195
  req done (CMD52): 0: 00001032 00000000 00000000 00000000
  [... more CMD52 omitted ...]
  clock 400000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 1 timing 2
  clock 50000000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 1 timing 2
  starting CMD52 arg 00000e00 flags 00000195
  req done (CMD52): 0: 00001000 00000000 00000000 00000000
  starting CMD52 arg 80000e02 flags 00000195
  req done (CMD52): 0: 00001002 00000000 00000000 00000000
  clock 50000000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 4 timing 2
  starting CMD52 arg 00020000 flags 00000195
  req done (CMD52): 0: 00001007 00000000 00000000 00000000
  [... more CMD52 omitted ...]
  new high speed SDIO card at address 0001

Fixes: ed80a13bb4c4c9 ("mmc: meson-mx-sdio: Add a driver for the Amlogic Meson8 and Meson8b SoCs")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
Ulf, I consider this non-critical because as long as the meson-mx-sdhc
driver is not merged we only have one MMC driver for these platforms.
I don't know anybody to prefer SDIO wifi over SD card access, so this
can go into -next (in my option at least).


 drivers/mmc/host/meson-mx-sdio.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mmc/host/meson-mx-sdio.c b/drivers/mmc/host/meson-mx-sdio.c
index 2e58743d83bb..3813b544f571 100644
--- a/drivers/mmc/host/meson-mx-sdio.c
+++ b/drivers/mmc/host/meson-mx-sdio.c
@@ -246,6 +246,9 @@ static void meson_mx_mmc_request_done(struct meson_mx_mmc_host *host)
 
 	mrq = host->mrq;
 
+	if (host->cmd->error)
+		meson_mx_mmc_soft_reset(host);
+
 	host->mrq = NULL;
 	host->cmd = NULL;
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
