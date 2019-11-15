Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FF1FD9A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 10:45:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cKnRzdEpNfE68PT9le1+BtM7D2SbOtSANZDcVqJ5VI4=; b=hwLZt+pHNRd+4r
	6VVoNqczljLwtMfpKP9f5xARv0APbZW5nvNRprBMLdssqNUFi5ZkqE+FXdN6FCeoW8A2LLe5yGTu9
	itc/2TJIHxt/Koh3NMg5esw2BiPTgd6gIA/B+tTGhX7sU9s0FnAG6i8ECIMPg4TEicoOH2+1GzaNV
	WwcyP0mPhI+h29VdXlTc8fzEzmuV2HL82v+UDeJ50hc6u9bvIQNm2FftTEDJCeMF0MzTXOANC70lO
	qWeQZ31n+qDVmt0B8Cp/1iFekZ32UFzEM2PXvtx0RBQ8MG3cMfqpaE5EuBmupubJ/65LuHKr5Hbpl
	FKhJtNP64lKDhJ8CEo6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVYAH-000307-4L; Fri, 15 Nov 2019 09:45:17 +0000
Received: from mail-db5eur01on0607.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::607]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVYA1-0002Zy-7J
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 09:45:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CS/pMTbyI/0miJ3UkFWluYWw3tN5XwP6VYGD+634odR0apqBNqtGbolEtlqT5p08PZW9YNXFq8y+Rp295rdlzfbE3ENnX8pwYMxZVVOaTS8ZSvVhxjkSonUk8w9SrwMrmk5JLV2AgquX8JY/2FmVzLjpXTfacg6ErojvDWwjV/RmN/w5KoSWGXUygBpwV6EQSIjNR3gkYlSQ3KDvZwskwM4isq+YTAuO03CqI4f+Dxjj8Tif6lxwdsmLhpAWvOpIbCnMt77vYWXZVF12KUJF9HTibUMQ/ZAva0mIZX/G1R8V7TdbokZe3eGyzLgndKc9BGcGfpPJUhRoB9eqTLaC3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rJZfFuTnbCx8UjUCbAUHEAXt/UD+sEx/l/f4hZGjbGk=;
 b=jEBqdXdru8S/jDo83yWTQxEryXM94HuMq9Qt0v4mkbTqJxtkFZBZDI7BrT06zlzy4QcsBjnVS82KHc8XPb1G18AdpNuvxOjt/DGniwtnS/gL2jsVmYhhZod90wvW3ux4fvcCKxq3f7few9kIGhYa0IfGvcHHFYxpkLGk+HUK3TMiq9xjfWhfQVxfCpeo59MyzoAuekRRHxvv1di9rosClP+bikDAliWMIn7Y5eXMie7UQFdYxNrUcTrvuacGLfV+KHhgLQZ0po9inhLMXxH3V8iYE6K/yOBgFZTK9mjCzRUjuNWxEtLxdYJVMHDBgEvcJVQpbOdfL+adF64MFfChag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rJZfFuTnbCx8UjUCbAUHEAXt/UD+sEx/l/f4hZGjbGk=;
 b=qmV6JkgPVj+eEndShtFMxylcjwSQWuH8CPl68qkM0hc9SjEaX0gk5wIMzfb+5THrrM1PqKrakcMkYwDX0H05wiwaIVOfPaiN04RlA582MKmFOsW/XRQ0s5XnEWEPlZyJ72WR0RltPJSTiYZD6QSZJVZ0WKxEotOGXPl3aLG0TWA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4883.eurprd04.prod.outlook.com (20.176.215.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.26; Fri, 15 Nov 2019 09:44:56 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.024; Fri, 15 Nov 2019
 09:44:56 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>
Subject: [PATCH 1/2] arm64: kernel: hyp-stub: drop unneeded including files
Thread-Topic: [PATCH 1/2] arm64: kernel: hyp-stub: drop unneeded including
 files
Thread-Index: AQHVm5lWKrMcQvbyVEW9TIQ/py78Hg==
Date: Fri, 15 Nov 2019 09:44:56 +0000
Message-ID: <1573810972-2159-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0010.apcprd03.prod.outlook.com
 (2603:1096:203:2e::22) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6fb2b17e-b6ad-4532-3813-08d769b078c8
x-ms-traffictypediagnostic: AM0PR04MB4883:|AM0PR04MB4883:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB488382C3983860A77A4B715788700@AM0PR04MB4883.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:586;
x-forefront-prvs: 02229A4115
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(366004)(376002)(39860400002)(189003)(199004)(66556008)(6506007)(25786009)(14454004)(305945005)(110136005)(54906003)(4744005)(66946007)(86362001)(66476007)(50226002)(256004)(8936002)(5660300002)(8676002)(99286004)(81166006)(81156014)(4326008)(2616005)(66066001)(486006)(3846002)(6116002)(316002)(7736002)(52116002)(64756008)(66446008)(36756003)(186003)(102836004)(26005)(71200400001)(71190400001)(2906002)(44832011)(2501003)(6512007)(478600001)(476003)(6486002)(386003)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4883;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JyEPlNDfXkZcjSQ8kclYbKpaX9eBxrG6MK1ljCWH00p8IWqjUvv6RyGiMGYNO0KzD31WoczatVjdd6TY9+z/JrnhojD8aPsTvYcfmXY5oF/Yihfw9Fop8tyV6yS3vwsPrn0hjv79LmZDLaNpZgWlulH1ejuVIYnvtgCFbdWmirO2OCInFDRLFEDkEw4+U5wz8FXpgHvdlsSV20NsKZ2x+tEbCdqhzvgbOvBK3LSnUrWwa0SlpD2OFZDKlXctdBOIB3U/wwRyv7esQ3Wkdmp5eA9gvUIP1MsLKEkFB7t8fmc81yWkN2BNFnVvb/HswTPd/t0WTsA8S4xXIyOCrF8NsKrmCvrV9PhdwMBy3OhpwAGqR98jI0io5iNoIuQigxsk+ORVGGwt815JqkcbZ/aYWqA6AwlhxymK3cHFW4v1zNLaFmCZWQozM+nWqzeyiI8d
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fb2b17e-b6ad-4532-3813-08d769b078c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2019 09:44:56.1900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sJfTIl+6xPUkLx0TzQXBliG1Jdu0MbwjQTxprGMFYTZLoOBpL4LpmEMV49S0iZYtLLb2PHsCSu5+7qWAkQ1C6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4883
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_014501_508348_B13603DD 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:607 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Peng Fan <peng.fan@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 "jan.kiszka@siemens.com" <jan.kiszka@siemens.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ralf.ramsauer@oth-regensburg.de" <ralf.ramsauer@oth-regensburg.de>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

These files are not needed to be included, so remove them.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/kernel/hyp-stub.S | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/kernel/hyp-stub.S b/arch/arm64/kernel/hyp-stub.S
index 73d46070b315..f17af9a39562 100644
--- a/arch/arm64/kernel/hyp-stub.S
+++ b/arch/arm64/kernel/hyp-stub.S
@@ -8,12 +8,8 @@
 
 #include <linux/init.h>
 #include <linux/linkage.h>
-#include <linux/irqchip/arm-gic-v3.h>
 
 #include <asm/assembler.h>
-#include <asm/kvm_arm.h>
-#include <asm/kvm_asm.h>
-#include <asm/ptrace.h>
 #include <asm/virt.h>
 
 	.text
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
