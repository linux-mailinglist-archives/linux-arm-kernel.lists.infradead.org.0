Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6CC122ACC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 12:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=86tQXaUVPXWBC6mORTIgaIjcjLu9h9boBK4bP+YgRU8=; b=nTYXS6xnSnYvSb
	lv73ctqxmPgGjHLmk4spkt+gDhziVTbpOMRJQLVoEhp1mJdb7PDTUKu2qxHEwIr5vCxSkEZGHXrTO
	KkTY7G/ofBNKUWzAoLXh8H0B5O9Y+GmySGDcSAgMRsQVvZ97HM3+NPDbDDczEOnob7obMSGuLM66L
	NmkQHqNfCdgmABGCU5iYtFj57QaakbUNb/BwFyTRod9IC/ixChdetHHJGGZdXbPUqxdrHwmHufU1l
	pQW5KA8SCXCNbIqb+LMe528q+N2dAGwgubEHgtuVcvPiOYxdvsUlQlLkh6RBPwR2XG0i7eZ6Ifmdn
	XzZtHK1F1ueZFCQd+SVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBUr-00029j-HQ; Tue, 17 Dec 2019 11:58:37 +0000
Received: from mail-eopbgr60088.outbound.protection.outlook.com ([40.107.6.88]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBUd-00027y-Bv
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 11:58:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oCjo7ImEWu4EdPowbdqKmXjbzyIPq+FvR//RKZzRF6qOIGUpJ/5EbskhE1UY2s3rpxTGopSyD++SHtOxPw9+LoZT5siWGZL1F0ecxiqPyOfWBkOR72urVHL7NpuntBc0irO3e5HA5j57xOeqzZvxpGj5oM+1+zSH2t9WX66/2H1SyjbyM65CtxVnwlqmfD48dN2TNP7+BMKqjGiGh13LTT2rsmqxVXixCg1IJ3Mpqn4jprS3ad5PO9JpdpwaTmrGlVHF/PMbT0bzu2N0hLv+ZKSDnetoW6tnu5reG9RkcQNbDMBofvA3QcaNBeDI1ktrVuZZguvN4uFB5xSv1P1pjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K4XyvAIfZiJIM31z4Y+TwDYphN9EhW5kulEy+b4aRZw=;
 b=InI7468OpZE9c1OW6gf0+82aM7mCSqUFUQ7W44Zs5OtcrBhjMvPqc+tQz5NclhBmQOCEbdTkTeUBmFPaD0LKdRDnf5c53VpwetufMxUjVTILXLU17cG/1j8pK49vJR0pFVNhogIvKQNzGr62BGa0d/fMBM3Dq43frLLMA5huYsw9+Jm23M42Kfptw8Xxue+R88iZHCKqUaZY25y2WpYOZ1Ec1tAAw43LcKXtVMFAClnlqtvHoSqhaio3yUa5MdD+95pC5WSY9H43L9lMpUAbnFuUoQl7PPwdF2ZXH8SQZjHxdBNDWvNMOvudt94B9+NJXv6oZ8/0WvXWauHpNmQlYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K4XyvAIfZiJIM31z4Y+TwDYphN9EhW5kulEy+b4aRZw=;
 b=sryukieI5licN6x5se4mVau9daANQ6UUpqhHvg1aJ1G1NfeUfa5NCOnM4xvS3CYoX5q2bkhSU7tdxwN/XsHbswXzWJriqiJ6+R2Xsfmp54xf+abrQ84Q+kWaFD5TZf507JMJm/ltwmK1YTbONPaGxsiICY4kMNR/f+e4IBHpmCk=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2685.eurprd04.prod.outlook.com (10.168.66.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Tue, 17 Dec 2019 11:58:20 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::8823:663d:c6ed:cbd6]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::8823:663d:c6ed:cbd6%12]) with mapi id 15.20.2538.019; Tue, 17 Dec
 2019 11:58:20 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Hanjun Guo <guohanjun@huawei.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J .
 Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Subject: RE: [PATCH] ACPI/IORT: fix the iort_id_map function
Thread-Topic: [PATCH] ACPI/IORT: fix the iort_id_map function
Thread-Index: AQHVs1oeh+jJ/g/JdU2kvN0Bjpwx56e8IO0AgAAVdGCAAHH+gIAAWRgQgAE40mA=
Date: Tue, 17 Dec 2019 11:58:20 +0000
Message-ID: <VI1PR0401MB2496A549A21DD18B214A083BF1500@VI1PR0401MB2496.eurprd04.prod.outlook.com>
References: <20191215203303.29811-1-pankaj.bansal@nxp.com>
 <ffc5a6e9-cac3-d6c6-fe16-745b4f9e481f@huawei.com>
 <VI1PR0401MB2496E243F45C82E789B867A6F1510@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <eedbf670-00e2-93ce-06ac-469d6032ce74@huawei.com>
 <VI1PR0401MB2496DEA6CDEFD57C9427883FF1510@VI1PR0401MB2496.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0401MB2496DEA6CDEFD57C9427883FF1510@VI1PR0401MB2496.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-originating-ip: [92.120.1.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 587a6050-4e5d-4ae9-d209-08d782e86937
x-ms-traffictypediagnostic: VI1PR0401MB2685:
x-microsoft-antispam-prvs: <VI1PR0401MB268531F43FC68DFE9EC7831AF1500@VI1PR0401MB2685.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(366004)(396003)(136003)(376002)(199004)(189003)(13464003)(52536014)(64756008)(81166006)(33656002)(66556008)(66476007)(5660300002)(81156014)(8676002)(45080400002)(478600001)(66446008)(76116006)(966005)(66946007)(86362001)(7696005)(316002)(8936002)(53546011)(6506007)(4326008)(71200400001)(186003)(110136005)(2906002)(9686003)(55016002)(44832011)(54906003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2685;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3F5uR1ZaB9wRP7+7xdPoT+9tor6F95JVWDSaG/Oqv9arH+eIrb+cGFsZHNt35gFE1IAdzrvCdjXD1seqgW6lV4HKPDtEUZ71xZq9gL0V3Y9vdZtR+wVHto+xFeD9ivvm1kw4IHpm5MbBcqEN2vzpJhlM5b29VDWH0eNlqDEIG9Ob8DIN3hrod4q9JYblpEdoysCOng1mk4JlbusFWXK92FVXtI8w+y/wSMSfLUJz85FaGS+iPwTcvGIDGyULvY2WwY9q2+swnGv9jQ4JkX3Us0/7CLQR4yOf2incT3alQS/4e/GD+Y/sT1jEdYiEEVzSpS+VJcNWniaUBAybn5vNpNIAIF4Xtw4MpC/CrPGuWj6lP4ZW3FhPjGuA4f4s0dmn31mn72fQkurvsJ79RZzqgJa45NtioQnnXdUdPTiEHZuEkUOMzd2y63bpANP09oUstufd/ymv+m92HCjAWw0D395WNcz1i/z77CHGc1SeH5CwaLfzheGa87B12HrU9el0
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 587a6050-4e5d-4ae9-d209-08d782e86937
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 11:58:20.4824 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aktrBoD5niCi5Epa7YhMj1wU2vfTPuW5fUuqPCNgEcbuN/bIdEaYy+oG8ljmNlAFJQ9GplMqJHTyA9NFyQkIrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2685
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_035823_526641_3380F0A4 
X-CRM114-Status: GOOD (  23.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Jonathan Cameron <jonathan.cameron@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Pankaj Bansal
> Sent: Monday, 16 December, 2019 10:48 PM
> To: Hanjun Guo <guohanjun@huawei.com>; Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com>; Sudeep Holla <sudeep.holla@arm.com>;
> Rafael J . Wysocki <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>
> Cc: linux-acpi@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> Jonathan Cameron <jonathan.cameron@huawei.com>
> Subject: RE: [PATCH] ACPI/IORT: fix the iort_id_map function
> 
> > -----Original Message-----
> > From: Hanjun Guo <guohanjun@huawei.com>
> > Sent: Monday, 16 December, 2019 05:24 PM
> > To: Pankaj Bansal <pankaj.bansal@nxp.com>; Lorenzo Pieralisi
> > <lorenzo.pieralisi@arm.com>; Sudeep Holla <sudeep.holla@arm.com>;
> > Rafael J . Wysocki <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>
> > Cc: linux-acpi@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> > Jonathan Cameron <jonathan.cameron@huawei.com>
> > Subject: Re: [PATCH] ACPI/IORT: fix the iort_id_map function
> >
> > On 2019/12/16 13:14, Pankaj Bansal wrote:
> > > Hi Hanjun,
> > >
> > > Thanks for replying. Please find my response inline
> > >
> > >> Hi Pankaj,
> > >>
> > >> On 2019/12/15 23:12, Pankaj Bansal wrote:
> > >>> As per
> > >>> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fi
> > >>> nf
> > >>> oc
> > >>>
> > >>
> >
> enter.arm.com%2Fhelp%2Ftopic%2Fcom.arm.doc.den0049d%2FDEN0049D_IO
> > >> _Rema
> > >>>
> > >>
> >
> pping_Table.pdf&amp;data=02%7C01%7Cpankaj.bansal%40nxp.com%7C78d
> > >> 82a560
> > >>>
> > >>
> > 5714219196008d781db06a7%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%
> > >> 7C1%7C6
> > >>>
> > >>
> >
> 37120650018983814&amp;sdata=%2FRhATUKx%2FA2gPEx%2BNY9X%2F7kqV
> > >> CrEeRnbE%
> > >>> 2B2qlTkdGDc%3D&amp;reserved=0
> > >>> in ID mappings:
> > >>> Number of IDs = The number of IDs in the range minus one.
> > >>
> > >> Hmm, the spec is confusing, the spec may need to be updated, for
> > >> example, for a PCI bus, device ID + function ID will take 8 bits
> > >> and will be 256 IDs for that PCI bus, not sure why we need to minus one.
> > >>
> > >
> > > I agree that this "minus one" thing is confusing. Not sure why It
> > > was put in the spec like that. I guess they wanted the number of IDs
> > > to be 0
> > based instead of 1 based.
> > >
> > >>>
> > >>> Therefore, it's valid for ID mapping to contain single device
> > >>> mapping which would have Number of IDs field 0.
> > >>
> > >> Why not use single mapping flag for this case?
> > >
> > > Actually single mapping flag doesn't mean that there is single
> > > mapping in
> > an ID mapping.
> > > It means that Input ID should not be considered when looking for
> > > Output
> > ID.
> > > If we put single id flag, then we cannot have a case where we have
> > > an array of single mappings for one device.
> > > e.g. an array of single mappings for one PCIe Root Complex, where we
> > > have a unique output ID for a unique BDF(Input ID)
> >
> > Agreed, single mapping flag is not working for multi-entris of single
> mappings.
> >
> > Do you have a real use case for this fix? I'm thinking if we will
> > break any delivered platforms with this patch applied, since this code
> > is not changed from 2016, and it's the key logic for mapping the IDs.
> 
> We have this use case in our platform NXP LX2160A, where we provide the
> array of single mappings in IORT table. Actually we can only have limited
> number of output IDs for PCIe devices, so we allocate unique output ID to
> each BDF connected to a PCIe root complex and pass these IDs in IORT table.
> 
> >
> > I checked Hisilicon's ARM64 server platform, Number of IDs is equal to
> > the number of IDs in the range in the firmware, which is not doing the
> > same as the spec said, but (rid_in > map->input_base + map->id_count)
> > is still valid with this patch applied, not sure for other platforms.
> 
> I don't think that this patch would break any platform which has IORT table
> defined as per spec.	

Let me rephase this to persuade you. This patch is *increasing* the allowed input
IDs. Therefore, this patch would *include* more platforms and none of the existing
Platforms can be affected by it, because already their Input IDs would fall in the allowed IDs.

> 
> >
> > Thanks
> > Hanjun

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
