Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A299F547A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 20:06:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhE7byKsSMsMv/P6kQ77qM72tVk6yF+kKiGkz4yChJY=; b=S4koeAoui1v4hu
	uhjH3fnMlq7wgJLd+1stCyg6JVbPwNDC4vE6aRiEA1+5+bobp7yNhJ0RIMjXVDxvxsmkEeUbtkYVn
	2p+mBqCxxdg20gcxja5w9KJV3QdyLtXFknlrorTvY6JKqWrt0o/qw5gmAwfYUqTxE7kSNABlVjnAw
	x+UfqSEqtnW93dQg88SNPIqs/A62KvLMOkwpFRo1yNheoFT6bBdpjnWzZLHHpJ5Z9XwFNBuoOVime
	R3ozNqwu+5GgmZkyIlkBK8436odqfUk7LcoMOF4eR1T3qss8A27VrTuVtdWCW/LaDmuIDj7GvWC7G
	KmyCzE6BcuhpcaCmECnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT9aP-00030p-Ej; Fri, 08 Nov 2019 19:06:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT9aH-00030A-VH
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 19:06:15 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA0F3215EA;
 Fri,  8 Nov 2019 19:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573239973;
 bh=gvchYWgY+bPpWKuR3Es1o61Fq4TsZ/yX9t1jjgL5Mnw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rYBMmFP5r2cnQOMFb6MwiT36XcXk0EmS/P+KX/cD8wv8MAbRzZ7sBk/otn0w6BxHv
 n5qTJhvN6EtrjV+/FI9Em40iypIUUH7StO9OHrlAbgEed9URTEFg9QCup5bvC1yCbw
 Ggl7ipFY7sTnJVSkJcmWjaNXP0VGxQdEUQTLa4/8=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.3 045/140] ARM: dts: vf610-zii-scu4-aib: Specify
 i2c-mux-idle-disconnect
Date: Fri,  8 Nov 2019 19:49:33 +0100
Message-Id: <20191108174908.274573711@linuxfoundation.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191108174900.189064908@linuxfoundation.org>
References: <20191108174900.189064908@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_110614_026563_30272F82 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Cory Tusar <cory.tusar@zii.aero>, Rick Ramstetter <rick@anteaterllc.com>,
 Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeff White <jeff.white@zii.aero>, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrey Smirnov <andrew.smirnov@gmail.com>

[ Upstream commit 71936a6d18c33c63b4e9e0359fb987306cbe9fae ]

Specify 'i2c-mux-idle-disconnect' for both I2C switches present on the
board, since both are connected to the same parent bus and all of
their children have the same I2C address.

Fixes: ca4b4d373fcc ("ARM: dts: vf610: Add ZII SCU4 AIB board")
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Cory Tusar <cory.tusar@zii.aero>
Cc: Jeff White <jeff.white@zii.aero>
Cc: Rick Ramstetter <rick@anteaterllc.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Tested-by: Chris Healy <cphealy@gmail.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/vf610-zii-scu4-aib.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
index d7019e89f5887..8136e0ca10d54 100644
--- a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
+++ b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
@@ -600,6 +600,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 		reg = <0x70>;
+		i2c-mux-idle-disconnect;
 
 		sff0_i2c: i2c@1 {
 			#address-cells = <1>;
@@ -638,6 +639,7 @@
 		reg = <0x71>;
 		#address-cells = <1>;
 		#size-cells = <0>;
+		i2c-mux-idle-disconnect;
 
 		sff5_i2c: i2c@1 {
 			#address-cells = <1>;
-- 
2.20.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
