Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3522B1C24D7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 13:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uZQ84jPyx2WgXVTsTkWresrtvfBMTszdQBhM6Z43UZo=; b=kNZtZwhYUh2hB+
	loi6Ve3KWlbvaZt++xMkfFWAWNQ01TXAVI0kDT1kJLdoO26OYYT0UijO2rbBoOtG1IHs0Bu23ixNf
	UeiyG0AQpVx05HOLG3Vw4GIjUk8ijZ5EUB8EdtHCGWbT05GsFwte7DLJZrw4qYWnS7P+xDPoRVjWs
	jPud0rgZtGrmcjEUoPfgCT2aS9WXwFRwJWg1nnEtK9Ll1HKOUbmFjwb15+7aDwOnloLj+lcqNnf8t
	1zMqhQLdYxQAHIoqfF0VDu4p1Mx1HLfYRICMnMM/onRostCMEAg3AjS5iUgV9pPWzHVHqBoMepr2I
	7sOxGarf3NbNtP9fcVVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUqdW-0007rx-Dx; Sat, 02 May 2020 11:48:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUqdB-0007d7-UE; Sat, 02 May 2020 11:48:31 +0000
Received: by mail-wr1-x443.google.com with SMTP id h9so4644499wrt.0;
 Sat, 02 May 2020 04:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kJ04P7TSqYHI0BEsYEPy5ZIV1UfajleYqyakQOSdSE8=;
 b=LxjJWlYBZodSX5E2jkNwT/W4PziNmRdCiio+Z1evlx1zNwhx/yoPrIcoN+ucvrGU0C
 +76kBrRHgROeieclsMy6Weh53cFFIfVQxaL1UDjweptSecxGeMQdTPkCtUWmv38445QZ
 GjNbivCQX2PR+qSifcZOWNVU7Zt0nsXQQ9TW5kvtXijoBYjJvhxxpyJbHdeh/t+V4zBk
 R9tpxCGDRH+eY+rt9G3yD38xmnoocJv9Zg4yLZ7xizk4F2KXoyhCmMsAGlgzqARbwEu8
 te2xwl/bJoHf95zTo2s5rTY1QIZVL/zqfNqe8AJU4MKRsaDzGhkoAKPxDsKyxeijxQgf
 ir7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kJ04P7TSqYHI0BEsYEPy5ZIV1UfajleYqyakQOSdSE8=;
 b=rD0BZVkte7nQlbd0QXf5Hyrzrox4TG3DKpSEfi6tkY+oties6I8DsQPSMN4kYPDwmi
 vwNzmq7qIAqEi3P/CwlOSoxDq0xXZ3jVd2kMPMMrCb9YKIIShESJ/xG47D5sU0mQbYfE
 WmoK6GdQTuqwgJj3RK9ZtmiePFxkZupAnPphNJaer0352IuuATogGeynFr9SplbuXtSp
 VSt3viOwRFPqjQZV9FvY6xxser/SzXx1LqcRPGAGV+ykQXGCYlSBKIZVzpOVxjJDyxWE
 t16bYpA/hYu4eAXaG6Z4wMWrra1zHt8+3uZ2bnNWeVYZKVL6eOwXGsRtqxGx7dsr2E7s
 Ca2w==
X-Gm-Message-State: AGi0PubK+a502KhSYTyLrubShcLYYXHTqh+1S5SdSAIDZb/PavuSy0E5
 eaFqxllkwbbgI/y2ysizkBLHsKRDq7Y=
X-Google-Smtp-Source: APiQypI4ZUBAtewD7nQbJlc7jakXABjmhVSfjjkwsJjCou8f1sz0NzCq6maAGyorKQSE9MIlA+3JPQ==
X-Received: by 2002:a5d:45cf:: with SMTP id b15mr8718208wrs.78.1588420107254; 
 Sat, 02 May 2020 04:48:27 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id s17sm3801599wmc.48.2020.05.02.04.48.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 04:48:26 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: kishon@ti.com, robh+dt@kernel.org, vkoul@kernel.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH 0/6] phy: meson8b-usb2: small fixes and improvements
Date: Sat,  2 May 2020 13:47:46 +0200
Message-Id: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_044829_997217_78F5A79E 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 hexdump0815@googlemail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a batch of fixes and improvements for the phy-meson8b-usb2
driver:
- convert the existing dt-bindings to json-schema and add a fallback
  compatible string which is already in existing .dtsi files
- differentiate between Meson8 and Meson8m2 using a new compatible
  string for the latter
- simplify the code by using a MMIO regmap
- set / unset the IDDQ and ACA enable bits depending on the operating
  mode (and for the latter also the compatible string)

I suggest that all of these are applied to -next because we will need a
separate .dts patch (which I already have prepared) to use the new
Meson8m2 compatible string in meson8m2.dtsi. Otherwise we will be
changing behavior in patch #4, because meson8m2.dtsi currently inherits
the Meson8 compatible string.
The number of actual Meson8 users is very small (I only know one case),
so keeping Meson8m2 working is more important to me (because I know
several users with boards that have a Meson8m2 SoC).


Martin Blumenstingl (6):
  dt-bindings: phy: meson8b-usb2: Convert to json-schema
  dt-bindings: phy: meson8b-usb2: Add compatible string for Meson8m2
  phy: amlogic: meson8b-usb2: Use a MMIO regmap
  phy: amlogic: meson8b-usb2: Don't set REG_ADP_BC_ACA_ENABLE on Meson8
  phy: amlogic: meson8b-usb2: unset the IDDQ bit during PHY power-on
  phy: amlogic: meson8b-usb2: Add a compatible string for Meson8m2

 .../phy/amlogic,meson8b-usb2-phy.yaml         |  62 ++++++++
 .../bindings/phy/meson8b-usb2-phy.txt         |  28 ----
 drivers/phy/amlogic/Kconfig                   |   3 +-
 drivers/phy/amlogic/phy-meson8b-usb2.c        | 149 ++++++++++++------
 4 files changed, 162 insertions(+), 80 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/meson8b-usb2-phy.txt

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
