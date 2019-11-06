Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C464F15FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 13:23:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agUpQpirur3ou/jVLCGDJitVVvRk62JxRd+jXV0/wi0=; b=jgbtRmT/lYAJiP
	Hy3E06K8PWRVhvdu29eN+xSTdrtvbzy8yjDaTFuueqlRPaybYbD6g3MFA/IZ+byCiinpxq6gbQzrm
	7eg0bncCB1yhz9TADbymaA+G3OMfHrA+OrshI+GDz+BVxDJX6vWOI4B0g9rwGW4VOLUQmR1ckMcjk
	JtUzPLNhdbEmK6ADn0IOW/YyKJFgaFX4ptvf9k2btHK2gwgNx4bdjee+ZVaOzTx/WUpa8aQ7soHQB
	Q3bFi8SPZoUIZhQ5ndHArUPGhk9gaQs+Cl1Rq1ttVEWg1SY2ef3wRq+QGUR5IcRLRhStfSY4N8pnl
	8eru4zlDpKAOOb4pQ3tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSKL9-0003rK-5s; Wed, 06 Nov 2019 12:23:11 +0000
Received: from alln-iport-6.cisco.com ([173.37.142.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSKL1-0003qY-J5; Wed, 06 Nov 2019 12:23:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=3552; q=dns/txt; s=iport;
 t=1573042983; x=1574252583;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=VVrK51hRZI55odG7ZNnZp9l6jxMaGxztVQSHMnIAb8Q=;
 b=HsfRlZWOfsBs1FwPpdbVTnBtiW22uQN/gxBs1uKNOBjSwZ59//LZvQPR
 yYdaR0qKi9YNMlhh6a2N85tEQBH1NUkWDu2GafaqMvfgiswtJsd2LnwEu
 107M1h5Yl1WBbUWY3eA5j40xonMN6mNGFizgEvEsBlHGOf9uGdYQGp6Ni s=;
IronPort-PHdr: =?us-ascii?q?9a23=3A+sfjExCL6egwExSTJkD4UyQJPHJ1sqjoPgMT9p?=
 =?us-ascii?q?ssgq5PdaLm5Zn5IUjD/qs03kTRU9Dd7PRJw6rNvqbsVHZIwK7JsWtKMfkuHw?=
 =?us-ascii?q?QAld1QmgUhBMCfDkiuLPfsdDI3BsdqX15+9Hb9Ok9QS47z?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0B4AQDcucJd/4kNJK1mGgEBAQEBAQE?=
 =?us-ascii?q?BAQMBAQEBEQEBAQICAQEBAYF+gUtQBYFEIAQLKgqEH4NGA4p+ToFrJZd+glI?=
 =?us-ascii?q?DVAkBAQEMAQEtAgEBhEACF4N3JDgTAgMLAQEEAQEBAgEFBG2FNwyFUQEBAQE?=
 =?us-ascii?q?CARIRBA0MAQE3AQ8CAQgVAwICJgICAjAVEAIEAQwBBQIBAR6DAIJHAw4gAaY?=
 =?us-ascii?q?eAoE4iGB1fzOCfgEBBYUIGIIXCYEOKIwUGIFAP4E4DIJfPoRcgnmCXo1RgX0?=
 =?us-ascii?q?3nX8KgiSVNgYbmWyOQ5lkAgQCBAUCDgEBBYFpIoFYcBWDJ1ARFIMGDBcVgzu?=
 =?us-ascii?q?KU3SBKI9TAYEOAQE?=
X-IronPort-AV: E=Sophos;i="5.68,274,1569283200"; d="scan'208";a="373985871"
Received: from alln-core-4.cisco.com ([173.36.13.137])
 by alln-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 06 Nov 2019 12:23:01 +0000
Received: from XCH-RCD-016.cisco.com (xch-rcd-016.cisco.com [173.37.102.26])
 by alln-core-4.cisco.com (8.15.2/8.15.2) with ESMTPS id xA6CN1km019096
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Wed, 6 Nov 2019 12:23:01 GMT
Received: from xhs-aln-002.cisco.com (173.37.135.119) by XCH-RCD-016.cisco.com
 (173.37.102.26) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 6 Nov 2019 06:23:00 -0600
Received: from xhs-aln-002.cisco.com (173.37.135.119) by xhs-aln-002.cisco.com
 (173.37.135.119) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 6 Nov 2019 06:22:59 -0600
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-002.cisco.com (173.37.135.119) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Wed, 6 Nov 2019 06:22:59 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ILbKp2Ug3a9k8goVAGqb+/tB/NVHPRtrsS1RFdKtCeRc0u50qNb6bT3WRYUjbAubiuuAQL4Pg7+taiyin0/A6/BBP/FasPY+LvmaDRq9DSQBMHOS9vVn7Yguu6G6G7NflGnAc1EfZ3k812tIgbfcwJu46Sz3SEzQg1ciLJmzWLGWyLuuOTvpQNGOYIwUZtXv/mqItt2kybIzx16M8fepYWwB0GQ61rLipkusFIZ1Ys48xbkLPaQWaiqMKBXrjX3b8ghb8l/8cNpSCqWdxnYuZTfRwDWaukljmFigea+zKQ0Ac4QEPvJSHX/1Zc8FJbKuZwnPdmXwvklDZPxIImImFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VVrK51hRZI55odG7ZNnZp9l6jxMaGxztVQSHMnIAb8Q=;
 b=R4iZ8UIVTLcK9iy4uIlPIQJBZ48OOfGXIqdTNGh3pXscu+fBMiAGtdGkXwkeGzU4UISddYONeialV1fB+N+fi2TFL5LEelCq5v257DAxSSVOkgZ3Wv42Ta2DdUzaOBdzXeTlno7W/FS/SRZz6jeFPiCJA6MiSUnVceqHjw411veJL+xRUPuAIuFAXlqXe1tJ8drvEP7XCJ5qqjyhtzs4q0JrGPxz1l1UHuzRQmmA6mPM5/giTTls6+i1Vni6tpawZ4+KMXqiHyr5vq5MzppfedhExB4/9uR24c7mLYZy9r8THXqix1DRjdurBTABF7uPHEW6UcoFzOX2oXm0MMDfVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VVrK51hRZI55odG7ZNnZp9l6jxMaGxztVQSHMnIAb8Q=;
 b=kVuElGIEXC2Z1KhawW0z8nOID1uKBRNfJbiap34MY9MrUt064AvcUxhSDjo7FnDFo36U6HmotLdrPjRTgRoJVA45qh8eL1TDPu/jR0prLc3MZyxfJ0nAiSn2/208ooRSrd62sZhX2f6gHrbL85Z8dNLIMFAdgmIN/9CguNyT/fY=
Received: from MWHPR11MB0062.namprd11.prod.outlook.com (10.164.204.34) by
 MWHPR11MB0078.namprd11.prod.outlook.com (10.164.204.38) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Wed, 6 Nov 2019 12:22:50 +0000
Received: from MWHPR11MB0062.namprd11.prod.outlook.com
 ([fe80::915:6397:4683:34e0]) by MWHPR11MB0062.namprd11.prod.outlook.com
 ([fe80::915:6397:4683:34e0%3]) with mapi id 15.20.2408.024; Wed, 6 Nov 2019
 12:22:50 +0000
From: "Hans Verkuil (hansverk)" <hansverk@cisco.com>
To: Helen Koike <helen.koike@collabora.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v9 1/4] media: videodev2.h, v4l2-ioctl: add rkisp1 meta
 buffer format
Thread-Topic: [PATCH v9 1/4] media: videodev2.h, v4l2-ioctl: add rkisp1 meta
 buffer format
Thread-Index: AQHVlJoMoe3KhuzWQE6zp8GXlxAXY6d+EJqA
Date: Wed, 6 Nov 2019 12:22:50 +0000
Message-ID: <9102bcf8-0279-7972-daff-b15aaf98804d@cisco.com>
References: <20191106120132.6876-1-helen.koike@collabora.com>
 <20191106120132.6876-2-helen.koike@collabora.com>
In-Reply-To: <20191106120132.6876-2-helen.koike@collabora.com>
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
x-ms-office365-filtering-correlation-id: 08f653a5-e61c-45fd-71b3-08d762b40aad
x-ms-traffictypediagnostic: MWHPR11MB0078:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB0078EB299800129990D08E13DE790@MWHPR11MB0078.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(396003)(366004)(346002)(199004)(189003)(31686004)(229853002)(91956017)(66556008)(99286004)(256004)(8936002)(8676002)(6246003)(3846002)(6486002)(2906002)(25786009)(71200400001)(7416002)(71190400001)(81156014)(81166006)(305945005)(4326008)(31696002)(7736002)(6436002)(66446008)(76116006)(5660300002)(65806001)(66066001)(65956001)(86362001)(6116002)(6512007)(58126008)(102836004)(64756008)(53546011)(446003)(6506007)(36756003)(486006)(14454004)(11346002)(476003)(2616005)(66476007)(54906003)(186003)(110136005)(2501003)(316002)(76176011)(26005)(66946007)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB0078;
 H:MWHPR11MB0062.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r1HC8zt3SUj+w6AqAeGP8YVzEnJTRpdq9KqpVi7UhUcwOm+PzSioqgGQoG7EPZTHynGL+d4qkfFHDwjD8KUDBqyjp2kxSf0YkHdN9PYq3tGDjh07Va1jHr0DuXMFfn/XMI7dSYtoHnvrs0FTa28agalLoD3VxRYnE5VXPHaJNBRBH1QKbO+FPsgB3fKZdJoUmeb6KrwwfQNllO6pg9Ck3yUiHjiv3BsEnNUQdIYRgw1xG6DKKo9SRMZzTRMUuUR8psrOFt8ov/Jl1QjF2evsFvfQEVZeHadwiUlEGpsRR7H92/n7Fb8u/JLAMOQf7uFdfF17srtjq6RdrwgIcnIirNxUxwaAYxr548jzQ0IsqByZsAXA8FNVSj6OYBpHde68Rqct8oPFwC15Ylubozen7XG51rgB56ueOSgEeRT7CXAyQrYYTVz0xOijIYceCNCl
Content-ID: <E779B3FBDFE14F408BAD826C04919BF8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 08f653a5-e61c-45fd-71b3-08d762b40aad
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 12:22:50.7979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jKR78HJF4GMbv34W5zu2G8i1HMfat/MuvMpBcnlpoY1rqLWMGEfPNNhQFEnEp3Kt/IebRFuXehsYCAO8hAMWtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0078
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.26, xch-rcd-016.cisco.com
X-Outbound-Node: alln-core-4.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_042303_763127_30995A77 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.142.93 listed in list.dnswl.org]
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
 Jacob Chen <jacob2.chen@rock-chips.com>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>,
 "sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>,
 "zhengsq@rock-chips.com" <zhengsq@rock-chips.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "ezequiel@collabora.com" <ezequiel@collabora.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/6/19 1:01 PM, Helen Koike wrote:
> From: Shunqian Zheng <zhengsq@rock-chips.com>
> 
> Add the Rockchip ISP1 specific processing parameter format
> V4L2_META_FMT_RK_ISP1_PARAMS and metadata format
> V4L2_META_FMT_RK_ISP1_STAT_3A for 3A.
> 
> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
> Acked-by: Hans Verkuil <hans.verkuil@cisco.com>

I acked this? It is missing documentation for these new formats.

> [refactored for upstream]
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> ---
> 
> Changes in v9:
> - Add reviewed-by tag from Laurent
> 
> Changes in v8: None
> Changes in v7:
> - s/IPU3/RK_ISP1
> 
>  drivers/media/v4l2-core/v4l2-ioctl.c | 2 ++
>  include/uapi/linux/videodev2.h       | 4 ++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
> index 315ac12c3e0a..ade990554caf 100644
> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
> @@ -1341,6 +1341,8 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
>  	case V4L2_META_FMT_UVC:		descr = "UVC Payload Header Metadata"; break;
>  	case V4L2_META_FMT_D4XX:	descr = "Intel D4xx UVC Metadata"; break;
>  	case V4L2_META_FMT_VIVID:       descr = "Vivid Metadata"; break;
> +	case V4L2_META_FMT_RK_ISP1_PARAMS:	descr = "Rockchip ISP1 3A params"; break;

params -> Params

> +	case V4L2_META_FMT_RK_ISP1_STAT_3A:	descr = "Rockchip ISP1 3A statistics"; break;

statistics -> Statistics

>  
>  	default:
>  		/* Compressed formats */
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> index f98bbcced8ff..56798b09cd85 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -762,6 +762,10 @@ struct v4l2_pix_format {
>  #define V4L2_META_FMT_D4XX        v4l2_fourcc('D', '4', 'X', 'X') /* D4XX Payload Header metadata */
>  #define V4L2_META_FMT_VIVID	  v4l2_fourcc('V', 'I', 'V', 'D') /* Vivid Metadata */
>  
> +/* Vendor specific - used for RK_ISP1 camera sub-system */
> +#define V4L2_META_FMT_RK_ISP1_PARAMS	v4l2_fourcc('R', 'K', '1', 'P') /* Rockchip ISP1 params */
> +#define V4L2_META_FMT_RK_ISP1_STAT_3A	v4l2_fourcc('R', 'K', '1', 'S') /* Rockchip ISP1 3A statistics */
> +
>  /* priv field value to indicates that subsequent fields are valid. */
>  #define V4L2_PIX_FMT_PRIV_MAGIC		0xfeedcafe
>  
> 

Regards,

	Hans
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
