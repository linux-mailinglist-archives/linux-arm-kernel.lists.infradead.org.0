Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E45157315
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 11:51:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a/FHaZAyIdqGZt2USh3Ofm3e2AMxv8o2fEy5+I10oWU=; b=DtbeFJNkRKdAux
	H8JwusdJoXQnfvy93kiGIn6ITLx13V/diWhHoLUwu6dpJONoMXhPRmvbh+ogVMaYqUuXaZoBlQ5xj
	5R/oIswvBmHHbfUTMad8AWWZ3Celn+c1hLCzzeMQe5gWbYYzuo1mNxD+RQIkcFJLQyBe68tAXWPGz
	W1HhHoPGvCfAf9pkGv9GbGxZYG1BiBHu/lwqMEYdgWq2sPEv7SND0DioyxONnjXuk9k9T1OBvH+45
	KhQRCUvEwLTttCKDUqS87Zvi/2XiiwPS7AKkzOkN4WAxZHf9V4LGeTn7zu5r8JSMmZP3Pk8N/Qt6j
	+audruwcFRN507IWCh+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j16f4-0001hE-Le; Mon, 10 Feb 2020 10:51:30 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j16ev-0001gB-J5
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 10:51:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id x185so3535572pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 02:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OBq9Wxg3rNYXND45mTJejeBW0qaZ9nSsHbegXEcF9x8=;
 b=ftHzx5eOWQlGm3C8QeR2uhQzu038c0/X4JMnx1G1weCDZyndLaC4dlIKZWqnduq5Uc
 LxWeF9fi0gEqhJt2JHg5epLlDP4wXfiVwj6vfLY61P4yOF4ruv9k0pIMn9QtHEQBwF9i
 dcIYqGe4+US5qAXNWHAepmlmdNq5X6V6gB8x+vrJMKC0x31J7eNxOsN1daGCeEwK5byY
 XMUtRxktldY4sZtm0En9e8ebFIv9z2c+AM6nJTCQBuAthHoUQda0szwe6Ev6z7jNPtVQ
 8xo7cjOp1pv3XHLEeeZtfQzo15lR/3a3mzyWlmuRV/Tiq9pvqeIoYWtdhz4tyLYZ7gNG
 Nluw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OBq9Wxg3rNYXND45mTJejeBW0qaZ9nSsHbegXEcF9x8=;
 b=RWvRecX0AE6vDscMZbluOtrDZok9lkxiE3O8XqJiRisv2EGMm5UNmlyQHc/GD6MV9e
 HonVA3G692pDHIyshaXmhxSz7Dy+P+sw64B+//TxdscuPZTywFK9gkkVu35Ax1x3UouC
 QEf3f9OGxi5Xwl/y5VMyeQjtxSIWNLFYui/WEPIhzLWIS0Un10PU5QgFDdJ1KUM1oLyd
 2zEQEvS5N/61AK5jw8AJ4ebRA/LkrMev2s4k92UvXHfKUNuzgAKpN5v1hZ5WlLsHLmiS
 mOM9p84PD59EBp2IA+9MKXjcqnh/FA9cXhaZNnciKAKMeaX9mDGXPCL06yfWGgVmiMlq
 yrww==
X-Gm-Message-State: APjAAAVcD0uxlB+tcyfELiEAMIBelzRFYPg5EkT2rJVkd/iuLqheRp3Y
 rXt2w82H1gBXY++aJX0+j1VqDH9v
X-Google-Smtp-Source: APXvYqxeRF90/zEsikUD4SUJJypsMyD4WZjz/yht4sgsIdjSjQZ284ZxUvHiyWkJHvuqABcIpJscGA==
X-Received: by 2002:aa7:9546:: with SMTP id w6mr608003pfq.66.1581331878197;
 Mon, 10 Feb 2020 02:51:18 -0800 (PST)
Received: from localhost.localdomain ([45.114.62.33])
 by smtp.gmail.com with ESMTPSA id g18sm12104833pfi.80.2020.02.10.02.51.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 02:51:17 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 0/3] Add support for suspend clk for Exynos5422 SoC
Date: Mon, 10 Feb 2020 10:51:05 +0000
Message-Id: <20200210105108.1128-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_025121_651369_F257D9F6 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Long time ago I tried to add suspend clk for dwc3 phy
which was wrong appoch, see below.

[0] https://lore.kernel.org/patchwork/patch/837635/
[1] https://lore.kernel.org/patchwork/patch/837636/

This patch series tries to enable suspend clk using 
exynos dwc3 driver, for this I have added new 
compatible string "samsung,exynos5420-dwusb3"
so that we could add new suspend clk in addition
to the core clk. exynos dwc3 driver will help
enable/disable these clk.

-Anand

Anand Moon (3):
  devicetree: bindings: exynos: Add new compatible for Exynos5420 dwc3
    clocks support
  ARM: dts: exynos: Add missing usbdrd3 suspend clk
  usb: dwc3: exynos: Add support for Exynos5422 suspend clk

 Documentation/devicetree/bindings/usb/exynos-usb.txt | 4 +++-
 arch/arm/boot/dts/exynos5420.dtsi                    | 8 ++++----
 arch/arm/boot/dts/exynos54xx.dtsi                    | 4 ++--
 drivers/usb/dwc3/dwc3-exynos.c                       | 9 +++++++++
 4 files changed, 18 insertions(+), 7 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
