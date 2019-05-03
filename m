Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D034A13653
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 01:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vaVYG2UuW0FJD4G9AaW8YsKm8MLJ04vBebUCK4m0lQc=; b=MZ9sZhNSW+Ail3
	8f8A6df/s3MzEsgr4IQrCRqJZ1ABjJJsNUiTB3Wp1J/bajS1Ny87JiQDkx/TKGIkj19Mowi5a2MQu
	xVwiruzUSYs+zcpiTJfB7z9l9dyIlE9YlZzmHVLsO0Kpk2twArt7hM6Su4HQPJ6bTZDrh1fTzYXp0
	u7BaP0RGe60FhnPvNvthSNQUhQ8XcvQhF3DYCmPHMAIBLvQ4ISX4u2nGUXiENA3bLXZTR2fYgLxAX
	syTnPBPmSXwXPbegtVEXStCgau6nm4iEpPPN1/mnhSzdRjesDDMA72R2CJMVD6ac0XHJojWJ2mVUW
	UEDA8fbWJoQArkAcve9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMhsQ-0005nK-Hb; Fri, 03 May 2019 23:46:02 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMhsG-0005ld-BL
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 23:45:53 +0000
Received: by mail-pl1-x643.google.com with SMTP id bi2so3404331plb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 16:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XbIwRnpHasrOr38KG1gDBykd/s7vNBHOqXcN+WuSbls=;
 b=hRT6Lt40DTjB+SAfX7dTiYCmgcS0xVV4LOZGxF1nNO1rE6hTxBbwg0EOCg90s634u1
 RAmh5pNALXGX4G8EPiTonOV0il0j4303l80tCXD0rNbGUOUcwN7zZ9qvSXsYdKqHM6zL
 ME3uD6VSGCzZb29q39EjXHNlWjKzINHiqmMl4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XbIwRnpHasrOr38KG1gDBykd/s7vNBHOqXcN+WuSbls=;
 b=YjH1FjzsN1m3eCscLh/yTtKx9yXGVW9eiap9Z2+j7ayVsE7/hNrPoSnVD/6pGoH55M
 t9oMxyLi3L6F2bPaujBvw5dYSdY/fQzgAsZi2cVBuHEUojfKUWYNrXGhkHfTfFDr29O9
 pHTc53HLpxmvc24Jr37c7IpcQnqGSqSF2vU43oNOylAHTrhiNWEOA3Jguz+l4ydVj3xm
 bOo2ivRq82hz1PujiUory7dGODBUJBqeRymXCzzDflZNpoy+2XzmZjgwK+SkageldjHq
 7FXxbheGe4MF9m3MzQyp9VugJ27L0K2WWZ8Kf10DNV9j5J1CLGZ8r89J/3uQjEmIICzB
 5gzw==
X-Gm-Message-State: APjAAAWNO69u79i0BiSTfJOpB5eaSaKSO1FPn6FJtdiku0gMR0CP/f0l
 p3k/V5PECH3/TKYGU2RYkd0O3w==
X-Google-Smtp-Source: APXvYqywi/Agi0SinrIsRvR8a9BzPcCCDDx1uoFGnmEtsaMSQWa+m9ZHFlINHMkxcDC/VFmBjbEvQA==
X-Received: by 2002:a17:902:6b01:: with SMTP id
 o1mr14464517plk.318.1556927149935; 
 Fri, 03 May 2019 16:45:49 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id f22sm4019071pgv.45.2019.05.03.16.45.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 16:45:49 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] ARM: dts: rockchip: Make rk3288-veyron-mickey's emmc work
 again
Date: Fri,  3 May 2019 16:45:37 -0700
Message-Id: <20190503234537.230177-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_164552_388573_5B5D7675 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 amstan@chromium.org, Shawn Lin <shawn.lin@rock-chips.com>,
 briannorris@chromium.org, Douglas Anderson <dianders@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When I try to boot rk3288-veyron-mickey I totally fail to make the
eMMC work.  Specifically my logs (on Chrome OS 4.19):

  mmc_host mmc1: card is non-removable.
  mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
  mmc_host mmc1: Bus speed (slot 0) = 50000000Hz (slot req 52000000Hz, actual 50000000HZ div = 0)
  mmc1: switch to bus width 8 failed
  mmc1: switch to bus width 4 failed
  mmc1: new high speed MMC card at address 0001
  mmcblk1: mmc1:0001 HAG2e 14.7 GiB
  mmcblk1boot0: mmc1:0001 HAG2e partition 1 4.00 MiB
  mmcblk1boot1: mmc1:0001 HAG2e partition 2 4.00 MiB
  mmcblk1rpmb: mmc1:0001 HAG2e partition 3 4.00 MiB, chardev (243:0)
  mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
  mmc_host mmc1: Bus speed (slot 0) = 50000000Hz (slot req 52000000Hz, actual 50000000HZ div = 0)
  mmc1: switch to bus width 8 failed
  mmc1: switch to bus width 4 failed
  mmc1: tried to HW reset card, got error -110
  mmcblk1: error -110 requesting status
  mmcblk1: recovery failed!
  print_req_error: I/O error, dev mmcblk1, sector 0
  ...

When I remove the '/delete-property/mmc-hs200-1_8v' then everything is
hunky dory.

That line comes from the original submission of the mickey dts
upstream, so presumably at the time the HS200 was failing and just
enumerating things as a high speed device was fine.  ...or maybe it's
just that some mickey devices work when enumerating at "high speed",
just not mine?

In any case, hs200 seems good now.  Let's turn it on.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-mickey.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-mickey.dts b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
index e852594417b5..b13f87792e9f 100644
--- a/arch/arm/boot/dts/rk3288-veyron-mickey.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
@@ -128,10 +128,6 @@
 	};
 };
 
-&emmc {
-	/delete-property/mmc-hs200-1_8v;
-};
-
 &i2c2 {
 	status = "disabled";
 };
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
