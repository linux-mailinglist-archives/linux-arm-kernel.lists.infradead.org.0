Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB895EC1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 21:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OfeQlAl6CHAe41gKf9zi3OxkSDKEqq/W6koBqOOQwHc=; b=AIl
	To+qyB+NIX8YEraZa8c0zjxfOFRRwkUle9wlu3rI1rCSitpPHCIChLxcr+2lI8jNTSeD5xUW6s7dr
	UTbzjaFyr97UH+G5oT4ioe0YdlO9MgIYojGrBE67IbdKFTW9xWOIkeSEKRRDMps6tKCJqhxdVK0Uy
	ajfbyaeKH5pyZMipqZzbDUxxcOVa0RpqdwLvCa8fuORoCQBbsgoJ4BdCNcS0R1oxEASv3iRrXJudD
	FWMjmbNHj0XiucSyMLPn5qNloiXBc43rhlG7pw1BLMj3/tFDYcEyakOu+i/aBJ8TviIuZoNckJ0uu
	9R3/QX5PvvUHzv/HUdCb0fKE4kpqRsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikWv-0006AB-4k; Wed, 03 Jul 2019 19:02:57 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hikWj-00069U-7y
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 19:02:46 +0000
Received: by mail-pg1-x544.google.com with SMTP id i8so1670335pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 12:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=aooip+kWJxLFJyvTQdfnMiqXuVARSg/BQD76gFdkiao=;
 b=wx/uWhK5+yfTepystjQ2YkC6otrYPFbC/x/pda4pFsEQBh3iaTxVjp86GM7kjW6z/4
 bNhTE1Pm8RdGVPFzJo+a3a7IExJHK3dr0OWCIPw/27PzoepOl32N5zAwpk3fR+j2VUhL
 DjZGMUIj/PWPkvxTJm8cYVmnf1dX+JGNJawAv9UyFLo3mUF8SaWty+r2YGkGODd4MZBR
 hyh9XvCnVMgIbA5C1ty35B8i7RdYOHI25fE3+wE3o93BXESmlPkIdKowVi5zkzKqG3Lx
 tKt+2v3sPvxFOeLSBnCOo2Tp5GM2fMk6yZKs7vxtyOxejk7sXGVOH/U68GQSXhen2wrl
 tI1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aooip+kWJxLFJyvTQdfnMiqXuVARSg/BQD76gFdkiao=;
 b=by/lqAGrryi47yZ/e2dJrMK/UQA/wdHoFv24QYo1rOgqv3G8QvIclqKXOd6w0IPTcD
 tAflCpIVIFS7G6ho85tPfh9tbeIqTl0mOUXMf1TbU6uwDvcB/UjCG7F6Y/q3XDg62dpe
 zeDvaNHtW99FwyDqTs0XtBq5Ysk72XqwlURYb7lTm7QgOpZUJCjMA1Xqwxr+qTJZMw77
 +w4KW8VBXpYtNfeGIIW+a0ClpZs9P8Y9Bun+rg0EO2gM64CxsMzm1hWXeesrfca3bH6E
 IEBMJ5Ngea19VPUhAAweTomeDyK6PZVfoj7I/+TVvNdlO4h47seaAgOFjk6mHIboJjSV
 yOfA==
X-Gm-Message-State: APjAAAXn9QOhzPQmdXfahANTopvu82W+lqOyfDPNqG8HUsvVuvqohHZ1
 WloSzvyGoRXx5KM9zpny51o9
X-Google-Smtp-Source: APXvYqxqgH24xGX/KDx7bfh7omWTueZWvVekD9k694CbKHhIt6GaoeEScEcolwsrGHYfYSfUKvrc4A==
X-Received: by 2002:a63:5d45:: with SMTP id o5mr39174199pgm.40.1562180564114; 
 Wed, 03 Jul 2019 12:02:44 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:117:d72f:1d34:d0bb:bb4e:3065])
 by smtp.gmail.com with ESMTPSA id j14sm3631503pfn.120.2019.07.03.12.02.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 12:02:42 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org
Subject: [PATCH 0/3] Add IMX290 CMOS image sensor support
Date: Thu,  4 Jul 2019 00:32:27 +0530
Message-Id: <20190703190230.12392-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_120245_296042_1D58F63C 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
