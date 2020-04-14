Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB781A75B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 10:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LzuxLOHNOQhxsZy9fSVoUobND1wTgYhuVTlkpTA3mr4=; b=fRSr2oMHd8Np/u
	LkxNGTkWnhapGL6zhinM7pwzUwF7B+lRTa+Hnl0IHRrZLjDFumGIWfGNMHfmkWak+GQ/RQKtVhBbM
	RZ8pUlv3pqK+Q5lzjuh9BVFRftlLLxBG7FKKUEqYN8oVZU8NVorNDrl6Y3rwZQyaxRQE194x4mLF4
	bbvXRLlchY5574g07aeb1Q3e/oBIH69/SgqPMNZrzuZbPylTzegESlXgg1FWcy5hn0CAFz2i4FrSO
	Ria0cG4q6RFpDIvNeLbmY4Lbfbq6JN5AMfhMcIs3ur0Fcohkb4TW9zMvwiNY3gJuU+aMJi/IfIhGf
	O+DMApf2Y35YmYXVuIBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOGmU-0000TF-Gz; Tue, 14 Apr 2020 08:18:54 +0000
Received: from mail-eopbgr150077.outbound.protection.outlook.com
 ([40.107.15.77] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOGmN-0000Sf-FK
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 08:18:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iTmsh+6u1b+9LKOIQNJww3FgO1MUSDFclLXRVxfVPk9WUPTH0Szhs//ArCi7gxV4SnyvgsR0H9gw7i2ULoh4rY+ZNysNlAlKvyzxvI/AwLE1VQQXl43jiZCb0lylNm4Nuq9PA2XtMPswDNTBsoAL/MMoVmuhEmHJCcAMrQJqIlbohginnMDrMlGFxjcFgP9PI/hrlX9QnkaZSrg6GIFZFwkdg50eW+VhzvhHgwqeEx1roUXiz9MZ4g+xE5IKtyy6DzvDeqBQ2HkayOiztdJkcMS3l5cOMRIgkmZfM0Q8kfSRjJpZdcAbiW3sJlSTKLIRO/2Z7lRR1TZtWAdftw9g+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4tC66cTJ89BNeaHvzMKQcbO3/xuvJdWcFBmJTwpL6Tc=;
 b=XnmRDvPp6u/Wqd23K1vTP6EbKy0FuXgQHYX9WZDatcaaos0OwrB/pJVlOtXLAvSCFA+H/tyb2UiYIgPOenjCHfpmtRySq+2nxdxxfvfsRs9+wZMZKU46sRo+Gc3sHKbcosMpZsfF1yOmqkcFFY8rqX3BFLuRKrWu650u29ZKU/139aV6tP3JYYTa3GvXY/o8S4ylVoXIUiXN4LJFMF3MgBLaV+yAcgDSvrAmRtcNNmY9nB+ynIJ0oUeDq7ElX5ysCCka5fq6Rw4Rulw0kEstlk0b/jOB1HNhiHXWy38+T2Ps4SvbYu63ZkbtFhDfkHy+A8oEPMppS1zVg+qH7kpw2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4tC66cTJ89BNeaHvzMKQcbO3/xuvJdWcFBmJTwpL6Tc=;
 b=PU3oFjoC6LmUjmT+GgiO2GsdEqCc6lFM6fYz/dLQI1YTo+U6+pKMFZAEW9YTkXXXmox0bX+HHncdKDag3SSRpYzfqbvXUfU/2ibD7Sz+Z+qLpqnNKAud0ZrBk7Qf40p+dqktzOulMHwAGDjRrdaG6DZhrdgZMBjXV7bsyGtMs+M=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (2603:10a6:208:70::15)
 by AM0PR04MB6724.eurprd04.prod.outlook.com (2603:10a6:208:17a::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.16; Tue, 14 Apr
 2020 08:18:41 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 08:18:41 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de, leonard.crestez@nxp.com
Subject: [PATCH] mailbox: imx-mailbox: fix scu msg header size check
Date: Tue, 14 Apr 2020 16:10:26 +0800
Message-Id: <1586851826-16596-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR02CA0093.apcprd02.prod.outlook.com
 (2603:1096:4:90::33) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.67) by
 SG2PR02CA0093.apcprd02.prod.outlook.com (2603:1096:4:90::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2900.16 via Frontend Transport; Tue, 14 Apr 2020 08:18:37 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.67]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 641d2a65-68c9-460c-0027-08d7e04c70ce
X-MS-TrafficTypeDiagnostic: AM0PR04MB6724:|AM0PR04MB6724:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB67241FFA827BDA53397544A288DA0@AM0PR04MB6724.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0373D94D15
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(39850400004)(136003)(366004)(69590400007)(316002)(16526019)(8936002)(9686003)(6512007)(8676002)(5660300002)(478600001)(66946007)(66476007)(81156014)(6666004)(2906002)(36756003)(66556008)(86362001)(52116002)(186003)(2616005)(4326008)(26005)(6506007)(956004)(15650500001)(6486002);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 93Zb3XKBd7s3dUxmpSUpB/9fHGkGAb80nIUZ351TSrge3k7pt1UkWeEOobxm1mlijjJtdpEQmOtDkYTX7/dANH9/HTrFnsJPDNnhhKOFh1lUOHh+JcNRjGeD7d3pakSAgRC0YJ+rMiGcsPpjKHYZOIbmdJ7i/z7pw1injAZOV5PpvU9LseQDdhgjQe4vo5kKQL/jRT67fSkKJdGY28yr5n3JgBESMKQCfAweJE8FO5oKSzsvB5L3Eki6qz1mgdzWhg9ScUk65iMkrNhtTMZZnoHIE2Vi3a9Imdxf8eNvrjXx4f86MJi78X2pmHoJLOJuh9pnx/mh/4wOQsPt4XmM0goKVpXq3hzZDn4njDdabW9/oASQwfMytqn03+XIuOD4hOW5dkAM1vZSuAjW58gEGNrCZR7XBX6xT2Opd5LnkGleGNJtA+Y9b7XQCTDU46oyYiUmor704jwBHICgcR1o+QKzzI25zMXMFOuXqOQijSKfrDU28h/mNDdPO3olPqdN
X-MS-Exchange-AntiSpam-MessageData: TOfm9Iue543fqmYrmFvZuioKoiOZLRDgA1QIKQxHLD2nYNggMYSVk7JtPxnrl0Gs+QqKkOrEtrIAa+dyaPus4/eEi+SNWtsl/FTNLcSQ9eMkGQc3H2pgqrNsXmwVhId8+EK5imqV8CrkKWGY0R0yXA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 641d2a65-68c9-460c-0027-08d7e04c70ce
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2020 08:18:41.3138 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ayxUYNV3b+gqRX7Fa2ed2WnMAW59YjmMzGjdy+kxdrgMvFOq3/KB/MX85boWt4bK90q4Sz987Ao6ggXom4JBQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6724
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_011847_609802_7ABCAAA1 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The i.MX8 SCU message header size is the number of "u32" elements,
not "u8", so fix the check.

Reported-by: coverity-bot <keescook+coverity-bot@chromium.org>
Addresses-Coverity-ID: 1461658 ("Memory - corruptions")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 I not include the fixes tag, since this patch still in next tree.

 drivers/mailbox/imx-mailbox.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
index 7906624a731c..c2398cb63ea0 100644
--- a/drivers/mailbox/imx-mailbox.c
+++ b/drivers/mailbox/imx-mailbox.c
@@ -154,12 +154,12 @@ static int imx_mu_scu_tx(struct imx_mu_priv *priv,
 
 	switch (cp->type) {
 	case IMX_MU_TYPE_TX:
-		if (msg->hdr.size > sizeof(*msg)) {
+		if (msg->hdr.size > (sizeof(*msg) / 4)) {
 			/*
 			 * The real message size can be different to
 			 * struct imx_sc_rpc_msg_max size
 			 */
-			dev_err(priv->dev, "Exceed max msg size (%zu) on TX, got: %i\n", sizeof(*msg), msg->hdr.size);
+			dev_err(priv->dev, "Exceed max msg size (%zu) on TX, got: %i\n", sizeof(*msg) / 4, msg->hdr.size);
 			return -EINVAL;
 		}
 
@@ -198,9 +198,9 @@ static int imx_mu_scu_rx(struct imx_mu_priv *priv,
 	imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_RIEn(0));
 	*data++ = imx_mu_read(priv, priv->dcfg->xRR[0]);
 
-	if (msg.hdr.size > sizeof(msg)) {
+	if (msg.hdr.size > (sizeof(msg) / 4)) {
 		dev_err(priv->dev, "Exceed max msg size (%zu) on RX, got: %i\n",
-			sizeof(msg), msg.hdr.size);
+			sizeof(msg) / 4, msg.hdr.size);
 		return -EINVAL;
 	}
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
