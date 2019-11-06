Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3617CF17A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 14:50:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7/YbH1A8lBLdNORT/eFZsZmIyfsLWYuR/D3jZqQGcY=; b=VrkxFJtRYuHw7r
	rTYdAKiphtcLGpc8NLv9fqyYItqERFzcDmdT7Ymo9SV8NAo/3IuRXvT8lPl/ArprU+nD8jmbt/iL1
	ff/QgQP9Pfv5JtvGq//muWxtjqUrR03KW/BW3Zeo5hdtck2yEUFVaYZP3DaI6x4kjiGWpzw3uL34X
	GAMJHO/GzU8aDYzqrTPT7DgLBUmOXjBzdWuhqIP7ijH2FqSIFwxcp6oaFP8u9vCfg28/mz8QVPc7u
	ejpJWshHO/Q+pYLfFMDk6cikJb7/zHjRWwvtzF22/VyIT24kRbP2FygFv68pe1nNi0hmdY8mCml3p
	FR/Dbg5YGdUq+PdQdr2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLh9-00063I-1R; Wed, 06 Nov 2019 13:49:59 +0000
Received: from rcdn-iport-3.cisco.com ([173.37.86.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLgz-00062Y-HA; Wed, 06 Nov 2019 13:49:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=4870; q=dns/txt; s=iport;
 t=1573048189; x=1574257789;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=svN6cFwx804hBErcQBK4s2MIwLiLUcsoWgbTbckAcGA=;
 b=AmRgjlEUNhx9ECnh0YA/8fHlILRftoX3LKfy0OUrwt/8DhjtErEP6Kbu
 /tc0wJ1r4If+nphyVGBqmxspaJ42xJolpIQOs1NBwAAvk0ReTgajEnACu
 c3B44NC+KLNvi+/i+yL4qMxvHXCSp9MLFz6rV+i33kLOAwvDOlfkjpg4r c=;
IronPort-PHdr: =?us-ascii?q?9a23=3AAYeG5ROs7inDE1SbYHMl6mtXPHoupqn0MwgJ65?=
 =?us-ascii?q?Eul7NJdOG58o//OFDEu6w/l0fHCIPc7f8My/HbtaztQyQh2d6AqzhDFf4ETB?=
 =?us-ascii?q?oZkYMTlg0kDtSCDBj7JfjxcSEgH+xJVURu+DewNk0GUMs=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0ATAQDszsJd/5JdJa1lGQEBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBEQEBAQEBAQEBAQEBgX6BS1AFbFggBAsqCoQfg0YDin5OgWs?=
 =?us-ascii?q?ll36CUgNUCQEBAQwBARgLCgIBAYRAAheDdyQ4EwIDCwEBBAEBAQIBBQRthTc?=
 =?us-ascii?q?MhVEBAQEBAwEREQQNDAEBNwEPAgEIFQMCAiYCAgImChUQAgQBDAEFAgEBHoM?=
 =?us-ascii?q?AAYJGAy4BDqYeAoE4iGB1fzOCfgEBBYUHGIIXAwaBDiiMFBiBQD+BOAyCXz6?=
 =?us-ascii?q?CYgOBd4J5gl6Me1aBfTedfwqCJJAKhSwGG4I8lzCOQ4FAmCQCBAIEBQIOAQE?=
 =?us-ascii?q?FgWkigVhwFYMnUBEUgwYMFxWDO4RZhXp0AYEnj1MBgQ4BAQ?=
X-IronPort-AV: E=Sophos;i="5.68,274,1569283200"; d="scan'208";a="646478144"
Received: from rcdn-core-10.cisco.com ([173.37.93.146])
 by rcdn-iport-3.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 06 Nov 2019 13:49:45 +0000
Received: from XCH-RCD-014.cisco.com (xch-rcd-014.cisco.com [173.37.102.24])
 by rcdn-core-10.cisco.com (8.15.2/8.15.2) with ESMTPS id xA6DnjtG031290
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Wed, 6 Nov 2019 13:49:46 GMT
Received: from xhs-rcd-002.cisco.com (173.37.227.247) by XCH-RCD-014.cisco.com
 (173.37.102.24) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 6 Nov 2019 07:49:45 -0600
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by xhs-rcd-002.cisco.com
 (173.37.227.247) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 6 Nov 2019 07:49:44 -0600
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-002.cisco.com (64.101.210.229) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Wed, 6 Nov 2019 08:49:44 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BiFjiJPL2cJIdiI2RQGQ+ref+JilTXxsbs5PgJ8fRSyDaoxieUzQJ8buERqSiO1VUmpBkS3Q7HuHwE4wmS6T3sXuB5v2t+/aVNU+SK4Kr2dmr4Fo4vZTBUvav+s3j3i9tZzraGWaeFgkFWjy3IOP75HewW1x7NiLag2BVY8hOZGea0Iu/84sy40uAMhv/LRFm5RYb4GTSE1RCE/oYsqaRL7tumHs7vPi9LybXluEUFwpL3TNhSqk/xPMDIq0r1dOt9iwTDXEK0rhR2iInRZtVBjwJ7jY9gE3Tp/TM2l0d3z8oshp8dzUQLXdpxe/ltC56g6b+0IyKxCftDYVGsgAgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=svN6cFwx804hBErcQBK4s2MIwLiLUcsoWgbTbckAcGA=;
 b=ZGMvZM5nNK+pL8gJNivYZUWnIw5c7k8B6GOFcvGW0B33/p70HIwTgUCa2VVXoaG+OcZs9Lx0jG6DgrN/738kgMOW7Q1VpgCFFJGj25N0y4O/H/ODNLzgqeaDDlv+Y+x6KyHYVv8Kk7Q2dp/Svzh9jGDW1X58kJrBHjXsrUoj7DU8h5CbfJhH/Hn6Z4IpGN5UHjL3N51bX22ZDGplI66YQPmAXgw1C7Cm7APdQjX9pgQDheZePGzwnoeLJgtT/4waSZ1BVjRREAyK2la4gKpCr3K44pup5/rLVXnJLpXb8q9j6LysZC16130WA5zeDqpSf8D7ekWiOF5z9gxcuUBuFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=svN6cFwx804hBErcQBK4s2MIwLiLUcsoWgbTbckAcGA=;
 b=CB88RV7lolJ13cWr5/PniYP0hVCMq5xH9xuiFrOl4s+GXN+xf/PWh0X0qF6hqLq+OKRoCMntGMlSrRH0PUZLsH68MwGEXLs8D//UloloBDGoGMlE1U/0nwvrpc13J8Stm2ziAdvqWYR+rCgai3MfiS4Djgqu4JRiYih57Nn6yGA=
Received: from MWHPR11MB0062.namprd11.prod.outlook.com (10.164.204.34) by
 MWHPR11MB1376.namprd11.prod.outlook.com (10.169.230.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Wed, 6 Nov 2019 13:49:42 +0000
Received: from MWHPR11MB0062.namprd11.prod.outlook.com
 ([fe80::915:6397:4683:34e0]) by MWHPR11MB0062.namprd11.prod.outlook.com
 ([fe80::915:6397:4683:34e0%3]) with mapi id 15.20.2408.024; Wed, 6 Nov 2019
 13:49:42 +0000
From: "Hans Verkuil (hansverk)" <hansverk@cisco.com>
To: Ezequiel Garcia <ezequiel@collabora.com>, Helen Koike
 <helen.koike@collabora.com>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v9 1/4] media: videodev2.h, v4l2-ioctl: add rkisp1 meta
 buffer format
Thread-Topic: [PATCH v9 1/4] media: videodev2.h, v4l2-ioctl: add rkisp1 meta
 buffer format
Thread-Index: AQHVlJoMoe3KhuzWQE6zp8GXlxAXY6d+EJqAgAACQYCAABShgIAAAWOA
Date: Wed, 6 Nov 2019 13:49:42 +0000
Message-ID: <91be7929-7130-1d52-7058-bbfa84cde90b@cisco.com>
References: <20191106120132.6876-1-helen.koike@collabora.com>
 <20191106120132.6876-2-helen.koike@collabora.com>
 <9102bcf8-0279-7972-daff-b15aaf98804d@cisco.com>
 <28cff7ab-ef56-791e-0342-571f64cb9807@collabora.com>
 <b1a8fa60a3c8922c364a18b0583dab55660f2fb4.camel@collabora.com>
In-Reply-To: <b1a8fa60a3c8922c364a18b0583dab55660f2fb4.camel@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hansverk@cisco.com; 
x-originating-ip: [173.38.220.39]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3de01ee9-bd96-4a3a-4e97-08d762c02d27
x-ms-traffictypediagnostic: MWHPR11MB1376:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1376CFF73B90B87BB30F33EBDE790@MWHPR11MB1376.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(366004)(376002)(136003)(189003)(199004)(66066001)(71200400001)(58126008)(71190400001)(316002)(65956001)(65806001)(3846002)(305945005)(36756003)(54906003)(91956017)(66946007)(66556008)(64756008)(6116002)(66476007)(6486002)(76116006)(14454004)(478600001)(7736002)(99286004)(6436002)(66446008)(966005)(2501003)(7416002)(486006)(476003)(110136005)(25786009)(8676002)(229853002)(186003)(26005)(14444005)(5660300002)(256004)(2906002)(6306002)(81166006)(11346002)(81156014)(31696002)(86362001)(8936002)(446003)(4326008)(53546011)(6506007)(6512007)(2616005)(31686004)(6246003)(102836004)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1376;
 H:MWHPR11MB0062.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bYfYlrcmu0sYA/P9pi4vHW63WKGRMoxb8ErDzvhx5QXGrziT1wEym3wckNBiRqorWy7oYx4n7in9tBqnAtw9YksuYedIqBohDyySZ0jI+MiW6zjD/wTQd90Oueu6OnWx1MxinAtAtbQ7HVLPrVHArcfLdxG9Swpx/LIUD1oD37bCsURIIZCzdTDdTFzXC4b9KkU6U0CXRtFep8za/Xzj7rqSohQTnwVwylOqRdQ4ndJ63iyXBZzW4Gw7/tEZegBAhjFA+25iX1aFUgjhkDtavhjqpu03t8ctcQ8x69f8HKyRiBe4xUZo/Z8BH9KbBwAB9oC2emAPVDuooRTCTKjDy+7ew7/tm9XsL4u18a91mi7K02PNMPveD3wU5evdQh8iIwztjgQjEMILQoTfBGUE4KF/T2NODqbehFiTzZWmpqGorMU0f+WVGyVKIovcz2kynCFVAmcHAj6A/rcGT4hY+eaem9JE0DNuUufWWo7KJLM=
Content-ID: <1CD43328575457449B5419540669A812@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3de01ee9-bd96-4a3a-4e97-08d762c02d27
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 13:49:42.5129 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aDq6W9aJzvKvxf95AXQVSbkfjYZAyLLdVFNrz+pYObxYiCKFrvqcCt0/LKCi4wEKMAUVq7IcaV8mMFBg73glUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1376
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.24, xch-rcd-014.cisco.com
X-Outbound-Node: rcdn-core-10.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_054949_714827_EFF7943D 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.86.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "eddie.cai.linux@gmail.com" <eddie.cai.linux@gmail.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jeffy.chen@rock-chips.com" <jeffy.chen@rock-chips.com>,
 "zyc@rock-chips.com" <zyc@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tfiga@chromium.org" <tfiga@chromium.org>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>,
 "sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>,
 Jacob Chen <jacob2.chen@rock-chips.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "zhengsq@rock-chips.com" <zhengsq@rock-chips.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/6/19 2:44 PM, Ezequiel Garcia wrote:
> Hi Hans, Helen:
> 
> On Wed, 2019-11-06 at 09:30 -0300, Helen Koike wrote:
>>
>> On 11/6/19 10:22 AM, Hans Verkuil (hansverk) wrote:
>>> On 11/6/19 1:01 PM, Helen Koike wrote:
>>>> From: Shunqian Zheng <zhengsq@rock-chips.com>
>>>>
>>>> Add the Rockchip ISP1 specific processing parameter format
>>>> V4L2_META_FMT_RK_ISP1_PARAMS and metadata format
>>>> V4L2_META_FMT_RK_ISP1_STAT_3A for 3A.
>>>>
>>>> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
>>>> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
>>>> Acked-by: Hans Verkuil <hans.verkuil@cisco.com>
>>>
>>> I acked this? It is missing documentation for these new formats.
>>
>> I think so https://www.spinics.net/lists/linux-rockchip/msg18999.html :)

Hmm, I probably had an off-day :-)

I noticed that the documentation was included in patch 3/4 (which didn't
reach the ML because it was too big), but I asked Helen to split off the
documentation into a separate patch (or add it to this patch).

Regards,

	Hans

>>
>> I'll update the docs and the fixes you pointed below.
>>
>> Thanks.
>> Helen
>>
>>>> [refactored for upstream]
>>>> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>>>> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>>>
>>>> ---
>>>>
>>>> Changes in v9:
>>>> - Add reviewed-by tag from Laurent
>>>>
>>>> Changes in v8: None
>>>> Changes in v7:
>>>> - s/IPU3/RK_ISP1
>>>>
>>>>  drivers/media/v4l2-core/v4l2-ioctl.c | 2 ++
>>>>  include/uapi/linux/videodev2.h       | 4 ++++
>>>>  2 files changed, 6 insertions(+)
>>>>
>>>> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
>>>> index 315ac12c3e0a..ade990554caf 100644
>>>> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
>>>> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
>>>> @@ -1341,6 +1341,8 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
>>>>  	case V4L2_META_FMT_UVC:		descr = "UVC Payload Header Metadata"; break;
>>>>  	case V4L2_META_FMT_D4XX:	descr = "Intel D4xx UVC Metadata"; break;
>>>>  	case V4L2_META_FMT_VIVID:       descr = "Vivid Metadata"; break;
>>>> +	case V4L2_META_FMT_RK_ISP1_PARAMS:	descr = "Rockchip ISP1 3A params"; break;
>>>
>>> params -> Params
>>>
>>>> +	case V4L2_META_FMT_RK_ISP1_STAT_3A:	descr = "Rockchip ISP1 3A statistics"; break;
>>>
>>> statistics -> Statistics
>>>
>>>>  
>>>>  	default:
>>>>  		/* Compressed formats */
>>>> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
>>>> index f98bbcced8ff..56798b09cd85 100644
>>>> --- a/include/uapi/linux/videodev2.h
>>>> +++ b/include/uapi/linux/videodev2.h
> 
> Can we avoid touching videodev2.h, as we did for the stateless codec pixfmts?
> 
> Thanks,
> Ezequiel
> 
>>>> @@ -762,6 +762,10 @@ struct v4l2_pix_format {
>>>>  #define V4L2_META_FMT_D4XX        v4l2_fourcc('D', '4', 'X', 'X') /* D4XX Payload Header metadata */
>>>>  #define V4L2_META_FMT_VIVID	  v4l2_fourcc('V', 'I', 'V', 'D') /* Vivid Metadata */
>>>>  
>>>> +/* Vendor specific - used for RK_ISP1 camera sub-system */
>>>> +#define V4L2_META_FMT_RK_ISP1_PARAMS	v4l2_fourcc('R', 'K', '1', 'P') /* Rockchip ISP1 params */
>>>> +#define V4L2_META_FMT_RK_ISP1_STAT_3A	v4l2_fourcc('R', 'K', '1', 'S') /* Rockchip ISP1 3A statistics */
>>>> +
>>>>  /* priv field value to indicates that subsequent fields are valid. */
>>>>  #define V4L2_PIX_FMT_PRIV_MAGIC		0xfeedcafe
>>>>  
>>>>
>>>
>>> Regards,
>>>
>>> 	Hans
>>>
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
