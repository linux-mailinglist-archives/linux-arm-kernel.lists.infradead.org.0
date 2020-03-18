Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DD9189C24
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 13:42:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2iRCxdwWY/vnlhSJDOhV8Wzm4Nq9Cve236UN3nPsoy0=; b=fFxjBM8604cP2w
	1uw05iDPTk4EfpV8XGw27KUHYLyLSYSBDjSApKCCMnAA81PIiVO7rm93RTD4AZc5C6/G7F/Z4CwnE
	UHdMwLifGwnyppyaZZfPskgVATI9LQjRHrOcfrXuovdeyS1bMzBpPhj3L5jQEmfxnhBfpeBO3H8YH
	YJuwKSVF4F+Hti7P+PYQ/25Mqf40XutX2DpwgTqzhhgAOVW1PouIl1qSt1pplphxDPj+ZstCJRMha
	/t1UJUR13dvaaeY8gv2ZGRM1J5Im3NdHkI8cmEHVD0FwfT21CwLh7MtMu1fj42lsWuU61Pnq5o0jF
	FojEU3UWIIbSww67RHXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEY1I-0004lH-Dl; Wed, 18 Mar 2020 12:42:00 +0000
Received: from mail-eopbgr750052.outbound.protection.outlook.com
 ([40.107.75.52] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEY17-0004iD-OS
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 12:41:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f16G5FZwtgVCaycGRhDvbFG12FGkFEXfNIGVsXqFNKOzk6v1EQzG9Xn6ieSpaqQBE8m09zLsP7zvgtSk4MeBcadojpg9geLv0ByQ17R2JW4oosbmvRKx87H+OVeQJv8BSObO+8E/5peHTqgkKuIjCy13+zA+n/YJkAYc/XYE/W+QYdiGXmSWvYaUMes6m3O9NFhc25xpwe5JD8NZv6ZH3zlekj8jS4lKMKNkiEjPM1F+AfPBAbTOB/ApbSywdXi8v+0XZwX2a2Gxo0npk+uSdLUUNRJrupjU3kGU54LZyWrGxchBHEarHUl/Jeaewn7mreG8+8Z4qjwO9APnYRH7Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wklSEwCh7Z++PhsUWILX8ZZMasUGSvnN+TK1vFnGagg=;
 b=mmb3ik0KvhZEHv+6DqAhjNG9L6fLejxt7RcbkAprYIsS7MPU0AT6hdq2TqHaQDflJGqQSPw+yvNqp8a9ykRprMqcTRVq6xvV3a7pWBPEMWx5MDA6j42vrCDpCasnwbQwtSNcJyBszs3+LWeLrdw1jHRWmDx5VKkt7Y4h+AacGlQP65kbd97gPVfbMom/y4KUjcNCE4MCdo51VKDjD+yBQ2+POV9h827b9d/gwp1Q/IiUZwzvnhF0KZ8liaguJbhHfUKz0pPt7NVs3eEvgV9oxbA6KwV+v4ALeaZZlKSsgAWisVSRz/ScZl6AlX/G9KrbdMSpHNViBBTuaABTs2Uzrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wklSEwCh7Z++PhsUWILX8ZZMasUGSvnN+TK1vFnGagg=;
 b=XllAKd1A9+TKC7qRzNKEBNy4rIyrWgWspEn1JsFWPadCJOQf6+6mJrRzBcbia7NhMXgFfM3wSCAcPw9Zkk9EbaxCADaUEnb85r1PFl/eR63UVU+2Kj/SMlleJkWBMcslLfuF3TQ1AqrCDzcu0USX0gHpTk+qMEf11eSY/TIeY1s=
Received: from BYAPR02MB4055.namprd02.prod.outlook.com (2603:10b6:a02:f5::15)
 by BYAPR02MB4583.namprd02.prod.outlook.com (2603:10b6:a03:12::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.18; Wed, 18 Mar
 2020 12:41:46 +0000
Received: from BYAPR02MB4055.namprd02.prod.outlook.com
 ([fe80::1cf1:f69e:a6bb:396]) by BYAPR02MB4055.namprd02.prod.outlook.com
 ([fe80::1cf1:f69e:a6bb:396%3]) with mapi id 15.20.2814.021; Wed, 18 Mar 2020
 12:41:46 +0000
From: Rajan Vaja <RAJANV@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>, Jolly Shah <JOLLYS@xilinx.com>
Subject: RE: [PATCH v3 20/24] firmware: xilinx: Add APIs to read/write
 GGS/PGGS registers
Thread-Topic: [PATCH v3 20/24] firmware: xilinx: Add APIs to read/write
 GGS/PGGS registers
Thread-Index: AQHV9BGwe7XIvkYhqkmdxkZpTY3znqhOTwmAgAAMVuA=
Date: Wed, 18 Mar 2020 12:41:46 +0000
Message-ID: <BYAPR02MB4055DE6560EFDCFD0EBFD8E2B7F70@BYAPR02MB4055.namprd02.prod.outlook.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
 <1583538452-1992-21-git-send-email-jolly.shah@xilinx.com>
 <20200318115141.GB2472686@kroah.com>
In-Reply-To: <20200318115141.GB2472686@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=RAJANV@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4938c931-14cb-4821-ba7c-08d7cb39b85b
x-ms-traffictypediagnostic: BYAPR02MB4583:|BYAPR02MB4583:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB4583EB667E6D482EF41B6800B7F70@BYAPR02MB4583.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1443;
x-forefront-prvs: 03468CBA43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(376002)(366004)(39860400002)(199004)(66946007)(76116006)(110136005)(64756008)(66556008)(66446008)(66476007)(2906002)(53546011)(54906003)(71200400001)(81156014)(55016002)(4326008)(9686003)(86362001)(81166006)(8676002)(52536014)(7696005)(8936002)(7416002)(6506007)(5660300002)(186003)(26005)(478600001)(316002)(33656002)(6636002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4583;
 H:BYAPR02MB4055.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3aiU8bvZjBRkzOkDOnne3pbmjRfBKDhCAzxlGDfXMeeRqSrzjpIH5kniErCq9Tiz0NyWvGWbdku+7kcXM+F2cuBudI2B2xDdQbkq9mCF9QdZFpQN/Of8a14/YJiqv/j/BhdbqzD+vAj2ybXxTsbkIFnfdaEx1HQyYlYXRFo6QJ4RyTC9iyvN7HPN/Tr/h+ngA2NW0IHVIpgKP31uwHJugTKBlKu0jDuuHJMwVBXzZ4h2AzUh1jBkT1UzyeW1EHGzBCFltgZVtZk4jMAviQq4owRPqHXRQTU1r5DrB/az6g/qS2IMTNndkxqwmqd4629iQ9rKZ2+DDLq+A+6qu7RVpjvWImQVVlLTIWwnmrof1OQ536nEZRFV8IMF1hQIlpMF1NCNz+SkRraXWYGXJp4D/Hv9FUpT7cW2lpi7nndMMAynt4RIx2RoDvErumUHfHVt
x-ms-exchange-antispam-messagedata: xzZQb2gYyXAjsJYdkS4ETcI0gBcdwNi0u1FjiT7lGeAZIZ9OchofPqjbn/+YDH1WBRXh6H/UdKeofX1cAO0scIGZH8MAafnWlzdpZf8rplUpF8xAEvYBPo+nz8IOyENDksQf8TozTrrZo+Ee2+kFug==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4938c931-14cb-4821-ba7c-08d7cb39b85b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2020 12:41:46.1658 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vk+OyeZsANPEuW9IrSIp6V/b6Tc6z4NY8u2gkS4Gq4SyNjmyiSNLDEjFWjSaF9UMtbLpkrpT3NtLrrZ4VWLjbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4583
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_054149_807511_BDD37794 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.52 listed in list.dnswl.org]
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
Cc: "keescook@chromium.org" <keescook@chromium.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "matt@codeblueprint.co.uk" <matt@codeblueprint.co.uk>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

Thanks for applying patches and review.

Please see my comment inline.

> -----Original Message-----
> From: Greg KH <gregkh@linuxfoundation.org>
> Sent: 18 March 2020 05:22 PM
> To: Jolly Shah <JOLLYS@xilinx.com>
> Cc: ard.biesheuvel@linaro.org; mingo@kernel.org; matt@codeblueprint.co.uk;
> sudeep.holla@arm.com; hkallweit1@gmail.com; keescook@chromium.org;
> dmitry.torokhov@gmail.com; Michal Simek <michals@xilinx.com>; Rajan Vaja
> <RAJANV@xilinx.com>; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; Rajan Vaja <RAJANV@xilinx.com>
> Subject: Re: [PATCH v3 20/24] firmware: xilinx: Add APIs to read/write GGS/PGGS
> registers
> 
> CAUTION: This message has originated from an External Source. Please use
> proper judgment and caution when opening attachments, clicking links, or
> responding to this email.
> 
> 
> On Fri, Mar 06, 2020 at 03:47:28PM -0800, Jolly Shah wrote:
> > --- a/include/linux/firmware/xlnx-zynqmp.h
> > +++ b/include/linux/firmware/xlnx-zynqmp.h
> > @@ -105,6 +105,10 @@ enum pm_ioctl_id {
> >       IOCTL_GET_PLL_FRAC_MODE,
> >       IOCTL_SET_PLL_FRAC_DATA,
> >       IOCTL_GET_PLL_FRAC_DATA,
> > +     IOCTL_WRITE_GGS,
> > +     IOCTL_READ_GGS,
> > +     IOCTL_WRITE_PGGS,
> > +     IOCTL_READ_PGGS,
> 
> You do not have explicit numbers here?  Bold :)
[Rajan] Here new IOCTL IDs are continuous so didn't mention explicit number.
Are asking for adding numbers like below:
enum pm_ioctl_id {
      ...
      IOCTL_GET_PLL_FRAC_DATA = 11,
      IOCTL_WRITE_GGS = 12,
      ....
}

Thanks,
Rajan
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
