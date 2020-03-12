Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1845183D97
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 00:51:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5NjLBP52uLX5gQJFzhjy8dP30qufmzQ5YEV48rGSuA8=; b=Dq75BDgA3afu5I
	ms/Si8PL+YyT0lyZRWguCHsJK2j6MsyVGR8NwQfOVmBz2XSUc9P6FyKTHS8W8yCmB1Y1rSfA2wDLE
	crUUBSEycriyANmVR9b+krgHELFJGL/IXDPh/O8OXQVWGEuQ1fQ/PdJO6/uIl091UU+OSz7dfVmnA
	ChMm6bjY1KeNwlBqegY9sAAktT5nrzwk8YtA735lSxR/p/0nGnIJjMfJqIX7zzEq0oN/jEJ222s0j
	usJdryG9YML+HuSz7vWjduMtHgJgTYvzdJU1eITPf2yzgx3FsBkKT+nHXosd4Ga5BHTVGAdeG6lvs
	8KM04WT0AL3PvgGWAu/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCXbl-0005BQ-Lx; Thu, 12 Mar 2020 23:51:21 +0000
Received: from mail-db8eur05on2071f.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::71f]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCXbd-0005AM-Pj
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 23:51:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j2iLYzunss2IZMjndq76q4qYeFzI4udifRo3do5EjzFLP+F74pE6DaWDkjKg6guT0zkEd5WK91sQGI71JH7t1dlqO50pJYnLG0rJOSfL+yTqFEej5HwnCwqxYSUG52f7vz4tM91/FY4EIH6wBrkiXf/oERjC4z7LoEAgKcq/6xJkSrB5EReZ1xp7Er8wMHQ4lZxpF7XiNo5UC5M5EckB5PLpP6kp6HwTVmW5Ej5J4uQqM6sh2ujXRriiJXtSeSfEPn2Onp1Y8+zDeQK3PtmyODToe9vnRGFrrp91cJvMNMWjm9tdCteg5V17Z01gA2eOxR6Fov/ASdTipFdlBCWRxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1RrjX9oollmi3j610aXwuIJaWxiUoTPcBNdD+1H3tyM=;
 b=DKB700abdU0LGRroAgZApc291o1O7wLiMwV+2Dd049A3Y/2OlxZLVmxNunkzGNTxByk6/TMMWw46C5RQy63bXdooURbYuzEnmxJYLFo2CLdfRHR4WWk1bVczI91h/7YynFnNiWjthajVUtf1plouB0My2x012YoU0INSmd8RJIFrIjMUG88da3RDqhCoARLJoaiE7+7VpOVi6QETNazvvakx3r0NJNU40ds5Oo7jMwpWUyN7+EqNO3RFXuO07A1ZoSoB/sazeZHOl1Q0FRDs+J13qH/+JxQODSe2FFj7/Qx9ekSiBmrftXhGN7n7e7ZC0OqQl58dGb27GCjAlgGOHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=plvision.eu; dmarc=pass action=none header.from=plvision.eu;
 dkim=pass header.d=plvision.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=plvision.eu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1RrjX9oollmi3j610aXwuIJaWxiUoTPcBNdD+1H3tyM=;
 b=Krb929b0fTlYRCMw9478Rz2a9JiKLFG726AYTR/je6VvzyUA30yNsO8snw/ovBAg5yhtghPPK7nE5YOT6KGkV3kGdc3eskS780VOr61b0NX6YwZEnzGQnUAhhxeeLET+v+wpw0dHQGQQGLPy1DWroGKIctJYNfz1XwqAE1zK+hk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=vadym.kochan@plvision.eu; 
Received: from VI1P190MB0399.EURP190.PROD.OUTLOOK.COM (10.165.195.138) by
 VI1P190MB0159.EURP190.PROD.OUTLOOK.COM (10.172.81.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Thu, 12 Mar 2020 23:51:07 +0000
Received: from VI1P190MB0399.EURP190.PROD.OUTLOOK.COM
 ([fe80::f983:c9a8:573a:751c]) by VI1P190MB0399.EURP190.PROD.OUTLOOK.COM
 ([fe80::f983:c9a8:573a:751c%7]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 23:51:07 +0000
From: Vadym Kochan <vadym.kochan@plvision.eu>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: Kconfig: allow to change FORCE_MAX_ZONEORDER via
 custom config
Date: Fri, 13 Mar 2020 01:50:37 +0200
Message-Id: <20200312235037.26072-1-vadym.kochan@plvision.eu>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: AM6P194CA0081.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:209:8f::22) To VI1P190MB0399.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:35::10)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc60716vkochan.x.ow.s (217.20.186.93) by
 AM6P194CA0081.EURP194.PROD.OUTLOOK.COM (2603:10a6:209:8f::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13 via Frontend Transport; Thu, 12 Mar 2020 23:51:06 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [217.20.186.93]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6d0c30ce-7c19-481f-28c6-08d7c6e03b76
X-MS-TrafficTypeDiagnostic: VI1P190MB0159:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1P190MB0159934A1CC2CC2A2FE6BEEB95FD0@VI1P190MB0159.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:2657;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(39830400003)(346002)(366004)(376002)(136003)(396003)(199004)(52116002)(1076003)(6486002)(2906002)(316002)(36756003)(6512007)(110136005)(6506007)(186003)(2616005)(16526019)(5660300002)(8676002)(8936002)(44832011)(81156014)(4326008)(956004)(26005)(81166006)(66476007)(86362001)(508600001)(66556008)(107886003)(4744005)(66946007)(6666004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P190MB0159;
 H:VI1P190MB0399.EURP190.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: plvision.eu does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SmslrrbVRW8nrqpXty7UJjUf5dZD4wrHAXgToHm4spnORU369mikuKgM9riOt1najkTos+M+m6Rh+xGgyphBWuZddVKYzOvA4LgcH7BYQVj0PJeMXfmxzg274Z22lEC+SuUQ3DSHE9Jb+3Bw5NV3UNSc/1NEjbPhnqvpkeVhbt+UxSSC8JPv6XyxYHpcGxeuYkHlaWnpZhzE8NfZ7XlRgHZ1GRr249tylr9pPZ5stYpVdQFGIm5NUx1AgSLV2MTNT42Gdtr6pqElwyiq7y/LQh7+h3NKLQeYxhwQQrvvG8+ptBh8yB9PJna6pNhdGapbAbExljPCphyfTz2qbj9MwWb1ilRKPY6tI4gLsdJuIsSOr9qSBEVBI3SorTYI93ThVDig3tNJlKN7p4WHZOFYyS2p0C0kangOJ/zPzNCxnFtyKzWpybAs10Mj1C1YZ6oN
X-MS-Exchange-AntiSpam-MessageData: qtazSyjPjcGYhz/UFC2188EvtdtnP5Z3a0KCQ7wm0JTr6HG/Df4e98UHzZugZS+rkAZE0+rRgealQBj5EnahvLAvpvUVUCOgxLDwsoRhSpnMq/cPQVd/EkjHkge/dlIWosTvco5KApqrgsjvSOIGZg==
X-OriginatorOrg: plvision.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d0c30ce-7c19-481f-28c6-08d7c6e03b76
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 23:51:07.0876 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 03707b74-30f3-46b6-a0e0-ff0a7438c9c4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vd4ZOlqJv0qlL7T1ZsygMoEnsehNOvVshiZg1TZq14rGD8CffmAy8MsIonuIyG84/DWQNm0gYOHACZBgexffavhqY4Ncor+4lTqEf4OvRPA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P190MB0159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_165113_880455_F70A9F27 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Vadym Kochan <vadym.kochan@plvision.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing config option name which allows to change it via custom
config.

Signed-off-by: Vadym Kochan <vadym.kochan@plvision.eu>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0b30e884e088..d974f31c3c18 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1120,7 +1120,7 @@ config XEN
 	  Say Y if you want to run Linux in a Virtual Machine on Xen on ARM64.
 
 config FORCE_MAX_ZONEORDER
-	int
+	int "Maximum zone order"
 	default "14" if (ARM64_64K_PAGES && TRANSPARENT_HUGEPAGE)
 	default "12" if (ARM64_16K_PAGES && TRANSPARENT_HUGEPAGE)
 	default "11"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
