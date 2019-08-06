Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FE683257
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 15:10:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kCq+CDsNfkAPYYPpTGbWEGVv/zphveO3zE+qvRIQ0rk=; b=cFr
	/3pXLAO73+c/H/OULUkdzk8Lo97jjnfsgBAKVRyRYx2V1rFaN8yz7bjE+nFhFkUvUOUaW0+hjKs+J
	ioeq/3jP+r2Qe5KAffhYL9OrVBaQM0KrbBlZDsvgG8Pe//gcRBX/NCwMSucSZYeG72oC5s0DpPHRd
	nqK+D+7DDOcy3Mvw0vvM7iVqaR926j5E5Dxpw47qGbEScCvC+43+R9KhCITsKY1W3gqT6EWNZSSnR
	CRUWB8CkeMI1x2YXAOhl7phtHQUcjbs020QuDDBtiaYL3J0wgqrVMM+72q76ufHliaie5moMdxeK5
	8w5bdiA4mY+mR9gM22UVvKGuy270fvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzE4-0002tu-8g; Tue, 06 Aug 2019 13:10:04 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzDs-0002tW-7K
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 13:09:53 +0000
Received: by mail-pg1-x544.google.com with SMTP id r26so5625174pgl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 06:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=N8P6BFsOop1K4eWiuZrjN6EJTn34oYRRKch8Go11cDo=;
 b=RGwMVnpzulBrHLjEt9tPbu30lO62P4BcdDb4BrorNxVv35JMEiyj1sYFXsulCS11wn
 wh9a3MUDL1nrPNHp2L8+Ap8UGJ+TIHjUuQQPlCfYP/k3lppoAEuA/M2W1DyCTGhHbYya
 RBVQz7S+zXj0cFqcEC9C3vK7rk+pyl5Bp4VTF7SU2F5x56UdDHWUcAhXR/2jE/q/iBVf
 eOaR/HdFKRT8gtJj8mJhgu5Uuee8Np2kXwt/TeGU57t6LnR+Joy10dK7RtVm0uJUG7kl
 z1N4VnY9Ik6DtLO9AzXz9vjhuyzpCPcu8X8rUnMOIhFIh6dNPZNcrgmMpH/LMc+TZWps
 Xi8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=N8P6BFsOop1K4eWiuZrjN6EJTn34oYRRKch8Go11cDo=;
 b=Vua2aU9kr8oDG1yY9Qn1TUkPZ8MSHxLYcIdkTWeFnFNDlHWaCiTipaOJrqlW1jYQ8W
 96WJ3FeXWPWu1UwQpqLYvec7z/n6daImnaYjUDP7A5P0pEULnYhEXLNmmnTctRnFyj/y
 oVITXfYnc3FYZ1rVyu9ED8b2TWPa/xH5AJtJMgM6ZiRhkBgDJNAZ0T+H51sX6/xEtMYC
 f+ae0sBXynDrnenTZspMpevUrLxpSVlb4G0Rh2sf82l9rxBip28Ed+qM+YxEhwL/1ENG
 Z8hHU+loy64Xfoa6NEhDJOgD2dMfOqu4lslFYxRKBTXEvWO1pK74CnZ5ME9ioWSxZu+7
 OdCw==
X-Gm-Message-State: APjAAAVYGGHJvEvAUPnJHvOnHNtx+ZnHTHaeEroLLYXVvMWBwFyj6J9M
 Lo1a/xuOo+NNwpbvi9+vJOEc
X-Google-Smtp-Source: APXvYqypPfh5IkZ43BoV4ds6TppwLwnLqunFBQ3Z44724sReR5l6o8QdGcy0mOfyeaQtjvbkuF9hhg==
X-Received: by 2002:a63:c64b:: with SMTP id x11mr2960012pgg.319.1565096990514; 
 Tue, 06 Aug 2019 06:09:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7180:928a:153d:caa0:477e:f9fd])
 by smtp.gmail.com with ESMTPSA id v8sm73715371pgs.82.2019.08.06.06.09.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 06:09:49 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org
Subject: [PATCH v2 0/3] Add IMX290 CMOS image sensor support
Date: Tue,  6 Aug 2019 18:39:35 +0530
Message-Id: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_060952_271602_328B27C8 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Changes in v2:

* Added Reviewed-by tag from Rob for bindings patch

Manivannan Sadhasivam (3):
  dt-bindings: media: i2c: Add IMX290 CMOS sensor binding
  media: i2c: Add IMX290 CMOS image sensor driver
  MAINTAINERS: Add entry for IMX290 CMOS image sensor driver

 .../devicetree/bindings/media/i2c/imx290.txt  |  51 ++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  11 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/imx290.c                    | 845 ++++++++++++++++++
 5 files changed, 916 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx290.txt
 create mode 100644 drivers/media/i2c/imx290.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
