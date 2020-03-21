Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EED18E4F8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 22:56:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rvv/ibDyfc12q8yAGNRbaCaqSdP3+nw0A0YYX17Brwk=; b=YRedtNwgTNaE0B+JxFHocJzytf
	ncbOG2iOD9u3MfZDfCxkQBNwwcfiWSEv+X9g2FLw/hhUS8eWBuhAgmPxNvr45auxS+nSM8NnxJ/rd
	4EvfNHKQrdFVNlu4APU8fAcPfRZnLZQz9ss686xF78/LAX9JJpkmij+UcGOARnx2yj7Zm0mcmXdX6
	fADyUY2uTdeKVyG40cqbl4aarMkywxGKM7iiIB76sm/+R77EoPLSXT8M38Tny38b1ev2UW30o4VjG
	spnGIQF143vDXkzbvl0C/MbIW8aKc8oMUKapyhgviZex69A9BUlGRuJr8H9JbllAcuFGIqqqpf9a+
	wd022uBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFm6T-00063c-8U; Sat, 21 Mar 2020 21:56:25 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFm4j-0003cT-71; Sat, 21 Mar 2020 21:54:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id v11so11855198wrm.9;
 Sat, 21 Mar 2020 14:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yDruFVRHrSK5ODyzVMCRmTY0CPw77IJrtm55iVL4ls4=;
 b=G+Ny8yQIOG79RvLyCWGo3N2mrPHkrZ9M5A1g2Au0NO6RFN4ptQofj4Mkgf1YnTMN8z
 vvGFHT5+X7Jw7LTXVTr0O9jUE22wtXMADFetR2VO9M+Wn33ED7i3F6h7NX1qpzl+EEGL
 jII4jAFp0ngp6w+7X9/wcv+2jbi2/T3FxOdfIMhXkcQtbBG6FoxfB9t9rdX28Fi1WPq+
 Qsa/MaPBd5uWfMGcMVA/4+e5H0GZveBJ6Mq84RcjVOh0soZtDwuAcw2mwss8TKMNadJN
 3WaWwa6qJi3KDebK1190XVuNe7u8/G5pV8XoYtWqBkTVbegKvih/AaE7Jw4vtBqpeq7l
 Yq2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yDruFVRHrSK5ODyzVMCRmTY0CPw77IJrtm55iVL4ls4=;
 b=VWmDT0ZF89WD2c4CKXniISzzxEvLP9l6Qpec6mVVtx0vM2PQ7liUpwBAqO4ElOmYSb
 pBOOsQuFarr1gIdPzfZzP1dCh1+nhh43n41XAHu0sSR6qBxF7V25DNMnsMwCwus7Vwro
 aLuQcfkh+ECyaJcYKXh5ToHD6qPEh+InNyGJBDxTFiqNXDGlKMlybYx4vN5Unpc7nNBD
 0i3o/WONyC0eju9J0KMtaPKb4KMnuarOCXVAEoCxHSm1TZVC7nRBoGgkT57d4uK6u5ca
 CDgGX0fLFHGEVn/Z9/pyZvP0uhJrjoZWbohfHbnbPP8dLuRQeFwidRUqd4shffhpP3aH
 g5og==
X-Gm-Message-State: ANhLgQ1jxOPVsMPm2T+YiyYYp8zhg8xuL8RXpQmxZavLl2nN9tfPgId4
 OAUp/JpOkDZTVP63D0fAK4c=
X-Google-Smtp-Source: ADFU+vvfecVP4/2cTL1Qur4iAjfBJDvtPVohFp7zMiubwjXigr+XQIYueXlTgQ5kqnzW7sC5BvDI8A==
X-Received: by 2002:adf:8182:: with SMTP id 2mr18848820wra.37.1584827675862;
 Sat, 21 Mar 2020 14:54:35 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id l83sm14113796wmf.43.2020.03.21.14.54.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Mar 2020 14:54:35 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 6/6] arm64: dts: rockchip: fix &pinctrl phy sub nodename for
 rk3399-orangepi
Date: Sat, 21 Mar 2020 22:54:23 +0100
Message-Id: <20200321215423.12176-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200321215423.12176-1-jbx6244@gmail.com>
References: <20200321215423.12176-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_145437_282314_A171C19B 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

A test with the command below this error:

arch/arm64/boot/dts/rockchip/rk3399-orangepi.dt.yaml: phy:
'#phy-cells' is a required property

'phy' is a reserved nodename and should not be used for pinctrl,
so change it to 'gmac'.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index afbcd213c..6163ae806 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -554,7 +554,7 @@
 		};
 	};
 
-	phy {
+	gmac {
 		phy_intb: phy-intb {
 			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
