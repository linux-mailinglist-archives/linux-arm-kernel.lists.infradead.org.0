Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3261165030
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 21:42:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xwUfREv4PdKRYcnDxszO5Xs+V+U1D+Xp0PVogJkpNRg=; b=Fjz
	7G3pM8gsJSTOq71T2K9q6m21XjVgsOMHNgPCQxLwBZMB4T/bLCY5Tks+tCHtbzvjK3C1KSSWdENgy
	uPCh3MsLYX9rYgZHZacjqiowu19bOpmFfBg0NXDGi+JUK76B/jgSZa3s3XqY/LX0BFWG2+w8MIzUw
	JzAfZg9HJx1XdcBBCBb9nSAB5lTztbmCLtJsG+URI7Jr3wc3z7CgGVgbPJDJ3Y8YUaWXeKjzTf5hr
	zqXPfUxdIHB3ZPanbmstTMG378G/xKZ1qCCXAJvz3/ijYF75OCr6EVDPokLENI9nijxwU9Y/4QiSf
	eAD8tfIeuklQgdoYJtcPCEf70/1DV4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4WB3-0006A3-Oy; Wed, 19 Feb 2020 20:42:37 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4WAv-00069U-5V; Wed, 19 Feb 2020 20:42:30 +0000
Received: by mail-il1-x143.google.com with SMTP id g12so21780795ild.2;
 Wed, 19 Feb 2020 12:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=xMDNRqXigFwE5mAPTxNYoRMwFlx8Rk5qiR4uZXsscw4=;
 b=qfNCQIIH2j6wCkLKQ2mqWetFZntTRzqNjtBUM8anjzkPqf4Ynd0oWZWBb6hyrQPdCF
 uN3+mto+zq5HiY0xnelQ4PTO7z5fp0Jptf5qhcMwXW26QHdu1ppBMrN3gLdBGvkz9+7T
 uRGr6xPSZ2CPQYBvje7dwuPnzGTMvObbihSz3JgDRUVY/mlY9r1FmcAbwILshnrGxHoV
 YQ7XIWi0j7DxuapC2Mxf0BgFsQfhqPDfPdS4oL0kZVxd1wsk1YdXR26HaffZljlbj16u
 HGigXFMIMG0GQvDQ1WBnBaABCa1Y1CGM0wnxF/ut7KE88BxGE0dzo71L5H0o2zyYBRH3
 /9hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xMDNRqXigFwE5mAPTxNYoRMwFlx8Rk5qiR4uZXsscw4=;
 b=oNYSf5JPWVOz4uXnQneW52J5RNmXYVESdcoWqbtbXSv2+/3MOY9KeueTiCeCrihMbu
 VOs9TfIY8zqCNPbuv+ech6nuElb6K+sL5tjf1/IHEpwmSvYrvbp0Z1MxQh1g4V5Y/jBo
 Z2WPzWf9a4GZ1aQrBpMYGfqc5yMH3dFCyk47Ppnp0c+3cmM0kzTq1WC/+L9/XAbXXm5n
 j4rg0yfsJUaC4PU/9ywQqPsQGQx8OSJfMiUcRzk58zw7z+3RnqCcA+sgdR/WKC9k/L5C
 eRcp8tpNB1evlWOlm9FpFddZvtJG4nwQjbnU07INeFCKU6Jn9afl3BYgZScdk+mBAPDh
 GKaQ==
X-Gm-Message-State: APjAAAV3LRdO8y5GmYurCNE6W9TxLbmDycK95nTE9eb2HJ8L8029OWXs
 HhqvS9JdP1vku7RaLm8gOvT2fsk/
X-Google-Smtp-Source: APXvYqxamlA1ssz9lk4Vdd4EvOofQze/gD2b+EfZA1Xkq+0ovJF0gt8l+vaKreCew2We51oCAM8OcA==
X-Received: by 2002:a92:35c9:: with SMTP id c70mr26726162ilf.79.1582144947299; 
 Wed, 19 Feb 2020 12:42:27 -0800 (PST)
Received: from OLA-8C37N23.ad.garmin.com ([204.77.163.55])
 by smtp.gmail.com with ESMTPSA id l81sm305023ild.87.2020.02.19.12.42.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 12:42:26 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: Keep rk3288-tinker SD card IO powered
 during reboot
Date: Wed, 19 Feb 2020 14:42:20 -0600
Message-Id: <20200219204224.34154-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_124229_207786_F2ED6DAB 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jpewhacker[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Joshua Watt <JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IO voltage regulator for the SD card must be kept on all the time,
otherwise when the board reboots the SD card can't be read by the
bootloader.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 arch/arm/boot/dts/rk3288-tinker.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 312582c1bd37..acfaa12ec239 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -276,6 +276,7 @@
 			};
 
 			vccio_sd: LDO_REG5 {
+				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
