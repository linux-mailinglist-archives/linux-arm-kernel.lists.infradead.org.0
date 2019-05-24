Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF4B29F0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 21:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xeka3thVtgvglK3tTH97RGIqnu+DZH55JuE8tMv/bw=; b=r4lP6yVjIs64lH
	TWLqp7ztzps1uVODsIhfwNumfqaCQNZIAmem94GOrlM6JyY+vARqIT5/849enuKxhHBQz5iTgMR5y
	F/pSfknBohcYh+Bh22neJc7VU/mg/z/37jc0PM6BcT3mEXXnItvrlyimJvNuIc3cqBJfyKbckVFvl
	CZ/MpF7TZdKDscdNzahHxgeXrOz03eNy0ZM28aRnUEerqDUZxRjT+89J8j4nzQWX/Rx+S+Bcxdn4Q
	0Oe8YU1rT8oL0ft1on0qWhDvRyNu8y0T9zg6KvanjLvWDpfU8kBIzYVx3dz9akt2cjX2wWgyaotoB
	AY62urXfBxE7CqnNoSGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUFp1-0003GF-3E; Fri, 24 May 2019 19:25:43 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUFoe-0003FR-Vs
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 19:25:22 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4OJP5Hl028312; Fri, 24 May 2019 12:25:05 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=+gNQTDIKHly1DzzY6EQH7ChEagtnUyGBGI93erMBQTE=;
 b=LlWWv6uqzeqI713GzO0pg0u/JsHLhLCmT2URCtXaJbCQxMpGPwWj+7lHUn0UxMLbfe9w
 gz10XznJGWME6mEZ9x6SiZIgG6MjN7ktVKRT3mjr2K8HG3CjnoAv5mZ3ZHPjBoQtRDyB
 U9f8C1iClDkfK4ClCyoD61tk1k8hoC0Y/8JDFaAD2ork5rRpC4UPqd8wL6ZJo2Wn7Dx8
 cjsKT/ibWMWJztxiF+M8QbiFDKjhfTKZz1CVrtn3PzGXnTtbIrNRG8XovBYt/bDgA3AC
 GbuYUz6XCpgE5/Q0OYbOsSKxfeQUjKbIDCLu/ydz/n3YM2Pog/zNGET1kqvuBeZYigrp qQ== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0a-0016f401.pphosted.com with ESMTP id 2spmjcrkrv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 24 May 2019 12:25:00 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 24 May
 2019 12:24:59 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (104.47.50.51) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Fri, 24 May 2019 12:24:59 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+gNQTDIKHly1DzzY6EQH7ChEagtnUyGBGI93erMBQTE=;
 b=X/AWA2rWOA79UT94L4RplImjjZCeRcEZOwe1sQ0HGhKJfdXTH7qgVJLO+ZgyCFb8VCOtTVKk2kOEzWslQ7H4M3I+l+/EX+SBDoMFQH7Kj9iAgzqa4tIszZaU6hSV+jlAfMpTNj2zR+VDTtYAjdlYJiabNuW8fvL+5n5jSTeb0m4=
Received: from CY4PR1801MB1942.namprd18.prod.outlook.com (10.171.255.33) by
 CY4PR1801MB1880.namprd18.prod.outlook.com (10.171.255.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Fri, 24 May 2019 19:24:55 +0000
Received: from CY4PR1801MB1942.namprd18.prod.outlook.com
 ([fe80::f4b5:9677:2811:41f4]) by CY4PR1801MB1942.namprd18.prod.outlook.com
 ([fe80::f4b5:9677:2811:41f4%7]) with mapi id 15.20.1922.018; Fri, 24 May 2019
 19:24:55 +0000
From: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [EXT] Re: [PATCH] arm64: Improve parking of stopped CPUs
Thread-Topic: [EXT] Re: [PATCH] arm64: Improve parking of stopped CPUs
Thread-Index: AQHVDcfCkz9GqQa430G2XsGiHVdW86ZxgtYAgAkuTgA=
Date: Fri, 24 May 2019 19:24:55 +0000
Message-ID: <20190524192446.GA29866@dc5-eodlnx05.marvell.com>
References: <1485942532-2643-1-git-send-email-jnair@caviumnetworks.com>
 <20190516184452.GE10985@darkstar.musicnaut.iki.fi>
 <20190518221929.GA6135@dc5-eodlnx05.marvell.com>
 <20190518231244.GC3713@t60.musicnaut.iki.fi>
In-Reply-To: <20190518231244.GC3713@t60.musicnaut.iki.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR04CA0012.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::22) To CY4PR1801MB1942.namprd18.prod.outlook.com
 (2603:10b6:910:7a::33)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8472dd07-da42-493a-343f-08d6e07d8083
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:CY4PR1801MB1880; 
x-ms-traffictypediagnostic: CY4PR1801MB1880:
x-microsoft-antispam-prvs: <CY4PR1801MB1880F066E473524E1FED40BCA6020@CY4PR1801MB1880.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0047BC5ADE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39850400004)(136003)(366004)(396003)(54094003)(43544003)(199004)(189003)(229853002)(476003)(33656002)(6486002)(6436002)(486006)(66066001)(6512007)(316002)(11346002)(446003)(71190400001)(71200400001)(73956011)(66946007)(66476007)(66556008)(64756008)(66446008)(256004)(14444005)(305945005)(99286004)(6916009)(54906003)(102836004)(76176011)(7736002)(52116002)(6506007)(8676002)(81156014)(81166006)(8936002)(386003)(68736007)(6116002)(3846002)(6246003)(4326008)(186003)(53936002)(26005)(25786009)(14454004)(478600001)(86362001)(2906002)(5660300002)(1076003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR1801MB1880;
 H:CY4PR1801MB1942.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QzdzOVN/fn5zEi3jB9jerhYDS+JwVcfheS+1Fs48uMpSY9I50R3egvyPCJUrDCo86Y3fmJfhtmGOywzemyCs470WY0Xm1JMwIk76Q9IBRQc6iTfIg3vpttKIKdUJh0DmjqNlPUdf+vFnh0t3/u3wHxPo+ArvVId3FN4sOLE/CzUa9jbfLzwR0kM2Y3z8Dtg8FSEmPGLbiTeQIsHO7UnSz5Kfom5Gl0Vq265Cw9yIGQsZWY8GLNVcRw+JgY4IGPWNZTEpd2baa+4aQ/Za+oY0gFMw/uvlvy6+O/3g8VuK9eAhGy4hMXNuUTe2TSnOqByh/Uf9xWsy33a0pI8WvN5+jH9a3zqpdY2cXkIAcycqHwQHP1cr9RYtHW31VUz/fpuGpdX6V/Z8gzT6xarJugfhis2dqIYqrVVdVT9Wv4yGCk8=
Content-ID: <B4B77EEF55D41D4785FA3ED079E57D46@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8472dd07-da42-493a-343f-08d6e07d8083
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2019 19:24:55.4038 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jnair@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1801MB1880
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-24_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_122521_205152_2E14844C 
X-CRM114-Status: GOOD (  27.72  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Will Deacon <will.deacon@arm.com>, Jayachandran C <jnair@caviumnetworks.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 19, 2019 at 02:12:44AM +0300, Aaro Koskinen wrote:
> Hi,
> 
> On Sat, May 18, 2019 at 10:19:39PM +0000, Jayachandran Chandrasekharan Nair wrote:
> > On Thu, May 16, 2019 at 09:44:53PM +0300, Aaro Koskinen wrote:
> > > On Wed, Feb 01, 2017 at 09:48:52AM +0000, Jayachandran C wrote:
> > > > The current code puts the stopped cpus in an 'yield' instruction loop.
> > > > Using a busy loop here is unnecessary, we can use the cpu_park_loop()
> > > > function here to do a wfi/wfe.
> > > > 
> > > > Signed-off-by: Jayachandran C <jnair@caviumnetworks.com>
> > > 
> > > Looks like this patch has been forgotten?
> > > 
> > > I have a system where CPUs need to be put in wfi/wfe for the warm reset
> > > to work, and using cpu_park_loop() would solve this.
> > 
> > If I remember correctly (it has been a while), in my testing I saw that
> > the wfi does not block after a while since interrupts are pending.
> > Most likely that timer interrupts will still be enabled.
> 
> Right, this is correct; I also observed the same in my testing.
> 
> > We might need some code to reset/disable the GIC interface for the CPU
> > before parking.
> 
> I solved this by doing the global GIC disable in the firmware PSCI reset
> function code. So from Linux side cpu_park_loop() is enough, and already
> this patch is an improvement.

Ideally, I think the GIC driver has to be updated to turn off the interrupts
to the CPU before we get to this point in the code. There are some power
management and hotplug notifiers already in the GIC driver, I wonder if
it is possible to take care of this too.

Since Linux turns on the interrupts, it would be better if Linux turns
them off too, rather than relying on the platform to do it.

JC

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
