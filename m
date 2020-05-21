Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 631F91DD256
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:References:Message-Id:
	Date:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iiu64HyMhjdW8cMwwKkW4wN0XjFaUSNVeY1RIIrdw1g=; b=suZ44kbqVlEiPH
	T2bUXLhjFFepPcuCMwJUcHcrWVDcMdbOoBV7vMakk4wjAAoZ2TBba8UpqA6FV2N6WqZabXgM8vkP6
	J8SIwZMGY1VDsZ+ARtnvSDR/2Qok7IrVNuuSKU3REK/el0mpj6HvtpZbG7AafwkQy2gT8xqumk151
	ZsPxOVQXLxS4bqAlDDjs1iut/FLP6JXRaUZJqTTNdy3WK6kwVjsoAYiwDUDEl3+hkI0laLcVC/fo/
	Gvv3qQgkkHlj/hm7HtXnAbIRuVa+nC+zZfsFLKhDqJTTx4UomoAw0lPk4HmN3INYP29QLDSHBkS/A
	CxYs7c5Ixj+IAck/EopQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnTG-0007UP-H4; Thu, 21 May 2020 15:50:58 +0000
Received: from mail-dm6nam10on2105.outbound.protection.outlook.com
 ([40.107.93.105] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbnSs-0007SN-TL
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 15:50:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YOMFCvgHyFu5SnLg3Wbsh7JIYJUUBzVA24vRRB4G6WvC5i+nmkCVxrqq/iNMbQq3LQhA1BUrWdusu5O7qWtr3V9wc+lP0G3PmPGaP+lE3O29IPGF8SZfQQ8fuiE76GhezTdrXaLQXenq2r+iaeFrYamAs7GLGtgRYn1zJrq5WwL4sMEnGthZ/1BsWu41UygP/uglOyqq5X/gS2lqw2vmnJs1JMr49d5mrusYf+qGBIqQKdcCgdB2x+fmzlii0xRhZKOTZptWr5Df84SxZS9l9q4dz7kxSVnjz/rTQGEDa3bo7C94mWRob2Xf//U0vYs7g3Ukyy3hLcUiOdLT3KmPig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3/D6mldSTSQU1bsxZ0a+/zu/56vtZ00PLTqInvP2S4E=;
 b=nzn+fG8mqv9IHMtF/uRDulspIUxscjf3sFa3lXwuOAiqPKhsQ9BBlOi2pSGUGy7a7i5pjQJApes6EBtXVj91CVlrCz2T4EbZmkL+Y1KPR+txV/hPUu11o9kk3bhM8Ow+Bh1166zsWh8JrVepeIgUtZeFZUcmoeNn6s0TdeGZ+Dct60a/n8M+XJqw5ldrTW1qdHfbTfLBWfrlELk+PEUwc93FjO0uvc9zUuwc5SrFxnpvp1/SdCArOKR+CguDIulGtfx1HuBm1Gn3T6KsOQHLDe20IKPZvw4IOQXlL2A64Ji5+4sVYFrcS29AcSoTdNAGw16otezAAkLPh74ucf30nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=amperemail.onmicrosoft.com; dkim=pass
 header.d=amperemail.onmicrosoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3/D6mldSTSQU1bsxZ0a+/zu/56vtZ00PLTqInvP2S4E=;
 b=H8im6dczdIr2I3VW+yuW2+0sZ73SLfREkHoANSQ0Rv+06CP27MMVu39WYq+wlpAG75KqST4N7lICPlB2Te9WM1HxdYNR8+4zf+/3kxrpcWzdDkHJgKfF1CGmQRAP6bXOSZqzZyz7tr4KkvEnv3BG3dc5r65MU4YcFwJSNXxeok4=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none
 header.from=amperemail.onmicrosoft.com;
Received: from BYAPR01MB4598.prod.exchangelabs.com (2603:10b6:a03:8a::18) by
 BYAPR01MB4680.prod.exchangelabs.com (2603:10b6:a03:84::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.20; Thu, 21 May 2020 15:50:31 +0000
Received: from BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c]) by BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c%5]) with mapi id 15.20.3021.020; Thu, 21 May 2020
 15:50:31 +0000
Subject: Re: [PATCH v2] perf: arm_dsu: Support DSU ACPI devices.
From: Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
In-Reply-To: <20200521135557.GB12282@bogus>
Date: Thu, 21 May 2020 08:50:28 -0700
Message-Id: <2684F75B-98BC-4C24-BF29-C5214F9CD3BB@amperemail.onmicrosoft.com>
References: <1589229160-18558-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200521135557.GB12282@bogus>
To: Sudeep Holla <sudeep.holla@arm.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-ClientProxiedBy: CY4PR01CA0019.prod.exchangelabs.com (2603:10b6:903:1f::29)
 To BYAPR01MB4598.prod.exchangelabs.com
 (2603:10b6:a03:8a::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.173] (73.151.56.145) by
 CY4PR01CA0019.prod.exchangelabs.com (2603:10b6:903:1f::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Thu, 21 May 2020 15:50:30 +0000
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Originating-IP: [73.151.56.145]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 17767772-c034-423d-0bd0-08d7fd9eb0fa
X-MS-TrafficTypeDiagnostic: BYAPR01MB4680:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR01MB4680F45AA3A07E21594893C6E0B70@BYAPR01MB4680.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GKKrP5crpGSRTJ5kfkmJhxh7yy1WVgk6f0fZnrcbdTwrumtmgfjXrqhWat6IYnClkzN+EqalaDMW2kqZsMiPu7fEreOZF2lEv8WiEi3thrzH8t476H948NXuc6fzJ7MBdlklSJntXqzV9K7dUnjEebJYUSaeZG2K7x/j8Z6KuXLwonuC6sdUeMz+R++UofxQK3JRaVfWnVrE0PeGk2LpOt4Oelp2Z4zRgerTbhBMiBEwicBIRxelEc/mYEvdgWs1/VWKOQrVsoQNrGi8jVUtjM7YdExzcSmzycXvcmxtW47wxJKGxTYhmFD3wx+KGa58uMAgzNc+jR+3hRWtLiLq7FBkZqEdRCFRp7LFlmSU5Cfqi+C0/5+HxNi/rLz2qWLKhqkF/kpAl0OQKlL5D912xbEQ8EjYoaZH0KqbcdDNqvU0CcMaUoZELmmDr7NTE770cxow+kT3fPJUiddY1JdDCjuXXh/akUATwUuQV66Sm8/pweQc0XrXn7L3a+CwRMSB8FGKlbnpfRxfeDsZcMdNQw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR01MB4598.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(39840400004)(136003)(366004)(478600001)(54906003)(16526019)(966005)(8936002)(5660300002)(4326008)(8676002)(6916009)(33656002)(2906002)(6486002)(52116002)(83170400001)(956004)(2616005)(16576012)(53546011)(42882007)(186003)(316002)(66556008)(66476007)(26005)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: CstIhkSVTVCRMTZ/cukH1Uob2N7fjTHgv0zfwjO4KlCC7FvY/YSQY6RFNwDWJ+MPUJ5D7OGCJc30VsIpjXFeNRxg2bL1vJ8Psa302Qqk2/KmPGTrTs5SZQEWw1te+SXDOazh/QphsQ2gduxpC9NvTKAKpkQIBJLK4kaB4ai61QcHsL9+TLZlqCzHZQ53//0L0KgvKS9hSgGG5lECyXESDN7bP4iOtCDUA4J/IhKM1qf1jEigzD6q0v9lNUFA8CvBDJ8akqMxurtMMdCk53/UwwPhsSm/bSdBzLJlnoqrb1FmkQHaa/gE3kMzc/HMg5uXYUH0GZ8LqIlnlzJJEwtgVoOFMosk8bZ9KRVJTATsEzW3pa9+xuZRcyAttTjqi9hPikR4wnefrZN6vHsL1s3woX6cuRVDUf/gecAl+7wo395+7/B1HYpQmKDGp0UqhlDAMIA2AIMmvR9uMHEcKZ+qrWKkmiBEb3t3zCLbwlPOE64=
X-OriginatorOrg: amperemail.onmicrosoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17767772-c034-423d-0bd0-08d7fd9eb0fa
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 15:50:31.4390 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wl0UIWOL/EkVDPDfwe2QB4rR6C1CGLfLfnXn9vb0xsVbNhYmO7AC68RdMAjvsCNpxo5U2faBDPmtWvHJsjgc/uPx0UjoIbAPfR3kMdEXdYzUzes/Yv7hObI+q2d3bV7L
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB4680
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_085035_044422_D57A0E5E 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.105 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.93.105 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tuanphan[at]amperemail.onmicrosoft.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Tuan Phan <tuanphan@os.amperecomputing.com>, linux-kernel@vger.kernel.org,
 patches@amperecomputing.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On May 21, 2020, at 6:55 AM, Sudeep Holla <sudeep.holla@arm.com> wrote:
> 
> On Mon, May 11, 2020 at 01:32:40PM -0700, Tuan Phan wrote:
>> Add ACPI node probing device support. Each DSU ACPI node
>> defines a "cpus" package with a per cpu MPIDR element.
>> 
>> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
>> ---
>> Changes in v2:
>> - Removed IRQF_SHARED.
>> - Fixed ACPI runtime detection.
>> 
>> The ACPI binding spec for DSU ACPI node is under beta and located
>> in ARM server group under project "ACPI on ARM".
>> 
>> drivers/perf/arm_dsu_pmu.c | 71 ++++++++++++++++++++++++++++++++++++++++------
>> 1 file changed, 63 insertions(+), 8 deletions(-)
>> 
>> diff --git a/drivers/perf/arm_dsu_pmu.c b/drivers/perf/arm_dsu_pmu.c
>> index 70968c8..784d177 100644
>> --- a/drivers/perf/arm_dsu_pmu.c
>> +++ b/drivers/perf/arm_dsu_pmu.c
>> @@ -11,6 +11,7 @@
>> #define DRVNAME		PMUNAME "_pmu"
>> #define pr_fmt(fmt)	DRVNAME ": " fmt
>> 
>> +#include <linux/acpi.h>
>> #include <linux/bitmap.h>
>> #include <linux/bitops.h>
>> #include <linux/bug.h>
>> @@ -603,18 +604,21 @@ static struct dsu_pmu *dsu_pmu_alloc(struct platform_device *pdev)
>> }
>> 
>> /**
>> - * dsu_pmu_dt_get_cpus: Get the list of CPUs in the cluster.
>> + * dsu_pmu_dt_get_cpus: Get the list of CPUs in the cluster
>> + * from device tree.
>>  */
>> -static int dsu_pmu_dt_get_cpus(struct device_node *dev, cpumask_t *mask)
>> +static int dsu_pmu_dt_get_cpus(struct platform_device *pdev)
>> {
>> 	int i = 0, n, cpu;
>> 	struct device_node *cpu_node;
>> +	struct dsu_pmu *dsu_pmu =
>> +		(struct dsu_pmu *) platform_get_drvdata(pdev);
>> 
>> -	n = of_count_phandle_with_args(dev, "cpus", NULL);
>> +	n = of_count_phandle_with_args(pdev->dev.of_node, "cpus", NULL);
>> 	if (n <= 0)
>> 		return -ENODEV;
>> 	for (; i < n; i++) {
>> -		cpu_node = of_parse_phandle(dev, "cpus", i);
>> +		cpu_node = of_parse_phandle(pdev->dev.of_node, "cpus", i);
>> 		if (!cpu_node)
>> 			break;
>> 		cpu = of_cpu_node_to_id(cpu_node);
>> @@ -626,11 +630,54 @@ static int dsu_pmu_dt_get_cpus(struct device_node *dev, cpumask_t *mask)
>> 		 */
>> 		if (cpu < 0)
>> 			continue;
>> -		cpumask_set_cpu(cpu, mask);
>> +		cpumask_set_cpu(cpu, &dsu_pmu->associated_cpus);
>> 	}
>> 	return 0;
>> }
>> 
>> +/**
>> + * dsu_pmu_acpi_get_cpus: Get the list of CPUs in the cluster
>> + * from ACPI.
>> + */
>> +static int dsu_pmu_acpi_get_cpus(struct platform_device *pdev)
>> +{
>> +	int i, cpu, ret;
>> +	const union acpi_object *obj;
>> +	struct acpi_device *adev = ACPI_COMPANION(&pdev->dev);
>> +	struct dsu_pmu *dsu_pmu =
>> +		(struct dsu_pmu *) platform_get_drvdata(pdev);
>> +
>> +	ret = acpi_dev_get_property(adev, "cpus", ACPI_TYPE_PACKAGE, &obj);
> 
> I don't see any property "cpus" in the document:
> DEN 0093 A (Generic ACPI for Arm Components 1.0) [1]
> 
> Is there any newer updates that I need to look at ?
> 
There is a newer DEN 0093 A version but it has not been public yet. Let abandon this
patch and I will post new one when the document has been finalized and available to public.

Thanks,
 
> -- 
> Regards,
> Sudeep
> 
> [1] https://static.docs.arm.com/den0093/a/DEN0093_ACPI_Arm_Components_1.0.pdf


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
