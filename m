Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CB72FBAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 14:39:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9KM6TlstXoN2D075vKz+aikoUYruoYO9OXBBtd/8Eg=; b=Of4wXoPZBEsfnv
	95tfbnG0iE3TtHztwL1MS2WlsgY3fFquIAu8uIovq0vcfWrl7BUjihZjhyRrk8Ekhv2t5AWyscKvF
	MG25q/l2+lwDeY5qppkFh6qu6+CeJehnLQLoOooWh5Va/WX+/zngXOl2hI7aan1EVt6wfFjivgiXj
	NxDF9HCfrHw+AJYHycHU91M7X5E/OM8AmW0evoj9u9k6z675+OTAQB/Cd4Ie8vl0xPJ8OGLWCTS7w
	2nydL0613t/BTRv3SYFOolKa8b2DhnzawIFpkAm6ZuNDtrMSFVuFWnjMWKFTodHhxoy3Eg+Hblgk8
	tpSIPDSLrz2XhZFPZ5OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWKLT-0004Yk-CF; Thu, 30 May 2019 12:39:47 +0000
Received: from mail-co1nam03on0708.outbound.protection.outlook.com
 ([2a01:111:f400:fe48::708]
 helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWKLL-0004Xf-8E
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 12:39:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=LLBqLQQtMUa2jQLty58NWPbFp940lzadlYR4b4VGbiNsJ1Y/s2baN2UR1vm6RLX93+k8S2ACioULx8E1+2okwJ6QB3qdydRkcOHfUuXLJ9vw3sZbwW4WqwQVcspq1B2iX+qfwSv+7D/XHmywl/RyjKh8+EF4Z9wVygyX5WOAUAc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4vJ9qKaDwnc0OT7xj/8PPFeAE8V0MZbhSpqTqdNZMxo=;
 b=n3L+NifHbiC9MfpWsAPmrlGahS501ri7Z8EZldaxwOJF4T3QUcDkbt1Z8Y08a0oDhOK/UI+k6R0dDUth9OTGA79x12kGytrBMwv2kwEk4pTwHZz7+7ehcpU7PmIW6KOKmHyWPEwCU91M5a0+F1ZbgjOhxDLTnjNYzj8/y7KS1QI=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4vJ9qKaDwnc0OT7xj/8PPFeAE8V0MZbhSpqTqdNZMxo=;
 b=TAM6/8Iuc6CRlYZE6hO1G/Zl5CxtTbBb1iMZiaQixikj0tkFQSb78DF8c2aXDkmoR3+/U+74EDTauO8Jl2if/TlSergMxUuIafbZFKRiLrirmdo6KqrOsRo/hH7Z8OOOvHTLiktSy7ksGSzSOL5P7T0spSEctw2gTf3rVC8616g=
Received: from BYAPR21MB1221.namprd21.prod.outlook.com (2603:10b6:a03:107::12)
 by BYAPR21MB1288.namprd21.prod.outlook.com (2603:10b6:a03:10a::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.3; Thu, 30 May
 2019 12:39:33 +0000
Received: from BYAPR21MB1221.namprd21.prod.outlook.com
 ([fe80::d005:4de8:ffbf:ba6b]) by BYAPR21MB1221.namprd21.prod.outlook.com
 ([fe80::d005:4de8:ffbf:ba6b%7]) with mapi id 15.20.1943.015; Thu, 30 May 2019
 12:39:33 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: vkuznets <vkuznets@redhat.com>
Subject: RE: [PATCH v3 2/2] Drivers: hv: Move Hyper-V clocksource code to new
 clocksource driver
Thread-Topic: [PATCH v3 2/2] Drivers: hv: Move Hyper-V clocksource code to new
 clocksource driver
Thread-Index: AQHVFJzHNl4KBQP76kq8rU1v4qba66aDcFoAgAAtg+A=
Date: Thu, 30 May 2019 12:39:33 +0000
Message-ID: <BYAPR21MB122115920E78B7897FDC7BE9D7180@BYAPR21MB1221.namprd21.prod.outlook.com>
References: <1558969089-13204-1-git-send-email-mikelley@microsoft.com>
 <1558969089-13204-3-git-send-email-mikelley@microsoft.com>
 <87r28gl1d1.fsf@vitty.brq.redhat.com>
In-Reply-To: <87r28gl1d1.fsf@vitty.brq.redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-05-30T12:39:30.3975535Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=bad36bc6-94e8-4270-bb43-85fadc3ce727;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6dfa94de-e46e-4666-8ca7-08d6e4fbde6f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR21MB1288; 
x-ms-traffictypediagnostic: BYAPR21MB1288:
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <BYAPR21MB1288824D40F7C68D89A48A23D7180@BYAPR21MB1288.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 00531FAC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(376002)(366004)(346002)(39860400002)(136003)(189003)(199004)(256004)(446003)(71190400001)(3846002)(476003)(102836004)(11346002)(4326008)(8990500004)(22452003)(7416002)(81166006)(33656002)(14454004)(86362001)(6436002)(26005)(81156014)(486006)(6116002)(99286004)(54906003)(186003)(55016002)(9686003)(52396003)(25786009)(66066001)(74316002)(2906002)(71200400001)(7696005)(478600001)(8936002)(66556008)(8676002)(6246003)(52536014)(76176011)(316002)(76116006)(6506007)(305945005)(10290500003)(229853002)(73956011)(10090500001)(7736002)(5660300002)(66446008)(64756008)(68736007)(107886003)(53936002)(66946007)(6916009)(66476007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR21MB1288;
 H:BYAPR21MB1221.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FzEA7Z5pTo5Zh21+e0RVHlvVcS6Jdilj0oBZm49bmej82SGIaPsD60PC/JeUsfhdXUoi0lkWEd6Zb7eaufNcJxJJqfQ2lujW7DPE+jcz5uPjzmtb7vMDW6ptH1Asfg5xyQZp+RmPDY//R8OuyJ/B31pnSUp0sHoZnGKbR4w9qIlVJkoLKjd6P+EaDCTWMF1mpEy2ki3Iq+VUGAIn8iqam2+O3LLfoyu/e8hcy5p5wAmQAYZpSDjyV4RmKrL4Aa2JK1Lwc1/scLkMuuJqQxoklpHg4okGtWUzsKS8fI0W2prxSfg8hEVD3POCnP6IZ5YsLqfAbo+ydMV0qInA+v554jSkAl8g02+cNiL0jp4tyx9gT5CKpCH5OfRwasqAfOUHoxKL9ZeFycNYWVaBzTrjJnMKI4LqAslYnIsj7KJMszg=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dfa94de-e46e-4666-8ca7-08d6e4fbde6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2019 12:39:33.7001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mikelley@ntdev.microsoft.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR21MB1288
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_053939_369153_B7F7B86A 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe48:0:0:0:708 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "apw@canonical.com" <apw@canonical.com>,
 Sunil Muthuswamy <sunilmut@microsoft.com>, KY Srinivasan <kys@microsoft.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vitaly Kuznetsov <vkuznets@redhat.com> Sent: Thursday, May 30, 2019 2:48 AM
> > +		/*
> > +		 * sched_clock_register is needed on ARM64 but
> > +		 * is a no-op on x86
> > +		 */
> > +		sched_clock_register(read_hv_sched_clock_msr,
> > +						64, HV_CLOCK_HZ);
> 
> I'm not sure about ARM, but MSR-based clocksource would be a really bad
> choice for sched clock on x86, this will slow things down
> significantly. Luckily, as you're validly stating above,
> sched_clock_register() is a no-op on x86 as we don't define
> CONFIG_GENERIC_SCHED_CLOCK.
> 
> Can we actually *not* do sched_clock_register() in case
> TSC page is unavailable (and revert to counting jiffies or whatever)?
> 

We can't skip the sched_clock_register() on ARM64 because it
does define CONFIG_GENERIC_SCHED_CLOCK.  However, Hyper-V
should always provide REFERENCE_TSC_AVAILALBE on ARM64,
so we should never end up in the MSR-based code on ARM64.
Arguably that means the call to sched_clock_register() could be
removed since it's a no-op on x86.  But I'd like to keep it for symmetry
and in case there's a testing/debugging situation on ARM64 where
we want to clear REFERENCE_TSC_AVAILABLE and go down the
MSR-based code path.

Michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
