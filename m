Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA22CB17D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 23:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jTfpMntgPPfkkErbt2swBIGcVZwbo2dxl/zzudqmyRU=; b=LY4MXoVLMeK2XOPQR3V1A7jqbG
	xuuOCwz9hnE/bNNNUmeW5uioK5rRFTO4HPMjBT2qsjC81dn+yQkW64HwUwGr/9j/A3c/Vbgxn6kk8
	TkN7lza7pJZDDME3KC2laMvlMTEdBI4Xg3FtkaCckUqBTvHZ/CFlmA0eYL8eZYXz4BcHDKSG0PY2y
	8EWUOvTagRi0OcMjMwngvujibQ7ObXvQ9yMarAUPGTXbukEie3NIGv3MkJfkJAFzdY40wcr98JJIo
	enSmYDAjhyN/Cs+b/8pVYXbxczK0/7/gGjPzhHOaiy7Q+9/bSS+A0SthaZmuIvFg0cT1/xhs5l0Oh
	rM1NMGzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG90U-0004ye-Ok; Thu, 03 Oct 2019 21:51:30 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG8zt-0004gb-Ma; Thu, 03 Oct 2019 21:50:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570139446;
 bh=eS9hhbwrWcOcLqNrSHnNyzdXGy2wwga1+qIn6yQk704=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=gHAbj603m8oUb8oRnbfhCrTHXoe2Jv0281aZhojdxxghdQlBOMK83mjA2Z3jZTd+3
 ufCFrDsLVjZfNUX3Tw/dzvohoMsO6rSiuSQahkiuuzwdIEw55dI+RuczpwTlsfimd8
 /ELDlgZ5x9qlJ4D+KairWvoTfeYMDzYO/laMxJnM=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from platinum.fritz.box ([89.14.73.200]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LzbDC-1i2Rux318M-014njy; Thu, 03
 Oct 2019 23:50:45 +0200
From: Soeren Moch <smoch@web.de>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 3/3] arm64: dts: rockchip: fix RockPro64 sdmmc settings
Date: Thu,  3 Oct 2019 23:50:36 +0200
Message-Id: <20191003215036.15023-3-smoch@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191003215036.15023-1-smoch@web.de>
References: <20191003215036.15023-1-smoch@web.de>
X-Provags-ID: V03:K1:4LIFexwsUixYQS8MiIrk0eN/ESr5uuMkap/XL+MJZBi2SGrACZS
 QOM5njeqvs0G3ohuRk6VlGPJFSZIU/rdaDsNurPb0G16TH+UMWrPtNjpxlbG8CHVc9hy0GU
 tRgF9Dg/Kv/nNgBtmUQlPTftW8kC+xrZPw/XSCOD1v/3YjNrcgJqWYh5CpQZC391CbHqCFF
 CVkOkQTwoCDWzm9cuS+LQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ixJgCZhwsKg=:uuFw5p1r2pI8Z5nR+G7cM4
 9YVDpOJIgSiiRzinbD76K6fFDuJ7zYgKRiMsUhexYox0+VrDalGw483+3XUMm947dZDMImyV8
 9oqpoxzuQq5PVQw+s21pJYBHLlZXWF3yt1Q1OC21EKW10AyqmWNXcYD13AaedBVvNdOO+EhmX
 YBfMX7wa+Pgd7KHJUO4hwhMSQN2UuVKlIKrtG7rSJgNZcgnu7ZR7bad/rJdpeEUY9bBZW3E31
 eJmEGM4eX+n4MxH/3josdf5EcLcJhN7AobZ169OMGsobFTTY45MRn6xUzPsBY7VyrvHHVbrIV
 FlNpAM6a56P1SU2VMNi0erDEJC4PHoZfGk10e7Y2/ojvnIWeGzrC0H/BDAXIEnaNlqc7avzYb
 NdzZX+H233C2gjRTL0aVy/P5GmmtcuapTfZy8AgXDV1mtpRP1iqslfgiK+vxyu5/zdhR724So
 u1Mnj0D5U2Jk5WTgLGxnfjTk/Ac/A+KmidbJmuYPvoo472LdCwwLyINTE7Iff/ZFFTzGC/LTY
 ulmS0r/CAdEDX4XzOxEoZdVXk1qurucJXUImVKlhk+O8uKIkq24bWY96NkuzYSCDVuBmak6Ef
 jTt43MdN3nNu9SXH54J9E7gyq2W1K5gFSVEdvx/C4wsFJUTnM/GK8V8VbpyYYAjNGM4LvkUUv
 tJG3tQ3q7FRtS5iB59tsWrv3pHPd5fTOqan9wLVUrUDxq2BudqKltab8ke/sIznE5NrbQshM9
 Sen8Oep9oStSgYhZtrAGefEhakiHwK+Xnv9wzxBlltK93RH58hp0YfgsHIe0W1iHYNuCE7hFK
 U8R+2ia0RqZuBIHv3Qkd5e8xF7qUpdgmkfrvkwpGr66gognAlkDh0xMDaGLoTKa2YfTvHRaoe
 5LnXs7JteNIbiOfxa98qlQBC6cgmLDKO0aan/TV0CpC6RK/wxUa8VMluXB73nIeggQUUP2daf
 0JiFv6UBHiKRpI17ZVr1uFK43/Pxummh9yjcNiCUskthNyHaqpWQHHhXe8BVDca62ft4nmi0f
 cQqD7a8lFLTenIMAhWEirD1VKX01JQ8X+9WZhUEJ3aeKgykHdKAz3ijNf1OFIxf9tsOtOA2Zu
 aZuUaStxyOwlmQFJaQP2CdBVLvRcc0rSEzMTIHcreyTjO82bSDUk+qd/0a2HOdMACzP7ltxOS
 Ai4TPrf05zrs5O0091J7PZGGSYueDBcVDNijNwTUpREowPnET9g0ihx8zaDR4FKtjuTmBouX5
 PWL2CLXUJ4l85ohxkxZ6xs6WDc3KfAAM3Q294vw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_145054_072351_C0B21F7E 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the RockPro64 schematic [1] the rk3399 sdmmc controller is
connected to a microSD (TF card) slot, which cannot be switched to 1.8V.
So also configure the vcc_sdio regulator, which drives the i/o voltage
of the sdmmc controller, accordingly.

While at it, also remove the cap-mmc-highspeed property of the sdmmc
controller, since no mmc card can be connected here.

[1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
Signed-off-by: Soeren Moch <smoch@web.de>
---
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 2e44dae4865a..084f1d994a50 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -353,7 +353,7 @@
 				regulator-name = "vcc_sdio";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
+				regulator-min-microvolt = <3000000>;
 				regulator-max-microvolt = <3000000>;
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -624,7 +624,6 @@

 &sdmmc {
 	bus-width = <4>;
-	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	cd-gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
 	disable-wp;
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
