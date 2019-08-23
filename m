Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4789A8AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HiQOOgmIqgw2UCzWELPTKC3sRcIm/LvdV0+UWxfxlfg=; b=li5zn8TkIc0EsW
	wdRZc8OnF65304LRfZ1rJ5D/1fMR5JrnLHz4b5I//aKMm7xC1rCzI9bO537u7v2BIDx4wC7MPPpP8
	m0LwhGvzRf0Jj/rOdoCPg8NJ92ZHZROJF7kT7bMlqliZh+7Me+6UXB/WVLSgAXsNdaR80dUXdDNyB
	l0b7rVSTThIJpTxt4m99D3gNTR/G+MDjFdswZwMIwoX9KhBb89OtFxTHxYxyFG6FZKen2EHVMEfPQ
	q0bj9+EuROoH+vjKkoqsvfEttSgCyFeMp7O7C7/43/EuJVp1b1gKYen4Eqi/UVnnUUQ5xBVkUN0yZ
	YJu3U08UE8Te+t3GmyYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13uY-00069p-UJ; Fri, 23 Aug 2019 07:23:03 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13bR-0001He-Ja
 for linux-arm-kernel@bombadil.infradead.org; Fri, 23 Aug 2019 07:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uI8qQhPoSb2o78mSYJur6fMHkdVTqendruK+vUMA+EI=; b=rmootSAODlfzv61izpmTa1u8/c
 l7TeRKKMu2uD0hUTcffm8J3fMDWo5HVhPvFE0Y9rmclAmZVnc1/qzHIuBCu0EcAfGO72pvObVtv5h
 0HCAqHB5b7HrhDmuB0Kc+PCnl1VpW4lb3pByqw20wx0EHP0PLBrKDT85V6QEgBx6yIs93FNQbDJaZ
 xqjubaZfbJzqGd1WCc9mgRH9i1//JHnXFshGXw1wpwsSg100Lp5Os2100/NI90yuLhTQCG8T3t5wv
 7Ta6GQzxCnhSfkBXCGP2X2ReORoLuZvM6DctmGy4zuYsOaIbOnjJbWR/JW/G2t8H5cuNLVVtW+Db6
 em2MzIxQ==;
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13bO-0006VE-TN
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:03:16 +0000
Received: by mail-wr1-x443.google.com with SMTP id j16so7597923wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uI8qQhPoSb2o78mSYJur6fMHkdVTqendruK+vUMA+EI=;
 b=LRxuLnOgnkev29O5lb2dlPiBfPa1sUXeWz/jSvH/c6uTLmk9wmTZ+lv1qzIcNpT8x9
 jGq7Zs6Iv3r3izu/Eaq0Ej/39vRhNMYaO8vqse6XVCA4nLV4tGfzmDhu1Q/3yXJ73uvf
 LDFzEC5eadqmsQpAUKSMwUzmM20p9FQEDc0zFoXdOD/c8ufVi5RExUfpJ6l/PmaTQwgX
 mX7OFYVSszT4/R7dzAy2fTBcM3kemZTVLhBpg5th3IblC77zRJnLEOC4tZnsDJ0mt4b6
 ySZJW5y8+2KqFkEe3mLTqQX2YdgHIaS1fKrbrzNFpi5/33EZ/ufy3pfi2a5WMFzMr852
 8UXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uI8qQhPoSb2o78mSYJur6fMHkdVTqendruK+vUMA+EI=;
 b=LtGt4qJW8KVFAsjXZUijgOPjnU9RhKneldQQVbgBi+UtNaEJ0IPrXgtDCZDnKLd/tQ
 3PQCJrx0jbX/YAppkFjkQDg0qrqV0zp8cfAYLIa655g0rDT4J9xABmSS7KatyMo0dIur
 pZNTZbt4nEllQt88zJ4MYuklynhznB0teYzKDBcpYN/x69o/jDzEC2V6K/x8e1jv6gY6
 KiSbTSis3b+tRENvWr0ZdXEEGvtuWfso7Nq4qFzzcs64eZjRGf0NQyfJubL9Zb+o6Vtg
 fN2pFEhUCiaQIMtj8dSRmb8iU/XApZjgHCwQvrrQNFsRa0WE3rNLsB91zGF4rvyzaOlr
 LTzw==
X-Gm-Message-State: APjAAAUeJIK6Wsm5j3tdLyn0HN02E8eb2BuCTGtmWfmfB+9V9egnbxy7
 yloP1jxnO1rrSD+4BFAS2RRpTQ==
X-Google-Smtp-Source: APXvYqx5BXWNMME8DGfmLerCyIhSAAFxC3+YjVaDJOMVLxMm/VisM7XkyefM1tsKyH3BQ6Dfmiwqyw==
X-Received: by 2002:a5d:51c7:: with SMTP id n7mr3013137wrv.73.1566543785617;
 Fri, 23 Aug 2019 00:03:05 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.03.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 00:03:04 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [RESEND PATCH v2 12/14] arm64: dts: meson-gxbb-nanopi-k2: add missing
 model
Date: Fri, 23 Aug 2019 09:02:46 +0200
Message-Id: <20190823070248.25832-13-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: /: 'model' is a required property

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
index c34c1c90ccb6..233eb1cd7967 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
@@ -10,6 +10,7 @@
 
 / {
 	compatible = "friendlyarm,nanopi-k2", "amlogic,meson-gxbb";
+	model = "FriendlyARM NanoPi K2";
 
 	aliases {
 		serial0 = &uart_AO;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
