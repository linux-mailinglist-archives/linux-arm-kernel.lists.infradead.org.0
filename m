Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFAB1EEF51
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 04:10:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NbT/+R6UgKGS5ecrfd3xMTTq7XUraAulP0T7R39dspY=; b=VT+RrgX1Z3SsF9
	Dg18pmWNEzlHDU6UCJu3W0gykMMskA5eEhBLo+mZPud4/EmNPdUr+u94l36Fv4rtusg5Lu2J53LSN
	APVLVQSS31zWLps5f6LoFpSPpDHHlMfSEW4An3KyfzDaIFNhwj0uv3g6SAAUg1PUm/RBhxcJb/tbA
	md/q1MfIyHQDdyvFMA+G4Ke1skTTBuLIyDlm2hfIlrBOCyWSeRXURB7odnP0bV7ZoJL/rzC5YM5Cw
	aBPpELF+TwxFG5ufsnfekK3mKQdHS0M9i90foaJ5AAyypbfsP0Zohd/FDNMu+Hk8JoYBZdhMhjtBX
	EsrNIVmOd4IGbBN8bf8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh1oc-0003NN-Fn; Fri, 05 Jun 2020 02:10:38 +0000
Received: from mail-eopbgr50070.outbound.protection.outlook.com ([40.107.5.70]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh1oV-0003Mp-Pd
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 02:10:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OQZYvXjweuQjZvNzYFLg1vZyr4UP8r4xtoZFnHI6LT7SyT/sEvdSc74939rVhUta3D6kzuZToapLP8ooeUVlHkJIytTL4WyC0ehtEFniOjeQojnxaKdMHzt7vX8IJroxcuc5K/j/D3YkzlZ1v1dY0pA6f68RhjeR1sMxsgwek54sUvD3B4ML6LxkcF4mXFIy48hWW78EuM5ZsPMKau7/HGdwIypS+M3++ANaHo+qtYe75t40zxamW73Kz5ZKyVnKc+fLN0fuab0XfUJP3Zcd0llqHuK4COAKrFbQKmdN3HpiHLSS83Hnbb7wZW1PKgGcHLfVAZmK1G2AU9F3prnGaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A/hQy3gTaNgnhXCXllfbB8ZGToJ4h85FMaa5f8Qr8RE=;
 b=arzmTuoxuWOXh0AG8u8tSDhfrzmxjueWr/sQtGMmVUr/Bfc4FqKUHgEQHL4XxnBVaYVUL0BANRsFO1RtURtBy3yacco2sZT0VGmBKpYdgfq0ZcEgqwTpoZ7wBQXCytiRTiH50NuRHbMX+4lgdsxMzigQBnAZsgLmgwTNSEemz0aprEkwA4awebxhrs4NNvhMqTVpRAadC9tIl8+ABQbHlATB+riboUb+e7nqD2fgjKcWplNFoS4BEi3mcXwjgBqodFYO8lfZ4kARvncF3t+rL6dsStQ9lnO1O9X44dJgrnFPZPvW/GsaQ8vIl9cafnoS323jVWVz5+S3uzz5t6lbHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A/hQy3gTaNgnhXCXllfbB8ZGToJ4h85FMaa5f8Qr8RE=;
 b=b/rKbnO7os2aOMh8POBpC8+jkgXOUy50BsC9DxCc639FpBQzCE+IW8YaGJJ2fKzozz00xUMPpcsW3XG9xb5nUEdH22X/jsdSQarThIVurXTFSqXMG6Drc6gjgkBrWW5t2snj2DtZUNCVayyRW32LUylZjqTHSMO7UQO5MByqsYE=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2696.eurprd04.prod.outlook.com (2603:10a6:4:a1::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Fri, 5 Jun
 2020 02:10:28 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3066.018; Fri, 5 Jun 2020
 02:10:28 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	aisheng.dong@nxp.com
Subject: [PATCH V3 0/3] firmware: imx: fix/update cm4 and add resource check 
Date: Fri,  5 Jun 2020 09:59:29 +0800
Message-Id: <1591322372-3793-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SGAP274CA0014.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::26)
 To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SGAP274CA0014.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Fri, 5 Jun 2020 02:10:23 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8995f4b1-60c7-408b-9f0c-08d808f59de5
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2696:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2696D75F48850A82D7A3103188860@DB6PR0402MB2696.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0425A67DEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: klcd5G1N9Hnt2Va5cYthIch31DmliLbvjzb60ETEDROvYEg5Ub35Vh+N69UroW/0x371bJKtdw8OBnnTCBaoBRodvnl/NlKQ+7U4iVLPRgG2qzzLy7+TbOB5C9ynd10Ol0FxcKN1J5PP42WSdaR9PKa4I90QK/W8xvL6NfYEIYDn/fgwqrCgv+93PqxpZ5O2tP2L0OLZJgPGsJnWp9EkFw/V4VIZW/okFJHoh6pyGOobmK853Vrx9YpsVD3LtaPl3+YUOQHx4Xa8GX5t5Z942EJhehiG+5JSejfU+mCzBw8rZk6zBAr6jwBTltyighJVj5ES5u8Jvalj96tzE1rtdUUawrL3ypvrdTSiSc8Jiwj65onDuvJuK9SSeVpTg+krood4EMmgi5Ysf57V/z+hroxJpF+AuTRD1JNigr7aqkUGa1jPcxxvWNDob1e1DKAdcEfi65K9hqQC8ldZ+4EmWQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(136003)(39860400002)(396003)(366004)(86362001)(83380400001)(6506007)(52116002)(478600001)(4743002)(66556008)(66946007)(8676002)(9686003)(66476007)(6512007)(8936002)(2906002)(4744005)(186003)(36756003)(2616005)(966005)(6486002)(956004)(4326008)(15650500001)(69590400007)(16526019)(26005)(5660300002)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: pGbnuTCqjKXtHwv9D0RN1YaVU2b4Drj36CvZDBDJQN2TClNx+vAyx8qToXZbB1fg9oithWhBSwnL1miDJ0fYOhc2fGgN7zmkFwvgkmANG8udJlKeMFGplMfTv9gMR94Bx/1Y5mWOhfJgSv8+be329/bp409dGmonl9htdAeMtKHiCp0+Vy41NyZ6y6HzEdCQSLIrd9TyLhCBz5MzbwZiAp3W2Sfx0fnBtsUWtfTv3i9y5hLMUM2bH4REXY0qHWbx7WLkv7VX5LwjhwPLTAIFDvkfEDrMPnSoWLMSPAv2MTy5vcmMWx2jOWOGiSoGX/9vauPvuORpHwtJmmGkvXuTxfLNPuk1A3rnAMzLnIgVmco5jlv3VDFDvpN44yjRsDA987bWeBhTDb/m2lTbDoZWods2P/HurkWE2Y3eMcuaiiyhocjLEiTKGKCB0MtFiLUmqI022SChiOcMWrlcNW9pJb95LFTVT9avmAdSxT33BZs=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8995f4b1-60c7-408b-9f0c-08d808f59de5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 02:10:28.6284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WxQoTLl0GLQkn6nBoU0YQQGb/JsI5ClGS++D3dohD3gy2g6Piw5wN2tn50lvoiHlGhBXaqnqfflTVMt78kQQaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2696
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_191031_830716_AB964ACC 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.70 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, festevam@gmail.com, qiangqing.zhang@nxp.com,
 linux@rempel-privat.de, franck.lenormand@nxp.com,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V3:
 Fix comments
 Add R-b tag

V2:
 Add R-b tag
 Drop patch 3/4 from V1
 Add comments and update Copyright for patch 2/3
 keep code consistency in Patch 3/3

V1:
 https://patchwork.kernel.org/cover/11505045/

Fix cm40 power domain, update to add more cm4 resources
Add resource owner check, to not register if not owned by Linux.

Peng Fan (3):
  firmware: imx: scu-pd: fix cm40 power domain
  firmware: imx: add resource management api
  firmware: imx: scu-pd: add more cm4 resources

 drivers/firmware/imx/Makefile       |  2 +-
 drivers/firmware/imx/rm.c           | 45 ++++++++++++++++++++++++
 drivers/firmware/imx/scu-pd.c       | 14 ++++++--
 include/linux/firmware/imx/sci.h    |  1 +
 include/linux/firmware/imx/svc/rm.h | 69 +++++++++++++++++++++++++++++++++++++
 5 files changed, 128 insertions(+), 3 deletions(-)
 create mode 100644 drivers/firmware/imx/rm.c
 create mode 100644 include/linux/firmware/imx/svc/rm.h

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
