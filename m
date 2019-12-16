Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF3311FDD6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 06:15:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+S6pBc1+tKWPQ2dyiXg8MErCpW6Lpdp0BUl1obW+WLU=; b=uZhfdjtOV55exp
	yb22tX6yjSJTvPQMRbQ4v+RkZlItplGX5G55o1I2VVnzLWSKlzGhvBny3nxTlYxO3hv4OC7dMAZgz
	CJbALM9hb0db76i9IitJz9AdyEuPkUk6fC+aT3jZmp6GC86ELPVjzhnQeny4vj2oodw0cmkWIBa7L
	yS8bresjF52L++VUnrkZNMvTPkG9kwJnRkjUqUfODjjUIit2clBIWHnNKob7nw/iDtk9KH291ScQc
	Q8SZ44AOLcRyfHc4X07WMjk4ZN1kYM6avierMDQbawW3rqZi7yvKSxzTiQEkH+PSzyMLMGjIJdG+G
	gvTqOOuZtc1GmOUfyRkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igiiZ-0001Am-Uk; Mon, 16 Dec 2019 05:14:51 +0000
Received: from mail-eopbgr130083.outbound.protection.outlook.com
 ([40.107.13.83] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igiiS-0001AM-Tx
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 05:14:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XULisgYXSAc3GqeJStajJP4pRiBmqNW9ahVmkai8eLf04iSshfsKbJVLF1Tjnmf5/DonHALxS4rnjsIcS5PO2DsLLV/gO2xzklkapaxFH44eoJh4uR1QsquI7AH7qgOSO03QboAL4zVH8S/RyYi2JI3SFlf0o69SuwpbJ48IWqTqVduxNn7/CoMlz4nI8Kjv8Y+DNDBu04qsGzec9mIk9YOS/7beVuON0ZyB3jkJK4WMDygOLGukUan1Zxau3gPqZJvr8I1gVnDk+dHT/3V8A+qZ2zCqVfZEY2WB0YZkP0+09qkO9Uw//bsKQqu3rhjiXnF/nwWDqgdKhHxE4Ma+qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RYWDGpYzSgNCSAHWfPM8BZ2kBiWoaR7bQgGj7T8W3Ck=;
 b=DGsfhA35fRUix/nhZtZQUtMGOLjK9BfT+4PbI6H0Swfc4+lXN2R35yF30frNS7MAXXoCHP9vqubSlnKDlEDSwnOOUsjdShNGpbQUepFDhOoJ++bxah+FRIawTw7GuUvJQPXhWs3FMV3ox/+xDqPRKBteWirP81N9Z4/mmiDlLNECb429bbcAjMMFEvzE2uVhHLYaT6c6cAY7W/HW28IN8XklnG7Ku/p2iaotaiQL7tiMdDUhR4xhrd0H9mUOurR/aOOodjgGzZA2YKZYwbAEPiNDYiX7nML8pOr51Zq91WYshAPePIUBL7HUOwC1tbx7QNjMOqi05q5zn1GZBSBs6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RYWDGpYzSgNCSAHWfPM8BZ2kBiWoaR7bQgGj7T8W3Ck=;
 b=LsKNDsIFJWy5ZsaiwcsdsiFeQee8WurR/3kXRjZk1dCqRvZW4OtOLCDV3gDlXhAEN9cvY6++IPjqa1xyG56gpLOGHZ6VJlgiYQkA++64tu4sCaKj1h/1CC/Vqkf0ra3Mw1MQ2PXGMIr8F43wricRpFj0Re5dOBVZplfuJYzRLsc=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2495.eurprd04.prod.outlook.com (10.168.63.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Mon, 16 Dec 2019 05:14:41 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::8823:663d:c6ed:cbd6]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::8823:663d:c6ed:cbd6%12]) with mapi id 15.20.2538.019; Mon, 16 Dec
 2019 05:14:40 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Hanjun Guo <guohanjun@huawei.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J .
 Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Subject: RE: [PATCH] ACPI/IORT: fix the iort_id_map function
Thread-Topic: [PATCH] ACPI/IORT: fix the iort_id_map function
Thread-Index: AQHVs1oeh+jJ/g/JdU2kvN0Bjpwx56e8IO0AgAAVdGA=
Date: Mon, 16 Dec 2019 05:14:40 +0000
Message-ID: <VI1PR0401MB2496E243F45C82E789B867A6F1510@VI1PR0401MB2496.eurprd04.prod.outlook.com>
References: <20191215203303.29811-1-pankaj.bansal@nxp.com>
 <ffc5a6e9-cac3-d6c6-fe16-745b4f9e481f@huawei.com>
In-Reply-To: <ffc5a6e9-cac3-d6c6-fe16-745b4f9e481f@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-originating-ip: [92.120.1.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ac381bfd-4ca0-4388-56ce-08d781e6dac1
x-ms-traffictypediagnostic: VI1PR0401MB2495:
x-microsoft-antispam-prvs: <VI1PR0401MB24954C212BB15283659C559BF1510@VI1PR0401MB2495.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(366004)(376002)(136003)(39860400002)(13464003)(199004)(189003)(2906002)(44832011)(478600001)(45080400002)(966005)(33656002)(110136005)(54906003)(8936002)(8676002)(52536014)(81156014)(81166006)(53546011)(6506007)(5660300002)(186003)(26005)(4326008)(66946007)(64756008)(66446008)(66556008)(66476007)(76116006)(71200400001)(9686003)(55016002)(7696005)(86362001)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2495;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d9OUUiy1Q7Z46XdNXD/2Qi7NsjQ5KcGijfXwAgDaBg3cinEjtQa7FyFwJhzgmqJObAc78+AafqR6rpP/C7hISbM1fKESlTQCgbhadxNTp01Goc6S+bYUeCYtzrOfjPQjBcj9AWKo8ZgEj5LhJTh4BiD9VUn/owyYMXP3ui4AAZ1uCV4cNiq4/9Qd1i8zaE3y+f9DmSOLyr+zUbkcC/UXRqkYNHHcloZ4Dm9xqhAKFNAWGHA4KkuOwvwdBwOJ8HWRt7saYMXvo/wk+txC+UPYO3k8ruasyNY7IOBs2Kya3AFtZxClUq3uIKKhHIJyQnpqwbBF4EdosCVebImwCT/Mb4/QOTmXA2tuH3902kI/UF/pOE0QNbuXbl/B7H631ZJh+fbNtdgYGHYBvt7YD5V+ZE6N+sSFAV2OZsPmZXQ18On4i6XGUUGb/qkpJ3WVHC8XHwIa3hvKWz+H+z3aByfSWXrl4AUZaHyfcVr2mQCdrQgmQhty1ij+5Ut4hc6eXsoC
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac381bfd-4ca0-4388-56ce-08d781e6dac1
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 05:14:40.7540 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zn/u/BqHGbt0xGqP+gyyImoSApaOmj9/sXY5YGa7ms/Yum+qgOhcCzsZAL1yN0OVPTUCRtA9/O8Y4x4iP4OvHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2495
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_211445_045621_3BF3189F 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Jonathan Cameron <jonathan.cameron@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hanjun,

Thanks for replying. Please find my response inline

> -----Original Message-----
> From: Hanjun Guo <guohanjun@huawei.com>
> Sent: Monday, 16 December, 2019 09:19 AM
> To: Pankaj Bansal <pankaj.bansal@nxp.com>; Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com>; Sudeep Holla <sudeep.holla@arm.com>;
> Rafael J . Wysocki <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>
> Cc: linux-acpi@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> Jonathan Cameron <jonathan.cameron@huawei.com>
> Subject: Re: [PATCH] ACPI/IORT: fix the iort_id_map function
> 
> Hi Pankaj,
> 
> On 2019/12/15 23:12, Pankaj Bansal wrote:
> > As per
> > https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Finfoc
> >
> enter.arm.com%2Fhelp%2Ftopic%2Fcom.arm.doc.den0049d%2FDEN0049D_IO
> _Rema
> >
> pping_Table.pdf&amp;data=02%7C01%7Cpankaj.bansal%40nxp.com%7C78d
> 82a560
> >
> 5714219196008d781db06a7%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%
> 7C1%7C6
> >
> 37120650018983814&amp;sdata=%2FRhATUKx%2FA2gPEx%2BNY9X%2F7kqV
> CrEeRnbE%
> > 2B2qlTkdGDc%3D&amp;reserved=0
> > in ID mappings:
> > Number of IDs = The number of IDs in the range minus one.
> 
> Hmm, the spec is confusing, the spec may need to be updated, for example,
> for a PCI bus, device ID + function ID will take 8 bits and will be 256 IDs for
> that PCI bus, not sure why we need to minus one.
> 

I agree that this "minus one" thing is confusing. Not sure why It was put in the spec
like that. I guess they wanted the number of IDs to be 0 based instead of 1 based.

> >
> > Therefore, it's valid for ID mapping to contain single device mapping
> > which would have Number of IDs field 0.
> 
> Why not use single mapping flag for this case?

Actually single mapping flag doesn't mean that there is single mapping in an ID mapping.
It means that Input ID should not be considered when looking for Output ID.
If we put single id flag, then we cannot have a case where we have an array of single mappings
for one device.
e.g. an array of single mappings for one PCIe Root Complex, where we have a unique output ID for a unique BDF(Input ID)

> 
> Thanks
> Hanjun

Regards,
Pankaj Bansal
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
