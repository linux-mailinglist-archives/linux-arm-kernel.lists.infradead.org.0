Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9229CC01A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 18:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4ZRwIZdR0FO2IE9KPzB2v88V3DPq9PksOtzGhwxB8i4=; b=Hcj
	xSDKLnF3vDst/WRCZnROWgo37MlP80OyGAQ5Bxr0J5XdcfhsnwnB893Bt+Fp/hthkzzfTnn69UeCq
	asLBfhJ9RidHp3AdJAocKwoCKIwTSmK805N/xGY5qg6P8HpNBvjxJKg+gUsf37muMfP9gb/hQf67F
	L6tsduEQ5gjIUEnXF/t9Z0YEFASUhn6hs7eTsxTFx/8O1bfNJloKxKVRaajzev6G53aWK3fmYR8fh
	+sUDn2wQi3FMo4TE/0t01GdX+wtiycjVBa/HolKpeVSXWvkdNgXmdUneUziyDlRaPtzNOMADO8iV7
	rysw+p8NKTp4c8gJBcewrdsHXKIFnFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQ5e-0005ES-PU; Fri, 04 Oct 2019 16:05:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQ5K-00058t-Pq
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 16:05:40 +0000
Received: by mail-pf1-x444.google.com with SMTP id q5so4133319pfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 09:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=G6wIL875XZuorF2ZOZc99He9fmBICo2vTYfV+CUzHL0=;
 b=lOuj9JiU977ulIU8HkqDBOBQQ89TzhSSv3/X40mTVvctu8QgNnMEIzSohNVLZHTw9V
 yi4CO3DHpQmGWba5f6J8A1SPWwbNg0vzxLlXPa1J4d0YZdy8fz9c6222HH1f/Urwv3DV
 UNrq8NVfMurgeOIegEddRk3k4OFNyZtxaCMX4L3voGeVS3AIC0U7cG4BA3y2LB2LatBW
 6NtnN4NrYC5YhFQ1qf30iUGq72FnmYVgm/jt0U/ZwAXV5aFOQiHzcBMCx1NWz8gSwJ6+
 9hRdIeQxlzIoepLgK22iFJj6lS0qDcqEBgpw3FURlwS7DPIRXKoIGpuN9Yn10L9nQ9r7
 R03g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=G6wIL875XZuorF2ZOZc99He9fmBICo2vTYfV+CUzHL0=;
 b=jlsRG4PqKk6nDn5u8+LW4qBA+m907R1tgOBZ4Ik810ggUsc3fTxFUA1cudcbJ0pFX0
 WI2nHxuTiMte1sxN4gExd3qUFVv8r1qBjPvXwr5HCangy250cnfmOqipTE/eUexP9nQg
 Tm65gEFE+IIYkDOy0duIUBvJCCbB1WZZEL/KOZem1LY2Yj4DVNN0p4d9oZvSWcOnciYI
 IpDy/zjk3MrvsImtLxFFYwRXoWbJZBHXFSyHIfPhliXPc2BN+64fWP398jnpGvI3UOVP
 FRgsvUvVI+YO+PpYHOnIzngsNcuaPUGg+f+JfcOObEOzk2xJcwJwltMrykrZO4pPwZgb
 WA8A==
X-Gm-Message-State: APjAAAWB9f6sYQDuZ49Ic3c5fwuHE/X/Nma88p1G2WY0toFmFsbzjAPw
 auQw08Ht23TSDVGo8+Xh8wv9
X-Google-Smtp-Source: APXvYqwEeenp3fnA43Qgkg6DKMInAhQDlL7l8FbjYMHEpk4Ij7IGN5Hqostll6TJ9guDv3Fr28fVSA==
X-Received: by 2002:a17:90a:e017:: with SMTP id
 u23mr2556438pjy.55.1570205137188; 
 Fri, 04 Oct 2019 09:05:37 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:648a:e40a:3174:4ae1:69ba:aabb])
 by smtp.gmail.com with ESMTPSA id b5sm5402254pgb.68.2019.10.04.09.05.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 09:05:36 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v5 0/2] Add IMX290 CMOS image sensor support
Date: Fri,  4 Oct 2019 21:35:23 +0530
Message-Id: <20191004160525.16716-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_090538_861725_9F3FBA42 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds support for IMX290 CMOS image sensor from Sony.
Sensor can be programmed through I2C and 4-wire interface but the
current driver only supports I2C interface. Also, the sensor is
capable of outputting frames in following 3 interfaces:

* CMOS logic parallel SDR output
* Low voltage LVDS serial DDR output
* CSI-2 serial data output

But the current driver only supports CSI-2 output available from 4 lanes.
In the case of sensor resolution, driver only supports 1920x1080 and
1280x720 at mid data rate of 445.5 Mpbs.

The driver has been validated using Framos IMX290 module interfaced to
96Boards Dragonboard410c.

Thanks,
Mani

Changes in v5:

* Fixed issues reported by coccinelle
* Moved MAINTAINERS entry to bindings patch as suggested by Sakari

Changes in v4:

As per the review by Sakari:

* Squashed the MAINTAINERS changes with driver patch
* Some misc changes to the driver

Changes in v3:

As per the review by Sakari:

* Switched to pm runtime
* Used link-frequency property
* Removed useless read calls from buffered read function
* Some other misc changes to the driver and binding

Changes in v2:

* Added Reviewed-by tag from Rob for bindings patch

Manivannan Sadhasivam (2):
  dt-bindings: media: i2c: Add IMX290 CMOS sensor binding
  media: i2c: Add IMX290 CMOS image sensor driver

 .../devicetree/bindings/media/i2c/imx290.txt  |  57 ++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  11 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/imx290.c                    | 881 ++++++++++++++++++
 5 files changed, 958 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx290.txt
 create mode 100644 drivers/media/i2c/imx290.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
