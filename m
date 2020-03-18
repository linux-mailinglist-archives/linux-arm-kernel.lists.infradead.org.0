Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148A7189293
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 01:16:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tEz8ktLt+WnufqWlurLHLs+tSGRCLsx/WMHH6wjr48=; b=nWKTkUO9/ont6Y
	gmu+q0hc4GcB4TBzd+j5lHdp9fp9/ZAZmVrmqSF41H3bM6RC9LbX412lt1o/qsEBvnPQvTyv67VWG
	HnloJSJq2FyPDx3RtJhfPWdm/qjO16bnOMpJKxPdJgcWmNYB3ZEeJJZe9E9XaxPz2NnZ1VuJeSlAi
	IbTpDWV/wVTfrmQbpS970j8Hi3IvqTeO7eYoZnt6J+Yv3rtSDaRL4HtrAmyINhs6yAI8Zy/83cWZo
	hyVHTun10QpdKAD5mEnjXA2ySBcAPDVx8tZgwhmyMG9TXyzQpxwlmFRg0bui4IZJLi3mDA/LuouI8
	ZcjLw1N8eKKCs1PHzcxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEMNz-0003Oo-3T; Wed, 18 Mar 2020 00:16:39 +0000
Received: from mail-eopbgr770105.outbound.protection.outlook.com
 ([40.107.77.105] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEMNp-0003Nl-CY
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 00:16:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E+W4T2l42QQmS4YXWQshKqy8ayZts0MQMOv/jeuD8QCXZDdO4z3S9ieFIQTZFjxTNQz6/l0urps2FNv23SkmEmAJauIygdQVWiIBbLNMO6o6xO2T48M213e3fLWMqmjuXonRq1y+X6ElPJoWDv+8+/w58aVE/ttnyMgQTp1TS7y5VXAlBtph6T7ThHu7sj7X+EzUpF/ws8UZep3gT6DoziQJpy+WU2LIKoSCM0Q63B6X/yQ5kMVMvAOnX/vPFuKWMOOoPrg9wSAD8UUc9B8X/IL7hGDaGfHMnFQMUxF0taqSw9DhIM/LoLqC+MtjN51RRH1viYTGTBO/ZlI5dYSKJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JJHgJPuX8dGQO1+ejko1t5oSTcLJVAxgVvJcPZNGY1U=;
 b=IhiXc81+HyjkDSW4vxK2xMbnjhVMQMQ6awzpiJLxSZuf9lgOZUcQGxcp1bFyQoPXNTBCARwmTiVbzW6lk+i8rWKOVk5N6hPzAj+9/kyU21mJuML/QR22doUxpIYgT7x5zuGwdvvKThRbt9TRHsiZ6dLkQOLRlpCUe2MEXbgnqtZcCs9UwwO5CxfwOrTFqav7QuSdAqM1U35G5IOv4BbOF0602TkzculvkP3f0Jp5NwJj4DJGd0Bv4tno0uIzN/orRolHCTMesaxR+wcv5SMc64HBvaYI+0eL0gnWUrJX4Z4UWL3uOCw8LySWTGHNm8NzaicHgAHsUxwWjVBcU1vGUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JJHgJPuX8dGQO1+ejko1t5oSTcLJVAxgVvJcPZNGY1U=;
 b=RgZ2T8q7fJUhLm09BI4njxDJeVC7HTbkQXlDz2YdvRWcb2HkXNkpR7UlnSb4nkBBP71YafoORfKzVZ0leTWP2aFnKgDt/iRxapYNzNTvjqohoOBbvbJpdETX6MMsihwq0dyeQWoZAuJexjOu9iK7yrtdw9xKRRZgNnl9TTMv5FQ=
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com (2603:10b6:302:a::16)
 by MW2PR2101MB1082.namprd21.prod.outlook.com (2603:10b6:302:a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.7; Wed, 18 Mar
 2020 00:16:24 +0000
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156]) by MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156%9]) with mapi id 15.20.2835.003; Wed, 18 Mar 2020
 00:16:24 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH v6 05/10] arm64: hyperv: Add interrupt handlers for VMbus
 and stimer
Thread-Topic: [PATCH v6 05/10] arm64: hyperv: Add interrupt handlers for VMbus
 and stimer
Thread-Index: AQHV+hZIL2+dATPWTUO/QTJHvYiYe6hK5JcAgAKDmoA=
Date: Wed, 18 Mar 2020 00:16:24 +0000
Message-ID: <MW2PR2101MB1052B9C24DAB19FBBD818347D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-6-git-send-email-mikelley@microsoft.com>
 <CAK8P3a2yve3R1w5igBYMy3HSFJ8Xt4BHhXQcaTAkNCdZXZ1v-w@mail.gmail.com>
In-Reply-To: <CAK8P3a2yve3R1w5igBYMy3HSFJ8Xt4BHhXQcaTAkNCdZXZ1v-w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-03-18T00:16:20.9441965Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=e59fef64-a88e-4099-a0a7-5202206f3831;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4b4d1d31-7079-40ac-9080-08d7cad19821
x-ms-traffictypediagnostic: MW2PR2101MB1082:|MW2PR2101MB1082:|MW2PR2101MB1082:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <MW2PR2101MB10820477F2ABC223CB380717D7F70@MW2PR2101MB1082.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03468CBA43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(376002)(396003)(39860400002)(366004)(199004)(10290500003)(55016002)(478600001)(7696005)(5660300002)(9686003)(54906003)(2906002)(7416002)(8990500004)(53546011)(33656002)(52536014)(6506007)(6916009)(76116006)(71200400001)(186003)(66946007)(66476007)(66446008)(64756008)(66556008)(4326008)(8676002)(316002)(86362001)(81156014)(8936002)(81166006)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MW2PR2101MB1082;
 H:MW2PR2101MB1052.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +xF8Ah9zuqWyN9QDtpg8SSxKbHhqZEDf2V8epQ7kZlFNQqPPI7iBtVX3TqisVmGtucJOHRLlbCxTMa5rEW0Y7k5LtTFcrucJmjVDxmDlqtJ3kTnYv55VY2tI5QqjPtxp5J3pqXyn6HJvpubMvX/TkZM9xV08PwNGTVfl5bp7NRcb1OrHKp9gQ3M8+dco9QJc2NlDwWBRynHO9xAm1C4G0mMMS650PD8yPrkZJvcqBwAJWnY9146fZGXCr+YpBPWR6lj+vgz6xEuFM9ZJpYqmszz9JrsFku3UJpwcYmo87lW7F6fmglsDzkVPwR6M/+uM4xojXw/H415Cg4c15at1dFdVxojz4mGQ0OOvTMgXy56+HyZ/HYSJOX0/VprfTVTNnMOlPIY7lfd4KK399ARvSqElRhX/J0CmoEiOTVilNRZUJ4ldm3wyMjvWSCCyoVb3
x-ms-exchange-antispam-messagedata: cnlNzS7v6Iik7GxywXJaM7MQA/IVdu0I1SgxC8wQeYER9nPeoZWtEPMP3zuq7Wu92qd/8DvXAL2hUmRFv3wENjx32etDhTZ3xS1TjYnKwnbVPZFTaLDR5PXV6QajsaYuoSpjbOJMWI5F2gL8kVXqgg==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b4d1d31-7079-40ac-9080-08d7cad19821
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2020 00:16:24.3198 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n8LJbfOZREV7iGmqKzmRXubCOjcQpLLRpcyFp9ey5j6EOSGh1A08gDr7KisA2hDUexfw/dPzPMr9FheusIJ9//pBVsu5U2q7I1SONPxYEko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR2101MB1082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_171629_426503_26B9360A 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.105 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-arch <linux-arch@vger.kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 gregkh <gregkh@linuxfoundation.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Jason Wang <jasowang@redhat.com>, Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, Marc Zyngier <maz@kernel.org>,
 Andy Whitcroft <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>
> 
> On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:
> >
> > Add ARM64-specific code to set up and handle the interrupts
> > generated by Hyper-V for VMbus messages and for stimer expiration.
> >
> > This code is architecture dependent and is mostly driven by
> > architecture independent code in the VMbus driver and the
> > Hyper-V timer clocksource driver.
> >
> > This code is built only when CONFIG_HYPERV is enabled.
> >
> > Signed-off-by: Michael Kelley <mikelley@microsoft.com>
> 
> This looks like it should be a nested irqchip driver instead, so your
> device drivers can use the normal request_irq() functions etc.
> 
> Is anything preventing you from doing that? If so, please describe
> that in the changelog and in a comment in the driver.
> 

As mentioned in my reply on Patch 1, Hyper-V offers a limited synthetic
interrupt controller managed by Linux code that's been around the last
10 years on the x86 side.   For reasons that pre-date me, it was not written
as an irqchip driver.

Modulo the small routines you see in this patch, the code is architecture
independent, and it seems we ought to keep the high degree of commonality.
Re-architecting the arch independent code to model as an irqchip driver seems
to carry some risk to the x86 side that has a lot of real-world usage today, but
I'll take a look and see what the risks look like and if it adds any clarity.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
