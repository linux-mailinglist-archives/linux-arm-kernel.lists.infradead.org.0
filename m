Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09ABE997C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:50:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UlcgC+xXo8owZQGaYQAGDuGSQMm+6YO206/vHx++VLM=; b=OHQ
	WUJj6JLM2NN52aMRlWnlGUIhc/XszG90TCHDJE5uwh+HvPTVP3Ks/7p6oidm9WpB4n8OyiaM1LatA
	d92H7eZ/F0FBVV4XKRf/SB7+z9H1X80hmvjyCeOSjiPaykSa9YsQNh2SZFAnUdqcPaWBDIkz2fnh8
	+AvuW908bQKjoagMmXFISn1XTDQKltkBoo4g6MPwKfiWa790cJFpMltu5kTI2OtqfqDSlf9+Giv7J
	ZsICqbdJAh8AlDjm6webvnSNV8hpjAl+7CpjRelwRmjdSbH21yiW38NnqkYupg9GhQgOqtCymBueN
	r9dNmveBcnsvW3yAVEILP8Pzp2WZWrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPkce-0001C2-7q; Wed, 30 Oct 2019 09:50:36 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPkcK-0001BL-D8
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:50:17 +0000
Received: by mail-pl1-x643.google.com with SMTP id q16so743338pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 02:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=dxdq8UVKYIoWezTIVtNtXNzC1j7K03aSUVKZV0KfYRw=;
 b=YnXmlhvmJfVKB0QmBFuEk1Dm6DSXTswd+nqgqBYqzmGyWTUPCNZxiLaZ6OveR3YPSE
 IW2bdz58hEfhH1XY8lrAtgzQa2fz9t7PRS1LVa8dzzm95V2ktPvt4+u7Zsd8pQHkGerw
 6Lx+ce3tDBWdv3koWwURnOQutmFyd+s9QK1OsuJaiTcO7x3Q4ZII363HZpWB2+/O30mM
 SwYaPJ53x/pu5UyACmPBtEsATFQ6TYlmatUqqXiEIK0VOFLxKD4M+O8AjMSnD0+cq/nF
 o33Vv7TjeO+rV/OuPdcUyYEgIuw33LFtFrUkyk6bqnwzC30I3hcbeeOjPBA4wQCfXtGU
 Ch2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dxdq8UVKYIoWezTIVtNtXNzC1j7K03aSUVKZV0KfYRw=;
 b=hBZbhhkRX9ABsQ4GV1D/lwjZ++ShQv9SPl9HJgZEQygAa4acd2NuwKtZPOT1+wfB5J
 MqMofXZZk7e4tHaKWIrnaac3AMNkGJHWcw1E1hsyXcwrPypZHJ1ufdXPm8g24KVsh/Wk
 V52o3+PObaD19YaoTNdqZOW8duEBVBhYAmaemJmlnhsVp5sTyb6K/3swh3rgWNgEG/ni
 iGVfVMzypTFxVzW/IFXs92DufURUwvxPwR3xl8d7QL0K2Ts1vcMJWvvYhRAkQUsxE9gV
 zRGyZH2zLUNcmMZDlN45zTmqjbLybdez9lT1osxljV0GJGxmr3dbmDkACb3V6ry6QA0c
 dPkw==
X-Gm-Message-State: APjAAAWTbpVCecWw75MCGjJSi8WuD1botxFEArQWh1R0hQo4gocAYJwe
 pSdJhj3fxRu5FjbH3L63ulKy
X-Google-Smtp-Source: APXvYqw4kJLQKZSWO1XO57Sx5aIe0oheAiqfVnYm2K1VgupBhhuZBmqESudgkztCyR7WtYQb6nqZTQ==
X-Received: by 2002:a17:902:8d86:: with SMTP id
 v6mr3621909plo.79.1572429015669; 
 Wed, 30 Oct 2019 02:50:15 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:618e:77d9:c9fa:423a:3851:8df4])
 by smtp.gmail.com with ESMTPSA id n23sm2301329pff.137.2019.10.30.02.50.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 02:50:15 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v4 0/2] Add IMX296 CMOS image sensor support
Date: Wed, 30 Oct 2019 15:19:00 +0530
Message-Id: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_025016_475397_D0C9BC4B 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Changes in v4:

* Fixed issues related to gain settings and few misc cleanups in driver
* Documented port node and removed maxItems, default prop from dt binding
  as per the review

Changes in v3:

* Fixed the reference to video-interfaces.txt in binding.

Changes in v2:

* Switched to YAML binding

Manivannan Sadhasivam (2):
  dt-bindings: media: i2c: Add IMX296 CMOS sensor binding
  media: i2c: Add IMX296 CMOS image sensor driver

 .../devicetree/bindings/media/i2c/imx296.yaml |  94 +++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  11 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/imx296.c                    | 715 ++++++++++++++++++
 5 files changed, 829 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
 create mode 100644 drivers/media/i2c/imx296.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
