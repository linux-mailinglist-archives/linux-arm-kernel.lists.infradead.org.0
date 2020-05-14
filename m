Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16ED71D38DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 20:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:References:Message-Id:
	Date:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cph64WJ5VkOJo1QL4heHBcNI+Z3AM6aG9N8S3O8mBKc=; b=CIlWlUfCt9rHV/
	oTdU/inm8dpK4URUmp5ITeCA87T0YcWAeCZ5SuFPDZreAIsX2V0SPjIxVBrmth6A1mgz7SFthQ6zH
	YH+xQlckgTXTyqU1m33+clmZYCphpLV73sos69VLJ6ZtQ8nE6RmtFXWIojIM2gSb14jxKx1aNnG2G
	fG2ExJXXBlSoFDrp+UXGtMHGAu413yNUsJrUA+38hliI8qkgsmp/RlGjRPgOosDmdalQuXI5xkgvV
	xq0u9MxZsgLw6eNzqSZ8v/+GB7/nEp3URZQmsJkH1lUXtqbd/Vpv9emsGkAXDKKU5ZJrkUkkk8fOH
	cf75RSWOtyg7Fu8L6+Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZIFk-0003Zl-HL; Thu, 14 May 2020 18:06:40 +0000
Received: from mail-dm6nam12on2097.outbound.protection.outlook.com
 ([40.107.243.97] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZIFZ-0003Yh-NA
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 18:06:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nZYDIa9RGcsygjERWaks79YU4vKGKCBS6W9WxURX6wzym8NnQ3ysalUFNLYoAYMY96mKCXZWe2IZFF6AVoeOnmCGarw1DXreTevwSxiiZtFY3EemPP654Z6SMfhqkLd7xOA7bx4yixmAKoUV4QdlKdCNyXUgztAAYZxxoTursSJf/QbQNTlzQUvrynTYMaaS3BHA0TPgdtXecnwM+xTzoeBT28BoxPVBBht8dnwtAabu1U652K7wwCaiRRrAH3MUOII1I7qCmJRm1ZE2FGfydu/iyi5GoisbiDv6fj7fDooC2gjS7ZeJCTDJbRGrKiuKp4f0mTnLtZmsXJ9p05o+fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4KfRNUXVG1i7Vh/m4idbgjqZl6w++6Pk5t5TRDb2qmo=;
 b=HVTAjIWYC58MbtdVOiGtxfhEW83zAyKGVlW5ELlC/ByzPizspPK8JSsCRHCOVJpy57p5fSQ3zoJfnepK93gw8qGuASeWzm+ZHkkksz35iIXG/+MyrNmI9J9T9b1P9qKIC1T/CMxGAgNdJgCrgQ7WgGvMSkWdGJdj41/yjwVgi1cqrWbbQl2uZqZTKGutMG6l4htk7OLRI0EM7bMdveBYTSy7vc8HIhJPVOoUig6iq0Um0oALFjDKot5cdwqno/NNWxAbbZFr5JWNVxMLR3ZwtoDcAeA8tXwYt171hlcKdGhSQegnCzKIA5UshG4Xx8Yci+em0dbEOiK9u3Rd7Nuu2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=amperemail.onmicrosoft.com; dkim=pass
 header.d=amperemail.onmicrosoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4KfRNUXVG1i7Vh/m4idbgjqZl6w++6Pk5t5TRDb2qmo=;
 b=cIak28l6V7HZeUhsj69IZTeiFwG46309u9halPRLZBcp4OCN8smt6n2qiHp8anXN6FY4m6WupHWEdA5RTY+uF2WXxagYrAg5+L8xPvZvwNQbHOAq+eVXskNiTpxwC0QSRInDPI5KHRvGcQPghsE+e8sOVW9OUd1jwFc/amDuMjY=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none
 header.from=amperemail.onmicrosoft.com;
Received: from BYAPR01MB4598.prod.exchangelabs.com (2603:10b6:a03:8a::18) by
 BYAPR01MB4325.prod.exchangelabs.com (2603:10b6:a03:99::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.35; Thu, 14 May 2020 18:06:24 +0000
Received: from BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c]) by BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c%5]) with mapi id 15.20.2979.033; Thu, 14 May 2020
 18:06:24 +0000
Subject: Re: [PATCH v3] ACPI/IORT: Fix PMCG node always look for a single ID
 mapping.
From: Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
In-Reply-To: <20200514092944.GA18032@e121166-lin.cambridge.arm.com>
Date: Thu, 14 May 2020 11:06:19 -0700
Message-Id: <1935E7D8-3807-40D0-A07B-28D5036F8489@amperemail.onmicrosoft.com>
References: <1589415122-5899-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200514092944.GA18032@e121166-lin.cambridge.arm.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-ClientProxiedBy: CY4PR04CA0037.namprd04.prod.outlook.com
 (2603:10b6:903:c6::23) To BYAPR01MB4598.prod.exchangelabs.com
 (2603:10b6:a03:8a::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.173] (73.151.56.145) by
 CY4PR04CA0037.namprd04.prod.outlook.com (2603:10b6:903:c6::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.25 via Frontend Transport; Thu, 14 May 2020 18:06:21 +0000
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Originating-IP: [73.151.56.145]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4f5975de-9f2d-457a-d92a-08d7f8318353
X-MS-TrafficTypeDiagnostic: BYAPR01MB4325:|BYAPR01MB4325:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR01MB43253E15B25C1FD3F3FD44D0E0BC0@BYAPR01MB4325.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 040359335D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ud1S7jujg5xE2gchwOEt7ZuNoFqTavbZPE4/hPhH2KJgKaJEhcI2uDdfd9TpgiKd2H7fMh/fEM63PziBEP1THPBk5tS7FN4Py1aowZ1kh5EuqxDWMTTUZHIea6smPKZku0NS0KCf3J7HgGzW1s7gQScPFWO7LM+iyRRZQ9atGGNu6A30hnWAaXSXY8hO+ZUK7QbvSeQUJHfmiX9RHR4LhMmzNQ4Emiv6ZfbVVtK4f3a6Bvncmrep6OtBko8pMn1k0K47iYgwktzLvmhYpHdFEjB20ghAZeFYMJxKbw+5i1IxpXPYo0Ne2Cd1waJwraHYaCdofyot8myvF2bNlhgHysQoQyvo2XeQ9Od0BN4i3fICfPdSfUCsfcf+bazxsgJ85arSUkFEhnBJEKs1D/PHB0c8pNxeHFa4cQg0IMSZlmRQYtSlHAUn9cr4xcBe1jzV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR01MB4598.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39850400004)(346002)(396003)(136003)(366004)(376002)(186003)(8676002)(52116002)(8936002)(478600001)(66946007)(4326008)(5660300002)(66556008)(83170400001)(33656002)(66476007)(2906002)(16526019)(6486002)(54906003)(42882007)(2616005)(7416002)(53546011)(6916009)(16576012)(26005)(316002)(956004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: ZkXXluDDzfJgpsv6Ctda8ZoK1rh57+sjk5viAMC4DqinVhmCATm+f4CWVtbotVJSrmaH3P+8L4rlGuw/1eJ4U2TPv0dgqrqXq/MbeAAXx6mnuLlK2+0RzXgkMDu2HpNcMMl5LmJpXeelo0FR/k8zRdXg68JrUNNDIf1yBT6nnDzFsoV5I/FBw8ISthCsFJCPur3jGpSdr+FD7wjV7m5drpSJzk3cqIT+B7fQ+O2GfrMAdfx+wyEnZohxB0GfaeKFjZ5c10ES4slMaG02/0vfgzj3NUiyVMQZWaozPXKbe4xHlIrHMD6p6jNvXnZTB0F+jXRAsrWCwha+/FFf7YuHGNSWnkjydAeICt24LKCHtfj5LjbvSasgNWcprtydEfCNAi7Y1IC7T5x6eC+RA1QLMmkkyk6XL5xRmNmcc+rBGLjat849/LtSMej3tMeVoVhfgRLuiftZLmnNJNKhapUJlvvDAddU4MISksnwwrZNAdo=
X-OriginatorOrg: amperemail.onmicrosoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f5975de-9f2d-457a-d92a-08d7f8318353
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2020 18:06:23.9690 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: efurKfNZGId4TwV5hFMbo+l+etcOkaAhQbeqfdJzWA3Ta9g3KvyuX1aDugYUbGS7tS65J9VOMQuk5IVEpDLsIOOST6Nqdw4CoBRRywjbNlt2X5mZHsyQAdqj0aT+d9Ct
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB4325
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_110629_816793_65B85558 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.97 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tuanphan[at]amperemail.onmicrosoft.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.97 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Hanjun Guo <guohanjun@huawei.com>, Robin Murphy <robin.murphy@arm.com>,
 Neil Leeder <nleeder@codeaurora.org>,
 Tuan Phan <tuanphan@os.amperecomputing.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 patches@amperecomputing.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On May 14, 2020, at 2:29 AM, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> wrote:
> 
> Please update the subject:
> 
> Subject: "ACPI/IORT: Fix PMCG node single ID mapping handling"
> 
> On Wed, May 13, 2020 at 05:12:02PM -0700, Tuan Phan wrote:
>> PMCG node can have zero ID mapping if its overflow interrupt
>> is wire based. The code to parse PMCG node can not assume it will
>> have a single ID mapping.
> 
> "An IORT PMCG node can have no ID mapping if its overflow interrupt is
> wire based therefore the code that parses the PMCG node can not assume
> the node will always have a single mapping present at index 0.
> 
> Fix iort_get_id_mapping_index() by checking for an overflow interrupt
> and mapping count."

Thanks for the correction. Will update it.
> 
>> Fixes: 24e516049360 ("ACPI/IORT: Add support for PMCG")
>> Reviewed-by: Hanjun Guo <guoahanjun@huawei.com>
>> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
>> ---
>> v1 -> v2:
>> - Use pmcg node to detect wired base overflow interrupt.
>> 
>> v2 -> v3:
>> - Address Hanjun and Robin's comments.
>> 
>> drivers/acpi/arm64/iort.c | 5 +++++
>> 1 file changed, 5 insertions(+)
> 
> Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> 
>> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
>> index ed3d2d1..12bb70e 100644
>> --- a/drivers/acpi/arm64/iort.c
>> +++ b/drivers/acpi/arm64/iort.c
>> @@ -414,6 +414,7 @@ static struct acpi_iort_node *iort_node_get_id(struct acpi_iort_node *node,
>> static int iort_get_id_mapping_index(struct acpi_iort_node *node)
>> {
>> 	struct acpi_iort_smmu_v3 *smmu;
>> +	struct acpi_iort_pmcg *pmcg;
>> 
>> 	switch (node->type) {
>> 	case ACPI_IORT_NODE_SMMU_V3:
>> @@ -441,6 +442,10 @@ static int iort_get_id_mapping_index(struct acpi_iort_node *node)
>> 
>> 		return smmu->id_mapping_index;
>> 	case ACPI_IORT_NODE_PMCG:
>> +		pmcg = (struct acpi_iort_pmcg *)node->node_data;
>> +		if (pmcg->overflow_gsiv || node->mapping_count == 0)
>> +			return -EINVAL;
>> +
>> 		return 0;
>> 	default:
>> 		return -EINVAL;
>> -- 
>> 2.7.4
>> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
