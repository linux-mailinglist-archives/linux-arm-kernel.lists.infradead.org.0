Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A921BD82A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 11:26:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hM0Q9fu23A8nYnLuA1YAVhRh8Tdpt2/wtXPrK6JdoUo=; b=cQ/KhIFuq0DIkP
	7kc2n3oNfDMa7Rhr4ZBrjVtNaKsagyHU+WynJOsU0Mc6kx3zoxRsmWafdu7RbUWSifT18SFj9wmtK
	d9Jp0IlW5B5PjZzn9vMoKnLPinZgYoiBiKbN8Mm0zSOzpNVZ4fEkAZ40bOFdKbHcmdpVeUDSCjRPC
	Kv0vYd86sZ+h9gHOeNLtJ67mDeWfN202iMxO3NTnL7fQk6Mn8G1eIFhjrafFDe/M3lle3axbQv01+
	U9fq5uXOBo2hHt/EFf9pIa5RXWE5Gr9kpPz1vvduHu+2VlSSH7V0zsOw6+cC3EJaeewv65GXqBk4p
	xgA/HIdlbuR9YkBPDKjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTizI-0006vH-EO; Wed, 29 Apr 2020 09:26:40 +0000
Received: from mail-db8eur05on2071.outbound.protection.outlook.com
 ([40.107.20.71] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTiz3-0006ti-ML
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 09:26:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KtDGmUSXFgpgtAxFQXpA+M/ZyvEr8n6TOtEnzhTABTS/312zM6ECK8xsOVDSjWndp1ne4PzLNZX6Ohk7tpFrO+/8zksjGC9mrQ7yeUP++MSifqCSZWsm0ft+Bz0vZRwHxejlLLtxk0nvsSZ1+H6XXM7bfmwp46DmY4d/9YAU1YZrlxpq0pEdfmWcnEVD+TQrlR1wetSDttomXeMxqdB3noXQX+lD5nVEuJh0xB+izxN7aohhfjhheMJAyK4X9NnOEF+LEaYbjd3p/hjVMvKMRXHTW2eaW5bdsgbt2JhtxIx3tg7eUCHzN77XbRCIFgNlPDR2EYeaf4/BbiXvdKYxoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NY7kSQGmxluFPiUo5STDSLyGQOSF06FQ9gz0893a0RE=;
 b=A81QrsThzRVK++75XfPXcACZmrXO9tDgojDs1I9I5hyJ0ahu4YRNzKlx2QvS4Nh2Ze352FAGkuVBmAFQNwFzUc1ToXlMpjVl/iUwaxoUr0J8QAkWzGetd+GHJUhMOo9tHcx3OcnPfDYZ3gMLUi6A+KDPza4D1R8AzuU+bXb3dwY2JWb17Mpwak7uMXvE7u15wK2WI/EjUS7zWVDgmqBHkShKO9SJdkZPB/uGyn89WXdIPPRDSiWN7jw/9K8nDba1zhxPDljqCM7BVgDWsyFbDTsF/qeXvemgwXrkzVjC4A6eldxyaCFw4ScMvXINGF7tPIysJkpfeLyho1IMNcTnpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NY7kSQGmxluFPiUo5STDSLyGQOSF06FQ9gz0893a0RE=;
 b=Mkq9zhwYTv+m6WdRI42znfiCa0oHTsYff1CfVqRzIXBI0LzZZkoBD5XFpPJZZuyv3FXT7TrTi9lpv4M6AZy7IIsacMeAglU7oumasL9K+JhnBF5WkC49dvRdYrhKewwJjVmCLRgavmksIlXeAFuf2jE7ZH5HsyhfrXNZXFEVwrM=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2694.eurprd04.prod.outlook.com (2603:10a6:4:97::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Wed, 29 Apr
 2020 09:26:21 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.023; Wed, 29 Apr 2020
 09:26:21 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V2 0/3] ARM: imx: move cpu code to drivers/soc/imx
Date: Wed, 29 Apr 2020 17:17:20 +0800
Message-Id: <1588151843-2133-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR01CA0165.apcprd01.prod.exchangelabs.com
 (2603:1096:4:28::21) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0165.apcprd01.prod.exchangelabs.com (2603:1096:4:28::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2958.19 via Frontend
 Transport; Wed, 29 Apr 2020 09:26:16 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7dafe83b-1d91-44d4-38c0-08d7ec1f60ae
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2694:|DB6PR0402MB2694:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2694D2F005A00430A417BC5788AD0@DB6PR0402MB2694.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 03883BD916
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(396003)(376002)(346002)(136003)(39860400002)(956004)(2616005)(6666004)(8676002)(4326008)(86362001)(6506007)(69590400007)(5660300002)(66556008)(16526019)(66476007)(186003)(36756003)(52116002)(66946007)(9686003)(6486002)(6512007)(8936002)(478600001)(316002)(7416002)(966005)(2906002)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jcT/SezOR7ktVxi6fdjUaDREmF6fgnwRL1qGfyB/1Hrli3TQQO7qF4S5Uvk2SH6U48KeOWWz+8+4KXQXmWlryIGrN3uRSQaW5A/060DbWLhURiP3u7H5TJsklounnLN0a6ulyAotHjlG8Q/9Omj4t55P5UGrGWbXS/kuBXQbwOTxNAEiIgx+PW+4Gywrocmc9wkXXEPWt4ti5UFNcR/zS/SAcPHocCcvLqhAxSxj7EkEPxzDB5vRppBq1aqVuhyk68wiIU5EnV3fqnB054ybK2GQNPeLwXYqcSrYszmQD6oER7E6GVVgc941ZWEZG0uyaTRf8PYrtk4yf4+Xicid0F9+pK3ixtjxYY00xSTz0yogQCXlmEJ415/PPeAUS2h1z8R82rvI4QGEF/GbdtQRNIGzBB1IVTqt1zW0RDB1TKIbGjum5TNgEiH4nqeu0PIwXTatxea/JmZALIPoaahcfHwmulUrhVn5TLP+N12HWBsuDBuTSeN5HLKYeLU9hvEWPOWKRL4YwL/fjwTZvVXP+a7PtT0Tsaq7sg1ARTn5L3iBa62m+en9VPHQN+180zoJrrUsBVziV4pbCbU1hU5cpA==
X-MS-Exchange-AntiSpam-MessageData: 7tM8Zd93xgXjuV0rOSn12IV37UcTEGnE8PmwgINr8vGnjGaHMVlo/tp+z0C8BsGKjRhV9Lk+rDAdzw77i4eHCuDofgRxIoQsDvcKGGmREypuZr/NPRhtIt6kFEMxiiSm+gu8NT+zjp8fDOkZvzuFeRw6kmC8EHsHpp6uaaBrKnOoBT/Ll/kAx43cZq8z4FoTsb0qqdK4pkYdnCgpZedMDeBi0zgSDAVhcS45NaGAnS/sh+jTUbAMm3qW3i0r5aot6c+vgZj/q8jpkjnA13NDUjMhrKuwHXy/x2qrSxrvbm2XqbhcvvNbVvkhmG/xUexp8qs6J1Ka1qGo29FNP+EXP3DXXnaolGKiLI1M78BXsfGTR0lG1Phf6NQrwtDo3/nJh/7BDTm98jQn2/yeyNB3aJWfbd+m6Amm5dfkertDYJud0s9mqKY7FSATrPSUsDLPr/vMl7ad8Mq7qkZ0lmxLnoGfrSA983eqv7TQF0Ob+ZlPvodOyDW4X6ht+cMzUaASGVZTogvuwpm4gbke6L2vWzxU+AhdRuSJINZaN0t8P2Yp5y2hov2AQV4T4/kLEy5U2Vj+vwipiT74KLrAY0nO2K8+41P4WEmINzisMJQZl/dCgBlfLfci3PeB1jpxq0UK13Gn1yYZjcnLJUNBgDsEvFK2xRuR+da0mnDu5lZ7vz/sQNLQmhqpgF8DKNx71WxFyFsenjz0XTwWC8kCr14iIFLuPj05bjlxGgtXIefVC/uPTumsbjOJingM0V946HPF3wJ6XV2GxdJcvcy1G80TNSG5A7tJUkxmk0stlEVf30g=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dafe83b-1d91-44d4-38c0-08d7ec1f60ae
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2020 09:26:20.8995 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L+jgCsH0C6rLSuir8auqYKmaNhq7e0FMq0dbDUTw6fHegmfeT893NZHpC76O7xlyB09amh/VHBX6oK4F5686Dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2694
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_022625_731232_B6FE760D 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.71 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>,
 abel.vesa@nxp.com, Anson.Huang@nxp.com, ard.biesheuvel@linaro.org,
 festevam@gmail.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, git@andred.net, leonard.crestez@nxp.com, info@metux.net,
 allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V2:
 Keep i.MX1/2/3/5 cpu type for completness
 Correct return value in patch 1/3
 use CONFIG_ARM to guard compile soc-imx.c in patch 3/3

V1:
https://patchwork.kernel.org/cover/11433689/
RFC version :
https://patchwork.kernel.org/cover/11336433/

Nothing changed in v1, just rename to formal patches

Shawn,
 The original concern has been eliminated in RFC discussion,
 so this patchset is ready to be in next.
Thanks.

Follow i.MX8, move the soc device register code to drivers/soc/imx
to simplify arch/arm/mach-imx/cpu.c

I planned to use similar logic as soc-imx8m.c to restructure soc-imx.c
and merged the two files into one. But not sure, so still keep
the logic in cpu.c.

There is one change is the platform devices are not under
/sys/devices/soc0 after patch 1/4. Actually ARM64 platform
devices are not under /sys/devices/soc0, such as i.MX8/8M.
So it should not hurt to let the platform devices under platform dir.

Peng Fan (3):
  ARM: imx: use device_initcall for imx_soc_device_init
  ARM: imx: move cpu definitions into a header
  soc: imx: move cpu code to drivers/soc/imx

 arch/arm/mach-imx/common.h       |   1 -
 arch/arm/mach-imx/cpu.c          | 159 -----------------------------------
 arch/arm/mach-imx/mach-imx6q.c   |   8 +-
 arch/arm/mach-imx/mach-imx6sl.c  |   8 +-
 arch/arm/mach-imx/mach-imx6sx.c  |   8 +-
 arch/arm/mach-imx/mach-imx6ul.c  |   8 +-
 arch/arm/mach-imx/mach-imx7d.c   |   6 --
 arch/arm/mach-imx/mach-imx7ulp.c |   2 +-
 arch/arm/mach-imx/mxc.h          |  22 +----
 drivers/soc/imx/Makefile         |   3 +
 drivers/soc/imx/soc-imx.c        | 176 +++++++++++++++++++++++++++++++++++++++
 include/soc/imx/cpu.h            |  30 +++++++
 12 files changed, 215 insertions(+), 216 deletions(-)
 create mode 100644 drivers/soc/imx/soc-imx.c
 create mode 100644 include/soc/imx/cpu.h

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
