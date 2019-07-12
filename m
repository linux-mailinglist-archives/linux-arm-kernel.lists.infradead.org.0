Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 922DE66303
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 02:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFtjrEBxQb3WV9sXrSuJlO9okUf7GDZQ4e/vk4Ackh4=; b=ZdoZ/STTBJDfKB
	xYg7K81GLlGSXpCC8CldBpixjNcKOtZ12INUmHD43rX8JEyZtuRt9j7IzdKtDzrhH+ME0ISkL4l6M
	K044D68tg/jDorf6irBn2hCZyyf9iMkc68az+B0VLKM9k4Tqno0fLBRw+Gh8Ou9DVmMjRijETHt5r
	ksxnjMwh5kICZ4kF/apVUKkfbjJk4+bP1CVy8vdXKV3hjK9lVBX+fMCXuta3B36vXuXhxs9QSQJvY
	yQpgaA5I4cy3KptldHI0Osop1Fry5PSp1YsD1fbbl41h2bRfuzd7n8SVQrtXf5VZSIV9Q5E6GPdRH
	UbA9RgVxwJU2FqH6m1lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljg6-0008LG-Jm; Fri, 12 Jul 2019 00:44:46 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljf8-0008KX-Vt
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 00:43:48 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6C0eYH7021338; Thu, 11 Jul 2019 17:43:30 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=0EtX6uQxwE7e5ob2Pb8Jj0K70diywqACjMKCH4HU6G8=;
 b=mKWF9upOcoASx/8wumj7bxVT2juMtfOBNClT9jg5Sno1ofB8N8O0lIeheiTipE9w1fIL
 YWemP/3m2ilr3QwZMzLz4n5WPq1NMaLAPFkBNQdstZCtXIZ9+PUmHsIcKOT1iqm0yZUV
 oyocdbRoyQprtUaCEA4AKW936WUBj7K1y6ba52+Lbveuq2V7BJotE5FNFVTx2aE9fy9l
 TvLNk0aQXLK2RJ8rtlb6xkau8PC932tzIewySLBpdHsJT6qbKsgnKa10us34T/x6ltH+
 nxK8TmwL+ifdOad4tI+4rdqRlsVNIIBj61ufNd7A6OaCblO4BPYuUr5hahHV0Tn/g+EW 5g== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0a-0016f401.pphosted.com with ESMTP id 2tpf1f85hm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 11 Jul 2019 17:43:30 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Thu, 11 Jul
 2019 17:43:29 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (104.47.33.57) by
 SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 11 Jul 2019 17:43:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ESd2lan28EdDJCozYtuRULYKjRL4vCcYahC09YWja/YYkoLj6iH1H4EFpsZF4bF/jXjMGRWfgan9AN8oT/eUu23pXXpgj9wc/JayMtuzcrVt+cPDlmvvrPIto3g6kSO/tI924ZzeA+cCYQdRhkA4R75qnEOkM36i9DW0OuM+x0AKtiLOM2iog9oTWQH0Jkhs0Vgo1IIyn6jRlNDxCceqVAhtnMIe/Z1ovV3uDOH3Xt3R0M3Ri+Xn4Wb0IQRE0l4pWcZvO7Hh9ORtCe9Hsd9pxLKEJlfQ96CZyaLVGjuPszMrBlH8SXgQl0iCy6WuMEeMDZoT1eJb59mjvajO/7YSbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0EtX6uQxwE7e5ob2Pb8Jj0K70diywqACjMKCH4HU6G8=;
 b=QKIhan9RgU+dBkCkewa3BF2AxECkVwgpO59qqQR+mWq0UKSlaY6NdM689likoCnIa5n2bsntEx9sedMluBYjM2c3e1ZdanGL0Ndxmgub91M6iLq2QBeHkGfmNkccoDDfhOUmHT+8GuYUgdf+XOJ+jL20WnizVH/hzMNW0AtUkxMOOipD1KKmH0Gl3uvTEWooPqkfQsCBDzCih9XNgKNnjDwS83d4FzXBiH8CF6VhqxQCy0+jGpDMJpU6qBw1lU4fBt8Q414v3GzRPcwtg7W7azGEJs/szKfv0XuXt1wJeN0lAXLugokz0GBWe8XlHb5oTEi1rQhSAr7Ptwjy5uQtzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=marvell.com;dmarc=pass action=none
 header.from=marvell.com;dkim=pass header.d=marvell.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0EtX6uQxwE7e5ob2Pb8Jj0K70diywqACjMKCH4HU6G8=;
 b=xSvOGSzzKxk5ufgCsDroO7Un4VqdMPK7b4cNJIzym8mFjIu7Ou/uIpBjljS6AHXgZLEjzuWQepXj4K8n82lMQ+PkK2xrpQG602G3k9BWQy3uaAqcls0opZOnKH6vpnqKFaSBqgzeWzNyn/DA5cFjgec9rf9o+96j/nPsOnIVNMs=
Received: from BYAPR18MB3080.namprd18.prod.outlook.com (20.179.59.76) by
 BYAPR18MB2662.namprd18.prod.outlook.com (20.179.94.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.10; Fri, 12 Jul 2019 00:43:27 +0000
Received: from BYAPR18MB3080.namprd18.prod.outlook.com
 ([fe80::b44e:d408:2c2f:17d1]) by BYAPR18MB3080.namprd18.prod.outlook.com
 ([fe80::b44e:d408:2c2f:17d1%4]) with mapi id 15.20.2073.008; Fri, 12 Jul 2019
 00:43:26 +0000
From: Roy Franz <rfranz@marvell.com>
To: Linus Walleij <linus.walleij@linaro.org>, Russell King
 <linux@arm.linux.org.uk>
Subject: Re: [EXT] [PATCH 2/2] ARM: boot: Replace open-coded nop with macro
Thread-Topic: [EXT] [PATCH 2/2] ARM: boot: Replace open-coded nop with macro
Thread-Index: AQHVNlaxrUW3TSQ/ZEyYb3YJNDNcGabGKOgA
Date: Fri, 12 Jul 2019 00:43:26 +0000
Message-ID: <05fe11e5-39a7-1c05-ad5c-51c4ced9efa0@marvell.com>
References: <20190709130301.1916-1-linus.walleij@linaro.org>
 <20190709130301.1916-2-linus.walleij@linaro.org>
In-Reply-To: <20190709130301.1916-2-linus.walleij@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR02CA0049.namprd02.prod.outlook.com
 (2603:10b6:a03:54::26) To BYAPR18MB3080.namprd18.prod.outlook.com
 (2603:10b6:a03:10f::12)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2a1496a1-c0ba-4a25-0709-08d70661f387
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR18MB2662; 
x-ms-traffictypediagnostic: BYAPR18MB2662:
x-microsoft-antispam-prvs: <BYAPR18MB26622A5647FE8B96B22A1094CBF20@BYAPR18MB2662.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 00963989E5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(376002)(136003)(396003)(39860400002)(199004)(189003)(4326008)(36756003)(5660300002)(6436002)(86362001)(53936002)(6246003)(54906003)(6486002)(68736007)(6512007)(478600001)(486006)(31696002)(71200400001)(71190400001)(66066001)(110136005)(99286004)(31686004)(316002)(14454004)(25786009)(14444005)(102836004)(11346002)(2906002)(8676002)(446003)(476003)(186003)(2616005)(305945005)(3846002)(6116002)(26005)(7736002)(52116002)(76176011)(66556008)(386003)(66446008)(64756008)(66476007)(6506007)(66946007)(53546011)(229853002)(8936002)(81156014)(81166006)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2662;
 H:BYAPR18MB3080.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BfxcWuabV0tTfZpaTtkE0bb9B/i6oTLSxhODYotoqH6/F2LNGucLYD3Osu4ZTRPd8FfjCnttPz5NT9ZecXYJnTQXWvrn/POYbBU2JBK4s0pfaZJch9/Ga54myijvwZqqA7V3HV4uLBMjj5gE8+xPAoxr52WshroT8imT/bhBpdujuttWwSc+1oefXps1qS96XpGGnHWv2Eo7uLIV0oZV+6Lc//4EyWPdsdFVyV7IeMl3eB3gmkvkvFRbChvFmydeB2J4K/n8EuUBAJyYGJ4GBHrsU4EmJdm237OjNC+g1jC0h9VUemC5fkQseSElOkq43WsZP7kX9mQHqiyBxPhoaKFE9PVLbsjpzhRmTR2lbRmlLFWVv61KvVyWQjIiBCCzoW8vW9nfzMP+xbeGxSYkKGR/kK2XI8Rk4DkKoMyGOEo=
Content-ID: <6B49A3FF2888AE47B263CA9208773D31@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a1496a1-c0ba-4a25-0709-08d70661f387
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2019 00:43:26.6210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rfranz@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2662
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-11_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_174347_226424_8739A1EE 
X-CRM114-Status: GOOD (  20.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Roy Franz <roy.franz@cavium.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 7/9/19 6:03 AM, Linus Walleij wrote:
> External Email
> 
> ----------------------------------------------------------------------
> This open-coded nop as mov r0, r0 is a development history
> artifact.
> 
> First commit b11fe38883d1
> ("ARM: 6663/1: make Thumb2 kernel entry point more similar
> to the ARM one") moved the code around so that the nops
> would come before the conditional thumb instructions, as it
> turned out that some boot loaders were patching the initial
> nop instructions in the kernel. At this point it is clear
> that all mov r0,r0 are open-coded nops.
> 
> Then commit 81a0bc39ea19 ("ARM: add UEFI stub support")
> moved things around and defined __nop for EFI support and
> missed this open-coded nop.
> 
> commit 06a4b6d009a1
> ("ARM: 8677/1: boot/compressed: fix decompressor header
> layout for v7-M") makes all invocations of __nop be wide,
> but that is fine, because this is what we want: the
> mov r0,r0 is inside ifndef CONFIG_THUMB2_KERNEL.
> 
> Cc: Nicolas Pitre <nico@fluxnic.net>
> Cc: Roy Franz <roy.franz@cavium.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

For both patches
Acked-by: Roy Franz <rfranz@marvell.com>

> ---
>   arch/arm/boot/compressed/head.S | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index 544450c90673..93dffed0ac6e 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -169,7 +169,7 @@ start:
>   		__nop
>   		.endr
>   #ifndef CONFIG_THUMB2_KERNEL
> -		mov	r0, r0
> +		__nop
>   #else
>    AR_CLASS(	sub	pc, pc, #3	)	@ A/R: switch to Thumb2 mode
>     M_CLASS(	nop.w			)	@ M: already in Thumb2 mode
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
