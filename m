Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC9A1E3C40
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 10:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFgSRBiYifBJ7z/UqftokZi8eO11N61rYTTWs8SFLCo=; b=jtN0QJeqJkdrYH
	3GhB7Xa9GUd5NtB4dfZ0F1Y6aHidd85qGnmDapdEfGNqIQARydv6Nl/oY6ezbN0KHd/Vkw0+L57UA
	WJMh7x1uE2PkvX/EHIok5ZmPpKZG4pvQSKV4USdluKF390zludfFT3Dji224gA/EXtUlnEh00DM6a
	wIqZnXXiysKNvqpu7xa9THU0JbNWaQXw7zTGUEUDi0T2Y8DSAH0vJwKc7B2X1Li9AkyMd9VOECDqf
	PWBCzLWUMG2G2ILEtskT0noG+aqYOXYC0fMPXHElSa730Sjx1OK428JOQNZgh/YrPexzHFeXnGyzY
	Vym9R7ObYwb5vdWUapXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrcY-0006BQ-P8; Wed, 27 May 2020 08:41:06 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrcL-0006AY-UR
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 08:40:55 +0000
IronPort-SDR: FXoVZJFVuad70kiFYj2djFA5J678wLUxfoAw2WGjalooVcQXIrNadi3Bj589Txpdfhr2OGN2qM
 dKtWfF8x4V6Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 01:40:53 -0700
IronPort-SDR: rDiz9m+iQCJ4hAntoc9Jt2eT4I30mjTKLdal0GI+0WjcmhGaiytJiFacbR9zaQSSsl0NDAWask
 QzKHWWv9YeyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,440,1583222400"; d="scan'208";a="291521996"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga004.fm.intel.com with ESMTP; 27 May 2020 01:40:53 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 May 2020 01:40:52 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 May 2020 01:40:52 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 27 May 2020 01:40:52 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.51) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 27 May 2020 01:40:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P3hISDN7RGEO5Cqpap91A9Sjws2hiv6vKYhXr9r14YUkBvljFEa3lJsBbyfxJyQ6xBooe1IwKEv8ZX8XJJ+FyJhVL+L9dXeo506e4chehW8N2NE7uEFHiuODsS24gIKSq1jfFJ53QqttBKHZJ0HQK/ee6K6YIdwNJT9sbDK/CIhPJSb3/3eyPelEYPuwN7Z5Nxm4580ZYQKdnmgGYQUSIwpxAgs/5mCvxic5Bkue9XZvIVRWb4+gGwSbQkVqAK3EHeAj90z8jE3Zu6KwwdxLWb/J9QgtxoSDRXrxSWuw7k6EQ5PgdSPkN4naQUBpb62iwrdPKyLlkgtPcYsxFc5ncw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lBr6Cw1ga7HMHMnoqN/nJ4kMb2/82O6sOhOWpXrWRKk=;
 b=cQT+nGWqOZpt91dmM9XY6vFY+jNg7odPRvjg887adWjv30pNC6mhjd+tvXzlh9dlf5xKG20K3OrBbytcUTU3tY0VSevTq1dJXRBE3s1OV/Fuxs4MMRyn5Qp0Uq5tClWBkp19XEUBxVAkdGi15hyWS4ZdfjygLf6TLlcUrghTPqh2IOEwqox5sYuiJ3uEeNkoUNmxaYmOFJo70KQBJ+5WwoAuUMeoOBSBtwdXduE1BfwnyW31IWLktEHBgA7c8EKWSNm1n7J/wLKgNWky0x754nox6yVMQg9ViSgnE/efYFZx+RLPU0au5POy5emvcaaVVqpMtcts5ON+Afbc6uyIow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lBr6Cw1ga7HMHMnoqN/nJ4kMb2/82O6sOhOWpXrWRKk=;
 b=yyUl5ute4hQLUwUKdju0NdExONWIMUnn0AWZheTnLYKvNOlWiPDQjIel5sMjdAltoz+AdK5uBsTk1L84zrhpxcAP3megRtFsJXUKGCwgJoLtRseOzdbjmGRb9VxBwIYhYLWYtKmTEcroLLtVcuDtsbFmq/DJSvQAb7MnzC6ekSY=
Received: from MWHPR11MB1645.namprd11.prod.outlook.com (2603:10b6:301:b::12)
 by MWHPR11MB1549.namprd11.prod.outlook.com (2603:10b6:301:c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Wed, 27 May
 2020 08:40:48 +0000
Received: from MWHPR11MB1645.namprd11.prod.outlook.com
 ([fe80::b441:f6bd:703b:ba41]) by MWHPR11MB1645.namprd11.prod.outlook.com
 ([fe80::b441:f6bd:703b:ba41%2]) with mapi id 15.20.3021.029; Wed, 27 May 2020
 08:40:47 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Xiang Zheng <zhengxiang9@huawei.com>, Jean-Philippe Brucker
 <jean-philippe@linaro.org>
Subject: RE: [RFC] Use SMMU HTTU for DMA dirty page tracking
Thread-Topic: [RFC] Use SMMU HTTU for DMA dirty page tracking
Thread-Index: AQHWMFylSKWbJMD/rEatnfJX129kWai4sCAAgAKbIaCAADjSgIAAH3UA
Date: Wed, 27 May 2020 08:40:47 +0000
Message-ID: <MWHPR11MB1645AA007D24F2D005794E5C8CB10@MWHPR11MB1645.namprd11.prod.outlook.com>
References: <b926ec0b-fe87-0792-c41d-acad56c656a4@huawei.com>
 <20200522171452.GC3453945@myrica>
 <e68c1158-8573-a477-42ce-48cee510c3ce@huawei.com>
 <MWHPR11MB16454475DA1FF417CEF5A32B8CB10@MWHPR11MB1645.namprd11.prod.outlook.com>
 <897a84ac-0a71-ace7-e05b-3cc9f0b05c28@huawei.com>
In-Reply-To: <897a84ac-0a71-ace7-e05b-3cc9f0b05c28@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54b978fa-a516-4527-c039-08d80219a777
x-ms-traffictypediagnostic: MWHPR11MB1549:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB154984600C62C48E0641246C8CB10@MWHPR11MB1549.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04163EF38A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: riX/bWTqtxrInMi3AM8xO+S0KoLDs2U0WCGJ725s+8whEtNtBBclk6PQ4c1BVaQKHur6pVOQPCAHVD8tJEQXBV6+MwIjUU4giw812iYGFt4rUFl7J11oXq3qdLnAvz1a/LnJSNgdhJ4L04NGrvVEzi4WVBv7Fn1GD6ghat1xRKLuTo5v47zQX71pNR11c9vOzcbLCS61Q8neAje9SjhrUoec2uQIcOunkWsU//WgzPpn2LSqpHSVrZlC/1lj0jj19DXqNhg6UIAVVcsFyblqZUMpDe44ee4olWbXmql8EhdCsU7UX8ScHSy/nNg9qENSKMm7lmQBVK8G8Fk2KjU3lc/xE+3EnLjxz46FlvwhuOirbTNLxS3mD2LyAHeSi4qeT2tt668/auL0fP+k7bEENtpAqrvfJo7M0X+FPcZsnvFVwx3L5q4imPZAFezpDKGu9d9oCjQMKZfoKfJMhsXuGA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1645.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(366004)(376002)(396003)(39860400002)(136003)(26005)(7696005)(66946007)(9686003)(71200400001)(55016002)(2906002)(83380400001)(6506007)(76116006)(53546011)(4326008)(186003)(316002)(8936002)(110136005)(966005)(52536014)(64756008)(8676002)(33656002)(66446008)(54906003)(7416002)(66556008)(5660300002)(86362001)(478600001)(66476007)(14143004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 6nne222+IwcKCia8xoDVICfFk4wq27ry2W47nuEyGmQX4Q1vGwzK89PaFsE3cBZ8WSgLuYloAmr8cV3wxttS7AM8Mob7rrtcKux3CnPWDm9TDrfiH36oLgrcn+M8UAxqCp2S1yFwlz+SetSm0IRyXMJUiwxTigaV/xiqwcWRaIoeklfsNgie+zHURfTHqpzDtYU92/Of7cXGRZvXV8ywpWRVN7gK5lhseJAJ4Fm/nEznErPEugcBS0OMr78l459Qw81jnFSLZQ/LvcsJJiC4lYn57MXNDEvfn74l+iuO+Af7Z8jFsfshy7hbPS7s7YzkJDMMmmBb4k6htdX5jKGEdraHL0QhbWLkhT/7qXAEGpvViMEgSBb+fKyXvXue4G6KUNM+kqyAET7BCEaaErw/kyDp+5PdE0SZ7uSfvVAiMKV5hIAcvDzx9o6pN6E9NaEhHi6Y2FWtdpyFggYhesC2EImh4GFG4pr2iwJ1fr+ggdEFhxp/TEPRJd/2UYAL7Cwb
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 54b978fa-a516-4527-c039-08d80219a777
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2020 08:40:47.8266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v/oJknY8DEN5k305oivWg3BcBvsgPEl8TdsjZdv11jes7t++D5TccvBYslRaWGKr0KkV5S/9EJHcJtCVVrkH8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1549
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_014054_068172_7737794E 
X-CRM114-Status: GOOD (  22.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "Zhao, Yan Y" <yan.y.zhao@intel.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, "maz@kernel.org" <maz@kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Kirti Wankhede <kwankhede@nvidia.com>,
 "alex.williamson@redhat.com" <alex.williamson@redhat.com>,
 James Morse <james.morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "prime.zeng@hisilicon.com" <prime.zeng@hisilicon.com>,
 Wang Haibin <wanghaibin.wang@huawei.com>, Will Deacon <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "julien.thierry.kdev@gmail.com" <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Xiang Zheng <zhengxiang9@huawei.com>
> Sent: Wednesday, May 27, 2020 2:45 PM
> 
> 
> On 2020/5/27 11:27, Tian, Kevin wrote:
> >> From: Xiang Zheng
> >> Sent: Monday, May 25, 2020 7:34 PM
> >>
> >> [+cc Kirti, Yan, Alex]
> >>
> >> On 2020/5/23 1:14, Jean-Philippe Brucker wrote:
> >>> Hi,
> >>>
> >>> On Tue, May 19, 2020 at 05:42:55PM +0800, Xiang Zheng wrote:
> >>>> Hi all,
> >>>>
> >>>> Is there any plan for enabling SMMU HTTU?
> >>>
> >>> Not outside of SVA, as far as I know.
> >>>
> >>
> >>>> I have seen the patch locates in the SVA series patch, which adds
> >>>> support for HTTU:
> >>>>     https://www.spinics.net/lists/arm-kernel/msg798694.html
> >>>>
> >>>> HTTU reduces the number of access faults on SMMU fault queue
> >>>> (permission faults also benifit from it).
> >>>>
> >>>> Besides reducing the faults, HTTU also helps to track dirty pages for
> >>>> device DMA. Is it feasible to utilize HTTU to get dirty pages on device
> >>>> DMA during VFIO live migration?
> >>>
> >>> As you know there is a VFIO interface for this under discussion:
> >>> https://lore.kernel.org/kvm/1589781397-28368-1-git-send-email-
> >> kwankhede@nvidia.com/
> >>> It doesn't implement an internal API to communicate with the IOMMU
> >> driver
> >>> about dirty pages.
> >
> > We plan to add such API later, e.g. to utilize A/D bit in VT-d 2nd-level
> > page tables (Rev 3.0).
> >
> 
> Thank you, Kevin.
> 
> When will you send this series patches? Maybe(Hope) we can also support
> hardware-based dirty pages tracking via common APIs based on your
> patches. :)

Yan is working with Kirti on basic live migration support now. After that
part is done, we will start working on A/D bit support. Yes, common APIs
are definitely the goal here.

> 
> >>
> >>>
> >>>> If SMMU can track dirty pages, devices are not required to implement
> >>>> additional dirty pages tracking to support VFIO live migration.
> >>>
> >>> It seems feasible, though tracking it in the device might be more
> >>> efficient. I might have misunderstood but I think for live migration of
> >>> the Intel NIC they trap guest accesses to the device and introspect its
> >>> state to figure out which pages it is accessing.
> >
> > Does HTTU implement A/D-like mechanism in SMMU page tables, or just
> > report dirty pages in a log buffer? Either way tracking dirty pages in IOMMU
> > side is generic thus doesn't require device-specific tweak like in Intel NIC.
> >
> 
> Currently HTTU just implement A/D-like mechanism in SMMU page tables.
> We certainly
> expect SMMU can also implement PML-like feature so that we can avoid
> walking the
> whole page table to get the dirty pages.

Is there a link to HTTU introduction?

> 
> By the way, I'm not sure whether HTTU or SLAD can help for mediated deivce.
> 

A/D bit applies to mediated device on VT-d.

Thanks
Kevin
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
