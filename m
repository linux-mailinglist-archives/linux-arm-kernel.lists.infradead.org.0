Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A34318AAC8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 03:42:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:References:Message-Id:
	Date:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cpBAK0rPJjIcPwUc8e159cgNXzVqo6qupklL1sqEvAo=; b=KAG9mmHnbyrvrw
	vSIj3BoRKwtGiMarw4I4yAPUrvmI/obLsKqva8YQq68wQRJZ75JKPle+GGp6XWkUqULftrf8Mu4qs
	VtOmG8jB8uxQn/lvxQ0eNIqdmiZCJWHOaLmLfBTr0XczHgAtY1ZmQ/MSb57+0lkZkUZBfG8y8bChu
	HCOkMWMN0ziMV/g3fqea7PZxgJ2wYdcrVnvoVBPVARod0SKR3zgya8t+XrtirZeUtBeDeLlWd0X+L
	kgTtwP89Mnt4dWNy+l9J9tU9n6b7WXvFLBG3W8WUSKf0pDYT7Jtk5wBgzI1VpSa8X08K54Zd7+LmJ
	Jv/L1WOUSd8mpT9TXLxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEl8j-0001Ho-LF; Thu, 19 Mar 2020 02:42:33 +0000
Received: from mail-bn8nam12on2128.outbound.protection.outlook.com
 ([40.107.237.128] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEl8a-0001GF-So
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 02:42:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k7FMAR1mZcuWQKwbJQRMKNctQUq30R3vfglXcbihSGubht0pEIzJQkxlSt9VqN2HB1D+cMao1y/rCro4PUD4JZRrh3JgIDNNg4BUa6s/g8LGU9TY3Wton+MsY325a4lLGuaxOT82kHvj2o4qhPsDpf+TFFmQ1GoQs2osR8kiKysKsgcbpq9IqbDkKJWcrTiIcvc6DXSMi8fWr4his9Sm0GpVYlWB/HH2zlCoWUFj+bOy0GXga1VAAF40mjt1CrDaGzR3kCy+vRdiCHH+PcY9nXw+ku5CFujc3JqrlBi7YEuafEy2HdR6cT3jYie+mj1keG/qCIT7z7A1O1qvPvQdCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a86rLbbH8QJPC4kAHdHDYk2VKVTAPmVg8Bas+y4eimE=;
 b=UhHfxiSa91Wb9MYnFoaXoTi/J+MEdYfOhi0yPUtRM7W6ip0X0bqZ19F9e8uFQVS3YMJZG/BaFDrSHVp96O9d3oijhLX3uN3or0AHSa9VLiquwIzPXEtRmF1xXqjrT+dCH/gTvaSZj2hM3iQJgr5KzugbmjFKpNivEK1nRrSNJHA+j3pvW8ry/yFSa7TTj3yR2H6izA8rWV7kHaKlsAwABZKxnJNElGc6nzRxX2Gb/HioTsEGUH4j9ND00Phahm/35acNdYj++U98lRo6t5VVfXBHh6FnwJtmZ8kLP2ouwOd+Y7XyLdQG9qT5b/fmK3oinM3fQJp/PUEyPtlQ0kUplg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=amperemail.onmicrosoft.com; dkim=pass
 header.d=amperemail.onmicrosoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a86rLbbH8QJPC4kAHdHDYk2VKVTAPmVg8Bas+y4eimE=;
 b=iZYs+uEa6JRdCtcTcmUAp9LyljuMeouT/SrYpOBHkaOYQUiqQGW6IMuhJQMhsfBjO+wbEhAjafuIKv31rTF0NVzo1J4ktEzG1qOGFG2PoOEnn2mbKbwipWo5mdxner1QEo6WFr/2deJCcTlrq/fBW+9V2IEk6iMGF50lWxQjdho=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=tuanphan@os.amperecomputing.com; 
Received: from MWHPR01MB2317.prod.exchangelabs.com (2603:10b6:300:28::16) by
 MWHPR01MB2239.prod.exchangelabs.com (2603:10b6:300:24::7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.18; Thu, 19 Mar 2020 02:42:18 +0000
Received: from MWHPR01MB2317.prod.exchangelabs.com
 ([fe80::5151:bb2b:8ed2:b53c]) by MWHPR01MB2317.prod.exchangelabs.com
 ([fe80::5151:bb2b:8ed2:b53c%12]) with mapi id 15.20.2814.021; Thu, 19 Mar
 2020 02:42:17 +0000
Subject: Re: [PATCH 2/2] perf: arm_dsu: Support DSU ACPI devices.
From: Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
In-Reply-To: <a571cf7e-c2a5-e8f8-e782-8087249143b0@arm.com>
Date: Wed, 18 Mar 2020 19:42:13 -0700
Message-Id: <9D13EDC1-B0A9-4945-AAC6-E71A1AAAEBC5@amperemail.onmicrosoft.com>
References: <1584491323-31436-1-git-send-email-tuanphan@os.amperecomputing.com>
 <a571cf7e-c2a5-e8f8-e782-8087249143b0@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-ClientProxiedBy: CY4PR06CA0070.namprd06.prod.outlook.com
 (2603:10b6:903:13d::32) To MWHPR01MB2317.prod.exchangelabs.com
 (2603:10b6:300:28::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.104] (73.151.103.95) by
 CY4PR06CA0070.namprd06.prod.outlook.com (2603:10b6:903:13d::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18 via Frontend
 Transport; Thu, 19 Mar 2020 02:42:15 +0000
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-Originating-IP: [73.151.103.95]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9c618678-fb61-4bcb-74e4-08d7cbaf233f
X-MS-TrafficTypeDiagnostic: MWHPR01MB2239:|MWHPR01MB2239:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR01MB223917E84F152F9A295A99A7E0F40@MWHPR01MB2239.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:983;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(136003)(376002)(39840400004)(366004)(346002)(199004)(66476007)(66946007)(6916009)(66556008)(2906002)(6486002)(52116002)(316002)(16576012)(53546011)(33656002)(8676002)(4326008)(81166006)(956004)(42882007)(2616005)(8936002)(26005)(16526019)(186003)(81156014)(478600001)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR01MB2239;
 H:MWHPR01MB2317.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
Received-SPF: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wkYZAMPAL20jCtM5lyl8PugBpHdWWIWYOxwGPcFfbH6udaQqFDbJZaN1Hi2PkFkxaySeoqADEVYtp4A6Y7z8LhzdHDC5vUAusT75GwfCjUKpPg9bpk2GnXovoS2YYb2jIfYIdTbWvLb0wsg7w+Mb7N6n/tyqF7f+41mbKEXsZfk02UwrAoQ3fR9yYAkbe8rlEniE3EUoxbZmgC5G23sLu2ts7UohgYCXOSL+y4yB5J1xuDZrlHBiEIZW8TSZiPkAv5/ahSpIq5qGfCgItk+jquko3AUtk+4yTovPULK2yXTNcStUkOvZUO644Qy3/l3DGi7p8Vkl6glfbbmIYLos1VRpiq2htTqeNJLKLLFwaPEtEiccEAYb51THORi4Buyk6/6e4A+Gtk1mYz4v/TdlnE3fSKEYF4pMK9oEXEVNGBGWiqF8SsHAJgl29qnrUCdM
X-MS-Exchange-AntiSpam-MessageData: Dcu41/S3gtJkOHGVbir4HGPHWNzSVyAaWtC/lX0ioRUmlirz6mG9zV3f/0sff1V4pGTzTR8CjF9yL8evn4I78MQHi0bzNT1z/yODlkm+6KL0BBDrxfddQCrbSDz9wVDK2qFgYA43hnzKlMSJTwEAHA==
X-OriginatorOrg: amperemail.onmicrosoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c618678-fb61-4bcb-74e4-08d7cbaf233f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 02:42:17.2658 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qDnoEDOJkDdNwZuHyeCBFjzLEwY9fO32bJARQIXKoSn+QY/Sv2BkzWFWD3LHm1Xp9Wxh1dMOebxiWcde3HN0ronSxO7y2XZiUxVdYPONjz0AYO7fTR8dviWkHgDtHlPN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB2239
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_194224_968116_DEDA58D7 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.128 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tuanphan[at]amperemail.onmicrosoft.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, tuanphan@os.amperecomputing.com,
 linux-kernel@vger.kernel.org, sudeep.holla@arm.com,
 patches@amperecomputing.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks Suzuki and Robin for quick reply.
Please find my comments below.

> On Mar 18, 2020, at 5:45 PM, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
> 
> Hello,
> 
> 
> Please find my comments below.
> 
> On 03/18/2020 12:28 AM, Tuan Phan wrote:
>> Add support for probing device from ACPI node.
>> Each DSU ACPI node defines "cpus" package which
>> each element is the MPIDR of associated cpu.
>> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
>> ---
>>  drivers/perf/arm_dsu_pmu.c | 53 +++++++++++++++++++++++++++++++++++++++-------
>>  1 file changed, 45 insertions(+), 8 deletions(-)
>> diff --git a/drivers/perf/arm_dsu_pmu.c b/drivers/perf/arm_dsu_pmu.c Tua
>> index 2622900..6ef762c 100644
>> --- a/drivers/perf/arm_dsu_pmu.c
>> +++ b/drivers/perf/arm_dsu_pmu.c
>> @@ -11,6 +11,7 @@
>>  #define DRVNAME		PMUNAME "_pmu"
>>  #define pr_fmt(fmt)	DRVNAME ": " fmt
>>  +#include <linux/acpi.h>
>>  #include <linux/bitmap.h>
>>  #include <linux/bitops.h>
>>  #include <linux/bug.h>
>> @@ -603,18 +604,22 @@ static struct dsu_pmu *dsu_pmu_alloc(struct platform_device *pdev)
>>  }
>>    /**
>> - * dsu_pmu_dt_get_cpus: Get the list of CPUs in the cluster.
>> + * dsu_pmu_get_cpus: Get the list of CPUs in the cluster.
>>   */
>> -static int dsu_pmu_dt_get_cpus(struct device_node *dev, cpumask_t *mask)
>> +static int dsu_pmu_get_cpus(struct platform_device *pdev)
>>  {
>> +#ifndef CONFIG_ACPI
>> +	/* Get the list of CPUs from device tree */
> 
> What if we have a kernel with both:
> 
> CONFIG_OF=y
> CONFIG_ACPI=y
> 
> and boot the kernel on a system with DT ? In other words, the decision
> to choose the DT vs ACPI must be runtime decision, not buildtime.
> 
> See drivers/hwtracing/coresight/coresight-platform.c:coresight_get_platform_data() for an example.

I will update so it can be detected in runtime.

>>  	int i = 0, n, cpu;
>>  	struct device_node *cpu_node;
>> +	struct dsu_pmu *dsu_pmu =
>> +		(struct dsu_pmu *) platform_get_drvdata(pdev);
>>  -	n = of_count_phandle_with_args(dev, "cpus", NULL);
>> +	n = of_count_phandle_with_args(pdev->dev.of_node, "cpus", NULL);
>>  	if (n <= 0)
>>  		return -ENODEV;
>>  	for (; i < n; i++) {
>> -		cpu_node = of_parse_phandle(dev, "cpus", i);
>> +		cpu_node = of_parse_phandle(pdev->dev.of_node, "cpus", i);
>>  		if (!cpu_node)
>>  			break;
>>  		cpu = of_cpu_node_to_id(cpu_node);
>> @@ -626,9 +631,33 @@ static int dsu_pmu_dt_get_cpus(struct device_node *dev, cpumask_t *mask)
>>  		 */
>>  		if (cpu < 0)
>>  			continue;
>> -		cpumask_set_cpu(cpu, mask);
>> +		cpumask_set_cpu(cpu, &dsu_pmu->associated_cpus);
>>  	}
>>  	return 0;
>> +#else /* CONFIG_ACPI */
>> +	int i, cpu, ret;
>> +	const union acpi_object *obj;
>> +	struct acpi_device *adev = ACPI_COMPANION(&pdev->dev);
>> +	struct dsu_pmu *dsu_pmu =
>> +		(struct dsu_pmu *) platform_get_drvdata(pdev);
>> +
> 
>> +	ret = acpi_dev_get_property(adev, "cpus", ACPI_TYPE_ANY, &obj);
> 
> Is the binding documented somewhere ?

=> Will add one.

> 
> 
> nit: Also, why not :
> 	ret = acpi_dev_get_propert(adev, "cpus", ACPI_TYPE_PACKAGE, &obj);
> 	if (ret < 0)
> 		return ret;
> ?
> 
> 
>> +	if (ret < 0)
>> +		return -EINVAL;
>> +
>> +	if (obj->type != ACPI_TYPE_PACKAGE)
>> +		return -EINVAL;
>> +
>> +	for (i = 0; i < obj->package.count; i++) {
> 
> 
>> +		/* Each element is the MPIDR of associated cpu */
>> +		for_each_possible_cpu(cpu) {
>> +			if (cpu_physical_id(cpu) ==
>> +				obj->package.elements[i].integer.value)
>> +				cpumask_set_cpu(cpu, &dsu_pmu->associated_cpus);
>> +		}
>> +	}
>> +	return 0;
>> +#endif
>>  }
>>  
> 
> Otherwise looks good to me.
> 
> Suzuki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
