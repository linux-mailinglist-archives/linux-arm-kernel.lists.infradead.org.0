Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F73552A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oLWL6jOILfiMaw13RJqZAnkuX+a3Pz/TxRQb5pItUQ4=; b=ICTYmCwV5uSIUt
	qs5fgaVMpyubtuRP/6gJ11uOy/ueu2xxCnxXlkf/U5H4g40bC8gdN66Fafe8aoXJApm4cY3RfXBg1
	wYRqsgWgL5oKuYgTa+hkuIBzOXI9ZAxEs97v7ISH9uTJc8jzcKscFwvM+xp8mBcEaY+RHPJScSGFs
	jX0x9ZDPaRrZxget+BpwGkRv31qMEOQAAk6Ffadir7L7eCQel84tqmzjKt7BPLSZNcyyqqX4XrxY7
	GAqaCqQpTFbpVQv6NNugDVNfcwsXSktM4/lRMbGlwngeToge0yiamKzE0QQD9PQ/4/L6HWM2ZgzIM
	t/oQ/CrS+t2CNmX81uwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmro-0000PR-8X; Tue, 25 Jun 2019 14:56:16 +0000
Received: from mail-eopbgr790101.outbound.protection.outlook.com
 ([40.107.79.101] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmrY-0000Js-8A
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:56:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amperemail.onmicrosoft.com; s=selector2-amperemail-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=coATQkr1IhrSWU1EQHgjOGj4GJd9F2Arsov6RPY8x7M=;
 b=wUrgqUEIHktIWYn4zdobPxvDxlxfGiDOE2aF9nX3WzFMuegUJeJrZB2ZSBLZQ0VgAvFDOdw3xIlJIm43tK7JvELIuzOHucwgjmQ0UZNTMT5WsSkxED7kYBNoCREzHfWEROVIcVqGW7ZQv7FlXRr88KrB75hy4Lk1/pM3HixJVbs=
Received: from DM6PR01MB4090.prod.exchangelabs.com (20.176.104.151) by
 DM6PR01MB4058.prod.exchangelabs.com (20.176.104.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.13; Tue, 25 Jun 2019 14:55:53 +0000
Received: from DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::f0f2:16e1:1db7:ccb3]) by DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::f0f2:16e1:1db7:ccb3%7]) with mapi id 15.20.2008.017; Tue, 25 Jun 2019
 14:55:53 +0000
From: Hoan Tran OS <hoan@os.amperecomputing.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: Kconfig: Enable NODES_SPAN_OTHER_NODES config for
 NUMA
Thread-Topic: [PATCH] arm64: Kconfig: Enable NODES_SPAN_OTHER_NODES config for
 NUMA
Thread-Index: AQHVKpp8SjYC130sVEibrXL3FC+AS6asJ9uAgABPFQA=
Date: Tue, 25 Jun 2019 14:55:53 +0000
Message-ID: <8fcd11c8-13d2-f21a-f6c0-c16cff11803b@os.amperecomputing.com>
References: <1561387098-23692-1-git-send-email-Hoan@os.amperecomputing.com>
 <20190625101245.s4vxfosoop52gl4e@willie-the-truck>
In-Reply-To: <20190625101245.s4vxfosoop52gl4e@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CY4PR02CA0027.namprd02.prod.outlook.com
 (2603:10b6:903:117::13) To DM6PR01MB4090.prod.exchangelabs.com
 (2603:10b6:5:2a::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [4.28.12.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d568e313-29c1-4bd9-988f-08d6f97d3800
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM6PR01MB4058; 
x-ms-traffictypediagnostic: DM6PR01MB4058:
x-microsoft-antispam-prvs: <DM6PR01MB4058F1C90A0B279D2FF74728F1E30@DM6PR01MB4058.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39850400004)(366004)(136003)(396003)(376002)(346002)(189003)(199004)(6436002)(81166006)(6916009)(25786009)(8676002)(4326008)(81156014)(6486002)(86362001)(478600001)(2906002)(8936002)(66066001)(3846002)(316002)(53936002)(6116002)(256004)(71200400001)(71190400001)(68736007)(6246003)(26005)(99286004)(2616005)(446003)(476003)(54906003)(52116002)(486006)(53546011)(6506007)(31686004)(386003)(102836004)(11346002)(186003)(229853002)(31696002)(76176011)(14454004)(305945005)(7736002)(66946007)(73956011)(66556008)(5660300002)(6512007)(64756008)(66446008)(66476007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR01MB4058;
 H:DM6PR01MB4090.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BhJEcOF+uDJvcc/fR8IBhguDCZ0VVwx2YIV13ru7zqrkWJAp62LUVMQh13SsGlWatcCDaUrMJZCETPdwpuBDUtURqOXxMaUtfkuYpzJFVo7UDOGQ6W5YfXCvCBQoNBmiECqD5h0uQ5Iju84g3GLEIi6aqiP0y+HP5+Lr6/V+xV461mpdEJjx1bDUw1Rm7AJx8TeP82RVxlVeBE6KfOrw5z6deY2kXQgIDkDYa07xPl7EDIMyVFkodrffcFT1chaNQuSWeWNM1G6BpWi3CIfCNQnplYoiPeaa9LDE+RhNHUGXJgDsnsn/1TvyO7jpYQBz1IlGM/7INZ4BGMvWqSvTUnuuc3qMecq4lYK4/MdpTQwOYD5HudhBA1BMPCDn2+TI0vouN5KcntwsyjnNaddxGxV/pBhjY+DgvO5+2SkUQWg=
Content-ID: <CA88AAA5B71B5C4BAABA9C22B8AA4135@prod.exchangelabs.com>
MIME-Version: 1.0
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d568e313-29c1-4bd9-988f-08d6f97d3800
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 14:55:53.6689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hoan@os.amperecomputing.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR01MB4058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_075600_300744_296A103D 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.101 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Open Source Submission <patches@amperecomputing.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 6/25/19 3:12 AM, Will Deacon wrote:
> On Mon, Jun 24, 2019 at 02:38:28PM +0000, Hoan Tran OS wrote:
>> Some NUMA nodes have memory ranges that span other nodes.
>> Even though a pfn is valid and between a node's start and end pfns,
>> it may not reside on that node.
>>
>> This patch enables NODES_SPAN_OTHER_NODES config for NUMA to support
>> this type of NUMA layout.
>>
>> Signed-off-by: Hoan Tran <Hoan@os.amperecomputing.com>
>> ---
>>   arch/arm64/Kconfig | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 697ea05..21fc168 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -873,6 +873,13 @@ config NEED_PER_CPU_EMBED_FIRST_CHUNK
>>   config HOLES_IN_ZONE
>>   	def_bool y
>>   
>> +# Some NUMA nodes have memory ranges that span other nodes.
>> +# Even though a pfn is valid and between a node's start and end pfns,
>> +# it may not reside on that node.
>> +config NODES_SPAN_OTHER_NODES
>> +	def_bool y
>> +	depends on ACPI_NUMA
> 
> How come this is specific to ACPI?

I referred to x86 config. Beside of that, I only can test on the system 
with ACPI supported.

> 
> It would be nice if this was the default, given that only ia64, mips and
> sh appear to be the only NUMA-capable architectures which don't have it.
> In other words, replace the #ifdef CONFIG_NODES_SPAN_OTHER_NODES in
> mm/page_alloc.c with #ifdef CONFIG_NUMA.

Agreed, let me send another patch as your suggestion.

Thanks
Hoan

> Will
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
