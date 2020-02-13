Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA05215B857
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 05:12:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTTpnLzcD3aps+ukInNtLFgHc897nUD30Phs1SeoidE=; b=a4O2q62ta0S0r1
	OEapg34iSQq+9eqFo6ira968PTYOZt0BN7vIRoY4yy1v2e+r3wLCOBCkyRovxr2v7B0ZbuMqGfpvx
	dtLO0Y6lRUbT1jwbUnMJbSE23QZZLH3cbmniO4hdly2xb/Z7MU6feHlhSjctAF3SiBPRxF24LeNXu
	enhWO7z3Qq+ChFhJ+gwup+OpI87T6CDqNA/qt2JOoBlsocnhC/vLGVUi0I82HUTU1ekktBwGR1rAw
	M6TL/W6j7MC9i917eaZJqLpl+PMQmJUFbG5SLlzeX1xtRfPK1C1GKzEXiWb7DWeAb+K4GpvTo3PBN
	kkLJTU3BMnqSDSOTjyog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j25rk-0008QM-KF; Thu, 13 Feb 2020 04:12:40 +0000
Received: from mail-eopbgr150087.outbound.protection.outlook.com
 ([40.107.15.87] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j25ph-0006oB-EE
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 04:10:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bVU7IF++v71W/FCrWA7kkZsSoFf8aed1WJhTfK46kwmLaIASIHFMFOSU8vJVSk1GzI7eojwP/ecdcCt1cEhE8Tn9ylNGZ0DG3dFDgFcJ+FWxisrbxVTJlmWpt7EDPATMYDptLB/9Fz/wxj/mvuZoZ6R4+KnJWCpJSdzYeSPwjxYXRi6TdOq5RxS76Y38nSfCeCo9m3HuSpPgOtLCxRlAwtXNBRpeo9lMSXeL/j0fUaPexrB0nYQly6tZOE7mNobScaaX6bmHCasGWqyyFjVTPWdynbHumHo+FD/nT/81vFNQa8XOmWoj24HPvTHv2ZC+j4Aobm9TK0ymjWOnQcfkUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yQnIDnfOs60ArrYlrKIzHN+uSDql2UkyyPESNRwFojE=;
 b=efQdDA/r95Uuq2OVXkILC/vaF31kyMCw4X/MreGmhEZ/ygYekdFXf/+ioN9YJ1upt/mf8ZD5k1ioo6/5pm1FoqZvZUss8v2p3/Sp/FHxNAZ4ipseWtbsSSa39k4epbwvkUelqwut8dcEFaO1B/mi2Mz4QkYeRoHtMGpp1kiDsP8SjkinAqyhpbqqe6UnH/mCSNKZDeYdzkNjX/oa/72Lyvp5jeO8+WuK0xAhJiFdFI/R5Ci2ggqcMO7x7u2adI1tv6+nT9HxHoOpprwcM8zwpqtn9IuWcFhTpLfqS05Dv2JxjGJ8PDxMfVWVUGYfIwsZMUqoYvUh7jy+ISKFV2UW4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yQnIDnfOs60ArrYlrKIzHN+uSDql2UkyyPESNRwFojE=;
 b=HdkUPSbvPJqwkKJgXdZREu3rXA3fp1ssoxaH64PawxJIqQ9lwqncl5nghiel9LUr8neZ+O7ADkjZTM6fKykmwrON6uXgBx9hsu0ZkkWnBXvNhzpKQ+ietCs11yogzaeFMpwgrYnYkaypZIJohDxvF9jX3Wia+503o+p8qLvM/a0=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB7084.eurprd04.prod.outlook.com (52.135.63.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Thu, 13 Feb 2020 04:10:31 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa%4]) with mapi id 15.20.2707.030; Thu, 13 Feb 2020
 04:10:31 +0000
From: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, andrew.murray@arm.com,
 arnd@arndb.de, mark.rutland@arm.com, l.subrahmanya@mobiveil.co.in,
 shawnguo@kernel.org, m.karthikeyan@mobiveil.co.in, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv10 08/13] PCI: mobiveil: Add 8-bit and 16-bit CSR register
 accessors
Date: Thu, 13 Feb 2020 12:06:39 +0800
Message-Id: <20200213040644.45858-9-Zhiqiang.Hou@nxp.com>
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
 15.20.2729.24 via Frontend Transport; Thu, 13 Feb 2020 04:10:25 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.73]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8d09c559-c19e-4f7f-7721-08d7b03aaa73
X-MS-TrafficTypeDiagnostic: DB8PR04MB7084:|DB8PR04MB7084:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB70848BB3EBDBB4F60454D44C841A0@DB8PR04MB7084.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 031257FE13
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(396003)(39860400002)(346002)(189003)(199004)(36756003)(6506007)(5660300002)(26005)(66476007)(7416002)(66556008)(66946007)(6512007)(4326008)(52116002)(6666004)(16526019)(86362001)(478600001)(1076003)(2616005)(956004)(6486002)(69590400006)(81156014)(8676002)(81166006)(8936002)(186003)(2906002)(316002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB7084;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fcgiLdgvxP0GOS7YKBLGFLB9cD19juJNuo5Fg728Sf2DeM2Wz1rYBg3cMllGbH8uDUXF6DhtGgGhuf+99mMZ7DyLQ7grVyrFiWkQNTSsbg18gTOGm0FCyCAmOnWDKTCxTjesdxKl22555FlRyM2P7hc6+5Anz/3r2TfOL5nd/PrAr0mqSy7y84HBnY/FazfjZzEekj/kjV5f9xQH0BieYM/m42UP8/dkxyQ8WHolNHRuFstZkhWBbqKiX25nx8UDHRB/bsywSSE4pIH1ZnjHCGPkHkpLAEzP8mYqCcVk/7LUCUteuQOxk8ImiewXnOEnzgkCwHuAm/JNPicxrvMqTv2p0++s7TLAO5rt+RPqofHhBFbhLw+UKimjgIDw1QfLbx1bjZk3lePZvT7Rm939juGcxrPe1qDZ4nJe/ZrpBmmqw2V+emOqCEQpfsSgu2iX7iKG8S9WBWX0VLn2jV/y5USU5mPUHqEBU4Dh4e7SlKVYkQudMeE8riOshqOd2RINbOvGLDPr6Xd4fbS07sniH1EfRNSkPv3Oq7sOOuuq3pTdK1qh248HAyk8dvw4c9jztwIkeX+7bN6+iRdxJs6RCg==
X-MS-Exchange-AntiSpam-MessageData: Fg+fpVWyux/+koORdJ8RUL6Qu/hVdWlRKZhX5u5yoCqOsmatU4KMvkZTak7wsrmQPeiUCu8lGAnA6g9ilbUA0EYb4cECPa7o1Qds8JsBBLIE8ae7/kZD2aFV9c88iNt7MZgRD9s+3tWN+Qx6Oc1vrg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d09c559-c19e-4f7f-7721-08d7b03aaa73
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2020 04:10:31.3378 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pzzevv2IFGiJB7ZIsqg3+2V2NteDbsIU0hsHJtYOXhFlibMFufmZ+bKp8fUJsJnjonwfSa+ttv2wM+C5xVhfkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_201033_513488_E8AA2C87 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.87 listed in list.dnswl.org]
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

There are some 8-bit and 16-bit registers in PCIe configuration
space, so add these accessors accordingly.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V10:
 - Changed the return types to reflect the size of the access.

 .../pci/controller/mobiveil/pcie-mobiveil.h   | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
index 623c5f0c4441..72c62b4d8f7b 100644
--- a/drivers/pci/controller/mobiveil/pcie-mobiveil.h
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
@@ -182,10 +182,33 @@ static inline u32 mobiveil_csr_readl(struct mobiveil_pcie *pcie, u32 off)
 	return mobiveil_csr_read(pcie, off, 0x4);
 }
 
+static inline u16 mobiveil_csr_readw(struct mobiveil_pcie *pcie, u32 off)
+{
+	return mobiveil_csr_read(pcie, off, 0x2);
+}
+
+static inline u8 mobiveil_csr_readb(struct mobiveil_pcie *pcie, u32 off)
+{
+	return mobiveil_csr_read(pcie, off, 0x1);
+}
+
+
 static inline void mobiveil_csr_writel(struct mobiveil_pcie *pcie, u32 val,
 				       u32 off)
 {
 	mobiveil_csr_write(pcie, val, off, 0x4);
 }
 
+static inline void mobiveil_csr_writew(struct mobiveil_pcie *pcie, u16 val,
+				       u32 off)
+{
+	mobiveil_csr_write(pcie, val, off, 0x2);
+}
+
+static inline void mobiveil_csr_writeb(struct mobiveil_pcie *pcie, u8 val,
+				       u32 off)
+{
+	mobiveil_csr_write(pcie, val, off, 0x1);
+}
+
 #endif /* _PCIE_MOBIVEIL_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
