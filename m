Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C171C5E46
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 19:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=elbK8NS2dZ2G/IvI7OtilRqxIUkRRJ+006VifCJQ+TM=; b=IJgrOldw8NNYxaP8BFUSB5PjAr
	hCTwiUJ7DDcLPnOxnTWiUNpl4kXdpGfFk3zV9jSyUvipLBUQtaax31StMflSvy1VrykVXyqUQ/r+h
	vEEGjucD0lqNcK1gH3uEoytVS3ayiPGijUAgx2u/4Fvd+b8BfLzVXD8F0svFtD85Mzbpr9VM9ILBT
	9eeyTVc6GGKT2BqiVv2RS0+h/4R0JkhdUY5MAOCALXjZ2VdqeUd2et6bkDaX5zU1k9mbKf6sRztk9
	BUFf9jXb1WJI+IbCbpTrHl2SA6mDMJfcGbveSdYMsQ/07ens22iRHz8hHdqZzdSy0WWm/oI06U2pF
	m2VRl0Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW0y0-0003ie-5N; Tue, 05 May 2020 17:02:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW0xs-0003gH-T3; Tue, 05 May 2020 17:02:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id u127so3167224wmg.1;
 Tue, 05 May 2020 10:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4Fa9SRX5iGefguq9oBjY0ujY1kxsa+01Ny22B/LnyJg=;
 b=Ota0VHhLwimGfuqQXDT5Cm/ryqh3nix86NndMnb4/lv3yKDFdLDPzSIF3rL/1VCQ8J
 c5JfalcNar2PI5aHHHMY+BVkiHyCgS/qr2yRvC8BUxaoZs/Opr9bgDh2xFrJP+yHb42Z
 kdx2HPpLIBmypvHxR8iRBlw8v1gkOvij88nxQSDewwTherDFxQJ6j7OmpK3SH1fQw3HN
 JR95is0tt0sfsleV0tTGzH+7CKoFhWTSNDUvBySF3MBuNv/wH3VWrpoijovq8iblG4TK
 hz7RBOvoR9VUpVy+vH4y2KnH/cXOX8RqaAUT5ZRUfRHzKwXm5tjdXa2WsQZMSAloY40o
 Oudg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4Fa9SRX5iGefguq9oBjY0ujY1kxsa+01Ny22B/LnyJg=;
 b=Ho/RJ4HZV7bfBNaVO6wG8WcoP97nfUYKmPVxnqKb+NRrA1pgWb7UaU3dSU9uvuJL68
 p61jy+h+9yh77uh+tJpVT9LP0eHJNuqkDihMnpLAllR4mZqWi9dt09BjAWlwy3TlYlys
 AV9ahRUoHmZP+ztSfedZm61xSBhhZoF/rtWY9kJSTlDtYLsvjony+G09SoVpuWQUMa//
 ubyLIwJ6+5K1zyvjAhwB1Z3rztMwF23QhBWoXwzxGrKJHrLnQumQhUEusKRYT/xOvzvC
 xPNaFOxDe3vyjWNDoxacqRj7LfQDTL5n1Q3D8C1jA6m4D9B7wMe3iefgOGJoBfnLo9h0
 5L6A==
X-Gm-Message-State: AGi0PuZg9x8N5cUhJ1Bay/TuFDET7zh5dnV/SNNnrzA4xpUyILh646G+
 63sJvQnrvYwQrWIen7WX4Bo=
X-Google-Smtp-Source: APiQypJAuuQIMcmMxXCSbON9abfTYyy02Wjgc8Q38il3f+5HzxAp3b1VaD3sXdGSeZIgUiwFGsXi7Q==
X-Received: by 2002:a7b:c456:: with SMTP id l22mr4204827wmi.148.1588698156757; 
 Tue, 05 May 2020 10:02:36 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o6sm4397252wrw.63.2020.05.05.10.02.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 May 2020 10:02:36 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2] arm64: dts: rockchip: fix phy nodename for rk3328
Date: Tue,  5 May 2020 19:02:27 +0200
Message-Id: <20200505170227.6503-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200321215423.12176-1-jbx6244@gmail.com>
References: <20200321215423.12176-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_100240_959539_7D423D27 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: phy@0:
'#phy-cells' is a required property

The phy nodename is normally used by a phy-handle.
This node is however compatible with
"ethernet-phy-id1234.d400", "ethernet-phy-ieee802.3-c22"
which is just been added to 'ethernet-phy.yaml'.
So change nodename to 'ethernet-phy' for which '#phy-cells'
is not a required property

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changes v2:
  Reword commit message in the same way as in the patches for
  'rk3228-evb.dts' and 'rk3229-xms6.dts'
  that are already aproved.

  Patch 2-6 of version 1 unchanged.
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 931a9279e..fdf0e1b26 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -935,7 +935,7 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			phy: phy@0 {
+			phy: ethernet-phy@0 {
 				compatible = "ethernet-phy-id1234.d400", "ethernet-phy-ieee802.3-c22";
 				reg = <0>;
 				clocks = <&cru SCLK_MAC2PHY_OUT>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
