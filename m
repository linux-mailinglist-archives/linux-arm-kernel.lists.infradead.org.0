Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12179A33A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Rc8DEvhPPlMuHDVOTqsTkoAU4h+zkjkQE1qqN6rx4H8=; b=WTy
	xUj1GhV2KLL2BwXddRDjdA5EBDHJ88SOoFrSfIj9C8SIt4YUPVaz+dTSb+0x3Xlyx1oCwZgh+2PjO
	AKO5MwugaRuzSIlYL0mhFZ8JzwWMa46yIRXVvfh5yqx25+lk5hIN7IFF4SrAfkua5PdMkIZFcmGRo
	5mbrMMG/ExKX3qPH1XvhSYaJEWm3LhXVaL5oIUnr5igCxsOIN2FLfGQUaWw61u3f/CHMA0yOoSeWw
	dVzwB3cnGtFv+0pKPKO+NFw8LS/DPRER7eZ93wWTIFrMEoObxe+5/NMgqNttx7ssLG/OB4453040a
	UPLYwjuJr1B6IHHYPx2q4/TcLU6A7+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3d4r-000848-I4; Fri, 30 Aug 2019 09:20:17 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3d4Z-00082o-TY
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:20:01 +0000
Received: by mail-pl1-x644.google.com with SMTP id y1so3079405plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 02:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=MO4FAsdSxcjZz9XUXbUG6G+n0aMjGeZSAkfHq2M0InE=;
 b=mB4OiYZrs6fA8SMC4/yow7KH/FEcJ+DUD2HdqIiWDf0i5RXXy0iuV333yVQySpoCEt
 kLMSaPWrhXK98sWf1l6nUxdyiisqXR0lvCbhs6jiax1wpUTYNGGf1WlmcUsghyXRSQ/r
 P8RcDykrrJ6RN1LPoLh2tOOQNP/cwZG+mVpYN36vdzIIARFtLhIV0s072z1u9fH4p4xf
 SuIRvHFJEt9H7zXyGjj8zaQNZjHMpq9B0HnNRS7W3dSMo6QzbylLnFG2U+dE08eJ5C9U
 xpVunDMIT+sOAaLg6j6nLaSX5Kh6kEymJOn1DAYjlWngKxrIDFriGdkha7fdJlBIVXjZ
 0gmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MO4FAsdSxcjZz9XUXbUG6G+n0aMjGeZSAkfHq2M0InE=;
 b=fJa3uOq9QI+93at8icBuUV8Y4RVIQtL0zwQLt2jA52s4EO1inGuyOC8uUTYsgI9Nie
 8ifA2eg89WX88uArf5ptYtf5eBdPFemkXUHHsuzWX29h1VxN9ZKA36ARelpayPGXWlLc
 aXMJlEFAxxpMHDIsgpv7oP0urVRiH44pxrrd5N0RTeE2TMhEwcdchjNzsMkbzQbO3/Am
 puRrbVrP9QNe25N3GvcHN+Phux5m62jV/u15zPx8K0rYlgJQXS0Rq8583cnnmjdSP+8D
 9o+9fZFo7C2iOZ7TgjgpuAyB5tjQu7aaeGdBv1A4tKOUBBruechsgzsgKYu9P92qT8//
 bZKA==
X-Gm-Message-State: APjAAAVxCxvMZHxyToESIaTNOyNmeOKIY1jI/2YmbCVOVfypVrCyyZUE
 Jj/c2R7tUOf1Cq/WQIrI/FPQ76uwwKJV
X-Google-Smtp-Source: APXvYqwet7PSlkqIUyr0R1qYH0rq5kyhy+3t/vPHkgqfhzlLHiPco1D8+brDPe1ilWjwMyEX3aXUlQ==
X-Received: by 2002:a17:902:2bcb:: with SMTP id
 l69mr15006887plb.282.1567156798541; 
 Fri, 30 Aug 2019 02:19:58 -0700 (PDT)
Received: from localhost.localdomain ([103.59.132.163])
 by smtp.googlemail.com with ESMTPSA id
 g202sm3142676pfb.155.2019.08.30.02.19.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 02:19:57 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v3 0/3] Add IMX290 CMOS image sensor support
Date: Fri, 30 Aug 2019 14:49:40 +0530
Message-Id: <20190830091943.22646-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_021959_952436_471A5F76 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Changes in v3:

As per the review by Sakari:

* Switched to pm runtime
* Used link-frequency property
* Removed useless read calls from buffered read function
* Some other misc changes to the driver and binding

Changes in v2:

* Added Reviewed-by tag from Rob for bindings patch

Manivannan Sadhasivam (3):
  dt-bindings: media: i2c: Add IMX290 CMOS sensor binding
  media: i2c: Add IMX290 CMOS image sensor driver
  MAINTAINERS: Add entry for IMX290 CMOS image sensor driver

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
