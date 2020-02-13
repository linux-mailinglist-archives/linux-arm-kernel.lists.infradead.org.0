Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D8F15B860
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 05:14:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YSnApfLkJKDLiO+nunOB/ojNcF1WldCc6HocQCxIz40=; b=UQrNuDj+0G3823
	J5jAzc/ouQOTUMXgL3S3Qg6G4pMrCGDfEKinF+2vBArhysH6sXv4lkm67dNwdxzC2kIExo+hZZw2S
	bexzdf4phTwxVk3etWYY8pJuNR5KBl4+WgX9XciQ+s355EzHuRJNGRACax38G2iqQFQUMTTUup/re
	S6Oy3ySLXMBSI/oqQAbCy+eil4FBm8y3Q/4DiHuczz+0T4ODHCZDho5iS5UC637utSl5UOLjaiPA6
	KRTtYiYKNfgKBPWrOMV9LuLcLFE9MC4ZHP4RKBuVfDbj3FNInTJSVmLMMyI1xiqvCZuakcxghZjsd
	d9ZWwErm1ybs2H2jX9zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j25t8-0001Ti-28; Thu, 13 Feb 2020 04:14:06 +0000
Received: from mail-am6eur05on2080.outbound.protection.outlook.com
 ([40.107.22.80] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j25qF-0007LQ-D9
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 04:11:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RksvpVPCUwr+ak8XssmeUGY0NBLHk+XhyEMMRkqA0ZMsTrKsZNjNPcr8n88eoBhBGq/+62PyV+zwGqrlynmkQhxNJKcAQe9MttHIQhty++mZ1e/kjdjxK8paTN9e9n4/IpQAEmvTQGrUr5a41MFdzq6rKwEQaGLZ4mJiGdcdQlMLXbGAyJ6m6DzhSkJQ49rjFk4L5WtIBxco3vI69XMhFY8R+q+jeg+o5tM+C7Bj8QVzyKuNZ4zgFoWJ4llmKFKTyjUXU0foMT2HnaIo2x5nsXtzLWqVtcthnedhJ6UdN8XG9ensOAQa9iEHTGXdMo+lbPaMapqw171rewN689YxJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QMPs0oqS7rcoie9GbxzeqcEn7QJoL0B+tubvfIPzhBg=;
 b=iTs+vshShlwZb3GQWfpHAe/fyVb3HKcDZU6gJZafB5KF4YRfUXmVIpmfeitFphq7qKqoHORkrm/CHpQGZdUqRivk34VKzG5dL8RQbBQ9/E08A7qttVC+vO/mb0MnenhCDQmVFFB2OAwAFItyJ4IkMWF+2LFuMGAGRHXjJJ0SIPZFfy7aX9sBQrgumAJxjZQ+Ix3I6pXNNoXroVtcmi7dvwr4yqnwJRlz8tuGz/Q021j4eUJVmrQUaGSOHfUixjQM+eilpSy1FfiQ/4Bzj2BC76cm42PXHLXDYAH8hV0cp/2gflj7p5q4P2rivxkbbOMT7LUSEkrKYqQ6u7bB8XUpZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QMPs0oqS7rcoie9GbxzeqcEn7QJoL0B+tubvfIPzhBg=;
 b=BFbsqm3N6fnQewmT62oe+tKnpYAr6ImdutNLBk7t9yMWKDYHZjB+vxUQTA7IxwnWvcVPwGoJwxTpPSCQ3BQN/6LCwKTaxyeHVQ9aOK7a+Je/SOiznytKVt5KrHKTEJVdMjO9Wy+gOQwzjSpEbxzH7Jk90uX9SCxT5umAK70WcT0=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB5660.eurprd04.prod.outlook.com (20.179.9.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Thu, 13 Feb 2020 04:11:03 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa%4]) with mapi id 15.20.2707.030; Thu, 13 Feb 2020
 04:11:03 +0000
From: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, andrew.murray@arm.com,
 arnd@arndb.de, mark.rutland@arm.com, l.subrahmanya@mobiveil.co.in,
 shawnguo@kernel.org, m.karthikeyan@mobiveil.co.in, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv10 13/13] arm64: defconfig: Enable CONFIG_PCIE_LAYERSCAPE_GEN4
Date: Thu, 13 Feb 2020 12:06:44 +0800
Message-Id: <20200213040644.45858-14-Zhiqiang.Hou@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
X-ClientProxiedBy: HK2PR04CA0069.apcprd04.prod.outlook.com
 (2603:1096:202:15::13) To DB8PR04MB6747.eurprd04.prod.outlook.com
 (2603:10a6:10:10b::31)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.73) by
 HK2PR04CA0069.apcprd04.prod.outlook.com (2603:1096:202:15::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.24 via Frontend Transport; Thu, 13 Feb 2020 04:10:57 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.73]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c9c333b1-2214-4db0-a1cf-08d7b03abd88
X-MS-TrafficTypeDiagnostic: DB8PR04MB5660:|DB8PR04MB5660:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB5660ADE769E8AC7B80BF2433841A0@DB8PR04MB5660.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2449;
X-Forefront-PRVS: 031257FE13
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(376002)(366004)(39860400002)(189003)(199004)(6666004)(81156014)(5660300002)(69590400006)(478600001)(81166006)(8936002)(66476007)(4326008)(66556008)(8676002)(316002)(2616005)(86362001)(6512007)(2906002)(6486002)(7416002)(6506007)(1076003)(16526019)(26005)(36756003)(186003)(66946007)(52116002)(4744005)(956004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB5660;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Lw9e1Hb0tTJOrrInPL7ebbPkJDeOBwNZ4174wPBKH8V8WTQ+e0afa5f6gm+1e7nkm7iGyT+vIFi/w+kf35AUpJ2NSmrPaRVGX4/CVeEMl2uz7F1rnO0K1EUDcRJHutM64YG85KmTNzpwxA9746b13ukZPm0wVSWd6TpKuPxD31qgPAtuztbyDtJbSXlJ3YTp8nGfNkNjXvcuIz07S3eJPFlwKhW/yVW5/sJWa/6TdLD8eMD5lP2A2dYWQXWLODcqhDLji+hgYX9rpHdPbOixpKrEdnkFUHlco4dZ17ZHY7E+MO3CFRrC0UTkjmb1O2bwjuytdm8muX897FJmYdKa4aZMXY9Yq+HK8elfhuCYh5EsBVR1O6P0659qnzuU5N0t16VDUESCZ18AKUClSSmByUkz54YEZS2/9qO3pQvaHmx9DkzRcFbG+2gtvXnHpip48gPK8F2uJYEm2kt8BkLKuVMhvAZrKydYpyqngQSt7yVzGb8632V5hE8c4jdokMCPJh7sCsfkXdou6QOXsBzVWZTnEKHxcD6Nn5rqSWhPntbmJrwNvvQJkaqVByKnIREUnD53mY65qoTmhXdFNEHykw==
X-MS-Exchange-AntiSpam-MessageData: Feudhdc1VCnoIRM7PoWKYGTqeY9ReBXcJv97zZQV4HGtdMTGiTcuk+pIGsin1tuaoigTM9UjkXTANP3/8P3WunP8Vn09/6ALMJYMaG0Lun/chTzed9HOuLjlZQqIDEA4MX7dPx+2hjP81deU7sU8uA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9c333b1-2214-4db0-a1cf-08d7b03abd88
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2020 04:11:03.5831 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pc7C9pKE7GK2Rmhzo32cTxH0WN1Myhh3hf9alXl02xXKaFjiV9byiBnEysP7H5wUESpNdZqQDGteqsF2WZpdqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5660
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_201107_515234_026BA9F2 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Minghuan.Lian@nxp.com, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Xiaowei.Bao@nxp.com, Mingkai.Hu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

Enable the PCIe Gen4 controller driver for Layerscape SoCs.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
---
V10:
 - No change

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4631a1190719..3bbd14e9dfd5 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -195,6 +195,7 @@ CONFIG_PCI_HOST_THUNDER_ECAM=y
 CONFIG_PCIE_ROCKCHIP_HOST=m
 CONFIG_PCIE_BRCMSTB=m
 CONFIG_PCI_LAYERSCAPE=y
+CONFIG_PCIE_LAYERSCAPE_GEN4=y
 CONFIG_PCI_HISI=y
 CONFIG_PCIE_QCOM=y
 CONFIG_PCIE_ARMADA_8K=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
