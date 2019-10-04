Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 103B3CB76E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 11:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITdfYAFMt/fQqW+93vKRz+pA/rw7bLGaIPwTt8aatAo=; b=HfYP9Mw1gHDfkw
	PrhEBcFAepHDbL5RxnLqXACFvxdtykBmYaoXMJJjA9oTmnHmDgTbxWqGinKmc5mPq6VOTJ13bv2YJ
	+DFuz1D+nh31IGk9qmf9IDFHfHXoPKQ/3zn/lNJJreQM6YLmZMV51fJzyOwi4BAi2brRgI0eq5Ola
	7qacHq6XAPidKcUDmSxGXUjaafSzLoilF4hsltw8bHOc3duE/gxF+hOHBVFYLJ7PEuY8iarn9JoNf
	fwq3zZTW3KH7RGdK6GZ+41rFrwMUhIFyg9u9yPF3vuc7RRRcu++gXxN9HfmJJ9dV/Vg49JbbXbZjc
	oXTc3f8kDww2pSmC+pCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJzv-0000Nu-SW; Fri, 04 Oct 2019 09:35:39 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJzo-0000MD-1q
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 09:35:33 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: XujeguZpQ9O+NFnXuWK01CkQERaDBBA7PA8l8WAbj2iJdOgQfsymKZZBtIT1ekXmgyGOwL2e5l
 9hS6fnS4iSARvNd9d0UIFmBQee26BlvP6u+Oz8vLOUekhknMPagjSWmLKpMsS7txgBpffQMM4i
 X6MfH/zSLQgVr7Hqp5s0M9F28kpuu9dXJzOKSOZvCY3tSJAhacKIbzeqvFQrD8Q+PvT7Etp3dg
 /zK8Z62KWqXCtrMZPRHpcaq6jv3TXJnPq9PG8jh0vrfaundcIenx9i0rp2zHz6Elv3ZnTmhyk/
 o2w=
X-IronPort-AV: E=Sophos;i="5.67,255,1566889200"; d="scan'208";a="50422574"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Oct 2019 02:35:25 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Oct 2019 02:35:25 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Oct 2019 02:35:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J1Ye+tWIFraYGxv6F00f50TLGYhMrHUrq7F24LsICcULqGeaST8o3fh+fK0hp/iUMuHhVxjk4AU2mjQypyZsSzjHaSmHZ++rQWJRZy5bGF7n6UEGLhHn9c7QMn4aYq9B9VBd+kJbkyzFRDFVJcRYZUoIMxv7NGMzlv4yAIJfCTBhW8hbgEi04kbD9dQb7OBGlUtkS5vAAcath5QZGxeUbUAqN2iBarmGlK8OtmLmrPFyn6FDyz1sNJxRIeYVppcBsqs+R1RRhDbeQhgTBDDGopEfwTVHrgvS3OnpFFFuXYXLAKR+v4WX/2iCpO8hiFQO4BONOcRMlrPSSX2GKxa0GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jPkzr26ZpInh9j1jFrMZOePRQr13QBZZg3LZ+KsrGDM=;
 b=LECowKkGb+bBx1lGAUgWpGLRoBHT9cDvrlS63TVwHpjX7A5lXyrabT9vgZyC8qrlkJerQLoEMKBTTHxGopvQEqAx8pmYfKZjwHDrd8fawMCqyTfisYEiYagGk/aCS3ry9Zs3FortvjTVqPgqvNdMppmcYTLihb0f22ca4NH5vesai/GblEOWRujADun4WkFdP14uRtnOnsYjwnpp74Yg49sFh8GgIvyfnm3SiQA4DqLw3VkznXD1zutCyMnIjAWFQ73vOWDa3QJuaiqW/PXWpBXkvut30LkzKPirTvNiHb6Pf5xcaRrolPqGyvrxFTe+FlUZ/WRNqe8R2Z0hQdfHSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jPkzr26ZpInh9j1jFrMZOePRQr13QBZZg3LZ+KsrGDM=;
 b=ubRs3W/+fAUdm0uTERZVRIAxU/Ce7dRNxwz/yasSdzGpLvUzaCdaVdQ+qOpte8LbJ43fSYWIkNUR6SSIIBEU3hCSkyeWFs2A2hML0H+AlbdsSxUKBX7fBkZTSAxZDfG7g2q6bpf1MeJ0Tb+byVDgE9m/l2VvsT66pVt9dkKLOUg=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.85) by
 DM6PR11MB2620.namprd11.prod.outlook.com (20.176.100.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Fri, 4 Oct 2019 09:35:23 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22%6]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 09:35:23 +0000
From: <Claudiu.Beznea@microchip.com>
To: <kamel.bouhara@bootlin.com>, <wsa@the-dreams.de>,
 <linux-i2c@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 2/4] i2c: at91: implement i2c bus recovery
Thread-Topic: [PATCH 2/4] i2c: at91: implement i2c bus recovery
Thread-Index: AQHVepcLzh2wL57HtEiaALvY7CXMrw==
Date: Fri, 4 Oct 2019 09:35:23 +0000
Message-ID: <08e99a4b-851e-0bee-4c5a-8578b42c283e@microchip.com>
References: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
 <20191002144658.7718-3-kamel.bouhara@bootlin.com>
In-Reply-To: <20191002144658.7718-3-kamel.bouhara@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0501CA0013.eurprd05.prod.outlook.com
 (2603:10a6:800:92::23) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:59::21)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191004123512807
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b4553a4f-7225-4614-75ef-08d748ae2df2
x-ms-traffictypediagnostic: DM6PR11MB2620:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB2620647DE719C966D61F84D8879E0@DM6PR11MB2620.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:207;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(366004)(376002)(396003)(136003)(199004)(189003)(6512007)(14454004)(2906002)(66066001)(229853002)(6486002)(5660300002)(6436002)(86362001)(486006)(478600001)(256004)(4326008)(476003)(71190400001)(31696002)(11346002)(6246003)(71200400001)(25786009)(54906003)(2501003)(66476007)(64756008)(3846002)(316002)(66946007)(66556008)(66446008)(386003)(53546011)(26005)(36756003)(6506007)(2616005)(110136005)(4744005)(102836004)(7736002)(8676002)(186003)(305945005)(81166006)(81156014)(2201001)(8936002)(6116002)(52116002)(31686004)(76176011)(99286004)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB2620;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0zvrYJPwi/oRQ8yB6iaChZelpb9WUaWfXJep+5RuVHM4cFfe6Dg50MPW/fVnBnvsf/h3u3AE4T9ZIOV2sP7fTgeMQYZhAoRlHmV3sRdoKlk0Tt1GR0vWla3seZE5VCKNlHL7lSymodafhoe1TbUAVxZ6LJ8C0FJtKfnbTRkfzC+SfiAn2t1xh+TYQrvYZ3HKJoSHM+V02FNEPrWhK80n+1/dT8THs+Xum4ry5ZTJjgwo4ZjlQtIO7jc23pmVdfpg3ecf3pW8+Z8nswu9+gUqBEYNU6jIHnxiJblN5Sb3xbU/6QLTrf8c62ByO0sFusREHwcFIW/RTaXLcWl/EPkSX/7egDdDTDJuZ4Ci8MsnzKy4oldGzTXsdQN8tRvGICFnFphQxze1ox74IOVjISmDL6wKjKVTrl6hka4jyuxcGAs=
Content-ID: <DA77BC9EC8C40C4A8D647BCD8BE57710@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b4553a4f-7225-4614-75ef-08d748ae2df2
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 09:35:23.1716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZTutNyaGA7xUGid9FgbRgG2eMyoz9b13/cAzGzTtCmZfMNvUZawEfD6vYBEk75BcxSnE0UnN7ZwxWhJntfEaWg8ncLCx+QnOZsivOKl/s6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2620
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_023532_126805_1CE8A0E9 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kamel,

On 02.10.2019 17:46, Kamel Bouhara wrote:
> +static int at91_init_twi_recovery_info(struct platform_device *pdev,
> +				       struct at91_twi_dev *dev)
> +{
> +	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
> +
> +	dev->pinctrl = devm_pinctrl_get(&pdev->dev);
> +	if (!dev->pinctrl || IS_ERR(dev->pinctrl)) {

You may use IS_ERR_OR_NULL() here.

> +		dev_info(dev->dev, "can't get pinctrl, bus recovery not supported\n");
> +		return PTR_ERR(dev->pinctrl);
> +	}
> +
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
