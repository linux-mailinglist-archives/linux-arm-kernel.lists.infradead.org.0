Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C78F85E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 02:15:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Eu1LSlPf1bNkQfmyLhHfm63sePAlIZ3dmj3YqHSgxJU=; b=DeE2WspctcQCAY
	6joxRLVw46NHN3+2sMvFQPx77WyKBITVnYLypzYpThCydVC4DoRFaY+azHHcT6R4ihfTRO/rEoH4+
	mnngqv/oT1N88idGEbCIz0QJ5iHSlCSkl/IHx7sMc5y4Q/2RzTBjZkSzah1GsiyLeVAYfx/qz5/oh
	XRKYLQD3O8/8qpomsTlMoT4uPX16mGu5bUlxcloY6Wwj4DX7VUWirIqTdt0dQBNZ1Ls5pHdGeMbrg
	9ZGIJoAebjeiBmTTZz3VEN2u871dVkbzbZnnMzYvUQ9Vu0AqyN504mHRZWJKfU9kQXMSIeW7d7co6
	4FG+PEfbDWeLx2llJnsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUKmX-0001f5-OR; Tue, 12 Nov 2019 01:15:45 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUKmO-0001eZ-B8; Tue, 12 Nov 2019 01:15:37 +0000
Received: by mail-pf1-x443.google.com with SMTP id c184so12120881pfb.0;
 Mon, 11 Nov 2019 17:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y0h6XVwl64mWKPaIlsuME5eexdqTqwMUk4rev+uicW8=;
 b=DIa0StzbygIcBQM8xDeiOm8dKfa9ZC9PuPgSq4N6FekM8VrgEql0H5wkhJ3/fLY8uf
 1khNPply9fgNBLox3VSuKYxvd+maHjFJVX88omsiRZHegswpACZNjWtRkFbbH/J890rs
 TphfLeEg8J88ryc0ejBnbte2tmKgOZfCdUxo8tRz40C9f8vstjWHaqwxUK9J+H94lk76
 G7Mjzlr3SDGoyk1xXBOhwADLQm6qxEzG0ROxP4chRBbta029Yz3wsguYe/tZTWNCuC4N
 ts24wOalmcKCj6Z1hhf2VD3dfb7+erXjiVpD2IoGoVXKl7sVmyGD6cGvNvvi0mI5lNrt
 QQZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y0h6XVwl64mWKPaIlsuME5eexdqTqwMUk4rev+uicW8=;
 b=gRjjrsh1oqPnEzMfHJ+mOeEg665qrZTj5OSt4/U4iWtgZrKXnKgX38Vh/d7tOA+s1P
 gmAOK0PAi3Dr6XSMPqsMKVWJfdsITsqDDNfi1E1EI1skSVB9YxcYaqzCViD+nLjno1YN
 ClxaxylRWwESZUJIplhAxYZ3dku8sq6f0Hmcr1DHUsYUg7ysIbcy3HFJDSrVVJ25xV5d
 ktwgsmI7P1tnvhMHVbg92yljrJ5tnWnBgG2Jr/qoH+riU/GFAGVTnTCtI/NF5cAue+Ab
 BXSwAr5Ti1hGgL7i/5NzzVm+9xHJ5fZhLMap5obhRc86S90cMUCldP8q/C+mwhB9u1ul
 QMAg==
X-Gm-Message-State: APjAAAVTMExkJU6RXqvwn37/FoEJKxFXz53kgphLG9OQs2RlMMRVejUx
 eOuGTY1KZ26R9hksKYCDCwU=
X-Google-Smtp-Source: APXvYqzU5S1gkc0MTNIlYM9b5FV6IzPPNByDYevydaoncYPERx3H9nV/gWamultUWTFXeH1jdZ7ErQ==
X-Received: by 2002:a63:f744:: with SMTP id f4mr10039839pgk.229.1573521335023; 
 Mon, 11 Nov 2019 17:15:35 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id 186sm23361341pfb.99.2019.11.11.17.15.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 17:15:34 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Akash Gajjar <Akash_Gajjar@mentor.com>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: rockpro64: fix ES8316 i2c address
Date: Mon, 11 Nov 2019 17:15:21 -0800
Message-Id: <20191112011521.3155504-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_171536_411122_743613AB 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to Rockpro64 schematics [1] CE pin of ES8316 is wired
to ground, so codec address should be 0x10.

[1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

Fixes: 6860769ea771 ("arm64: dts: rockchip: add analog audio nodes on rk3399-rockpro64")
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 7f4b2eba31d4..18bbe548839b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -477,9 +477,9 @@
 	i2c-scl-falling-time-ns = <15>;
 	status = "okay";
 
-	es8316: codec@11 {
+	es8316: codec@10 {
 		compatible = "everest,es8316";
-		reg = <0x11>;
+		reg = <0x10>;
 		clocks = <&cru SCLK_I2S_8CH_OUT>;
 		clock-names = "mclk";
 		#sound-dai-cells = <0>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
