Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821C912A561
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 02:07:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0MfXzs5V/3EuMmDB6nt1yr2i7stV/vlzTFuqu0hlqU=; b=CX+i6a5bsp0ssh
	HTNa1L6D1vZNargBlyvYb13RgEx4bTPomVF4rXd1uhLYgQ2iDiTujfqt8hoqdOHFioMoofs8LQ8Tv
	3YBbiPaZofIyghQ3Ka6dtWwPYCwRvFwTNeDc0Dp8qyGUklfWRxmMBuYy/Y9FcI4/vtXIMqvDphGd2
	3z7amUtHtDFXtRXWMdI89cVZEbmYGb9Y+TUR1GJgD39g9Ru+H7LByu/qiwl9hgrV63GkqZgFFwjGT
	Nm0A1zRYJwemfxRK30U7WkJEzZYhqNsmka840OmH9JQEfWCE7nPGrIBU7wIcH8PYs9Y0Ar7Jv4Z0v
	uuvZAMiex4BssdEanStQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijv99-0001fn-AR; Wed, 25 Dec 2019 01:07:31 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijv85-0000de-O3; Wed, 25 Dec 2019 01:06:27 +0000
Received: by mail-wm1-x344.google.com with SMTP id d139so2807649wmd.0;
 Tue, 24 Dec 2019 17:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G4iZPYSHcETHrh5Mkc153Wxpky0z21UUEkDTh50Atls=;
 b=msRtbZFynJxyeGYd1lLRmtThZVgLm2dEpIET/tJJqL5w33Yudoh1KnAI1z44ZUCWTp
 xfufU2VgGKTFimD++HDIvcWWQR3OpZB7AgJRoxq3fNf7Ln/ggHPZTHrk+WwEPdIRNeZu
 +xLf1p+b2bOs8UbWJ9s6M8XNAEkfZbJPCdf6frKrEf6HlfBAn0PSKAaZscsdrtItC+dB
 zRermTHOfe0Vk2AfNHPwJKJsbRrXD4ZGEFJaWBHMzc0/ezn21ZBi+2rkJ6lC3xHMaX6a
 zkKUrI7kSAt4tpv8DxJVICRBIwZgUjJes8tlIe7yNyJhHIyxkLf0foj1DTnc8K6siX4R
 Xl6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G4iZPYSHcETHrh5Mkc153Wxpky0z21UUEkDTh50Atls=;
 b=YE2W7Y54EEedT8G2wtPo5Pt8bWOYACEIJQHBiUv5GYI5P1ytt86/T5t1UunyMoAT0I
 1jbcqj7sWwBrRy6gXkcFl5CUj8/m/YHD2XyKU3xLiHwIBQPTb+ZAoWYnkGxtl/DQCH3c
 yEpSSi2UyTxLdtYJaX/m/fVqjKUPG8k4jL6zRfdJEA1oddqx40jCeKY0mc4Zvw7LBpSP
 SIdwDuG/4Iu5DOTybi8QmXSl3O87oPND55upYguLR5SxZcsRIyAk8jxAeL5lctlJzzwk
 o+YVM6sMXi7VZY2RWT1pmjwt+umUJgeKcHkE+Do1G3Ap6xFwT3+5IOZVMqeUjN3VKqaS
 BiqA==
X-Gm-Message-State: APjAAAUZAXgi7Xxcti7l2tWTCxweB9soe4kokNQy2xgN8cvTG2oxX1Ac
 2OOielPO5dqqXqpcAT1I1L22xAzg
X-Google-Smtp-Source: APXvYqx49sT+9J+WOgr59XRUu/8x5Jzm+pok9R0Glahlhx8JQErqlHoMTLJicMdzR504M8AdRVZ4Dg==
X-Received: by 2002:a1c:5419:: with SMTP id i25mr6508859wmb.150.1577235984382; 
 Tue, 24 Dec 2019 17:06:24 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id x26sm4066127wmc.30.2019.12.24.17.06.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 17:06:23 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 3/3] ARM: dts: meson8b: use the actual frequency for the GPU's
 364MHz OPP
Date: Wed, 25 Dec 2019 02:06:07 +0100
Message-Id: <20191225010607.1504239-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191225010607.1504239-1-martin.blumenstingl@googlemail.com>
References: <20191225010607.1504239-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_170625_803728_A9BC6E12 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clock setup on Meson8 cannot achieve a Mali frequency of exactly
182.15MHz. The vendor driver uses "FCLK_DIV7 / 1" for this frequency,
which translates to 2550MHz / 7 / 1 = 364285714Hz.
Update the GPU operating point to that specific frequency to not confuse
myself when comparing the frequency from the .dts with the actual clock
rate on the system.

Fixes: c3ea80b6138cae ("ARM: dts: meson8b: add the Mali-450 MP2 GPU")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index 5b5791924753..e34b039b9357 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -126,8 +126,8 @@ opp-255000000 {
 			opp-hz = /bits/ 64 <255000000>;
 			opp-microvolt = <1100000>;
 		};
-		opp-364300000 {
-			opp-hz = /bits/ 64 <364300000>;
+		opp-364285714 {
+			opp-hz = /bits/ 64 <364285714>;
 			opp-microvolt = <1100000>;
 		};
 		opp-425000000 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
