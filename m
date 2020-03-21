Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCB718E4E9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 22:55:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ixUUmqrL5bULprhF1S145PzGmcmWjmK7YC6xBGSG33A=; b=pD8
	O8bNmiUMO42IStGQw90Z3rp8rYfCBVNSg8ihxxJ4Xlpp8dpXZ367ya6K1/tTSahOE5WOUeH/J19z7
	yJOtynIy6F3lAOKto0HdXPIPxcPL4pGwlPdTrH2FeZGqV0+lUmHColXZQwHQaNcZBuI/IsTOh7x5/
	QvAhE4kLKUFxkOhuvxGUYmCySbb5SyH159WdhvN4JXC0jMgP+p02zD5eG4HB+pbDva/yLEKyVR94w
	FYKTcEj7AnpPagZYBYoHGrPbfppt0cz54ltYmn8rq3s1a7a3vSk7teH7ZTyIWIgXrPJRanUeukkbR
	k//HGlVS4kvQmYpgVB18um4UgssLblA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFm4o-0003bK-4Q; Sat, 21 Mar 2020 21:54:42 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFm4f-0003aM-L3; Sat, 21 Mar 2020 21:54:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id 31so5875112wrs.3;
 Sat, 21 Mar 2020 14:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=DpqLQNw+Y8418IGRjNUnbHR+oFWS/Jp+NdksTj8XtVM=;
 b=Ieaj58daFUjzApL99s/gSTwsOHAkxY28s8mVlRF88WpDa+sxVLHOlX54uBK0eR6+w6
 mGDr5YMrqluu+3tiAUUza6bRaumRKLvtuLxfkM0in/Uon3yjy1txb42JyegYqiDv1+NT
 zPfhyJmgAk9yS5CSlW6fF3UBKBRZRjeJFZRb4+hrGyrOjnvyG/DJq9CuHY2Icf/s1/9h
 /fezGHHS5vKAp9nWyOteswcCAoIxcSPrBiQytB/s4Y/m2F1xYdynH1KhM4NV415DHTKN
 UDlbpxjNFjvQrER3+YZ8Fd6mKzINmIvmZZTlVENAu2dmW5eyMYnUaK7qOLNQ/uwk+DZl
 un1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DpqLQNw+Y8418IGRjNUnbHR+oFWS/Jp+NdksTj8XtVM=;
 b=cduFbfkN7trblFSGzHv8a855UhqOmpEhjQDTeBkl/LC4uC6RGJ4e35RUOMlhoxfIzC
 PPaFy0yiK0TXiwxD7EzOQkhCBlnSEn6T5Ub2XLQkTGVJYqPBBnXLTodBJAB24RrGQcu8
 /ddC+OLcp+zh2GEhe4ZmDrylmowmKArKlS69VAodvCHFZl7hh6wmm/yqdZ6XwOM917w4
 hnJlYbs+eF66r6dz3CX1EaoKxZ/TIQM0f4IXqjgWdKXJxIY6i94aokm7oskQ/fe/XBJZ
 g5pbfk1c37LWJkDnRNQvMmdzIANrlUxrA0NsWdVpIwGz60NGIifxpGwxGCr4gWzQMaEk
 O9rQ==
X-Gm-Message-State: ANhLgQ1hjzf622jFlaNTFubaO1ns1uEVkl6BESQcmaHeCgQG6RvLV7qI
 68fG8gIX09HxXVTZ2iKEd0BdRLCq
X-Google-Smtp-Source: ADFU+vvRKpH8zZvngVS+BjZYxUICBZ/L0+SXI1hw0oMVZtCN4+mO/NHzqSU/EVpXrEVYGJT2aPtrVA==
X-Received: by 2002:adf:fc05:: with SMTP id i5mr19783133wrr.152.1584827671212; 
 Sat, 21 Mar 2020 14:54:31 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id l83sm14113796wmf.43.2020.03.21.14.54.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Mar 2020 14:54:30 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/6] arm64: dts: rockchip: fix phy nodename for rk3328
Date: Sat, 21 Mar 2020 22:54:18 +0100
Message-Id: <20200321215423.12176-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_145433_691582_E117EFA5 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, aballier@gentoo.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: phy@0:
'#phy-cells' is a required property

The phy nodename is used by a phy-handle.
The parent node is compatible with "snps,dwmac-mdio",
so change nodename to 'ethernet-phy', for which '#phy-cells'
is not a required property

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 54b3f4616..8976c869f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -934,7 +934,7 @@
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
