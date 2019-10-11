Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B183D381D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 05:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vIYXwZgHtQmSIVXD1U7Bc0dS7HceJlPDHaucH1OuBWY=; b=Nac
	UE78eQdxEuKDX5eVif4O46jnf97RoDZq5RJ9LTfT+DhEowcPQv5H5vPVcl0U6DOKJ4vYL2d5yEOdJ
	6nK2vlta3PGrN7ZAzt0gRr8xn1XRhN0sOVq/tdGq8SdgDLU71x/ZxyEhP0+9suuZdN0/kpoRQG8KD
	UkrWobJq0vZIQShOs5dAqubopD7PTN9DrVGq1qyerMiQvy0WYoa5Rpiy4nbcUaXcMH/Afed+n/o7C
	1mqWoWzxcakB6nt7BD1zM5cI61kDluiUU+8LTDkK/VGBVt8mG0HROi+9wKoA1JtRaKS5/4D72Do/e
	0MRTywKeqUjniP0rTieC7q8E0f9cBEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIm2j-0000j0-5h; Fri, 11 Oct 2019 03:56:41 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIm2W-0000iY-Oj
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 03:56:30 +0000
Received: by mail-pg1-x541.google.com with SMTP id p30so4987086pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 20:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=SVBIZ6TutEvvopb2bKkLN3mfYjjRYFIVl60EmQThixk=;
 b=y/75rxgAC5Na+RGpyEeX9rvjD5h7d6xoHOp4IQpNng7jLQQsmogQYVjWVMhnNTlYVq
 SB+8kfaErnFC4/Tam8D+lMTc9mBcFljO5xULgPipZfgve2YoD/KbbDPKPdIQ/QhxKEPb
 DSj3MGidtddra/kXbCC0tIY1IIKAIouMyv1V0DHMv1pkCOThIluKf8j7efGCgfXuAdM+
 T6zIIHQNYjhAtOjcDZ4ME+91J5ZFlsphbVoyxeOJESfKgvhODyhDLLFESHqS4jWdKSm+
 jsKADIkrUaQOtNHPuAVWF8FNLTJG4DSm5GyqvEj+0wTwod8JgoNH7XAhhdiadCjJNpbJ
 /dIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=SVBIZ6TutEvvopb2bKkLN3mfYjjRYFIVl60EmQThixk=;
 b=IKWLWNIGIlY49cGll72U2SoIjzpN42F5mQcwuft72RBerRTQpsYpIhvqp+tOR8ZYU/
 xgAEeCsoRxFtLG25PG82tm8JKxElTQ8h7w8IPgqI2oz3ljLVmA7ktWpQvz6OH/uwfIp4
 ko6FtXVJr1tYKRqiy71KnMVEdU5OH49rz97yDOGdEgQ3mQD5VefuhoXV/vee2yekUFsW
 nTJ3srRYQhOh+OoVshr/lKKYGrGYGZcKvLu2bLTKc3h8rOKQt1NCHsop6VE6h+APALKb
 UM7TMoXGz6OuiW7SaayDAgbor2BzDcsr6mfqt6GZTlQ22aQnZ9uGDN6qMdquT+y7t7B5
 m//g==
X-Gm-Message-State: APjAAAVwijwXD/EOG+3MKDAG2eCmbZlXyym1CBNdt1l7ujKzYrNqk8tn
 B0sonPVNuGbH2MK4sqyj/qyqWg5UdQ==
X-Google-Smtp-Source: APXvYqxQNZ1y/2ZTnuluqLNI6S3eCUHXdneW8RC8NfEDQRnxgr9BPuUGs2KRoVSfEyvXvXHI5nyHJQ==
X-Received: by 2002:a63:5946:: with SMTP id j6mr14544603pgm.214.1570766187160; 
 Thu, 10 Oct 2019 20:56:27 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:638c:660b:18a3:ff6e:e66c:65b0])
 by smtp.gmail.com with ESMTPSA id b185sm9534210pfg.14.2019.10.10.20.56.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 20:56:26 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH 0/2] Add IMX296 CMOS image sensor support
Date: Fri, 11 Oct 2019 09:26:11 +0530
Message-Id: <20191011035613.13598-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_205628_834886_0D80553A 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, a.brela@framos.com,
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

Manivannan Sadhasivam (2):
  dt-bindings: media: i2c: Add IMX296 CMOS sensor binding
  media: i2c: Add IMX296 CMOS image sensor driver

 .../devicetree/bindings/media/i2c/imx296.txt  |  55 ++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  11 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/imx296.c                    | 733 ++++++++++++++++++
 5 files changed, 808 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.txt
 create mode 100644 drivers/media/i2c/imx296.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
