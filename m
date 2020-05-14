Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD1D1D299A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iM3Zm8glxE4bblqcaI7r1ZbalC0TuFSR+CpGNulMooc=; b=T8glNtWv1m/aII
	QnAd0huT078ken4rQdgQeMPimWt5Psz9fF9x9BLzfYrcmNcIXi8jRTXnsnlUthhwq3tWK5g3kFWc2
	DBT3p4tZhGSZxvFyY6uFTQljt+hp0PCMyYPc4yhuyuYrYLaz59YTZKRjjbYIPDEM9B7vnsb1d93EK
	cydtyaJwGmPDgUSw7PWw1RDJRsOhRb/S4oYu5bHZ8oz1fPuHaf0wwT/e1/vMZPVQz/WzrUF3kfnE2
	ghUY709YHTXCEuQExcWRt9BgE89s4lZxPb6X1VIJ3DVgD7VVW5u459TRMhRLo83y+4KfmBvhw7V85
	R1FWuGjChFG8uNO79TPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8qx-0007X1-RZ; Thu, 14 May 2020 08:04:27 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8n4-000419-Cj
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:00:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id l11so2645957wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=A0xVcmEWRDaG3Z/7+1DM1W7TJCWEWrBCYQ3bDkOtG7yxOo/ZUzFZP8QFaxifgngVLd
 VPcWESAtBLaibbRqDQjSRWN333avDH1S/qikpFUJla/psrQR0/mq4psad2R0bwm9sge/
 pIq3J1V+u4B8Ab6r0Wg2p0wDFFRAi0ZW6OoFpmEhpyJ0xJfqoRQ/mJSzrHmE8nWarSMj
 eN8B5mppmtl2sXH+UbITdJB1fzx6mQr6iDAJNYF7raKBqVoOIdZykmoSQUJhXGsngf17
 MDZ9gFoMfcspyDCT8khDWTxlmLYUO5/Fy0svDuwQpFMSNyAXANR1fH7+E98Ef7mYQxdc
 fubw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=JelP9SZ92aFDGeJKWQBLaYer55jmIO71R9cBdpJ6aElFCqHITOMtn9M0+wlmT4imZp
 e4wuy1edXF36X1a9uKg8+xqVmDs5khMHVqeCZNJzocNabgFaYAR4zzVi1QUvKZWPVDVh
 nUFPdmkijdlz46j0hT+7hMnvU12mvdWviF1H+qXe5XHF4uP5GvnYXqOHwSIA7LM4kKkV
 zJPbxdbbhJUM/F3f3MhDvXI4FtzhwUC1G+OlQakULVLk2U8jaNjc0B8OPW7YHZGrFAEn
 yQpPix2Q2rtM1w6/XcNGCF34b2nhFcLQtilRGPEDLQyvgnbCdKs7HJ7tMrxzmTIwF8Tl
 lngA==
X-Gm-Message-State: AOAM531ZHbg/0sdDpb5+rgvSWUg9p+KD0w8IwxcDDerBCOrSANblbNll
 PH3hT2NSl8Y9HS/m1VvMwmpSPg==
X-Google-Smtp-Source: ABdhPJxE2Nr5gqc48KKQ7TyBu8V/dSLVZvEBAnxJMTulHZMm4c3i92GjiXIt7jmUvzDNI+9reMe0yg==
X-Received: by 2002:a05:6000:1187:: with SMTP id
 g7mr4053217wrx.54.1589443225024; 
 Thu, 14 May 2020 01:00:25 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 81sm23337446wme.16.2020.05.14.01.00.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:00:24 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v3 13/15] ARM64: dts: mediatek: add an alias for ethernet0 for
 pumpkin boards
Date: Thu, 14 May 2020 09:59:40 +0200
Message-Id: <20200514075942.10136-14-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010026_484989_5DB88BF7 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
