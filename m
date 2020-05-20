Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A56F1DBAB2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:07:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:References:Message-Id:
	Date:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uwe+RxdNatgD1Q0UM0kttD8U84IftLYdgaJzE/dzi7s=; b=ZET4NkPW8nlOA6
	0NLEHWZ0PHGnHE+xccR0hXQtpMjNtOCKabcOy348X0O1bKKeEXkLc9jVMq+Oki1suoLrj2Cox2KR4
	R8ZNjb6d5lmT3RiVDJpamF2fdU0EUVVZu+KDPPdz8AXa8z/uy1i3hnnDcw9Q+ZIwLC0wTIqGLiiU6
	yavLNvjs+jqlM5rXhvGLp+7oyBn2QmP2Tln32MYrmTixvRAuqP+iJhvhywR1NtI4KyapEw4fFkMEX
	GKOTdhMo4+moslUZvHt2jL3lV7Mbydj/tEJnLGAI9Nvke2zQzhaK93EjVd1lmA8s0uBkHbdogNINE
	jPjv49yA7BG+QRFK9I+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSBt-0003DO-0a; Wed, 20 May 2020 17:07:37 +0000
Received: from mail-bn8nam11on2098.outbound.protection.outlook.com
 ([40.107.236.98] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSBj-0003C2-Va
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:07:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n0HCSpgrK+68ZSiswU/fdec4vOJwM0mGaXEOAbvQtrtsTQ/ijbHIbd6Xv5YWBC3Lmw8NzOXbQvNtEjwT8mU4Tk/9BGn0EnJ8ONKBr3vzjAJNQZikcLfmV9n0nE/NWnFzf7fNgxCOi/Oj2bvVbRGLZk5iFYKLrrlWrTq8aFd6fO96irqN4QoNtH1wDYteok2yc9YIkpxOFg3DnE8r4R/IMK+Op9kCxRaf9b1oAFvKDhOGYRjq40mSxmNED9Q0J5ErzeuvurNRV36hljINgqeCO5Djt4ZOj8uvVlEbk4h02VCT62jmQDYTpKKPNE06jUg/el9OFSKkVsw1OwCC7yyk+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b3V6RW2/XmGVDfQ6ppSq2c4K8yONJAlNKKJ0Qme3URA=;
 b=FlzDAJPxwcQItwUEflPH0thDHuv7jeWb9jw4wf2hhiGvM+Cdgc3ig7AxuSeKW0yhgKSyxtHcND6aI/4/FjY6CCNAQnKoAKwPdGgBM8hYBMySQwAVEbTPVAMxFy3/cgEygxhHqu1OC9SEEE1EJgf1dpV7d/HwITUNNHa2pFcq0WpdnOoZSwLJAgEHgcdFNUfcleVpcuhj03d7BCLMBlRjObZ0wnV32WgZ6Uq5TgqhcvKxXbO3fn7elpXEVhNq2r1XcnqWnGjIJObJ2iNAUWIRCmo9qR4vVB8hR9QMtSKzsSyQTaFYeKm6eksGGNag60vzQJ7lXEmslRyqT+serDJeDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=amperemail.onmicrosoft.com; dkim=pass
 header.d=amperemail.onmicrosoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b3V6RW2/XmGVDfQ6ppSq2c4K8yONJAlNKKJ0Qme3URA=;
 b=dijmMUE/Ezu8dr3x8/9U0Kg3is5N92YZFQqKxjIFIC17On/DUyg1LCMtxhdgt3ABzVHoSHcECtU0bZ3/+6anp3Q2CUpl4zLL0n1YZxXeB2pNM8PBpT0WdnTR8vcLgL574Zo9guAHq/MQoy88edBd7FgyoUmxyXsBm7WpFCPMVsE=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none
 header.from=amperemail.onmicrosoft.com;
Received: from BYAPR01MB4598.prod.exchangelabs.com (2603:10b6:a03:8a::18) by
 BYAPR01MB4808.prod.exchangelabs.com (2603:10b6:a03:85::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.24; Wed, 20 May 2020 17:07:25 +0000
Received: from BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c]) by BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c%5]) with mapi id 15.20.3021.020; Wed, 20 May 2020
 17:07:25 +0000
Subject: Re: [PATCH v4] ACPI/IORT: Fix PMCG node single ID mapping handling.
From: Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
In-Reply-To: <20200520125813.GA6906@e121166-lin.cambridge.arm.com>
Date: Wed, 20 May 2020 10:07:20 -0700
Message-Id: <2C9161BC-A333-4AF4-B277-D8BC64A3F1B9@amperemail.onmicrosoft.com>
References: <1589570686-5780-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200520125813.GA6906@e121166-lin.cambridge.arm.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-ClientProxiedBy: CY4PR13CA0095.namprd13.prod.outlook.com
 (2603:10b6:903:152::33) To BYAPR01MB4598.prod.exchangelabs.com
 (2603:10b6:a03:8a::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.173] (73.151.56.145) by
 CY4PR13CA0095.namprd13.prod.outlook.com (2603:10b6:903:152::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.7 via Frontend
 Transport; Wed, 20 May 2020 17:07:22 +0000
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Originating-IP: [73.151.56.145]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f422575c-82e8-4995-0004-08d7fce04450
X-MS-TrafficTypeDiagnostic: BYAPR01MB4808:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR01MB4808C1EFB0B3C539D80D7980E0B60@BYAPR01MB4808.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1360;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z95Ijfg0wpLDueTfXhjcgg6Ird/EeKK1WfIfpsZafC98GhghFHUepYlx7kefYkx83tgh1kjWMLS2VbNr5vt4fW66TZsTB/nlisLHLC4xaims1eEpEyrBJNXkd098Ld6BqDpq8EffFGH94+c+b+RQZ3/h/wQDKQqU44RUjFbv+Jv2iU3QOT4c22kUujTB8U9ZEu1hRxzvYCKDmw53T3EPfDgHQ7b/qj8XdxWHo9Iny+c+eBbDplCg3ITbpqpD7O6HHTgNO+IEjoOH4oRZlazfQu1BjWNDQpSUsIqr4r7BCszQJaYrcCzDgyrgFUiukeUdgREZmx09aFXgHCsWKXqReA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR01MB4598.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39840400004)(346002)(396003)(366004)(376002)(136003)(16576012)(42882007)(316002)(54906003)(2906002)(66476007)(4326008)(53546011)(5660300002)(26005)(33656002)(66556008)(16526019)(66946007)(52116002)(186003)(956004)(2616005)(83170400001)(8936002)(478600001)(8676002)(6486002)(7416002)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: /PrF1DLYHIz6/bwG1vx/A4b1FACxLaQCYwNGO62sxWFhxKnpIFaRMr5uxIZLFb/8rRqCshPSyfu/MVDKPSFZGy7UtyX1JBD1pOV8f5zJRJjmiBkgsZP2bREVEQanPu3c6fPr/XsY+X11BbeL+hcMh3Bme7WEYcmL88J5iBGGEUUWgv4e0FsfcNyJOPQM2kLGE3+gbsapDxLewap0BWD38GGOgdAaagN9EEqV+toSsA073njFR3nXGwvA8JK34uQEFaSiPl7N29K4hzhK5/p4lagW6YvwQWPVy21FkAkZGJrwjdbbXIF6sqoO5W18xAQ1j8tr+xX+0yT+MUSauTvWl5UfO3BSP3IWsYw4YWTTLxIFGx6817PxxyXCUwntPzdoSv5kTeDlLvDI84arvUqMKF2JFyBZ+d4LZYpkVKq8IS52hMZvvZkfHwaj9rYwFdODaje4ykdG98gSJvVyx42LA0O5YcZI2X9VcAJQ9nIoIJo=
X-OriginatorOrg: amperemail.onmicrosoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f422575c-82e8-4995-0004-08d7fce04450
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 17:07:24.9299 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 56mvDkHVIKmlH+dSB7w+cvmE9EnldrVJn1CQJTWzvj7rzZtn8NJKJ1FwxUbJ7p3nOofk0DB7uoqNHdfR881y/U92B06o86psHh8lM+IuB6+tAgA+P8ghUDG7g8BrlNgA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB4808
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_100728_079277_0BCD80C5 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.98 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.98 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tuanphan[at]amperemail.onmicrosoft.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Hanjun Guo <guohanjun@huawei.com>, Neil Leeder <nleeder@codeaurora.org>,
 Tuan Phan <tuanphan@os.amperecomputing.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 patches@amperecomputing.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On May 20, 2020, at 5:58 AM, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> wrote:
> 
> On Fri, May 15, 2020 at 12:24:46PM -0700, Tuan Phan wrote:
>> An IORT PMCG node can have no ID mapping if its overflow interrupt is
>> wire based therefore the code that parses the PMCG node can not assume
>> the node will always have a single mapping present at index 0.
>> 
>> Fix iort_get_id_mapping_index() by checking for an overflow interrupt
>> and mapping count.
>> 
>> Fixes: 24e516049360 ("ACPI/IORT: Add support for PMCG").
> 
> Remove these periods in the $SUBJECT and commit references, I
> don't know why you keep adding them.
> 
> Anyway - I don't know if it is too late for v5.8 but this patch
> is ready to be merged (minus the nits I have just mentioned).

Thanks, will fix it.
> 
> Lorenzo
> 
>> Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
>> Reviewed-by: Hanjun Guo <guoahanjun@huawei.com>
>> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
>> ---
>> v1 -> v2:
>> - Use pmcg node to detect wired base overflow interrupt.
>> 
>> v2 -> v3:
>> - Address Hanjun and Robin's comments.
>> 
>> v3 -> v4:
>> - Update the title and description as mentioned by Lorenzo.
>> 
>> drivers/acpi/arm64/iort.c | 5 +++++
>> 1 file changed, 5 insertions(+)
>> 
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
