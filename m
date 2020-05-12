Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 342EF1D0345
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 01:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aiXMcBGmsZomCvQzeqFayKIKbQS/VygAJAYFfCiti+k=; b=W53SBFhrumlHQI
	RAEqO4wk1j5vRFpYHM2XYytyRWixmIH1B0lQnCFAnkamVuiOXOglfLHGLzQbq0HkQBipADRwKsFY1
	8P/gLuNR5AhgjufbkP7XAfbSEL1k19yNPPq9eMHEvJiWQDAY8H9lEjG4aozSEuXdsf6q1gykZ2+su
	HJY0BtCv8eTA6y0ZbjPpraY33EKqM/Vu+iZAW0JtwBYVLotHv0P7Ik5lYS1+obhcYM0dJ6c4dgKki
	pA+gS3IHrnsENaRHuLmnKjprDtdEOaRtlaXtCkKot+yOMa1CRBat/QPbrLhVsVNDA728zzABU7NkE
	CLrStjINTKBREYlorN8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYel3-0004on-Kd; Tue, 12 May 2020 23:56:21 +0000
Received: from mail-co1nam11on2106.outbound.protection.outlook.com
 ([40.107.220.106] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYekv-0004o5-T1
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 23:56:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DI374Tu4EBjxJWx0t71a/nyVlu2RMbhoCuZikt38c5MF90xXZ+hk+gN2qWY8I6zmAdjVZFAiZEiuRprNgVg0D4IxUgpCS4CAFqcO21ha3yXweriiThJRlkThA2m8pzn9HQ6glqkSYKl6A9zUFNflf9AxNLSvQ4MFqO5HR7w6mV8tOvJHahLGYQsvUsxWpOLLLWXf4MGWudLN/EReK5DT6IRYMDEwDUSSrr0QjvSahpXi3NWjK4Sy0WOjcOENDzL86QnJ/8CTFUQD+KKhG122nLRPkQDcePJJlt2Kj093olxXpJou+OMr1xQsg1xjcBbQTUvrlpMwP03qzFFmJ4NsCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wi+mvriKrHdXCtzGusI/raAWcPX1KK+A2npRlQxCM8M=;
 b=Dt67R9DoRsUir6yGFJavnkjAhTb41ld3k39f7+j+u2CNqZoHlOEAwZN4anKgBn6P0pwnaMvwHLmzLp/3WVD2pMk3gNPt1HNfPwLbKhy5NwgjgUC7BpBX84yHMk+LoWjOYLayF/hX+Q6LkdRr6VBxrtoOko5CC7lxaHako5wP8JeteofCuQQq/DClHbIXjpRVc1oAVEx7etPj7hBrmGbPndsoBmi/oLIUo8lvLWGSHnIaMdB+/eyqcLX8wHK8x4KdtvkGnkMaw+z0ORDV0adCDKZazpeQOnfj3QDwFd4dgvlTmhmZXWHXSyFW7Ie8HJMglN34prYChIYeNnhFipUGWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wi+mvriKrHdXCtzGusI/raAWcPX1KK+A2npRlQxCM8M=;
 b=P3miKNoWOi7shMOt1+zUz364qa5z1F5TTFfXDJRI7dfUJWfN6Tra9nfvaxskAkiU7TuC7EW0acBVhJfAyHFH/qArGsIaKxObLcE4yEiLumET14JbqlkHvsrhTujOPLmvzCY/6KMN9y7aIUYUpniouf2Tl25hU8IRyvo42l6LoTs=
Authentication-Results: amperecomputing.com; dkim=none (message not signed)
 header.d=none;amperecomputing.com; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from BYAPR01MB4598.prod.exchangelabs.com (2603:10b6:a03:8a::18) by
 BYAPR01MB4470.prod.exchangelabs.com (2603:10b6:a03:a3::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.34; Tue, 12 May 2020 23:56:09 +0000
Received: from BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c]) by BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c%5]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 23:56:09 +0000
From: Tuan Phan <tuanphan@os.amperecomputing.com>
To: 
Subject: [PATCH v2] ACPI/IORT: Fix PMCG node always look for a single ID
 mapping.
Date: Tue, 12 May 2020 16:56:00 -0700
Message-Id: <1589327760-5464-1-git-send-email-tuanphan@os.amperecomputing.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: BYAPR11CA0108.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::49) To BYAPR01MB4598.prod.exchangelabs.com
 (2603:10b6:a03:8a::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from aptiov-dev-Latitude-E7470.amperecomputing.com (4.28.12.214) by
 BYAPR11CA0108.namprd11.prod.outlook.com (2603:10b6:a03:f4::49) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2979.27 via Frontend Transport; Tue, 12 May 2020 23:56:08 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [4.28.12.214]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b9646e35-e9a3-4389-80c0-08d7f6d00aba
X-MS-TrafficTypeDiagnostic: BYAPR01MB4470:|BYAPR01MB4470:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR01MB4470043D943312C8E874F4B5E0BE0@BYAPR01MB4470.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 0401647B7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VrkyULwcnOqwaBimedbvL37OHbB/q9N24Pw1qVyuk8lcuO55LciY+YyBlKtiFRTVs6Effp2fYaWAlEqjAzmqzsRBGCvofgrAEheRezATJCyr+XZm7e0ImD/vFDx/CYO/0yyYL0YrQPtooWuO259JqzApizo8sphSCFUG7KqutgT+topn/c8tzCrY/TiKCfmpuW8lBGCCwD/3Gmaje8UKwrGeuBBvW/wj+mPHUzq6arbE0PTh4qNGQYU8MKKPDy/LnIbN0Cp3NTaIeHmv8dGetykZ6CeSAjmvmxhyTxLIjTTvtGgNlbuB5ZgWSPGWFPlVaspYPojaFVUvpBUqo4yQFgUZg/aQy74gRHWNbF2XvsLF9GMnPR7r5U0i5meaZSeHl9kccadXvLoXaSSICrYTcFeeFlxqQmPkAaS3GjvlS5MdQ9t2Phw4Mlm3iDtLGUu/h9n4R6EUbIz3F/GCV4Ze4CWLlxQiv3tRnTUyiY2RbghJAYnVOqwjZMl10GspZvuG+or9TMLt02iaum7I9XE2ITeOWtniydTkh6sg0IJf7dw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR01MB4598.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39850400004)(366004)(376002)(396003)(346002)(33430700001)(8936002)(6506007)(86362001)(16526019)(186003)(52116002)(6666004)(26005)(8676002)(2906002)(33440700001)(66946007)(6512007)(6486002)(4326008)(54906003)(5660300002)(478600001)(316002)(109986005)(66556008)(956004)(2616005)(66476007)(266003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: OgpZQbnge20v7hxFuHhE4VSY8ZJWjqC+uDuHREnzYPBWElLjjtIQKR3Plb5T7wdzpgAIX+vMgsxpuvCpoJ2bvGIWFGtNYha3YILfSuZmkMa4Tkic5DutImvWZdZq9+R4W5yhZ4AQzJ/T+FT54XmsNjzmFJeFMxSVqe930iTjgvpzlTx6YsvPZBOZHAud7k/zzs203e6yMQalVDPVVOmvEMYRYvaMEuPHf3oTBPd7qEVxSA7GeiZIrmdBX7DXfD+q4mJt/n/CbujoEryCN4nsaVhJq1w/advs0jVXoTH4BFno5o2LJtJdmKPtPsrlUpole9uRT2nZ6wcVzI9uIyIarwKeTXj2ZejmdKTrrSpdjmChm4fLyGX8NDcvL+eMZ+GSEP8Mk8LnfrO60Qyx3IagE+1G2RFPGZfAZbI6FG7NkdDIIWOcPZ1JjKzYMaV8pri4gFCtdqjL2rHCjwaJ8ExCkts/NP/EpshYFZBLFU+ohws=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9646e35-e9a3-4389-80c0-08d7f6d00aba
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2020 23:56:09.2459 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BCZseUeoiUG1JMdsxqjzTA1PCHZwETxmCqg6q0fgGeQocgh46dRZPwgxp2wvAyt4Rw/Zfaoq6LFVGRndDoKSk4TzGdt9GWMCHDBpoZBk660OTCdYdQD3hAxZGr2hmyK8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB4470
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_165613_937113_7A6D74B2 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.106 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.106 listed in wl.mailspike.net]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, patches@amperecomputing.com,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PMCG node can have zero ID mapping if its overflow interrupt
is wire based. The code to parse PMCG node can not assume it will
have a single ID mapping.

Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
---
Changes in v2:
- Used pmcg node to detect wired base overflow interrupt.
 
 drivers/acpi/arm64/iort.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index ed3d2d1..11a4e8e 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -414,6 +414,7 @@ static struct acpi_iort_node *iort_node_get_id(struct acpi_iort_node *node,
 static int iort_get_id_mapping_index(struct acpi_iort_node *node)
 {
 	struct acpi_iort_smmu_v3 *smmu;
+	struct acpi_iort_pmcg *pmcg;
 
 	switch (node->type) {
 	case ACPI_IORT_NODE_SMMU_V3:
@@ -441,6 +442,10 @@ static int iort_get_id_mapping_index(struct acpi_iort_node *node)
 
 		return smmu->id_mapping_index;
 	case ACPI_IORT_NODE_PMCG:
+		pmcg = (struct acpi_iort_pmcg *)node->node_data;
+		if (pmcg->overflow_gsiv)
+			return -EINVAL;
+
 		return 0;
 	default:
 		return -EINVAL;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
