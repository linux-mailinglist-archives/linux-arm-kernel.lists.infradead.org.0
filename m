Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991615F6B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 12:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luJc4UBk0aZf/NwhvfY6abW2EP4OeCwfTVHh6NI4L5U=; b=qQ3nZD/Fbn8p2M
	zjQUHntaJ+j7mSktVfWlrsnFHzJgcCeOlHn+0CzA01ubwoFeev3frJgZmF5QwC0n7vjuPF8RTejrL
	RE+w5APwzIjFpCR1jAH+CyRO3/C30vQOW4iyee/1lSMRlavFgoOI+3PB3vbXf92dehWvQN3R33cu3
	swKfn8o8UJeSDoVQXy7haHGS4FRfprGrAEkbLjdDLDR4C+H+wdMHOekw4LfBUaonTBPME+AyYuXPj
	BydHcBIFU+J/eMTN6OjLe6yQ5e9DoRb9+WGKwdPbK+ajrVPM1snwzgBMBS4x+/trQTojgl2/ugyqQ
	JeqfWpbA30Huk2JbC6Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiz7q-00005y-3d; Thu, 04 Jul 2019 10:38:02 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiz7C-0008Au-7R
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 10:37:24 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x64AZ41P026705; Thu, 4 Jul 2019 03:37:04 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=xCvCGwtX95qFHWhkAdmeugVBg4xpRyAdODhU5SpQ5wk=;
 b=kVdjzg7NiZP6ZKCxhaFd9FrvI5zypYyHsPG/jMicf3HVpt0YlrB1RKO8mEy/fAUkf4Xl
 p4IMkSfGceH13nyFldAWwiNjgLFqW2UkbEhye81eDPe/xEeXObs6+EgLUmhA/LB+lSgK
 vOe1sTmwHlznc2IKMbpdk8LfKFATxU6FJoGr1jfh+SbGEWMlBdKyvWJQsK6uwSstfP9z
 NbukgTZ/s7e0Q9b7cKgMwj5vxUg8fbeIIOTb6AhRMPYj9/JF/1hEFwuIjPdzUd9HZU7P
 i0EQ9nK/3pOW8qUk/mLfn0jFfjXNN6tqn/ZntOMaV214BHx/uJeIOWX7K04HyvTGRecX Qw== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0a-0016f401.pphosted.com with ESMTP id 2th9481k0y-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 04 Jul 2019 03:37:04 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Thu, 4 Jul
 2019 03:37:02 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (104.47.40.57) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 4 Jul 2019 03:37:02 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xCvCGwtX95qFHWhkAdmeugVBg4xpRyAdODhU5SpQ5wk=;
 b=aPsJJBA97RwUllSG6ahDJ12vTpJg3lz/8O3OQBUu1S4enSmPfJ8yPLVErPtUFzNII94admA2F9vzfs/kKzvfU9AzhR13CO9lURkFgZAJJY6ua+riI5Y2sV05nzds1wwY8XmRdYSVRkuyrsODnxGgK7rgDjqDKpVTtIWh6TyVwRQ=
Received: from MN2PR18MB3055.namprd18.prod.outlook.com (20.178.255.209) by
 MN2PR18MB2384.namprd18.prod.outlook.com (20.179.80.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Thu, 4 Jul 2019 10:36:58 +0000
Received: from MN2PR18MB3055.namprd18.prod.outlook.com
 ([fe80::9574:8e34:cd99:788f]) by MN2PR18MB3055.namprd18.prod.outlook.com
 ([fe80::9574:8e34:cd99:788f%4]) with mapi id 15.20.2032.019; Thu, 4 Jul 2019
 10:36:58 +0000
From: Shijith Thotton <sthotton@marvell.com>
To: Julien Thierry <julien.thierry@arm.com>, Thomas Gleixner
 <tglx@linutronix.de>
Subject: Re: [PATCH] genirq: update irq stats from NMI handlers
Thread-Topic: [PATCH] genirq: update irq stats from NMI handlers
Thread-Index: AQHVMiAiVz/XkkYfRk2+vKGjBsT7x6a6C8+AgAA4f4A=
Date: Thu, 4 Jul 2019 10:36:57 +0000
Message-ID: <a4ce3800-22f4-72dc-6ff8-75dfed1c377b@marvell.com>
References: <1562214115-14022-1-git-send-email-sthotton@marvell.com>
 <6adfb296-50f1-9efb-0840-cc8732b8ebf9@arm.com>
In-Reply-To: <6adfb296-50f1-9efb-0840-cc8732b8ebf9@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR13CA0005.namprd13.prod.outlook.com
 (2603:10b6:a03:180::18) To MN2PR18MB3055.namprd18.prod.outlook.com
 (2603:10b6:208:ff::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0fb5dc59-67b0-4a88-3526-08d7006b8a42
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR18MB2384; 
x-ms-traffictypediagnostic: MN2PR18MB2384:
x-microsoft-antispam-prvs: <MN2PR18MB2384FAB468FF124168143408D9FA0@MN2PR18MB2384.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39850400004)(346002)(376002)(366004)(136003)(199004)(189003)(3846002)(4326008)(256004)(6116002)(6512007)(31686004)(486006)(11346002)(68736007)(66556008)(66476007)(66946007)(73956011)(64756008)(66446008)(6246003)(76176011)(186003)(478600001)(99286004)(229853002)(14444005)(25786009)(386003)(6506007)(53546011)(6486002)(14454004)(86362001)(31696002)(6436002)(2906002)(446003)(7736002)(305945005)(71200400001)(66066001)(71190400001)(81156014)(81166006)(8936002)(107886003)(8676002)(36756003)(102836004)(2616005)(476003)(316002)(5660300002)(54906003)(52116002)(26005)(110136005)(53936002)(15650500001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2384;
 H:MN2PR18MB3055.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5ps7b0H6YW2eH3AS7qvZ2ypdGEuHYqzxFdU72yt15p6G21gmcmTLDLTpUx9JByRVc7WVNPya1HKy8k9eN15Ei56HiKQlsX1RuRM9uAeyH7ZXeNxKC9tm3+Dgi6SSqx1GQiNqFXorQccdIe1Rny+5bF25ifz4vhSbtvyWLh+AWNpItGe6qYuDpbeNVI+tRtT5qfg714Bdvi2H2H7L7d0XB3/cCzP/U3B0kkvUJ9uRoyA0WjyggT0t9XgHktPCxFgaC6FpWNRCjjpid3JsCnSYGKd3s9Nk5q7ZdtJRgHsGSUcWnr5gXPR8Fi9OVP74gz0un4cDRxCxGEmyCXQlw39mlq75LBzVdBXZkgQ7mecxQHb47arItOnlbx2vJ7rTSI7JrG11zYtGT7Hrs3ZhVFupyQOFa8iPYv4A7v+T98IGEfU=
Content-ID: <725FCB043436864D9D650E1D4405B889@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fb5dc59-67b0-4a88-3526-08d7006b8a42
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 10:36:58.0468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sthotton@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2384
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-04_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_033722_586171_0B5BB143 
X-CRM114-Status: GOOD (  22.10  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>, Jayachandran
 Chandrasekharan Nair <jnair@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Julien,

On 7/4/19 12:13 AM, Julien Thierry wrote:
> On 04/07/2019 05:22, Shijith Thotton wrote:
>> The NMI handlers handle_percpu_devid_fasteoi_nmi() and
>> handle_fasteoi_nmi() added by commit 2dcf1fbcad35 ("genirq: Provide NMI
>> handlers") do not update the interrupt counts. Due to that the NMI
>> interrupt count does not show up correctly in /proc/interrupts.
>>
>> Update the functions to fix this. With this change, we can see stats of
>> the perf NMI interrupts on arm64.
>>
>> Fixes: 2dcf1fbcad35 ("genirq: Provide NMI handlers")
>>
>> Signed-off-by: Shijith Thotton <sthotton@marvell.com>
>> ---
>>   kernel/irq/chip.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/kernel/irq/chip.c b/kernel/irq/chip.c
>> index 29d6c7d070b4..88d1e054c6ea 100644
>> --- a/kernel/irq/chip.c
>> +++ b/kernel/irq/chip.c
>> @@ -748,6 +748,8 @@ void handle_fasteoi_nmi(struct irq_desc *desc)
>>   	unsigned int irq = irq_desc_get_irq(desc);
>>   	irqreturn_t res;
>>   
>> +	kstat_incr_irqs_this_cpu(desc);
>> +
> 
> This needs to be called with the desc lock taken, otherwise we're likely
> to corrupt desc->tot_count.
> But taking the desc lock is something we can't do in NMI context (
> *spin_lock_irq*() won't prevent an NMI from happening).
> 
>>   	trace_irq_handler_entry(irq, action);
>>   	/*
>>   	 * NMIs cannot be shared, there is only one action.
>> @@ -962,6 +964,8 @@ void handle_percpu_devid_fasteoi_nmi(struct irq_desc *desc)
>>   	unsigned int irq = irq_desc_get_irq(desc);
>>   	irqreturn_t res;
>>   
>> +	__kstat_incr_irqs_this_cpu(desc);
>> +
> 
> Looking at handle_percpu_irq(), I think this might be acceptable. But
> does it make sense to only have kstats for percpu NMIs?
> 

It would be better to have stats for both.

handle_fasteoi_nmi() can use __kstat_incr_irqs_this_cpu() if below 
change can be added to kstat_irqs_cpu().

diff --git a/kernel/irq/irqdesc.c b/kernel/irq/irqdesc.c
index a92b33593b8d..9484e88dabc2 100644
--- a/kernel/irq/irqdesc.c
+++ b/kernel/irq/irqdesc.c
@@ -950,6 +950,11 @@ unsigned int kstat_irqs_cpu(unsigned int irq, int cpu)
                         *per_cpu_ptr(desc->kstat_irqs, cpu) : 0;
  }

+static bool irq_is_nmi(struct irq_desc *desc)
+{
+       return desc->istate & IRQS_NMI;
+}
+
  /**
   * kstat_irqs - Get the statistics for an interrupt
   * @irq:       The interrupt number
@@ -967,7 +972,8 @@ unsigned int kstat_irqs(unsigned int irq)
         if (!desc || !desc->kstat_irqs)
                 return 0;
         if (!irq_settings_is_per_cpu_devid(desc) &&
-           !irq_settings_is_per_cpu(desc))
+           !irq_settings_is_per_cpu(desc) &&
+           !irq_is_nmi(desc))
             return desc->tot_count;

         for_each_possible_cpu(cpu)


Thomas,
Please suggest a better way if any.

Thanks,
Shijith
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
