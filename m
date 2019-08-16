Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5955C8FB62
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 08:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uOTz05O/Fq9qlQb+cxHn0FWNSHhDwfi2R18ZyvhUQtU=; b=B8f14Yn/gVQfH6rQyc2ZzNVX2R
	Iu8fHox/vmaq7S2Qi4dkDtjojj0ohWF+31mwuP8nel1Lsawc7GIjtOh0+xSZX+iqCaCapss/1OI1+
	iMIafbETTczXTiHoWBcjD9fbMk8C/8auqZY7tLvreKSwnbrgA9IxDXHXw1TnDac6trf2Gsh2/gUII
	ugTVbqrwhYN/SYVovLcfSC9Ck5TFb6eodmSHEKbcmKvPCwhEZhWmbGEeV/2mYMyTo9m3Q58L1qjwu
	R6AKp4SKALyc6vciLGMNtld7MgD5NzHcFtIo66yIvVlZCXHZolvpgWxxD6n3LB0v1D5JA637uF108
	7zhnkeiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyW2Q-0005jy-S6; Fri, 16 Aug 2019 06:48:38 +0000
Received: from letterbox.kde.org ([2001:41c9:1:41e::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyW1d-0005IF-7W
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 06:47:50 +0000
Received: from archbox.localdomain (unknown [123.201.155.129])
 (Authenticated sender: bshah)
 by letterbox.kde.org (Postfix) with ESMTPSA id EF95728AB08;
 Fri, 16 Aug 2019 07:47:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1565938061; bh=+KZNkFmTsqn+l4u0Fc+nIo6LZ5lfXPcfahH2Jdhx5FM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ivFNdZWovpDuJwjgy3lvrhtJwogU7xZ7Khokimt/BJ34wMRZDIqKPg4UPzySyjysd
 tBLwqPnJII0n6SRoFKN3wTQkIvRW/3qcVns7pZh0x5D3DGyY3zxc5nFSpvXzkJQjRn
 fpZ7Dnnj7iTBqpuL7ArunIiRWEM6YPFKS2bHiO4HE4z5ygndwJp4nUq90kRtU4iGTi
 mhdDSmRXEo+GFwVF/pGF7PqDtfKyXRxbgC75ngV47hfKJX4P6xFMdsHR9R5w88MX9B
 6TMjH1+7N1laHg/oapxqzmPB0qxXG5FISSecSiLmu2DCd7Lnny6yvt2NfFVbAAg7/N
 eTNhMT7DkFsVg==
From: Bhushan Shah <bshah@kde.org>
To: Icenowy Zheng <icenowy@aosc.io>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Wolfram Sang <wsa@the-dreams.de>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/3] dt-bindings: i2c: mv64xxx: Add compatible for the H6
 i2c node.
Date: Fri, 16 Aug 2019 12:17:08 +0530
Message-Id: <20190816064710.18280-2-bshah@kde.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816064710.18280-1-bshah@kde.org>
References: <20190811090503.32396-1-bshah@kde.org>
 <20190816064710.18280-1-bshah@kde.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_234749_402053_9DBFC5AA 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:41c9:1:41e:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Bhushan Shah <bshah@kde.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner H6 have a mv64xxx i2c interface available to be used.

Signed-off-by: Bhushan Shah <bshah@kde.org>
---
 Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
index 001f2b7abad0..c779000515d6 100644
--- a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
@@ -26,6 +26,9 @@ properties:
       - items:
           - const: allwinner,sun50i-a64-i2c
           - const: allwinner,sun6i-a31-i2c
+      - items:
+          - const: allwinner,sun50i-h6-i2c
+          - const: allwinner,sun6i-a31-i2c
 
       - const: marvell,mv64xxx-i2c
       - const: marvell,mv78230-i2c
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
