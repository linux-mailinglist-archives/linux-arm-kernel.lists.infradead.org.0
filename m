Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 565E25FBC0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 18:32:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXG0Qs2ayqwgRd0MggsyO0h+JFMmWOFy/HcCfvVH/DQ=; b=Ot+Q4q+kWR0Z49
	iF0P2cMeGZmfZ1cGLaGGNhPzR7teAxAZsYZb94cZlKg/UbxyVdyNgPazt1exYoOIzuP/yYsTX3cdb
	mQ2YAZDXvfpgII6aySY/iTcvSU6e3d+B+EJaN4F5p8Q6ehVSDd+7fxdKY9zSRSf8FyFFridCy9j+p
	c2VvAcij/v74D38Z4W4B2zlIV89cibut/CmSQzS/CqPL1uO0ubjBxK50xbp33rk2aIUl6MvDXIdue
	xmgNR64zvqVmguRNJQri8qp68q+ulIuJ4n/K7aY+LEQfwAKKH66/HHcMuPiQ1C06M045HsWjFvPTx
	y7o32dIyiu4ClYPuZg7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj4eR-0003XJ-UV; Thu, 04 Jul 2019 16:32:04 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj4eG-0003Wj-47
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 16:31:53 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x64GTrqE023703; Thu, 4 Jul 2019 09:31:42 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=0K7zhy1hDxTeusOs2cxysOrqSKi6DuMYXg0c8E42mqQ=;
 b=OL1OYGMIQ33UROVcwQPzd/8wuyOzO47K6qV0Eae7NyTUzeGfcMJtk778HF3MaIUCgis/
 +OAj1jHk9eIm2W6qUl08mH9l/49DpzQWu5o5PssFnstY6yizwWWJzvtvoJ1DDYDjgNkC
 gRTgfFqHDqAEVONdcJAFbwHBKosgbwLZu5sdHCIGrw5jIcSuXYed7m3QnsunW6d7+kRY
 evmbODs+7vzHylYqO93JfaDykcZ0E5hbaDSnh4rp8/RTiUIddXUoA9vhh1NKW0hxtMpT
 JB3xkZ0eKIq5LsVf6LMn8BO6EcatAXHWi6OYn8G2aG0xaXYYRX6c1k+nq8kZq6/8AS62 Kw== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0b-0016f401.pphosted.com with ESMTP id 2thjyr8dy3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 04 Jul 2019 09:31:41 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Thu, 4 Jul
 2019 09:31:40 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.55) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 4 Jul 2019 09:31:40 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0K7zhy1hDxTeusOs2cxysOrqSKi6DuMYXg0c8E42mqQ=;
 b=WX+XOIAIqsfgP8Ifo2jsK1cOK4gA/TRt84xxoInNPYCFBVGQbhmN7ImxqIXPLe3/JI+4d3Z6b+ZA17WF7lnsjKom5iDAI3ZLRBmKzwBI2TOacIG+wS1McgJ0MVV6T+aSZfpOwtRcZ8KXKnWCXS0zR4DLVL3yKI0Aiv2YC6O9C+I=
Received: from DM6PR18MB3051.namprd18.prod.outlook.com (20.179.48.144) by
 DM6PR18MB2521.namprd18.prod.outlook.com (20.179.105.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Thu, 4 Jul 2019 16:31:35 +0000
Received: from DM6PR18MB3051.namprd18.prod.outlook.com
 ([fe80::9ce3:7d0a:4f56:fdcc]) by DM6PR18MB3051.namprd18.prod.outlook.com
 ([fe80::9ce3:7d0a:4f56:fdcc%7]) with mapi id 15.20.2052.010; Thu, 4 Jul 2019
 16:31:34 +0000
From: Shijith Thotton <sthotton@marvell.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH] genirq: update irq stats from NMI handlers
Thread-Topic: [PATCH] genirq: update irq stats from NMI handlers
Thread-Index: AQHVMiAiVz/XkkYfRk2+vKGjBsT7x6a6C8+AgAA4f4CAAF/nAIAAA1oA
Date: Thu, 4 Jul 2019 16:31:34 +0000
Message-ID: <47489142-b040-ec54-a1ac-46f0a8799ed9@marvell.com>
References: <1562214115-14022-1-git-send-email-sthotton@marvell.com>
 <6adfb296-50f1-9efb-0840-cc8732b8ebf9@arm.com>
 <a4ce3800-22f4-72dc-6ff8-75dfed1c377b@marvell.com>
 <alpine.DEB.2.21.1907041818360.1802@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1907041818360.1802@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR16CA0007.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::20) To DM6PR18MB3051.namprd18.prod.outlook.com
 (2603:10b6:5:162::16)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e0932164-297c-426b-2b16-08d7009d1418
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM6PR18MB2521; 
x-ms-traffictypediagnostic: DM6PR18MB2521:
x-microsoft-antispam-prvs: <DM6PR18MB252125BCE7C38C9FCEA6B0FFD9FA0@DM6PR18MB2521.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(39860400002)(376002)(366004)(189003)(199004)(6512007)(6116002)(3846002)(54906003)(76176011)(478600001)(52116002)(5660300002)(107886003)(31696002)(316002)(71190400001)(71200400001)(66066001)(68736007)(256004)(86362001)(6916009)(6506007)(186003)(53546011)(66556008)(6486002)(8936002)(14454004)(31686004)(102836004)(26005)(25786009)(2616005)(476003)(11346002)(6436002)(386003)(4326008)(486006)(2906002)(53936002)(81156014)(81166006)(66946007)(73956011)(99286004)(229853002)(66446008)(305945005)(7736002)(8676002)(64756008)(66476007)(36756003)(446003)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR18MB2521;
 H:DM6PR18MB3051.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yXo/dwHyipo9yJUn5lD7eZqP5+Dk7a/E5Ti4rxDw81lLejNjDgohXcZhcDkh6df6rRvQztAWBTqso3/AGvQZ5PFWDneC9GTYq78qTQ2WmBYe4HASQmOuXEkt9yY7dK3TZ+OhK506s+brVZnWPtFxHIWGgvzpAZjWo154xsa+KtWi+OJWGPONShxLZszRq9OjxFOoyTcVdoLxdf6Cfndv3JYZ0/gI4kp1h1YYoUruJixQvDwEy4EvlBtRBW+XroJ4C1IOU7KUdIlfGNVqb2iyP0v5UBCTxawHwN+IY2f8suV6hJrhuQDu/QC7O4fm4hOYAQz99d4DF5MiZ5Vm1gLE1agqyoEarn/DeO60MqAulp1OZ1ZL0z36ukDBw1uWBYFc0PEgMq/ZC3RtllLGnrQR/rJrMnxAtwXUrsVUvXgq62A=
Content-ID: <FA60FF3073271D4E8421B16481D26CB5@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e0932164-297c-426b-2b16-08d7009d1418
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 16:31:34.7185 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sthotton@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR18MB2521
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-04_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_093152_329029_9133A6CA 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
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
 Julien Thierry <julien.thierry@arm.com>,
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



On 7/4/19 9:19 AM, Thomas Gleixner wrote:
> On Thu, 4 Jul 2019, Shijith Thotton wrote:
>> On 7/4/19 12:13 AM, Julien Thierry wrote:
>>> Looking at handle_percpu_irq(), I think this might be acceptable. But
>>> does it make sense to only have kstats for percpu NMIs?
>>>
>>
>> It would be better to have stats for both.
>>
>> handle_fasteoi_nmi() can use __kstat_incr_irqs_this_cpu() if below
>> change can be added to kstat_irqs_cpu().
>>
>> diff --git a/kernel/irq/irqdesc.c b/kernel/irq/irqdesc.c
>> index a92b33593b8d..9484e88dabc2 100644
>> --- a/kernel/irq/irqdesc.c
>> +++ b/kernel/irq/irqdesc.c
>> @@ -950,6 +950,11 @@ unsigned int kstat_irqs_cpu(unsigned int irq, int cpu)
>>                           *per_cpu_ptr(desc->kstat_irqs, cpu) : 0;
>>    }
>>
>> +static bool irq_is_nmi(struct irq_desc *desc)
>> +{
>> +       return desc->istate & IRQS_NMI;
>> +}
>> +
>>    /**
>>     * kstat_irqs - Get the statistics for an interrupt
>>     * @irq:       The interrupt number
>> @@ -967,7 +972,8 @@ unsigned int kstat_irqs(unsigned int irq)
>>           if (!desc || !desc->kstat_irqs)
>>                   return 0;
>>           if (!irq_settings_is_per_cpu_devid(desc) &&
>> -           !irq_settings_is_per_cpu(desc))
>> +           !irq_settings_is_per_cpu(desc) &&
>> +           !irq_is_nmi(desc))
>>               return desc->tot_count;
>>
>>           for_each_possible_cpu(cpu)
>>
>>
>> Thomas,
>> Please suggest a better way if any.
> 
> Looks good.
> 

Thanks Thomas. Will share v2 with the changes.

Thanks,
Shijith
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
