Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DAAA5455
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 12:49:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjMDSh/U5oHf47szxNlij35T/IWEYEG8PfSeDtkrLQs=; b=dNczM9sNTOy9kv
	/kEpPXEIWNZgBSMxWyp7nn+3UAVOARAWCIw+wKw9MfJ35lbviw3mfFOrpVXSoydLO9bg3bohE+CS5
	qRBrkd1+9SKJ3UOvDLbv4XDYjs7FGBDRqHnzK1L2qbf6OQS/rban1NzMuKzeqKGypnr5fv6QuDx3n
	CHewq68Aor9zP+wLt6ar+hLTEQbpF5hWSqMRMxJVslrPcxnVfWtEM3UqSW830TAdqL/GwGgyNFLdi
	XKTLifxmXZLiWmbI7F7xjGhchQ8c++d0krzkP6L5qTleDHiGsYAQlJa+QB3CyBdF4Eday8shBa9Ro
	Cjj3Q0vMhu9CG9Pz+Tmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4jtl-0007zR-Tz; Mon, 02 Sep 2019 10:49:26 +0000
Received: from mail-eopbgr150107.outbound.protection.outlook.com
 ([40.107.15.107] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4jtY-0007yy-5P
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 10:49:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fadFcP2lv/iIhg9YUftV1mxmCUQUgW2vzYAE2INVjTtC51M8Tdsyth3WNce8NdYFkSu8y4UVRedXWaz5CnsykOvNHzgY7/cAsz7ipTm/TWhro0j2meRpmxprKc/89dhZHiZeyyUYmqr+4WFoXI3XDEQR2D9OWH80HQ0OuhDFw/1lsXbLJrg7H3TvEUwXE3VtsLActEKOK1oxd/0n1bvS3t9BGsdDOe2klRAdpdPN2ouTOmyW9rytsdzlWb9mmxKOMeZRC10cVKDaA5VVD6Lyrt2lTHDKt1X+NAlnSh6l7VsXRzYdRdABAe8avue4O+k1CeiL5NDehKFmLLlMTTrF0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AEHqwOkfdWYakvkRhlL4rW+LV775fBYzJtkK33MbazM=;
 b=GQbz7oWUVyV90nQpKXMonfLEQvLr2fsTfpJ/BYf5D/qCrYsLkrp1Xc0+RJg2eMEIxIG2HcK/J9Bmy3YumLtskaR8W1+E/DHqfnPP76GtQmcfwAFB/HwxWGdBt50B6kzopbMtO20Nm1xlPQM4IdsbIgxbM3VpRadjYC5NCV4bnuCKL8QNVskcEEeKz8n9Ikf/aWxHBUxvbFCFHaakg/DqHjFJv9chLi7db0CmA9xKSsZTQTyiG5OJythyxTzcsp4QIOkbuFtE+RBD9hbeIhN0wc8rtpqkWqSaT7EANqQ6rMsGfrzxCLu+Nj/12WgCOMGYlHZk8J+qTkuHXDegd8jGvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AEHqwOkfdWYakvkRhlL4rW+LV775fBYzJtkK33MbazM=;
 b=S87ohxcqJxwFEdXTll/kY2fW4P5NYxBrZcek1CDk3NMr2Lq7Tkm8rlskSXtTkwxrHgc/sqocVPcYlz+LMRQ7BmAvY3BmQGPmWfIOlVKlI/bC9fklSPfmnYEbjtey/ipGCMZsRxFVYQ5OC637xMnm2dhoKQUlaW6yXFqM04sGydI=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3465.eurprd02.prod.outlook.com (52.134.65.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Mon, 2 Sep 2019 10:49:08 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::e12b:afcb:73e1:5d09]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::e12b:afcb:73e1:5d09%7]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 10:49:08 +0000
From: Peter Rosin <peda@axentia.se>
To: "Eugen.Hristev@microchip.com" <Eugen.Hristev@microchip.com>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "Ludovic.Desroches@microchip.com"
 <Ludovic.Desroches@microchip.com>, "linux-i2c@vger.kernel.org"
 <linux-i2c@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "pierre-yves.mordret@st.com"
 <pierre-yves.mordret@st.com>, "alexandre.belloni@bootlin.com"
 <alexandre.belloni@bootlin.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH v4 2/9] dt-bindings: i2c: add bindings for i2c analog and
 digital filter
Thread-Topic: [PATCH v4 2/9] dt-bindings: i2c: add bindings for i2c analog and
 digital filter
Thread-Index: AQHVYXbiXZEVScDXYk6rEHjvPF2S2qcYNSUA
Date: Mon, 2 Sep 2019 10:49:08 +0000
Message-ID: <9a9c209c-2fb8-0a4c-4e0a-b04fefda3360@axentia.se>
References: <1567418773-2427-1-git-send-email-eugen.hristev@microchip.com>
 <1567418773-2427-3-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1567418773-2427-3-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1P189CA0036.EURP189.PROD.OUTLOOK.COM (2603:10a6:7:53::49)
 To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3683aa3a-4e30-4d2b-5aeb-08d72f932e5b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB3PR0202MB3465; 
x-ms-traffictypediagnostic: DB3PR0202MB3465:
x-microsoft-antispam-prvs: <DB3PR0202MB346530A8A4D110DC0A33A7FCBCBE0@DB3PR0202MB3465.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01480965DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(136003)(39830400003)(346002)(396003)(199004)(189003)(36756003)(229853002)(6436002)(4326008)(66946007)(8936002)(26005)(99286004)(76176011)(110136005)(3846002)(316002)(66476007)(66556008)(64756008)(6246003)(58126008)(81166006)(81156014)(53936002)(8676002)(66446008)(52116002)(6486002)(6116002)(31686004)(5660300002)(186003)(25786009)(486006)(71190400001)(2201001)(446003)(31696002)(86362001)(508600001)(7416002)(14454004)(2501003)(66066001)(65956001)(53546011)(6506007)(2906002)(6512007)(386003)(7736002)(305945005)(256004)(2616005)(476003)(65806001)(11346002)(71200400001)(102836004)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3465;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Uv/WU99Ao7JFJRV6IBepgQpMYWEuzHNRfSfgh+5Rv3772GkC80k2XJ3rJA9CQe9Kap9M3XUOCudHsD+j9Fg5n7eDgJ+cVzWKLb8zCiiYPRwGwO8dnifBxyoGlJ83vbRHJ4XYr2O+vHOMP1da0vd1OBDZTnFopIeu7CklxmdV6SrUYo/jaqljYdBupN5mDUuxbPqvIHn12LNcRRAMt5n6kLJFs76yEEv5y8yKtZv8hLERpggbhexZoYJFX2jvcr/8YDB0ftPlp7UGX6NUxfMnDlVNNpZqUjFru9OHr5BOqzM1S9dn0VV9egJLoSmvw3prdxSkFhoRHxGttODlEiBl8ImCVfQhQmRHRIpZ0U/b6kf3/sto46EB5pPURlfLvK7+af5/AxM4MclAsOEOk+lZxhSGp3eRR1IQccryOIrJ00k=
x-ms-exchange-transport-forked: True
Content-ID: <AC53F3D2C1E25D428E0625D4871D40DB@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 3683aa3a-4e30-4d2b-5aeb-08d72f932e5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 10:49:08.2390 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NJy+7E1ZYmMSbjWjBYFQeoVhMRWWpyDFTQyfPFgr1oT0gSZxkH5lhfABPoIr1BcR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3465
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_034912_209404_8C0FA597 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-02 12:12, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Some i2c controllers have a built-in digital or analog filter.
> This is specifically required depending on the hardware PCB/board.
> Some controllers also allow specifying the maximum width of the
> spikes that can be filtered. The width length can be specified in nanoseconds.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c.txt | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c.txt b/Documentation/devicetree/bindings/i2c/i2c.txt
> index 44efafd..8dbff67 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c.txt
> @@ -55,6 +55,17 @@ wants to support one of the below features, it should adapt the bindings below.
>  	Number of nanoseconds the SDA signal takes to fall; t(f) in the I2C
>  	specification.
>  
> +- i2c-analog-filter
> +	Enable analog filter for i2c lines.
> +
> +- i2c-digital-filter
> +	Enable digital filter for i2c lines.
> +
> +- i2c-filter-width-ns
> +	Width of spikes which can be filtered by either digital or analog
> +	filters (i2c-analog-filtr or i2c-digital-filtr). This width is specified

filtr -> filter (two instances)

What if you want/need to have different bandwidth for the digital and analog
filters? After all, this is a generic binding...

Cheers,
Peter

> +	in nanoseconds.
> +
>  - interrupts
>  	interrupts used by the device.
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
