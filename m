Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64ECE12DF24
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 15:35:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/0m6+QWiUAE7yHQqSGGjGdSj2cFF4RlAnaHYXNWawzw=; b=sqQIuG/t/dcGzV
	YWnTmDMPu06JQtNNgJG7szgx94kglCklEalON2r7hW0vvmY4jQWc4/S67H2tJ3HXhD/1K5uCAIR7Z
	ZDix3L55hS2t6WVpeuxjY9p1IWV9PMaZ+AiyURkD/jp563k01mfVDLF13ANXSx+blz3uIaXZPuoEc
	sAVBvSVR8R86QO9r9VCQFv9XYV3VMy1Ehol3ri/Ak1i7gbp+lOl3XnZbBkCuZXvlFcNO3QIpU6vy5
	az+pF6PLps9az5kDnPKPdTlMC4Bb2kybXb7JRwab2w0UpTixoALzkJ/5Ks1NOrtDS7CcsIqtagOHc
	gT95E7jwWvdja2hgUV6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imf6J-0006kL-T2; Wed, 01 Jan 2020 14:35:55 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imf6E-0006iu-Bj
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 14:35:52 +0000
Received: by mail-lj1-x244.google.com with SMTP id a13so38444475ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Jan 2020 06:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YKm3cnSWLkFIu1D0UdvvCL/UIureHxV5EaoDTXECeWo=;
 b=GB8AtNdwauRnhnBW2f8jwE25cz/1Jgvq9sRNuehBL84Gb3/H1GAqt1wNZgGdPvDl0G
 1nT8f81jWNqCLwJpvXeeBZxu8qBnfSguWzNICVg2aCYU9DbMosuP29dnLVVpcMzUKDSe
 dIj0AdWvs5Lyg3n+0qBhi9+Yj5dEALdwyJ6YVTvUVLPYPJIn69OEN0OqWsf+OTKVC55H
 JBKJuYgYapZEB80qziQ3qBdjWB4Mnheady9nPOi+lzUkhm/dxlOL4DWGvAG1UpQgdJQt
 l/OFVaoH9zLNjstNPEUMU8C6M4j/v/FpZKYymnz6NSjoDqt7LVhDwm7Witb/cWgaewA2
 ++og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YKm3cnSWLkFIu1D0UdvvCL/UIureHxV5EaoDTXECeWo=;
 b=YaXmh9lHJekMjLIKO89M0ly8qdh/tb8jYJKRXMXxQXTIk0S1uBmqfVvTr78uUe0Gv9
 yq635+vRprkhAg4NmCncZdlyxHvXIcoOAVbMZZwJBiX5ppHoIko7ZaWc0I6kcLkXToKu
 qZ3yJPbsSgggcAjbrhk2uxAYIxlXdmCysHuw1AzVS7hIw7GRTB5XuxjV3m2a2z2ydntP
 eCw4JcxjJkUUQKaodtBGO3MHdOhnZ/TMYUGgwSmL7HXHzu7WicpPfUCCVIFTwWULbS2R
 55SbYhjlh/BLnG48U/JsEcJI64NlAMLDdETAXMShQUqP4INOAyg4ieRgxANe/Gopcuav
 cLuA==
X-Gm-Message-State: APjAAAWQTe3+IIo4GJXrH11DOQEIA5DoIAObqnzf4PF/YS7OBBIMfSDM
 ++T1EU7DZprpRuhe3CuPbDAUlg==
X-Google-Smtp-Source: APXvYqw6nDGniMTuikDTv9p0gWW8s62QA5ul5sO30CFSQIQnWxwIAn6DWsFmRP1IByhrW07TJ7ERnA==
X-Received: by 2002:a2e:9705:: with SMTP id r5mr46388298lji.114.1577889345386; 
 Wed, 01 Jan 2020 06:35:45 -0800 (PST)
Received: from localhost.bredbandsbolaget
 (c-5ac9225c.014-348-6c756e10.bbcust.telenor.se. [92.34.201.90])
 by smtp.gmail.com with ESMTPSA id b22sm12158869lji.99.2020.01.01.06.35.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 06:35:44 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] ARM: defconfig: gemini: Update defconfig
Date: Wed,  1 Jan 2020 15:35:20 +0100
Message-Id: <20200101143520.14218-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_063550_538978_63F6DEA1 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This updates the gemini defconfig with Kconfig shuffling and
some of the features activated in new upstream drivers and newly
supported devices:

- Move some symbols around due to Kconfig alterations,
  this affects CONFIG_PREEMPT, CONFIG_PCI, CONFIG_CMA,
  CONFIG_BINFMT_MISC, CONFIG_PARTITION_ADVANCED.
- Add RedBoot partition parsing, as all the Gemini
  devices use some RedBoot derivative and store their
  flash partition tables in this format.
- Enable bridge and VLAN filtering: a majority of the
  Gemini devices have some kind of DSA chip for ethernet
  bridging/routing.
- Enable CONFIG_NET_DSA_REALTEK_SMI as this DSA router
  chip is found in the Gemini-based products. This makes
  explicit selection of CONFIG_REALTEK_PHY unnecessary
  so that goes away.
- Enable CONFIG_TUN since Gemini userspace often make
  use of the TUN interface for network services.
- Enable MARVELL_PHY as Marvell PHY connectors are often
  found in Gemini systems.
- Enable basic 802.11 libraries as many Gemini systems
  have wireless PCI cards.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM/SoC folks: please apply this on wherever ARM defconfig
patches goes.
---
 arch/arm/configs/gemini_defconfig | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/arch/arm/configs/gemini_defconfig b/arch/arm/configs/gemini_defconfig
index f012e81a2fe4..d2d5f1cf815f 100644
--- a/arch/arm/configs/gemini_defconfig
+++ b/arch/arm/configs/gemini_defconfig
@@ -2,28 +2,36 @@
 CONFIG_SYSVIPC=y
 CONFIG_NO_HZ_IDLE=y
 CONFIG_HIGH_RES_TIMERS=y
+CONFIG_PREEMPT=y
 CONFIG_BSD_PROCESS_ACCT=y
 CONFIG_USER_NS=y
 CONFIG_RELAY=y
 CONFIG_BLK_DEV_INITRD=y
-CONFIG_PARTITION_ADVANCED=y
 CONFIG_ARCH_MULTI_V4=y
 # CONFIG_ARCH_MULTI_V7 is not set
 CONFIG_ARCH_GEMINI=y
-CONFIG_PCI=y
-CONFIG_PREEMPT=y
 CONFIG_AEABI=y
 CONFIG_HIGHMEM=y
-CONFIG_CMA=y
 CONFIG_CMDLINE="console=ttyS0,115200n8"
 CONFIG_KEXEC=y
-CONFIG_BINFMT_MISC=y
 CONFIG_PM=y
+CONFIG_PARTITION_ADVANCED=y
+CONFIG_BINFMT_MISC=y
+CONFIG_CMA=y
 CONFIG_NET=y
 CONFIG_UNIX=y
 CONFIG_INET=y
+CONFIG_BRIDGE=y
+CONFIG_BRIDGE_VLAN_FILTERING=y
+CONFIG_NET_DSA=y
+CONFIG_VLAN_8021Q=y
+CONFIG_CFG80211=y
+CONFIG_CFG80211_WEXT=y
+CONFIG_MAC80211=y
+CONFIG_PCI=y
 CONFIG_DEVTMPFS=y
 CONFIG_MTD=y
+CONFIG_MTD_REDBOOT_PARTS=y
 CONFIG_MTD_BLOCK=y
 CONFIG_MTD_CFI=y
 CONFIG_MTD_JEDECPROBE=y
@@ -40,10 +48,12 @@ CONFIG_BLK_DEV_SD=y
 CONFIG_ATA=y
 CONFIG_PATA_FTIDE010=y
 CONFIG_NETDEVICES=y
+CONFIG_TUN=y
+CONFIG_NET_DSA_REALTEK_SMI=y
 CONFIG_GEMINI_ETHERNET=y
 CONFIG_MDIO_BITBANG=y
 CONFIG_MDIO_GPIO=y
-CONFIG_REALTEK_PHY=y
+CONFIG_MARVELL_PHY=y
 CONFIG_INPUT_EVDEV=y
 CONFIG_KEYBOARD_GPIO=y
 # CONFIG_INPUT_MOUSE is not set
@@ -69,7 +79,9 @@ CONFIG_DRM_TVE200=y
 CONFIG_LOGO=y
 CONFIG_USB=y
 CONFIG_USB_MON=y
+CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_FOTG210_HCD=y
+CONFIG_USB_UHCI_HCD=y
 CONFIG_USB_STORAGE=y
 CONFIG_NEW_LEDS=y
 CONFIG_LEDS_CLASS=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
