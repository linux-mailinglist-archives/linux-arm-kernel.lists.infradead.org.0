Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4D514026C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 04:38:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uxhly2PQQS/wOYdjb6dSA5BtU61fHOlu8w68JpAIUgY=; b=Gm8d4u2i5dTsqj
	QX4GhvEzo8t3g5aHTo0wnBqr/ZIOzYGTBIIHteBjM7AikNCe2arFac0kSlds2F91TvdyjwB94C7oW
	OtevuNi4+WWKB8PjKqm43oLGw2gZP9eewwUCcMCw3EqLHvM7H5k3Bcek/IeoQilk8LJQ12qwpdYrt
	gpZPk4hX15/u7tw3Sm3o5O4ZfHwfNuIaEJbDbwLkOzV08Z2k5Fp1m27PolAxZ7pSp3LLP8hKEJnWB
	3MrdDb1yc6kOhNVZpr4KrCpYTlzbFDfwj4VZ9vBliraV9UwveVVXiNzyoxNwNSA50xhDlhN4kluCY
	DUbN5V5p/kibqLdEPm2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isITA-0003Eg-2a; Fri, 17 Jan 2020 03:38:48 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isIST-0002o7-OY
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 03:38:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id q127so10963255pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 19:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wUKL7anK2VMZt2D/L2kwFyqgWv6/GSNMYRnjYd65PE0=;
 b=NnpfF2MLFTvbGaAnhIIe+UgRA4YZvtzhQgTmCjVzzsS2lK4pkLEDcM4uX19C2q7Jsu
 3gPDrtYqjZvQHtmsh/wTaM1BCoUox0scJPy4CcfosRpQbJzj1jDbj4cuVtW1w7m0Zd//
 z3+A6z+8S3cmIcLu2P3ExnGOFZnxriABD2A6M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wUKL7anK2VMZt2D/L2kwFyqgWv6/GSNMYRnjYd65PE0=;
 b=d6IpYci/PK/BgT6ueXjNbc1Mk9Xl0aB1ATixWalHilFXP0Xh/4MYG/EcIBI2IXf0xK
 jMtnMO23qKwIEiA+zfKQf8nS3XOQI7F1kfzaSIjE+PvNpxTSw4W18RdrOAntimbKDWQB
 NfycwWq/EzAwtZe5Z4MNeD6M+NRw2eVcYov4ZuynaXb3I2of7bpzcKPpiuOQTzc0K9E9
 cmNdwJixRom6L/zn3gdtCDTUWSQJVAeD0GtOjAK0mXWivD0y23dhxmHx85L7be5aZh+q
 QhDz97UCTDUV1BhAP7XX3Bm8xN97ymUHt0GRBDPLuxPttBSmqdI59fXKnVSUmmO3Gqv4
 kWOw==
X-Gm-Message-State: APjAAAUfLhO4rsFW5wC2de4H3aYwtudDhM47ppiRz7Qql1vNNXuPjKP5
 kC81IMb27KiZU39KjtJHgRK+pR03Tds=
X-Google-Smtp-Source: APXvYqz1iwhj0OogQfDaYFTpD4TqMlb4k5bUlrDqndHj3nE2Trjh5/+S2MJfNPZXlLkQ/QY0Qb2AtQ==
X-Received: by 2002:a62:446:: with SMTP id 67mr844511pfe.109.1579232284594;
 Thu, 16 Jan 2020 19:38:04 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id j38sm25940259pgj.27.2020.01.16.19.38.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 19:38:04 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/3] arm64: dts: mt8173: add uart aliases
Date: Fri, 17 Jan 2020 11:37:48 +0800
Message-Id: <20200117033749.137420-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
In-Reply-To: <20200117033749.137420-1-hsinyi@chromium.org>
References: <20200117033749.137420-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_193805_912844_E97859A5 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add serial as uart aliases in mt8173.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 8b4e806d5119..790cd64aa447 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -50,6 +50,10 @@ aliases {
 		mdp_wdma0 = &mdp_wdma0;
 		mdp_wrot0 = &mdp_wrot0;
 		mdp_wrot1 = &mdp_wrot1;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
 	};
 
 	cluster0_opp: opp_table0 {
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
