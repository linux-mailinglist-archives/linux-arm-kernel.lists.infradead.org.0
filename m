Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C521090A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 16:03:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/bxms3pFhYvH26YSGGj9SMQ/0p++Jsalnro7iHCkNU=; b=dNqjREbkpV871N
	hE/bdSJLpAXgMTfHsFoZBEth0EkC+A/q0JV4Gu1gKiCaxtZbTaYZ5aalkQzkYUC+fdCCi8PgJbcdY
	AKa7dtgRF1zD8hxal/FZJ+znqH01lxO4YSRfWE+8uHXjWZOCeNq1+ZnGpZPQTjaRF9s8xanHtYpwB
	zon2z8yew6BkCxiivfvHMFg8GiPNzv5UBQrNeMnzSPR2aUmCF0io/c6mXFXWfzqG3n9SVXb60QBZp
	RSFIbKgAiF5X4Ok782C23unnGu9be3kEx6JeFBuVfspVqJxMFoP/SOPd0gTTJuqvCjtz6K8QnefwF
	+rMzLtvf3uI6CE07OYqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZFu6-0004qG-R3; Mon, 25 Nov 2019 15:03:54 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZFtx-0004pQ-44
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 15:03:47 +0000
Received: from pps.filterd (m0167090.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAPEw0Ci029668; Mon, 25 Nov 2019 10:03:37 -0500
Received: from nam04-bn3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2054.outbound.protection.outlook.com [104.47.46.54])
 by mx0b-00128a01.pphosted.com with ESMTP id 2wf298d3u8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 Nov 2019 10:03:36 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kgAh/DilbgDTv0IbJa5odwCZBa/J3rGGcRd8nP36Jc3kSf0l7zV+zPcMAz6UONeQkku6SWrhfocJtx5TfW3htOZlwZayzT09XIM/hOyEQCaQX9VM92qVZLk8d334hbDDl3+c1WE7AxHygex6J23IR8xvBWFbgAKl31KbmttqVZ/b6CBZ6+R/wl7MWmwNivXF2wQa2BPJrLyiRYOISYsIEJXguTYFxNun3mrfHwUmfox0959Fw7oQJbJ8AR5tOc4SCHEqRo0w6BVpgbzB2FVaTTLdy5EHh8u844kTJOztlyutr/pBS3LUsCrZ/fi1ZcGze6cdQFfSB/ESMH4Bp+zrKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kRUxM0EfOVR7wwOWF3tg/X40jdfwYJsQV87JJZUeZ1s=;
 b=g0Qslrz3ZG4ZocTEOg5BBI1c/iOjOUOHr9ThG0GvplHlO5gp7uBAzuPJGpfet0oMPfCI4AATR5iTDCI7PzXMPB573GyWTVMmmRPqKg1W+iqMVYG3w5tbyxGI5wl20fRr7YlBipxjc/XaFxqiVIPtboBVhlAiLHWH9AxXkJ0Z4gRO4voFU6FrW71/wIwgOtAaDObg9givXpwiD+jBML49dkho0iQgrEyP2DPAfq4OxfLdFQmHxWgSsXjqzpwZNmW7M5RLMEClnzrf29ogGIrpVwR2Km8nLZfiPbrntrncOCGn7wN9aH+qlSCeQ85sID1k63EDuw1Dq/cvEvAQiNhqOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kRUxM0EfOVR7wwOWF3tg/X40jdfwYJsQV87JJZUeZ1s=;
 b=kt/z7857SRsue0bCYOPm7KqsJ+aIYA+obLY67LsAhko4HrwP75yF3WhW75MmFPQMZefSmRrzGMD+Br6OfD2jv3tRBPqq6Ab9qRMQ9tCUHsEBdIE7Ws+kXmUBzHeDSDfuTNb8K6OEfZM6PgyfS7B4pL5x6for5iJljLfzLMlgj1A=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (20.180.12.152) by
 CH2PR03MB5238.namprd03.prod.outlook.com (20.180.4.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Mon, 25 Nov 2019 15:03:31 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c%5]) with mapi id 15.20.2474.023; Mon, 25 Nov 2019
 15:03:31 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>
Subject: Re: [PATCH] iio: at91-sama5d2_adc: fix
 iio_triggered_buffer_{predisable,postenable} positions
Thread-Topic: [PATCH] iio: at91-sama5d2_adc: fix
 iio_triggered_buffer_{predisable,postenable} positions
Thread-Index: AQHViXtdnDhd99DyyUetPzMU9xg88KecMFeA
Date: Mon, 25 Nov 2019 15:03:31 +0000
Message-ID: <17cf55869cc418795d0013c0594ed8fc04381d46.camel@analog.com>
References: <20191023082508.17583-1-alexandru.ardelean@analog.com>
In-Reply-To: <20191023082508.17583-1-alexandru.ardelean@analog.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 774486ee-758c-4ad5-bc9e-08d771b8a294
x-ms-traffictypediagnostic: CH2PR03MB5238:
x-microsoft-antispam-prvs: <CH2PR03MB52380369555275BC5F1AA914F94A0@CH2PR03MB5238.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(396003)(376002)(136003)(346002)(199004)(189003)(66066001)(4001150100001)(118296001)(8936002)(256004)(5024004)(99286004)(2501003)(6246003)(76176011)(81156014)(81166006)(8676002)(14444005)(186003)(71190400001)(71200400001)(76116006)(66476007)(66556008)(64756008)(66446008)(66946007)(5660300002)(2616005)(11346002)(446003)(6486002)(6436002)(229853002)(7736002)(305945005)(2201001)(6512007)(86362001)(7416002)(4326008)(6116002)(3846002)(2906002)(36756003)(25786009)(14454004)(478600001)(54906003)(26005)(316002)(110136005)(6506007)(102836004)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5238;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: prOIt+dwUt58s7NC3h82yHRy9sjV3ZpU1R+oq2taOnKTyZfLxTvAnh/4zVxTZ9BN3COa7KKe3O7ziBs03XrZcmhdsKZf1pk9KfiZ2rhno+42V7Mb6bysMopDIjKp6ECece2gk4wSjS9mMNPT9h3Mqwji0nUCDtJUHTmWej0zR/X6Xvea4TS+b0YisBNBjWPKkbmiz0BVQw5Z9MOHvAS8niF63+1KllXH6Ziuhq8NEl4VTx8w9DET8Z1zdi9o5Jq25jZqQ8vvwJgdj7REcIQ20YTnGVYqEXoS8UkeXuZIGIayojHJAdrUFijmoDnxb8dWu+Z4KSEjnu9L+5YfnsRTrwEMhJh56LKOsAziTzDch9ZJYHiaN0CF+mibodih5l94/oqagCNPPX2BnJs3i05xkrmEs5QVq4/N4sTgNy313OZ+SHVi6WkEKXoX24mOtv+i
x-ms-exchange-transport-forked: True
Content-ID: <BA1921FE4FB9EC479299DF4E227B7227@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 774486ee-758c-4ad5-bc9e-08d771b8a294
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 15:03:31.0637 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PoeNlQ5RqwAk/x3dq860wWJusZXggq8uD+I13Fibjl/dTwl93QRPfIoXwhVDQz/U4iidIUeTe9OhKyeocy4EYdj0yBYWLdY/VbV3OldlRU0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5238
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-25_03:2019-11-21,2019-11-25 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0 mlxscore=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1911250136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_070345_337667_E84E644D 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.139.77 listed in list.dnswl.org]
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "lars@metafoo.de" <lars@metafoo.de>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-10-23 at 11:25 +0300, Alexandru Ardelean wrote:
> The iio_triggered_buffer_{predisable,postenable} functions attach/detach
> poll functions.
> 
> The iio_triggered_buffer_postenable() should be called first to attach
> the
> poll function, and then the driver can init the data to be triggered.
> 
> Similarly, iio_triggered_buffer_predisable() should be called last to
> first
> disable the data (to be triggered) and then the poll function should be
> detached.
> 
> For this driver, the predisable & postenable hooks are also need to take
> into consideration the touchscreen, so the hooks need to be put in places
> that avoid the code for that cares about it.
> 

ping here

> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> ---
>  drivers/iio/adc/at91-sama5d2_adc.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-
> sama5d2_adc.c
> index e1850f3d5cf3..ac3e5c4c9840 100644
> --- a/drivers/iio/adc/at91-sama5d2_adc.c
> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> @@ -889,20 +889,24 @@ static int at91_adc_buffer_postenable(struct
> iio_dev *indio_dev)
>  	if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
>  		return -EINVAL;
>  
> +	ret = iio_triggered_buffer_postenable(indio_dev);
> +	if (ret)
> +		return ret;
> +
>  	/* we continue with the triggered buffer */
>  	ret = at91_adc_dma_start(indio_dev);
>  	if (ret) {
>  		dev_err(&indio_dev->dev, "buffer postenable failed\n");
> +		iio_triggered_buffer_predisable(indio_dev);
>  		return ret;
>  	}
>  
> -	return iio_triggered_buffer_postenable(indio_dev);
> +	return 0;
>  }
>  
>  static int at91_adc_buffer_predisable(struct iio_dev *indio_dev)
>  {
>  	struct at91_adc_state *st = iio_priv(indio_dev);
> -	int ret;
>  	u8 bit;
>  
>  	/* check if we are disabling triggered buffer or the touchscreen */
> @@ -916,13 +920,8 @@ static int at91_adc_buffer_predisable(struct iio_dev
> *indio_dev)
>  	if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
>  		return -EINVAL;
>  
> -	/* continue with the triggered buffer */
> -	ret = iio_triggered_buffer_predisable(indio_dev);
> -	if (ret < 0)
> -		dev_err(&indio_dev->dev, "buffer predisable failed\n");
> -
>  	if (!st->dma_st.dma_chan)
> -		return ret;
> +		goto out;
>  
>  	/* if we are using DMA we must clear registers and end DMA */
>  	dmaengine_terminate_sync(st->dma_st.dma_chan);
> @@ -949,7 +948,9 @@ static int at91_adc_buffer_predisable(struct iio_dev
> *indio_dev)
>  
>  	/* read overflow register to clear possible overflow status */
>  	at91_adc_readl(st, AT91_SAMA5D2_OVER);
> -	return ret;
> +
> +out:
> +	return iio_triggered_buffer_predisable(indio_dev);
>  }
>  
>  static const struct iio_buffer_setup_ops at91_buffer_setup_ops = {
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
