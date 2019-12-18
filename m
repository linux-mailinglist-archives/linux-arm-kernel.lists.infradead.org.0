Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 711B91256DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:36:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xmRQZgabTLP8dH3Xrd3k3fts/LPiZS682xpu4OPK20=; b=pH+mkHj4XlVMEn
	rde+OZbH8bWT1QvRHDi9gOLpw7ayUSMefRP7icOvykSk+HULBHL+yogHipZl7yv77y/VhQRNnuTdZ
	zz6VmXWdD2qXP1RZZPjMG3zoO7TIUSHxhT0yn2oOUdMdPRDRQNt9vsQztc+7CpSIXChel93uh15dZ
	qdtbmWDR9fE/9zr0Oe37fimqGZneA54TOJC5b61nc3ftQIsNeo6+SMvUIm/Y3VSjEP9HZnHWu86p5
	SiyA8FjZGnaeckTb28PWzC91uN3TL8+FM748jqCfi9y721NwJbRcc0IBzIvwWh28EFw8UM6d3N3Yj
	+enKZFt0P/9fzYfuOjjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhvF-00070L-6a; Wed, 18 Dec 2019 22:36:01 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhuy-0006yN-NG; Wed, 18 Dec 2019 22:35:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576708539;
 bh=dWWWJ56z1+3McYaTHm68m10tWxr+xp0Nfa2r5nT/XzM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Q6e5cOL09ofwA4pprMspntmwlHo2cj3FfkHb+T+fo+Hokc0pgbhwlsaLXBuFqCQFP
 LUhDsQfBaIFzGK5VnIh/Wsy83NQ3qofTSflXxMyqdGVF+qCCaYhhFdu+YNIkDhIZYd
 OeMpota4U8gq4SgV8yG+/SR5WuWOoNu0++IohITQ=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from localhost.localdomain ([89.204.137.218]) by smtp.web.de
 (mrweb103 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0LeLSr-1huKBy0mzt-00qDza; Wed, 18 Dec 2019 23:35:39 +0100
From: Soeren Moch <smoch@web.de>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 1/2] arm64: dts: rockchip: RockPro64: enable wifi module at
 sdio0
Date: Wed, 18 Dec 2019 23:35:22 +0100
Message-Id: <20191218223523.30154-2-smoch@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218223523.30154-1-smoch@web.de>
References: <20191218223523.30154-1-smoch@web.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ROAhb4S5HnA8zC1UxSpS35h6K1uYG1iZNFj0qH1Upg0Ypl38cVT
 KHwIZnhcqQFTHjIGJmcOSDo6GPae4t640XYWTwIfcSeErvbBsWzKrA5Qv5gYv9XLQTqWrKE
 xk4sf/ZpyVe4B5+FhRhNGodEQ0RLFB4O/o7+kTwDkPgjAJRf2GV4c7Tt60eL8DnnnIk0UfH
 2Z4sU/Ore3JwH8bCkj75A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WjCFWLClYzs=:sfZYTqTROrpebhd/C8nXmJ
 QulDk9vDBdJGdA9icQsumC87GMwKHlCewB1YaAeB/4yGhAoVIvE91PEDjHkacHNfN+Bt8R3+K
 atOp8SKjNYkowSZcUOwc1b7LitlCwTSPRjbDbqIQp+yWzBqQ+jlaKKFxnElosmf5nXpdv2FxR
 1bUmSUdFPdtw03UFMVvGH/H3jYTMpG4zdUZdbWEvwgT+zpbAhTz8oLMPxjUHkxMpIl3bc/1L3
 q9Dk3PaKyAuEuMFTsQG+a3S4tTXE1ovS4Jr6Blb3XvjTn8LyqWA2dN2wMxMWan8JNByZoVSOe
 E9elEXDngX2dXKdyqftHY81xCwKE7vY1gG2qj7IIPScoGK6IPilciBjtaDjyY1YrxcbhgAsoO
 FuSrPuyS0znVddHgKsWPcOvIhDKVaDykCQOo6E7HYTUVzPLOFrwTj8Pld6nMaQWDz47rNE8IZ
 wgCnJjq+HJkf9BmZCSalPxaQOugPc/fITL3rM1L94vf015E1W+FkN2qFZBUislon64M1XaW3M
 acFP+tF7VON/3QJPH0OUwBYtqU/ua8iOqmBeBobDc43xotypdP9pXKe1v5mDc4xQcMNbtYZ+C
 jmsIWc1mlcBd9S2g0hdkm9VN0cV79Qlw6JRhbsMoOBEcRd8B6aPzUsMLkgSW5j6S/Hbtfqvwf
 1BV03R9cWgWsh9L8tmnep9B1Jx4wIZItyguUNzl62Z8OUUYOhwj7F7Iic3HywHcAGTpFk3zA6
 ntcMz+JJLNnm1FdOf64UPFxEiRr9pQdHsmFMlEYuNuKIXhO93s7Ow2EZiwIi5KEI92fv7gKrx
 eLQavYqLH9qjjPPm/tAUGPrdqp7qH4xc+jDTTPhhiyxwMJ3JvUZEW/dflmO1JIGZKu+DNmqrI
 0i5JbqtMYkwxlYRIgYAvcw9p63JNxiQ/IVkITm8rFBzVmgpzfef/AphctNC4+5yjWqlQ4Frrc
 JvDGeYgoK4bpUEabFOBKrGz+WqntDCxeVE2I56n5iJebZ7HOK9lohhDxfB+pbgELZZbFfXQZ/
 GG8qPZhbXUm4ToWK9poMYdSha2RjgtAIi501cPT0B7/Dz2ynI2PptER2Osw90hTJuLd9MJMvQ
 TANrT+8fuMoqRxsdvbHkOo+SDnhLpKWpyZecFVda9fbObLZZXxtYkX2fa2V+4Car8IxPNA8PY
 EAcffdHrDmVOBNdda6W+/5Gj1E6Qv9wLTTP6y9UyRMF29esf1ajk4/D5EAGrOwGl9aNbKwxTh
 sXjd8HgAYpVU2uYZMzWZZgWBFJ8lP5pX3Quo/iw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_143545_090201_7D4869C1 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [89.204.137.218 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RockPro64 supports an Ampak AP6359SA based wifi/bt combo module.
The BCM4359/9 wifi controller in this module is connected to sdio0,
enable this interface.

Use the in-band sdio irq instead of the out-of-band wifi_host_wake_l
signal since the latter is not working reliably on this board (probably
due to it's PCIe WAKE# connection).

Signed-off-by: Soeren Moch <smoch@web.de>
---
changes in v3:
- none
changes in v2:
- add comment about irq in commit message

Not sure where to place exactly the sdio0 node in the dts because
existing sd nodes are not sorted alphabetically.

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 .../boot/dts/rockchip/rk3399-rockpro64.dts    | 21 ++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 7f4b2eba31d4..9fa92790d6e0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -71,13 +71,6 @@
 		clock-names = "ext_clock";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_enable_h>;
-
-		/*
-		 * On the module itself this is one of these (depending
-		 * on the actual card populated):
-		 * - SDIO_RESET_L_WL_REG_ON
-		 * - PDN (power down when low)
-		 */
 		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
 	};

@@ -650,6 +643,20 @@
 	status = "okay";
 };

+&sdio0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	disable-wp;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-sd-highspeed;
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
