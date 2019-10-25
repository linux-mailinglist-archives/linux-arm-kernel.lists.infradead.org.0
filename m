Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC282E5292
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 19:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hO4FBCBowysnDt78Efq65Lz3xytwWRewcxshvzlM7xE=; b=pyJ
	F/OMjGceB+4Z/JkyI8ddw1V7jkaq9QInkpXfDmsdOcbcnm+t6qQqSvpamHaD7h2q/aHFz9gWYlOD1
	Gw+q1gSvicTVAvBWgUz9KnglwuKNrerNTiLL0bf7uiLgnFRX4ANXq4GBNXliJioMQ4tPTmfHrnq9w
	SOitL+GRhFz1aWgt2M5OerskGYODDNOVr4nsr89T36B886SMBWWk94VMyzfcmpJ2NxKka8OM/w6Q8
	Rai8bkWP8iKsQOQ5RqzVNqJUOIU9HNuDunOYT2T/lFu/j7JuInC0uTcUTmeSllD9MpQa/dWYqoVrE
	qQs9TJO/In9tgPH1RysihqFf+6HFXOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO3ke-0000GH-Ah; Fri, 25 Oct 2019 17:51:52 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO3kP-0000FV-TO
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 17:51:39 +0000
Received: by mail-pf1-x441.google.com with SMTP id v4so2050131pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 10:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=0u0Pm2MaDUwplKmc1bNNC1kj7B+w8FbdiY927/v2PRE=;
 b=fB1gL4Q10Ah/2YfT9z2if2xKcCXqbQhWuRT7CMJRE6ePg7WD7AuVGYlwOsjXOsAUzI
 QBmebtaHd9bpyAzwmy9Vo2nJuiKX/ElyqnYPFm0zrnM1ALkwlUpJE2bjwz7ue/pEMMX5
 jgbQC10zmfRF7xSc/IjDNXBsRya5lmu2+FMvU7tVut7kfSlkPNhjK7zMghJdljWQDN3r
 V60DmjicYEjFxDbfU5ZA6yINx8M9/bRCNl6aymRsB8jIFbYnqtBHGvjLM3Ox/nISEOBk
 EbEyeqUHPz7g3h5OSUMcbq6ZlqiJx6w6vp0PwlpoutOjsqoHMkeeJMZnyQQ/1YLf94DM
 AVZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=0u0Pm2MaDUwplKmc1bNNC1kj7B+w8FbdiY927/v2PRE=;
 b=geYcuNaiFcH6CtebSABli40qqIrzxgAC1lLNd4RIJj+b0h1cBjnlcMxA6Kwi5cb1Gc
 Fhylhf+SXKVnWaJ8v8kpvWPThQM+bvpwOCUEFkRQk1ePxl7UX6JbllofXxHVBQiQHW0U
 yoSmaYu38jNszOvS256xuGy9mcr18ed+MFsks169iGA1G83ZV0Xoe4e9BQXvSD9tv324
 hJxGQcs8uYeFYUOCIO+ON4pV1vkjnLR59bdo7imVQeBZYoOqO8cY3u9i0E3O59ImmIu7
 udLwtJ3kkqu1daoL5mGWfMAZceFm0C8m6Mt/PZGOV/NgLlwPddU24If0GcBjp7Dt/YKT
 DfDQ==
X-Gm-Message-State: APjAAAWqvSjoe4rD+ELjQu+tvXLhaSrbeHRtnaXf3bWfCrujmGwJjtnl
 IZ2TqCxRZYCeRqHSWFMACfMA
X-Google-Smtp-Source: APXvYqzRIk413kYwXUWGVwVmwRUj/Tq9t6WKTxMk1Hf4QEPGYM3So4lhZhQUhTsYLNJstkpWUBKkQw==
X-Received: by 2002:a63:4e1e:: with SMTP id c30mr5686911pgb.89.1572025896500; 
 Fri, 25 Oct 2019 10:51:36 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7108:7f86:4131:5b00:9fc5:5eaa])
 by smtp.gmail.com with ESMTPSA id d14sm3916345pfh.36.2019.10.25.10.51.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 10:51:35 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v2 0/2] Add IMX296 CMOS image sensor support
Date: Fri, 25 Oct 2019 23:21:16 +0530
Message-Id: <20191025175118.13307-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_105137_977972_34E4AB7D 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This patchset adds support for IMX296 CMOS image sensor from Sony.
Sensor can be programmed through I2C and 4-wire interface but the
current driver only supports I2C interface. The sensor is
capable of outputting frames in CSI2 format (1 Lane). In the case
of sensor resolution, driver only supports 1440x1088 at 30 FPS.

The driver has been validated using Framos IMX296 module interfaced to
96Boards Dragonboard410c.

Thanks,
Mani

Changes in v2:

* Switched to YAML binding

Manivannan Sadhasivam (2):
  dt-bindings: media: i2c: Add IMX296 CMOS sensor binding
  media: i2c: Add IMX296 CMOS image sensor driver

 .../devicetree/bindings/media/i2c/imx296.yaml |  98 +++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  11 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/imx296.c                    | 733 ++++++++++++++++++
 5 files changed, 851 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
 create mode 100644 drivers/media/i2c/imx296.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
