Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B794121190
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 18:18:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJ+1nLrHFpJwXd2/Aw3fTABGWE5SHMgxm8zlhsC8cS4=; b=b+339k4e8fYRs5
	Dkm2FTWZbg0eWcbYl2MQlzQF207DX/u835/7UCe8V8/aH8hutrP3b1bPz77dNWVMed16ytu7Sc7J0
	vMF2cscFYAw8kthYidsXCPiEQejbIhFtmg7aqCERImMnvhOCuKebzKkWEHIHGM1zr8w8fg2TjyD21
	aLXCABIBlph8YP2mi1yKN1dPKXpwaVBugn6mpAjhRH6YTORg6cuim1+2ruGZnkHotxrqNbd7yvK9J
	FvV+ZvnY0+k6UHCzoDNlGD907lT6PSNqrc9AyJAmEEWJI1HAY9sxfULpvHmMIS8zsHH/MhuAYRT8t
	2JLGjWiR/TtjDGWcPPaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igu0b-0000J3-AI; Mon, 16 Dec 2019 17:18:13 +0000
Received: from mail-eopbgr50072.outbound.protection.outlook.com ([40.107.5.72]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igu0S-0000IF-Fl
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 17:18:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vv8LGMqOGkJyflPaSXyQE4p7zAAtGkyd0WsJa5gjbX+9/4D2UJTTqJ6ZN7dhCqdGAz9Ka+g9bNPuaOTe36UHhTUD1WEf21rv2VOGV4BlTC3dxoyCQkSDaWdvpFoUlpoctZqODw8GhffzSPM5XtJFN2c/9gWjCgctkjjz35RFFUS4DOkY8ugwj15YGJkN62Rwga26KEJ/Pi62LrRR//SDk/+ynW/iJUVaO28Qg7fQlRo6rVtH1CqGslPMkULkwVaLN6anpAh0sLoJqalBBC7HV0qakkRsPqAUl0V/amO5Z1fBHNxZXCUd+KDpvR76cqiDPI+U3L/osUff2TbMPbTj2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YbRVersQlPr8Bx52aoWr0qx/xTlslifg8y490caAkZw=;
 b=IPQiKHi36rdv7lwQaOEU7Fr+yDfrFJfhWjL07gbzPUy3ZewN3xrNi2F7fLj4khYHSAt61CclqwMgHA1nrlnmv+bUJfb/d9cfCqNBejen1JyAg3CeGfeKLmR8BpkJyHstxE/4UMCk/VXuT3GR6VJAS1Tvn63Px8OGxv731BIKaV8fF9MQzyRVdAw49+UoMOESDWqWqEdXCGZrFVWK8XaueNR1emXOBhhOhkfH+VRbvh5PTGHlMdM0D5tfkqZO+Jnb1ozw/Q6te2iANsUL/VPLAWBqYC5xfgZkM2ue3JGVbwt43GMJ35r9A76YK18vnDIdNZDNePESqHJPxpy+3xjXBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YbRVersQlPr8Bx52aoWr0qx/xTlslifg8y490caAkZw=;
 b=VWMY0K/r1hSslS9xAdmBu56A4dGULED0EUJsxr0OMEaFN+q/gFzWQDn9YnNPtkFcvMY2AgpfQL5LujydwD46/1CUzZAkv9rf/vPrJqqW+horIdCV0AoI0zFFGJ/agWazAf1U9oIi5DDEScNFZjdfPGG7HfXIwUBnVE3Gg59uFhg=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Mon, 16 Dec 2019 17:18:00 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::8823:663d:c6ed:cbd6]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::8823:663d:c6ed:cbd6%12]) with mapi id 15.20.2538.019; Mon, 16 Dec
 2019 17:17:59 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Hanjun Guo <guohanjun@huawei.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J .
 Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Subject: RE: [PATCH] ACPI/IORT: fix the iort_id_map function
Thread-Topic: [PATCH] ACPI/IORT: fix the iort_id_map function
Thread-Index: AQHVs1oeh+jJ/g/JdU2kvN0Bjpwx56e8IO0AgAAVdGCAAHH+gIAAWRgQ
Date: Mon, 16 Dec 2019 17:17:59 +0000
Message-ID: <VI1PR0401MB2496DEA6CDEFD57C9427883FF1510@VI1PR0401MB2496.eurprd04.prod.outlook.com>
References: <20191215203303.29811-1-pankaj.bansal@nxp.com>
 <ffc5a6e9-cac3-d6c6-fe16-745b4f9e481f@huawei.com>
 <VI1PR0401MB2496E243F45C82E789B867A6F1510@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <eedbf670-00e2-93ce-06ac-469d6032ce74@huawei.com>
In-Reply-To: <eedbf670-00e2-93ce-06ac-469d6032ce74@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-originating-ip: [49.36.128.25]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 58906403-9225-4826-12a2-08d7824be693
x-ms-traffictypediagnostic: VI1PR0401MB2496:
x-microsoft-antispam-prvs: <VI1PR0401MB249603C0A7A2FF37324D8275F1510@VI1PR0401MB2496.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(346002)(136003)(366004)(199004)(189003)(13464003)(316002)(110136005)(6506007)(26005)(86362001)(186003)(54906003)(2906002)(44832011)(53546011)(7696005)(5660300002)(66556008)(81156014)(81166006)(9686003)(8676002)(66946007)(55016002)(66446008)(64756008)(8936002)(76116006)(45080400002)(71200400001)(33656002)(478600001)(66476007)(52536014)(966005)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2496;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1HSHzLk/QiaTJ5O28y75sun38RtFxl4/g9/2r3Eaq4xFM4fJxb0JybQ7FXRs0LRTelMQkRllCoN0Hy4cVnU7Q/ZyWT9YsTC6TKwE7SxdNZMgdw4I3gYAV6Kr14mb4WAcXA4Ggoo1j1bnvSlymsvZSvOCfpCKszVOB3eLgsthaY110PCzDN+L0BcVctoBg4At70ruKbhCMfshpRHm4/wnwEBl86mYa9De3anQVVVc8OE1c0SzSegb1ScPv0DOO+1JXiavApZiam199qS5LNM2+No/ymaDerbalQ5xov0BqDyLyKpaCUhHwE4FDsUZkyyMNI5KdTQ5AYzRTPNqCFVNWDcK074+gMD8qCNhNqB33piwrRa09x0rAb+4g1gOQo2/P6uh9faZ7AAeQ/k7MRF5OH5MstX4jBxMkNVuSI4ba0dIvjyCc+1SxopKPSi5PP5eoPElJI6QxoUDXSKh5KZnyrJkdMH4Ude/0wOIyVtQt7NbHur/URxRpJQcGbU0ECCq
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58906403-9225-4826-12a2-08d7824be693
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:17:59.7941 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 33PXpocZf0iuF/fYNxj9UwYPH6WWL3rqciiP+I0UtgwbKkuorl4deSOhxoKl40ll7FdNCKLh5kYnHP8jYq6r1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2496
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_091804_575468_2C3E6068 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
> From: Hanjun Guo <guohanjun@huawei.com>
> Sent: Monday, 16 December, 2019 05:24 PM
> To: Pankaj Bansal <pankaj.bansal@nxp.com>; Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com>; Sudeep Holla <sudeep.holla@arm.com>;
> Rafael J . Wysocki <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>
> Cc: linux-acpi@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> Jonathan Cameron <jonathan.cameron@huawei.com>
> Subject: Re: [PATCH] ACPI/IORT: fix the iort_id_map function
> 
> On 2019/12/16 13:14, Pankaj Bansal wrote:
> > Hi Hanjun,
> >
> > Thanks for replying. Please find my response inline
> >
> >> Hi Pankaj,
> >>
> >> On 2019/12/15 23:12, Pankaj Bansal wrote:
> >>> As per
> >>> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Finf
> >>> oc
> >>>
> >>
> enter.arm.com%2Fhelp%2Ftopic%2Fcom.arm.doc.den0049d%2FDEN0049D_IO
> >> _Rema
> >>>
> >>
> pping_Table.pdf&amp;data=02%7C01%7Cpankaj.bansal%40nxp.com%7C78d
> >> 82a560
> >>>
> >>
> 5714219196008d781db06a7%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%
> >> 7C1%7C6
> >>>
> >>
> 37120650018983814&amp;sdata=%2FRhATUKx%2FA2gPEx%2BNY9X%2F7kqV
> >> CrEeRnbE%
> >>> 2B2qlTkdGDc%3D&amp;reserved=0
> >>> in ID mappings:
> >>> Number of IDs = The number of IDs in the range minus one.
> >>
> >> Hmm, the spec is confusing, the spec may need to be updated, for
> >> example, for a PCI bus, device ID + function ID will take 8 bits and
> >> will be 256 IDs for that PCI bus, not sure why we need to minus one.
> >>
> >
> > I agree that this "minus one" thing is confusing. Not sure why It was
> > put in the spec like that. I guess they wanted the number of IDs to be 0
> based instead of 1 based.
> >
> >>>
> >>> Therefore, it's valid for ID mapping to contain single device
> >>> mapping which would have Number of IDs field 0.
> >>
> >> Why not use single mapping flag for this case?
> >
> > Actually single mapping flag doesn't mean that there is single mapping in
> an ID mapping.
> > It means that Input ID should not be considered when looking for Output
> ID.
> > If we put single id flag, then we cannot have a case where we have an
> > array of single mappings for one device.
> > e.g. an array of single mappings for one PCIe Root Complex, where we
> > have a unique output ID for a unique BDF(Input ID)
> 
> Agreed, single mapping flag is not working for multi-entris of single mappings.
> 
> Do you have a real use case for this fix? I'm thinking if we will break any
> delivered platforms with this patch applied, since this code is not changed
> from 2016, and it's the key logic for mapping the IDs.

We have this use case in our platform NXP LX2160A, where we provide the array of single mappings in IORT table. Actually we can only have limited number of output IDs for PCIe devices, so we allocate unique output ID to each BDF connected to a PCIe root complex and pass these IDs in IORT table.

> 
> I checked Hisilicon's ARM64 server platform, Number of IDs is equal to the
> number of IDs in the range in the firmware, which is not doing the same as
> the spec said, but (rid_in > map->input_base + map->id_count) is still valid
> with this patch applied, not sure for other platforms.

I don't think that this patch would break any platform which has IORT table defined as per spec.

> 
> Thanks
> Hanjun

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
