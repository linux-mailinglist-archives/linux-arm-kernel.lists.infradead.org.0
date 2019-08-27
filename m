Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB629E53A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 12:04:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yR0SdVzkCiLaJ57XC1RispFkuvwSbz/IrUNIzwaDtDk=; b=RU5tz34lgYzMHw
	YNEClsxXa7UUf+IjwFNpT2XXR/jRqjGr24z/j138tuiMz7jph1ygjU+HJ07Ojjh8OCSzi5TrncLWA
	K29yzOnNlbCMM8SeAksHbs3EDF2rS16gFPqM/Zex8UDcEAxF8VuxqY00wq2vQj5vRfcDvg2eM0Rhj
	WEZFTn0XDv/vUvv7++4i9nTN2X0tsL38GpOeEpzNItu+EB5qhFno53lsDJ8sKNJ8J0NEpBzcaHcBb
	3Jj6ppiaN80oFIqj12NbY/D/u7Whv39znLU7ZfUnsl0/SCgPTq2NhbvItFunKIwZUMg664QfPCDll
	QOEC5C2kj8NDBCFELdjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2YKW-000503-MI; Tue, 27 Aug 2019 10:04:00 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YJl-0004TJ-34
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 10:03:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id b16so18137567wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 03:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N3scpKO0Zzh4GV7gMEeSkZMIk4JwmB5WDbAZocPSw5A=;
 b=CfWqhHrooMAEoQGPlWt04PkQ0BwbFh9AB3BKZNcewA4CorL6RgjmekMXMp1JiAtJTQ
 1zvucYfsGTz5RTGEiC5UAg4uzv+sHB1bTLWOZmoDFuECJmIFdp4gCsmgd/NjVeC4g+e1
 gbWDLHUm9Gi2TWhmFoOrWwGAQeV1PQodjiqQN3zDRdptMCzai2iXaFnznGYJOqWa8GgR
 32NkepzHCO4QF1RaPf5KifZxphB5ayEx0vdsxmOZSb/K2h+TgP7tktAvlPj1Vzin3JF0
 tLNNx9+d0nacz1GPOPsa9g0U9Fs/veRzp69CAUO4bC+ITLOzukAMPPheKbIwwij9DgaR
 6y8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N3scpKO0Zzh4GV7gMEeSkZMIk4JwmB5WDbAZocPSw5A=;
 b=gRJPd9ty2tY4uZ3xWBn2NlFT3nt8nTS26KeDQZE7+WvFulG12afjzN5LIsTiQvndKh
 8rWC6X8MzjfBaQF+F+gfyeHTprcz/tDwczmxY1GUgHKodd+8ayQ2lUQKrmJHGFSIfrIj
 D3+p3Hdf5CVby1zzKJr4OszSuNAxXGxn7mcKsVBUgrv61//OUrrXt5dsVpmVW8mmmYNB
 dDc0zYMxpfwkoW6c/JGQT46d4ACOO6czI2Iu+rPmgEiniOAWUIO0u8URRMMfPxyCeIbO
 QsNj4qOZHjw8U8Sxybxn0i8lhcYr7MPjXnJGCgg3cUmM0sgUw9Jsqd3+dBsEIa9iYrSh
 5ejA==
X-Gm-Message-State: APjAAAXY/GrCXqGmCXs9f71tAyPASRYWx9qtZY/Emsnyuo5BPf1+pzEJ
 qTTYVu9DjHyCbo02B7YrIiYpxg==
X-Google-Smtp-Source: APXvYqz+ibjedBMsj+QgbZe3C3ACpAVhv4R3ODBxrUkdq28jETkegrCPCSVUALS3zqKZzfnd7/IouQ==
X-Received: by 2002:adf:a2cd:: with SMTP id t13mr26526511wra.251.1566900191587; 
 Tue, 27 Aug 2019 03:03:11 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o25sm1816289wmc.36.2019.08.27.03.03.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 03:03:11 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 1/3] arm64: dts: meson-g12a: specify suspend OPP
Date: Tue, 27 Aug 2019 12:03:05 +0200
Message-Id: <20190827100307.21661-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190827100307.21661-1-narmstrong@baylibre.com>
References: <20190827100307.21661-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_030313_338481_F7814126 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tag the 1,2GHz OPP as suspend OPP to be set before going in suspend mode.

It has been reported that using various OPPs can lead to error or
resume with a different OPP from the ROM, thus use this safe OPP as
it is the default OPP used by the BL2 boot firmware.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 733a9d46fc4b..57c880c06a07 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -81,6 +81,7 @@
 		opp-1200000000 {
 			opp-hz = /bits/ 64 <1200000000>;
 			opp-microvolt = <731000>;
+			opp-suspend;
 		};
 
 		opp-1398000000 {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
