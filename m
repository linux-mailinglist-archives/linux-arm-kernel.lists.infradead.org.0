Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E30710C04C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 23:39:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qlj+vsIt20YAIac3U0pZQ+ZQRS1LMg3cELSUX/hfmKk=; b=HirDt0dcNsBSP7
	W/lGoSpaMsL7XFLpSPvfWS1+JZzDE3Rm+wX63bSH1VoXjsNILEjWwF9SlmxHEcVff+xR63BT2HJnh
	jZVqkUiy3qDKddu65nnjZkIsDSH1zrSj8HAZk+KURx8YBmrq2mFjD4mdIu4jGz2k5o1T0VdWmsg03
	rztwjXEIxIo+elbzYshFpMV78/sgPahcNlzenCrEO+bkMFN3DeQ1sUQc7BGMak+mIKGUasLPt4/n5
	nV35dNpSYF5JYn8X8F7VSQ2Q0npnWQ9vBUBgiYrfviQhc9zVvBO61fDBqrdQtZM1xHgUikFH5y8t7
	zxR+GiKne/j3HpxqIZ1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia5yC-0003hu-2e; Wed, 27 Nov 2019 22:39:36 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia5xv-0003gD-4U
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 22:39:20 +0000
Received: by mail-pg1-x541.google.com with SMTP id l24so3253870pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 14:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EHVbHRnSyLZIvpQSJdKBuo3vPPZlfvB1a4T9xCgdTuw=;
 b=SFs22QNC5hMmqvZPW40mcmcBBPmEpdsOtYsMagwY9mLUglW4JRbrQ2P/YfKX6icomt
 NLkRrpV4fVV4DqFWxY2+o1sPGR5wSnEhGfUZ7IaeX0l4QG1cLky+X1vAO9Oe3Z1+jozY
 3Fc0j+mCHcHt0e2uOj7TE4FtHTgCkuVdKYlXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EHVbHRnSyLZIvpQSJdKBuo3vPPZlfvB1a4T9xCgdTuw=;
 b=FhH5GNyLn8nOVRun81gMUOo3HlnlbQS6Yvc34D4oZBPGKrnKc2jYeorw4CtVQAmIh6
 DvHG/EVMa2U6JVhZYreyK6+oZP3zOet0A34bnfimZg+8HdNNQ1QoL0jkI3VgsXvuAeed
 yNEeZabdARuXyJRGlOOToA80ynFWA+RY8+dpmlWIkeTvUPF3x0rVFgW3vbqdhbaoHX/p
 e/uVT27bRbryR+59vFLCO0mUjeX5Atq0fNPVSffz+TEgPH8Wjg8jk2XbwVNcDYvWJMz+
 W2NWvvqUDthAmr6UtRcRgQeX1kjmOa1msNxJkhYrM6VxiMLY9qtFyi3egZl2Gf6t2htV
 ycJw==
X-Gm-Message-State: APjAAAW1Ug8QfsfWeIQRrPLRdIzWo6caXKXHpOsSB/4s1gKOUHfHIE8T
 ND0gsQqijE5SSexabODZkMj83w==
X-Google-Smtp-Source: APXvYqzJpOpejjYn146jmpkBi176AhZDdn7NcHNIXMFDPoF5M4picmxeNcIUsNSjUqkWCk7fHfCosw==
X-Received: by 2002:a63:1e47:: with SMTP id p7mr230935pgm.339.1574894358017;
 Wed, 27 Nov 2019 14:39:18 -0800 (PST)
Received: from apsdesk.mtv.corp.google.com
 ([2620:15c:202:1:e09a:8d06:a338:aafb])
 by smtp.gmail.com with ESMTPSA id d6sm17699992pfn.32.2019.11.27.14.39.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 14:39:17 -0800 (PST)
From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
	dianders@chromium.org
Subject: [PATCH v2 0/1] ARM: dts: rockchip: Add brcm bluetooth for
 rk3288-veyron
Date: Wed, 27 Nov 2019 14:39:08 -0800
Message-Id: <20191127223909.253873-1-abhishekpandit@chromium.org>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_143919_173721_1777ABCB 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Heiko,

The necessary patches for this change have been merged into
bluetooth-next. Please pick this up at your convenience.

This patch enables using the Broadcom HCI UART driver with the
BCM43540 Wi-Fi + Bluetooth chip. This chip is used on a RK3288 based
board (Veyron) and these changes have been tested on the Minnie variant
of the board (i.e. rk3288-veyron-minnie.dts).

The changes are applicable to the minnie, mickey, speedy and brain
variants (all of which use the Broadcom chips). The bt-activity node was
removed for all Veyron boards and shouldn't affect the boards using
Marvell chips since they aren't using this out-of-band wakeup gpio.

A previous portion of this series adding the compatible string to the
hci_bcm driver has already been merged into bluetooth-next:
https://lore.kernel.org/r/4680AA6A-599F-4D5E-9A96-0655569BAE94@holtmann.org

Another patch series to fix up the baudrate settings and configure the
PCM parameters has meen merged on bluetooth-next:
https://lore.kernel.org/linux-bluetooth/20191127071105.GA32820@akivisil-mobl1.ger.corp.intel.com/T/#t

Thanks
Abhishek

Changes in v2:
- Changed sco routing params to brcm,bt-pcm-int-params

Abhishek Pandit-Subedi (1):
  ARM: dts: rockchip: Add brcm bluetooth for rk3288-veyron

 arch/arm/boot/dts/rk3288-veyron-brain.dts     |  9 +++
 .../dts/rk3288-veyron-broadcom-bluetooth.dtsi | 22 +++++++
 .../boot/dts/rk3288-veyron-chromebook.dtsi    | 21 -------
 arch/arm/boot/dts/rk3288-veyron-fievel.dts    |  2 -
 arch/arm/boot/dts/rk3288-veyron-jaq.dts       | 22 +++++++
 arch/arm/boot/dts/rk3288-veyron-jerry.dts     | 22 +++++++
 arch/arm/boot/dts/rk3288-veyron-mickey.dts    |  9 +++
 arch/arm/boot/dts/rk3288-veyron-minnie.dts    | 21 +++++++
 arch/arm/boot/dts/rk3288-veyron-pinky.dts     | 22 +++++++
 arch/arm/boot/dts/rk3288-veyron-speedy.dts    | 21 +++++++
 arch/arm/boot/dts/rk3288-veyron.dtsi          | 59 +++----------------
 11 files changed, 155 insertions(+), 75 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi

-- 
2.24.0.432.g9d3f5f5b63-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
