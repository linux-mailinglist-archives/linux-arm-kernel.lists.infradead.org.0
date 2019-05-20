Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F1A229E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 04:16:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epxO2QI1QZmyMLbscTtx4y2cz3TroA1jgYmQMM90ahY=; b=r3mpA7W6Y66zXh
	tRrUQ+WukynLKHmRhYzkvkkLLIbvlIiFx78PefjCr6C/qAUet3/teqERCRQSJpYjJpT42Ecjv6I79
	hO05OJG6cWsWqovIzLQt6T3fLDDU82/9QW5Pih5y8jnYgUZcBLuqr+bGahtF8DfRgfrHcejO1UA4t
	dgl7hX2CxezuucKWrL0PFD6DCztsQpfm36XF6Y+bs56xba9hZra9gHtSe3hTAc8fo9reZ072OCywd
	Byqb6n0e9RfxSasmejRn1rvFJLCPFsDxXy5znJQnW0l+byTjC/63XWn1AkE8N54pFFEdeAs4STlWl
	BB19LWkEad8lcQBGJiUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSXqP-0000Go-Rw; Mon, 20 May 2019 02:16:05 +0000
Received: from mail-eopbgr30059.outbound.protection.outlook.com ([40.107.3.59]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSXqI-0000Er-4m
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 02:15:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Leql0F4HY/Qi8RQupnp9smr0mCdyoDM/R5FK7F/0AUg=;
 b=iYO1AG+VzPCb79eIu5+LP7u0A1B7z0wMRg1jejiXnOel5jiSpUwp4Cw8MEKuUiYBjLIM+Odf8san5KT/2WMcsVx2hrv4e6x+dqf5qUEOz9Aonf9x0aY4uwKht1lw/6C/wqqqH8dH3RpjsCqJ3WI8aoO1Mlvaagy701EXQbHcR+8=
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com (10.175.44.16) by
 AM5PR0402MB2820.eurprd04.prod.outlook.com (10.175.40.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 02:15:50 +0000
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51]) by AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51%9]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 02:15:50 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: Pavel Machek <pavel@denx.de>
Subject: RE: [PATCH V2 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Thread-Topic: [PATCH V2 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Thread-Index: AQHVDGHy6riuNjMX8Emng4J8Z2yFlqZy/KSAgABOAOA=
Date: Mon, 20 May 2019 02:15:50 +0000
Message-ID: <AM5PR0402MB2865ED4DFB84BF2AE85EF0ABF1060@AM5PR0402MB2865.eurprd04.prod.outlook.com>
References: <20190517033946.30763-1-ran.wang_1@nxp.com>
 <20190519213457.GG31403@amd>
In-Reply-To: <20190519213457.GG31403@amd>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cb738bf7-bd63-4a94-d47c-08d6dcc91457
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR0402MB2820; 
x-ms-traffictypediagnostic: AM5PR0402MB2820:
x-microsoft-antispam-prvs: <AM5PR0402MB28209683DF9DC204FB00E4D2F1060@AM5PR0402MB2820.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(346002)(396003)(136003)(366004)(189003)(199004)(66476007)(66446008)(76116006)(66556008)(64756008)(66946007)(11346002)(446003)(6506007)(53546011)(4744005)(486006)(73956011)(476003)(305945005)(7696005)(26005)(99286004)(186003)(76176011)(66066001)(81166006)(81156014)(8676002)(54906003)(102836004)(7736002)(8936002)(68736007)(9686003)(6436002)(229853002)(478600001)(55016002)(14454004)(14444005)(5024004)(53936002)(316002)(25786009)(256004)(33656002)(2906002)(7416002)(3846002)(6116002)(4326008)(52536014)(71200400001)(74316002)(5660300002)(71190400001)(6246003)(86362001)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0402MB2820;
 H:AM5PR0402MB2865.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VP2r1rc65WSFI5jZupwR6kx226WYNoqlBtLUPFzb0NGGbxb+WP1wUwPjj5jxW/qxxvClnav/lD1AZXuv0dkYHf3pUs6mMzh0vW2+psB3yAT2nA0DKeQmT60V8//8ezP4N0M/xPjkaRxS/1KHB8iVvLRSBSz0d8FMY2430eBoaX8MXJdTr1ERSC1H41hheEkcPoMO02JQseBVnNu5QG8hSETAK86ehdfUZwI162En03HdmfljIdWQ6ZTXTAK3P+3fjQ1gUMJN8yynTqC+/rmBtypW5u/mlS1ger7s70uYCQAHv9nKHA+qXBzHTee1UfRimqbaWKgxJM0n8Qs0NhH2vOXL312Lr51n5++8m3XRkNIXhdOiQZTPJPPryIVKiOUhSW3Jhsv50NZoAP2VnB6ZiG/pLuAZjDK3d7aE5J3+GC4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb738bf7-bd63-4a94-d47c-08d6dcc91457
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 02:15:50.5690 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2820
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_191558_184502_75F1081D 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Len Brown <len.brown@intel.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On Monday, May 20, 2019 05:35, Pavel Machek wrote:
> 
> > --- a/include/linux/pm_wakeup.h
> 
> > @@ -70,6 +71,7 @@ struct wakeup_source {
> >  	unsigned long		wakeup_count;
> >  	bool			active:1;
> >  	bool			autosleep_enabled:1;
> > +	struct device	*attached_dev;
> >  };
> >
> >  #ifdef CONFIG_PM_SLEEP
> 
> You might want to format this similary to the rest...

OK, will update, thanks.

Regards,
Ran

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
