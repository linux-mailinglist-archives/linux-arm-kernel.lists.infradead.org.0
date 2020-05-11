Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E2E1CDE7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iM3Zm8glxE4bblqcaI7r1ZbalC0TuFSR+CpGNulMooc=; b=XiAGuVJ+Yrr+/e
	6QMDGou8pk3bC32PJ9xdN7Mf9lmpqrY0UGKwfKdvHU0FXEmqOQARGM4nRY9r/es4d6kEK4cbGLa2y
	n5peQiOfeAnLWG8AKgh23EZFyWbwBJ7TMwJrBK0771Ha9GycmfrxPEii8k6ZDkzkmHM3a2IFn0uKr
	5eSAsip7stLo1jbLk4N6sBuE/jnFmizoLEGpn458Pfc8J080K7FhjloqgXfJaGCYyzwr6xrA4gmRg
	29FCBsBNHZVt2+/tGXgoZAFQ9gF8RSscQHhGepqN2tLg4Z6qgVXL42DmAYamq+zTiioO+cbtDOnjy
	yiyKQVeCuMXtSzuKCH/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYA63-00083Y-7e; Mon, 11 May 2020 15:11:59 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYA2p-0002i7-Nn
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:08:45 +0000
Received: by mail-wm1-x344.google.com with SMTP id n5so4805589wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 08:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=jSfI+/vZR/vNDIop5tYQipIr0sMk/NiKnIXCptTaZ1UCH8HUZKtoJB0OgdBC9z2vBa
 s1xE55pXv652Vn9g5VfKY+a9uy5dJ58vb388YQHIUELGwWKiI2Kklor5r7oNIbEpXyfw
 KV5YwxqgIpXxq6QZxVL59d/K3dLnJ4xHCK9jH8DxWKN9GV74AYB4ifDBaK5c8FIchySB
 jTy+eyVKoq1zegnDbhlXUrBw3PNUSPehwJhxpAelJ3W7RqurHnfFTAdHIpqCDlnFydz2
 ylL+Sv0Z6G9Wnhh7GEJTTL5mfenRpGEj6fqVZUHtSmuR5ND02ayD/nfbulwZMANrTHpk
 vrZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=HfqhezzRlZ9Hq8+GK/aSI/XyvWyNN6EqRz4NiZqyRhBIyblYZvrAyAVJK/rGKTwISL
 NCFqm3cH35rVBRZIr6qCbxTxCJrM4EkCUY/SFG6uLVDY7PM82aDSeIBuQ9mvDGXim1vi
 9QG62XhjGrSyQFO5Fnh2j9p3hrz3b5P8e6oQ1ibThVV3aZMuwPtxfsBeVBBfP54grrgP
 rEJh2Bhvbr9vgTlW5KhwxxT0g3dhL3hL3Ev4/oBDl0kZSxs5S+6riN+nUqjMaoKRWa5f
 Ff5Q3hYCrf5uWqBLywc2vcgix/NR21OlOydBusy6VFufeWyUb88XocGDVRiG9dJddx2W
 7Gjw==
X-Gm-Message-State: AGi0PuZizGbWapAlDdDOSfsfcCE7mqMxU7Gs8y2Ydc+hAdS7u+HVLBLz
 GWr6uhzrxOUbIw7CviaFvVonZw==
X-Google-Smtp-Source: APiQypKpf/qfe7MFRJIMepNxeMQg7U0eG0wqy9FY4xaWhiap/9Tgl6YqeR1YMWRXjoWZty2TygbXNQ==
X-Received: by 2002:a1c:2457:: with SMTP id k84mr30054044wmk.96.1589209717331; 
 Mon, 11 May 2020 08:08:37 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 94sm3514792wrf.74.2020.05.11.08.08.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 08:08:36 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 12/14] ARM64: dts: mediatek: add an alias for ethernet0 for
 pumpkin boards
Date: Mon, 11 May 2020 17:07:57 +0200
Message-Id: <20200511150759.18766-13-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200511150759.18766-1-brgl@bgdev.pl>
References: <20200511150759.18766-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_080839_869205_AA8646DA 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Add the ethernet0 alias for ethernet so that u-boot can find this node
and fill in the MAC address.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
index a31093d7142b..97d9b000c37e 100644
--- a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
@@ -9,6 +9,7 @@
 / {
 	aliases {
 		serial0 = &uart0;
+		ethernet0 = &ethernet;
 	};
 
 	chosen {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
