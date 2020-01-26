Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4570F149C99
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 20:50:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Cu5msz9NOVMoGCUfopX280vFc6D2qVhNPxfEmvKxFRQ=; b=OaG
	UCrpkgjOmUTIl+e8ZfQU94Y+FHH0JIFtC7tKsdtO0RfrvDovmRwB4wsP3dzrW29uQaG5/YBvo3zmE
	5GeGOJc+99AdmNjhO+5p9SM70C3qYPM/COOzDAl+rBkHvuzSUDQwZ9svC/k/uqIzvfov9NF+A8SO2
	a2VGsSsKzmkdoZlCEgpJY4Y711C/Lp/eNKwDwC7rginBJAXK5UAdkoG7LrqaAOJkbhjE7x30S4W9R
	kRsh+HY2+KslzD+aOYQrZJApU8H1OWRHnVaF2RSDuLJjaY/R+/b1Zf60w/RW7yHJMFqwOc1xAJHvW
	lnzBNdjkWe280L7Yz+Xe4+SMD9tC2+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivnvL-0004i7-Mw; Sun, 26 Jan 2020 19:50:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivnvD-0004gU-3R
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 19:50:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id d16so8379901wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Jan 2020 11:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=IzokdTn8xHJq417mKTUutSBXkWIrdbd8a0vBGM9PALk=;
 b=tUPl+VtrH1Pl/A4cENMw5jkqUIZaLlSp5ydlxs2eEZZYc0n/n4fR4W4bE4nBs2A8pP
 Eq/VlMeWDee0oCrFbAG7gD1v886V1jwQtLuks601G9XeR3ZTk7lNhJ/99ZhkMG+NsXCK
 ysP8CUIZEnJGxYeIU2SZhWv88j2lt91x07GGd8vA24i5BGLLg+H7T0g/QPPrDCwvObEb
 OquqVrA10a9s100NTWjoa/2flZM3aaMSajkhidYsw6WFl98LGMNiH9PJCCyvME/e3z7L
 3OJc5x5ES8uEK01+odOH9ZpOe+YibQtCzJDWkbsFSEuujhaASncos/am4Ad8vsEf0YeT
 U43g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IzokdTn8xHJq417mKTUutSBXkWIrdbd8a0vBGM9PALk=;
 b=jBopIKvEAot1evp8rFddgPnTbi7LR2T92NOEUuREb4X/aL7N9B8NOgrpOi34etsxmC
 +2oOVWuo/rZOcd+zWFA2aiO4yXa7iQyS5v9S4fbZP12/z5GaAG5bSHKkzr5ralXaocfk
 +hAQTdiYX4MBScR1KEkCy7gHEFwEo7kTkr7ybUrEDEr9G+NTj6JKY7TQyYUpaaBrZFQ1
 sq32K5ycsdOrDOKkD6ZCQjScff8QUXceG3cxjxgwGii97FwXHwH4pd2BEY3FCGYs7XYs
 juuNTkHiwRhFvoYsctrJxuB/3ySoRe173qFTnxMknHvWsa8izv5oxEt6Mt4ibA1t5g/E
 mW1Q==
X-Gm-Message-State: APjAAAW6hMb/8ZjECJ7FRaQbbLh7tp+SIqZ96ifeGeQjyUqwbvvhxTdH
 lM4+dHC+JBG7naTKvOdvHrg=
X-Google-Smtp-Source: APXvYqyhEHf2NIuKRy19vEIN59z5o3oawzaNdznPSkQo8rWN9kw2aTBuGC9d37PH10pj80bWiOQUmQ==
X-Received: by 2002:a5d:4b45:: with SMTP id w5mr16918742wrs.224.1580068209319; 
 Sun, 26 Jan 2020 11:50:09 -0800 (PST)
Received: from localhost.localdomain ([188.25.254.226])
 by smtp.gmail.com with ESMTPSA id v22sm15313301wml.11.2020.01.26.11.50.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jan 2020 11:50:08 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: shawnguo@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: ls1021a: Restore MDIO compatible to gianfar
Date: Sun, 26 Jan 2020 21:49:50 +0200
Message-Id: <20200126194950.31699-1-olteanv@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_115015_169329_90688A6C 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olteanv[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: pavel@denx.de, linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 leoyang.li@nxp.com, claudiu.manoil@nxp.com, robh+dt@kernel.org,
 netdev@vger.kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The difference between "fsl,etsec2-mdio" and "gianfar" has to do with
the .get_tbipa function, which calculates the address of the TBIPA
register automatically, if not explicitly specified. [ see
drivers/net/ethernet/freescale/fsl_pq_mdio.c ]. On LS1021A, the TBIPA
register is at offset 0x30 within the port register block, which is what
the "gianfar" method of calculating addresses actually does.

Luckily, the bad "compatible" is inconsequential for ls1021a.dtsi,
because the TBIPA register is explicitly specified via the second "reg"
(<0x0 0x2d10030 0x0 0x4>), so the "get_tbipa" function is dead code.
Nonetheless it's good to restore it to its correct value.

Background discussion:
https://www.spinics.net/lists/stable/msg361156.html

Fixes: c7861adbe37f ("ARM: dts: ls1021: Fix SGMII PCS link remaining down after PHY disconnect")
Reported-by: Pavel Machek <pavel@denx.de>
Signed-off-by: Vladimir Oltean <olteanv@gmail.com>
---
 arch/arm/boot/dts/ls1021a.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/ls1021a.dtsi b/arch/arm/boot/dts/ls1021a.dtsi
index 2f6977ada447..63d9f4a066e3 100644
--- a/arch/arm/boot/dts/ls1021a.dtsi
+++ b/arch/arm/boot/dts/ls1021a.dtsi
@@ -728,7 +728,7 @@
 		};
 
 		mdio0: mdio@2d24000 {
-			compatible = "fsl,etsec2-mdio";
+			compatible = "gianfar";
 			device_type = "mdio";
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -737,7 +737,7 @@
 		};
 
 		mdio1: mdio@2d64000 {
-			compatible = "fsl,etsec2-mdio";
+			compatible = "gianfar";
 			device_type = "mdio";
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
