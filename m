Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BC31226C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 09:35:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V9+mHoKAqLavD5oX8b3E1L0aCcmCRVTH6qdxrVXOLI4=; b=Tw1LGr7ztfTO0cl1t765k25IFf
	hsFi0dpNOQ9MVWos1m2KYl5bInZ8wunavNhUOlGNbNyga8/dno0JWBX5CF32vfwexRzqxWR/idaKa
	Ro2XXrFR0pvmx7uhYeLn8elW8nneuk6Z4cJzHw1nbUFeuabm42YjTG64sUUYzGic2i4FDu+tCgDZE
	DvWtX6QBIQh1YxwcaiQH+uZOv1QHtA760nzanl5JwgRPSsjX1XnpjbMzEKLMGU/6KQYvpnYSm3/j4
	p1IUutLwq/76bOajyvu0NoLasaGPWWh5WMVh7+/RZ8Fdcml/ZSolTasbCCEJuwQjELhAjvpCpRHnp
	gFfUu06A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih8K0-0005le-H6; Tue, 17 Dec 2019 08:35:12 +0000
Received: from se15e.web-hosting.com ([198.54.122.209])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih8Jl-0005l2-Az; Tue, 17 Dec 2019 08:34:58 +0000
Received: from [68.65.123.203] (helo=server153.web-hosting.com)
 by se15.registrar-servers.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <akash@openedev.com>)
 id 1ih7l4-0002DN-R6; Mon, 16 Dec 2019 23:59:09 -0800
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=openedev.com; s=default; h=References:In-Reply-To:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=diOgM+1bEFTCStq0UeCQsuK8N2c5AS/suGJiaKd7qsU=; b=gBTyf2nP2LL9YXnxdGBwJQCDY
 rUG9U4ZtV2zu5fEnIaDyZSCWJewbmuOjZm+77bZxtWH0peTGJlsfIG7v46+eGsLUCk+303YmG8EFH
 YQb8VB/UDqcbETISz5g/TpY010Iu+GYMR0tp2fqZsztVIfcRRrGbwBO6FmbZ/D6X7Lq/H6MWhKbvL
 uBguk72zOaKAdMionpcrnd4qBYtUg7eRMYDA8dQ/1wMUmlEah0PxbjqbeLSll2W8PIGC3I2ysgzlK
 qBTMUSHNBak1pDeZFxHkP1lMm8xWldrGDgC6Qtze810vzVY9YhaRACBORzf7s7B9+8TIsC4bqjzI9
 U2icuvKtA==;
Received: from nat-inn.mentorg.com ([192.94.34.34]:44656
 helo=akash-vm.inn-wifi.mentorg.com)
 by server153.web-hosting.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <akash@openedev.com>)
 id 1ih7kz-003CWq-MW; Tue, 17 Dec 2019 02:59:06 -0500
From: Akash Gajjar <akash@openedev.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] phy: phy-rockchip-inno-usb2: add usb2-phy support for
 RK3308 SoC
Date: Tue, 17 Dec 2019 13:27:15 +0530
Message-Id: <20191217075722.11646-3-akash@openedev.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217075722.11646-1-akash@openedev.com>
References: <20191217075722.11646-1-akash@openedev.com>
X-OutGoing-Spam-Status: No, score=-1.0
X-Originating-IP: 68.65.123.203
X-SpamExperts-Domain: nctest.net
X-SpamExperts-Username: whmcalls3
Authentication-Results: registrar-servers.com;
 auth=pass (login) smtp.auth=whmcalls3@nctest.net
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.02)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0c2Pj46HODYmpAMVAv0J1pOpSDasLI4SayDByyq9LIhV5dqwct359/CV
 xZICQFYJSkTNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3Kk502M/hntTzIKfCMISdhHQGg
 t7nAtP8WjkKKy9v/mXRkty7kshl0qfjNTiHz6D+lTs1OFZCJnqICuBP35KwNAmisedSHrV8USIJy
 ZKu4Q0eBPJf4fBJswECxJoMRbkC3SF2DuTVJlHUR2BtY80W8dG60QfvEMzMeJ6Rw9B2oZpcFefeT
 nKVTea+Z7pU/97kaMRINxtYvoDPmxBEirO18GFgbEtxGbfWvsckv3Tqu01KJGGjsNnBvKhksFPgp
 Ju7VRAUaZyvXYsGqun+gsnRrw40vpN++k/mRssszRiW/L+aVL5CXNSk/AzmiJysF8dLHRyryw85/
 rAZb27+VZ3biGtaW8qQvbDNe5IP3ZP124DrwHHYNWMFQ3rxmq0HUMfG+c6Hob6r/eV86ndcww4rw
 IzAvtpjiIeRlwI+LpEJwnKenvHgTJm4rUod0ueKDsCR8lJjuWToZaiaFIvhnz77Y+k6uhs/Q2KE1
 Lby4XA9T8Bmj3saNZ0eUp3kqVmG1d7Vk0NCCILyLLaQ9eQTOszvxQTkjHv8L1XCo8f/lClCdnQEw
 egH725V8o9NmtwsOgq00IT3zX/Zzh6cpDYUl6c6Y0/5r1yWIc3jXLVN/s8cHerYtW55yLfDen/wr
 oS11FXNac8XwfSk5a6wPi3PS+6vBhpISIqK1GdyQE0WyMBODOy30v1Op0AWqhD2stjbU32pojN4X
 8zAZfIZ8CjT9GInTMPN38Uyq3PQ8yDScr+8662B3D4UT/bdQYZMqtJwVgGaPV8GdcLPofFI165s+
 Fi8oQNCwxvxuh+xtfMocbqMn/Qow8uvbAccZ4WWjZTIX9MhLKTjECb0PwpN4olPuA0AI93gbcx8Z
 jKXXCSz+ofgapDj5Myrxgk8zlzkZR8hg4/tjCwvQy21RlJtzRtySOaj2KPqMwd2r4+trrKXkWu7f
 x8D6z8uZdl1/53Cf3G9hN76KRnxfIvD0xWRSasqqxNnWfwc3A8r6JfNzxEm+Adh5Il9bsJFhaqar
 dOLrAnCsmfJ3HSl/Lt1pDXWpU9yav05pkiyHpQ9cOADsvE/xCV8jXdQF5Hew752uew/O2uwTJhUB
 Z3+qi/5h4DZCfPGWm7MoPBOavov9A2tPRpxsJ/Ez2OT1H/aAwarQpYDOYx/6JtUOkfNK1xk8kTd1
 Ny+HuiOkN2mAdCO+RVfxIo7mcAZ9GMPEl9B+0hmmdOnbSMz7Y9ZIgfFrL3927nPLXidUYhzTL/6b
 zJY8ZLbVls9GTjTyP2j0DLjHCOlbYrvqvTn3lmAWHSgj8REt1LPAYpi/k8cuog==
X-Report-Abuse-To: spam@se16.registrar-servers.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_003457_432043_01016526 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 tom@radxa.com, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Andy Yan <andy.yan@rock-chips.com>, jagan@openedev.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds usb2-phy support for RK3308 SoCs and amend phy Documentation.

Signed-off-by: Akash Gajjar <akash@openedev.com>
---
 .../bindings/phy/phy-rockchip-inno-usb2.txt   |  1 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 44 +++++++++++++++++++
 2 files changed, 45 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
index 541f5298827c..e978aad34d3f 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
@@ -5,6 +5,7 @@ Required properties (phy (parent) node):
 	* "rockchip,px30-usb2phy"
 	* "rockchip,rk3228-usb2phy"
 	* "rockchip,rk3328-usb2phy"
+	* "rockchip,rk3308-usb2phy"
 	* "rockchip,rk3366-usb2phy"
 	* "rockchip,rk3399-usb2phy"
 	* "rockchip,rv1108-usb2phy"
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 680cc0c8825c..9fe817486ea1 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1256,6 +1256,49 @@ static const struct rockchip_usb2phy_cfg rk3228_phy_cfgs[] = {
 	{ /* sentinel */ }
 };
 
+static const struct rockchip_usb2phy_cfg rk3308_phy_cfgs[] = {
+	{
+		.reg = 0x100,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0x0108, 4, 4, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x0100, 8, 0, 0, 0x1d1 },
+				.bvalid_det_en	= { 0x3020, 2, 2, 0, 1 },
+				.bvalid_det_st	= { 0x3024, 2, 2, 0, 1 },
+				.bvalid_det_clr = { 0x3028, 2, 2, 0, 1 },
+				.ls_det_en	= { 0x3020, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x3024, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x3028, 0, 0, 0, 1 },
+				.utmi_avalid	= { 0x0120, 10, 10, 0, 1 },
+				.utmi_bvalid	= { 0x0120, 9, 9, 0, 1 },
+				.utmi_ls	= { 0x0120, 5, 4, 0, 1 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0104, 8, 0, 0, 0x1d1 },
+				.ls_det_en	= { 0x3020, 1, 1, 0, 1 },
+				.ls_det_st	= { 0x3024, 1, 1, 0, 1 },
+				.ls_det_clr	= { 0x3028, 1, 1, 0, 1 },
+				.utmi_ls	= { 0x120, 17, 16, 0, 1 },
+				.utmi_hstdet	= { 0x120, 19, 19, 0, 1 }
+			}
+		},
+		.chg_det = {
+			.opmode		= { 0x0100, 3, 0, 5, 1 },
+			.cp_det		= { 0x0120, 24, 24, 0, 1 },
+			.dcp_det	= { 0x0120, 23, 23, 0, 1 },
+			.dp_det		= { 0x0120, 25, 25, 0, 1 },
+			.idm_sink_en	= { 0x0108, 8, 8, 0, 1 },
+			.idp_sink_en	= { 0x0108, 7, 7, 0, 1 },
+			.idp_src_en	= { 0x0108, 9, 9, 0, 1 },
+			.rdm_pdwn_en	= { 0x0108, 10, 10, 0, 1 },
+			.vdm_src_en	= { 0x0108, 12, 12, 0, 1 },
+			.vdp_src_en	= { 0x0108, 11, 11, 0, 1 },
+		},
+	},
+	{ /* sentinel */ }
+};
+
 static const struct rockchip_usb2phy_cfg rk3328_phy_cfgs[] = {
 	{
 		.reg = 0x100,
@@ -1425,6 +1468,7 @@ static const struct rockchip_usb2phy_cfg rv1108_phy_cfgs[] = {
 static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,px30-usb2phy", .data = &rk3328_phy_cfgs },
 	{ .compatible = "rockchip,rk3228-usb2phy", .data = &rk3228_phy_cfgs },
+	{ .compatible = "rockchip,rk3308-usb2phy", .data = &rk3308_phy_cfgs },
 	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
 	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
 	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
