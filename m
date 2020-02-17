Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA1B1616CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:55:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=r3dsdSywosCnPL8IamWkkT2woZ4UkrAGN4ZhG0OIKnI=; b=JW
	xiORpcsRTbMroi+3sEI8h8mapPpOFdflW8LicHFJqAsYP6ZaA8w4xfeCQZFDScLgNKhRxXf0Z2Izy
	NqYLmqn3gsz2mzn622RtW2URhLBs/j/UIRRrfnPTBv4MN0hf4qoyEL2pjUSQod5YBbnxf7ugxeded
	gZRvQCWagpjbh6+eH/dd8YHxOY5eeiiGVlPZ4t4C8Zv7WmHfGm0igK7AV6uEGKJqLHDKWz0ulmXv/
	4g8e7KV8y3uLiGMVA6pNq2bltKZYyGhA3Kds2DmsFggmT1rrzcrnIDQqfINI7sQYSKGwov84fjn6W
	EUUQkv1HCvzln3rg/aLw2Y4MaTM0zJ0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ik7-0000ez-O8; Mon, 17 Feb 2020 15:55:31 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ijs-0000cU-FO
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:55:18 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200217155513euoutp01e594470ebd1d24a9797ccbe915705a29~0O5zWqrjJ2550125501euoutp016
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 15:55:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200217155513euoutp01e594470ebd1d24a9797ccbe915705a29~0O5zWqrjJ2550125501euoutp016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1581954913;
 bh=/MCPIp7JR90nH/q9PqMYouhBTbhTCPX9OW6qy3nNNL8=;
 h=From:To:Cc:Subject:Date:References:From;
 b=N4pq87+bP6H3f2TnlO5D+v6w+CsW/H4/J94Klxzeh4WMv3udRqM21sH74Nc+Gha3y
 J131scv+fUUc9hWP7L2pRs6VAA2/ClBOQ++GkzTv5QZs/9iJjlrsK7pkYQ+1S3Luab
 VG68oHDAaMnKYGHi+ShTNrV/UBQUqg73oxdBCH88=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200217155513eucas1p18f1c83e6f03d828c0261131b26580bd2~0O5zKznIM2953229532eucas1p1e;
 Mon, 17 Feb 2020 15:55:13 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 62.65.60679.167BA4E5; Mon, 17
 Feb 2020 15:55:13 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200217155513eucas1p2f97cb31428fd50181a4fe16682322d8f~0O5y1JRIm0042400424eucas1p2E;
 Mon, 17 Feb 2020 15:55:13 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200217155513eusmtrp1b168aa000ee729f1d2adae6b6a64e790~0O5y0gCum0829708297eusmtrp1a;
 Mon, 17 Feb 2020 15:55:13 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-c2-5e4ab761cb96
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C2.17.08375.167BA4E5; Mon, 17
 Feb 2020 15:55:13 +0000 (GMT)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200217155512eusmtip2bd7766ba51e8169a7dde89d471308b11~0O5ye6Uz32743127431eusmtip2N;
 Mon, 17 Feb 2020 15:55:12 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] ARM: bcm2835_defconfig: add support for Raspberry Pi4
Date: Mon, 17 Feb 2020 16:55:06 +0100
Message-Id: <20200217155506.5245-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCIsWRmVeSWpSXmKPExsWy7djPc7qJ273iDPrnalhsenyN1eLyrjls
 FhNvb2C3WHvkLrvFtlnL2Sw2rbjB5sDmsfWWqcfmJfUefVtWMXpsPl3t8XmTXABrFJdNSmpO
 Zllqkb5dAlfGvDmnWAuaOSo+HHrO2MDYyN7FyMEhIWAi0Xnfp4uRi0NIYAWjxJ+u1SwQzhdG
 iWNL3rBBOJ8ZJY5v/Q3kcIJ1nNl1iQkisRyo6vkiZriWj1f3MYNUsQkYSnS97WID2SEikCex
 9lMySJhZoItR4ncbN0hYWMBT4uY6aZAwi4CqxPldnWCdvAI2Eq+mfWaC2CUvsXrDAWYI+wyb
 xOY9QhC2i8SGu91QcWGJV8e3sEPYMhKnJ/eAfSAh0Mwo8fDcWnYIp4dR4nLTDEaIKmuJO+d+
 gd3GLKApsX6XPkTYUaJp6hFWSLDwSdx4KwhxMp/EpG3TmSHCvBIdbVAnqEnMOr4Obu3BC5eg
 zvGQWPZ8FziohARiJX5+2Mg6gVFuFsKuBYyMqxjFU0uLc9NTi43yUsv1ihNzi0vz0vWS83M3
 MQLj/vS/4192MO76k3SIUYCDUYmHN6DPK06INbGsuDL3EKMEB7OSCK+3OFCINyWxsiq1KD++
 qDQntfgQozQHi5I4r/Gil7FCAumJJanZqakFqUUwWSYOTqkGRq11+68/64/dJKRb71+fwnDP
 u90oeE9m8LmzKuet2I+EffX8weKbaWbdu5zvgeBX1tcrPqQIXvmrtT6mIXESz5qkc98C+uyb
 vu5h2BN4g+XenbMmdpfzPjw8tktAijeo6e6Z2QeYxQS5t6aGTiravtdeaUNl1qF6neuXvq4N
 +f5wxaxv73vN9yuxFGckGmoxFxUnAgCiDBhp9wIAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrLLMWRmVeSWpSXmKPExsVy+t/xe7qJ273iDH7NELHY9Pgaq8XlXXPY
 LCbe3sBusfbIXXaLbbOWs1lsWnGDzYHNY+stU4/NS+o9+rasYvTYfLra4/MmuQDWKD2bovzS
 klSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1MlfTublNSczLLUIn27BL2MeXNOsRY0c1R8
 OPScsYGxkb2LkZNDQsBE4syuS0xdjFwcQgJLGSV2fbvGCJGQkTg5rYEVwhaW+HOtiw2i6BOj
 xMeju8CK2AQMJbregiQ4OUQECiROfvnGClLELNDDKHHqyDugsRwcwgKeEjfXSYPUsAioSpzf
 1ckMYvMK2Ei8mvaZCWKBvMTqDQeYJzDyLGBkWMUoklpanJueW2yoV5yYW1yal66XnJ+7iREY
 dNuO/dy8g/HSxuBDjAIcjEo8vAF9XnFCrIllxZW5hxglOJiVRHi9xYFCvCmJlVWpRfnxRaU5
 qcWHGE2Blk9klhJNzgdGRF5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4m
 Dk6pBkbnEp8v/LfKHp8v8KstkT4nuK7+7SmPa83Czzkllqz775kxsTBx4bFr9X+nijtqcjNM
 ODSrk2GGgnndtccRbM0HVPILDDb97T2amfko0qHzb/HERyFPX81bFfu8TqVaP6797vEQ/Zst
 22+/2HNTh19ekEHxE3ddZMqRz8LM4Zke9avPSK++4K7EUpyRaKjFXFScCAA+XfO+UAIAAA==
X-CMS-MailID: 20200217155513eucas1p2f97cb31428fd50181a4fe16682322d8f
X-Msg-Generator: CA
X-RootMTR: 20200217155513eucas1p2f97cb31428fd50181a4fe16682322d8f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200217155513eucas1p2f97cb31428fd50181a4fe16682322d8f
References: <CGME20200217155513eucas1p2f97cb31428fd50181a4fe16682322d8f@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_075516_819320_3FE9C896 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add drivers needed to boot Raspberry Pi4 board.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
v2:
- added BCM2711_THERMAL
---
 arch/arm/configs/bcm2835_defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/configs/bcm2835_defconfig b/arch/arm/configs/bcm2835_defconfig
index 519ff58e67b3..38437541ea76 100644
--- a/arch/arm/configs/bcm2835_defconfig
+++ b/arch/arm/configs/bcm2835_defconfig
@@ -72,6 +72,7 @@ CONFIG_BLK_DEV_SD=y
 CONFIG_SCSI_CONSTANTS=y
 CONFIG_SCSI_SCAN_ASYNC=y
 CONFIG_NETDEVICES=y
+CONFIG_BCMGENET=y
 CONFIG_USB_LAN78XX=y
 CONFIG_USB_USBNET=y
 CONFIG_USB_NET_SMSC95XX=y
@@ -96,9 +97,13 @@ CONFIG_SPI_BCM2835AUX=y
 CONFIG_GPIO_SYSFS=y
 CONFIG_SENSORS_RASPBERRYPI_HWMON=m
 CONFIG_THERMAL=y
+CONFIG_BCM2711_THERMAL=y
 CONFIG_BCM2835_THERMAL=y
 CONFIG_WATCHDOG=y
 CONFIG_BCM2835_WDT=y
+CONFIG_MFD_SYSCON=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_GPIO=y
 CONFIG_MEDIA_SUPPORT=y
 CONFIG_MEDIA_CAMERA_SUPPORT=y
 CONFIG_DRM=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
