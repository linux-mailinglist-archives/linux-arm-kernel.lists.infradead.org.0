Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3941ACE48
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jEieJq0v4/YTwEn0XzzQxIEUh2OH/maaW91HDRP6kA0=; b=bLQ
	0j3duuWRO6kjQ3c9kuTYlbknNR9UdBWec2gDu/xJL6Bsb6ZoKXFgxWCwrpfnTmdnIyhBYMZJY00+/
	yVcelgLe5cfUs5+Tvl7EcluGkvtxVelAn0411Y9lY3Qadql4BrWexcaqdiJgnNqrcObcvwksFjcCj
	3F9oJQWGtz1VNu6mCkHdaPGsY4ySQc3HiqFUa3LSQt6GtnuPfQCOzyHQQckaPH4CpRx6dtCWsWzB/
	bP4mBBHOTiADHePbZhLXGry1dfKOIe2JqJbLk29PkPE5elddcbP+h5LvMLU5APgD6pWN8La8trRUq
	yA7GOvdcv7Jty1xeuMXvZgPV9xA1Giw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7vN-0000EP-Tz; Thu, 16 Apr 2020 17:03:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP7vH-0000DQ-Av; Thu, 16 Apr 2020 17:03:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id f13so5653874wrm.13;
 Thu, 16 Apr 2020 10:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=nLvlmP+OaOH6XW/i7K94s12/ONzxLukR4SF+ucpoCHw=;
 b=uNKTtXHP8cvUQQbNFw1c9nnkLSq7dHHgQI0iH/8O9iGDfpfukB9BaMqONTL4ICZlFp
 CDsLCWWKI+nGlFRMktoyd4JjrbUbBkAvY2WLSV4Hb8q8NQ1or2X9ZLaPBOMz0z2JCgBD
 6iaa8u2mYbUr5jD5zPfKDmpVohCiuYqvxvd/Zf2LQal6zKnZQqjVI/ar6i5wrqBUC5Tq
 OOyaUGdFlbkKTB19y0b89KYUKHn46XnfHoqB6RxBbeAV6Q7A3af2LoWD+56J2StptJxR
 EZChN5V76QQ79KAibeYHEds7O0AtFN1q/Q6AjHYJSTK6PxGdiL3va23xkBGiQcjjHDul
 GfbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nLvlmP+OaOH6XW/i7K94s12/ONzxLukR4SF+ucpoCHw=;
 b=XXktGpD8cX9LHyHvr+3CPkxQX1RRqx9DN1V31sC0HLcHahOv91uPuucRJHAO7WbDi8
 6zUVdoF3I0vOJaDPrjAHd0lx6vGTVVBi40fPeMZ2UgU6fkXx5tYmCbmWqc+7e3oxVU3t
 y1KM7BUS5OFS4BgqEFWlzqc58aDjCSQRJjmBaV5IOiZby/LigU2u1WMYghtUUDGRh2Zs
 w7bOKSeqymjZg5H3fu+a4LDVgUQGad90mSEXmQN7fPcBMfGJv4HHP5EKL5SO12xNAqF/
 5hR1ncKS1oxOTGpQEsKu/uXeJoNjPBxmabjA8HEGu8zsDxQLzlA7Gacq7Ur0+efO/zjE
 +4yg==
X-Gm-Message-State: AGi0PuYE+udYtNKPrClNJKMBiVhyBfozw8KeLXjYr3/rgiHs23b9/vlR
 7u3/gF+wGEKSwrWurv/sdKda5tXo
X-Google-Smtp-Source: APiQypK95rbXcmypBPzPHCxDjxmMrTBCh+O7czfG2FI28j7jzckXtzx3G4SBDQAJt4D/gvqxhBXPlw==
X-Received: by 2002:adf:eccc:: with SMTP id s12mr28943588wro.15.1587056608237; 
 Thu, 16 Apr 2020 10:03:28 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g186sm4339600wme.7.2020.04.16.10.03.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Apr 2020 10:03:27 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] ARM: dts: rockchip: fix phy nodename for rk3228-evb
Date: Thu, 16 Apr 2020 19:03:20 +0200
Message-Id: <20200416170321.4216-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_100331_399425_6C9198F8 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives for example this error:

arch/arm/boot/dts/rk3228-evb.dt.yaml: phy@0:
'#phy-cells' is a required property

The phy nodename is normally used by a phy-handle.
This node is however compatible with
"ethernet-phy-id1234.d400", "ethernet-phy-ieee802.3-c22"
which is just been added to 'ethernet-phy.yaml'.
So change nodename to 'ethernet-phy' for which '#phy-cells'
is not a required property

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3228-evb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3228-evb.dts b/arch/arm/boot/dts/rk3228-evb.dts
index 5670b33fd..aed879db6 100644
--- a/arch/arm/boot/dts/rk3228-evb.dts
+++ b/arch/arm/boot/dts/rk3228-evb.dts
@@ -46,7 +46,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		phy: phy@0 {
+		phy: ethernet-phy@0 {
 			compatible = "ethernet-phy-id1234.d400", "ethernet-phy-ieee802.3-c22";
 			reg = <0>;
 			clocks = <&cru SCLK_MAC_PHY>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
