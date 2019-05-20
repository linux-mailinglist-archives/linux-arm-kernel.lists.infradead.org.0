Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B1423005
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/bNwRiKzpArDBkthxSfqwBVG7d3JaqymgJKEREa9eA=; b=NqpTqw4GAiJlb8
	NtxpzVM404BB21ctJ2StaD8axB9AKImvreZdpUP3WXZiIdLg2XfkAOMn3uPKZi3UTL6T9L0SlAJS8
	FilWNhuERF6gUltwRzhZ0IMYF27fQYDfmRmXBjJ+a2hVmFBgGc1jepcQdrofDyHzLXFfsu13GlzhU
	LS3zqx5EB3YRik9Ft5Touy1aKdv0GJ8bDumI+Jboyzc7czoCRN+jKlLlAUYRs3J1J1QyJjcp4eVfB
	BDgTUVUMCQymJWTx0Dvb+wzHWvFnHSEYIUEiPeKvBs8aSr8gtehgXU8PLmgUxKHsuDhl76X/7acyB
	CIRBehhdCPvkoGXLBxxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeQs-0000SI-L7; Mon, 20 May 2019 09:18:10 +0000
Received: from mail-eopbgr10061.outbound.protection.outlook.com ([40.107.1.61]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeQl-0000Rr-JD
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:18:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wjq3w45GRiFI2//a7t647tCKQUdF8+Ggx6O/vEK4e64=;
 b=AAZiQse/9fx1IdhbxGlYWJ2xnUx3C4b3lKPUTLS3pHBeoZI3NREuShxXWZqsfW9T7kNct6zPqXAPHw3chSsVPGd/n7Ic4qEVWDaLYVtmrMhipHWsc+IbHiuXWzGErMbogezjWGwaRVvga1IBixjFjL/Bu1E9jznqexUHp6Mh+mY=
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com (10.175.44.16) by
 AM5PR0402MB2833.eurprd04.prod.outlook.com (10.175.41.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 09:17:59 +0000
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51]) by AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51%9]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 09:17:59 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: Pavel Machek <pavel@denx.de>
Subject: RE: [PATCH V2 3/3] soc: fsl: add RCPM driver
Thread-Topic: [PATCH V2 3/3] soc: fsl: add RCPM driver
Thread-Index: AQHVDGHzIQrvIPzRX0ytn5pxhdLuLqZy/bMAgACX+4CAACV3gIAAANBwgAACRYCAAAHg8A==
Date: Mon, 20 May 2019 09:17:59 +0000
Message-ID: <AM5PR0402MB2865E28B2E2296CB878ACEA2F1060@AM5PR0402MB2865.eurprd04.prod.outlook.com>
References: <20190517033946.30763-1-ran.wang_1@nxp.com>
 <20190517033946.30763-3-ran.wang_1@nxp.com> <20190519213844.GH31403@amd>
 <AM5PR0402MB2865EC5E1EF12C6C1D3C5566F1060@AM5PR0402MB2865.eurprd04.prod.outlook.com>
 <20190520085647.GA9748@amd>
 <AM5PR0402MB2865F4574B19761848B001F9F1060@AM5PR0402MB2865.eurprd04.prod.outlook.com>
 <20190520090748.GB9748@amd>
In-Reply-To: <20190520090748.GB9748@amd>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b0451e86-49ec-44c6-b934-08d6dd040d87
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR0402MB2833; 
x-ms-traffictypediagnostic: AM5PR0402MB2833:
x-microsoft-antispam-prvs: <AM5PR0402MB283301A6038AA2B3C9115EDFF1060@AM5PR0402MB2833.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(346002)(376002)(136003)(396003)(189003)(199004)(7696005)(2906002)(99286004)(86362001)(6246003)(14454004)(74316002)(53546011)(229853002)(6506007)(11346002)(9686003)(68736007)(446003)(476003)(55016002)(6116002)(3846002)(305945005)(102836004)(76176011)(486006)(53936002)(6916009)(6436002)(7736002)(66476007)(66556008)(64756008)(66446008)(5660300002)(66066001)(33656002)(66946007)(73956011)(8936002)(7416002)(316002)(25786009)(186003)(76116006)(54906003)(71190400001)(26005)(478600001)(81166006)(4326008)(8676002)(71200400001)(256004)(81156014)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0402MB2833;
 H:AM5PR0402MB2865.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /ImH+jFa5VWy3XrIpi+JhjHUOysWf7NmzT8XE2im6LtT3xp4u6FcHv9ZtYjXfnKaIks2K4mNNmtdR4PTYOTOY/gvOjvn6fO9cTKxd9eWdyc+hBtomrxrahv6fwXIaJ81f2BM2YFY290fT/+UW77feNt8GNYfVXu/j14+1UpENd9LjquMTspSrlVF4usRimpKrEdAt/YMg4fU1vt1gTs7wE+bBfFzcKSJtX8W16JvE2cwe1SicBo3a7mIFqpT2u1VTx1UvYgToqpNrH1k+Fk/UWZpQGi2o6/+PJ8Rka58LM5Bkas3Mu03HH3sLT4t80K5JTA3L2PfoIewHsyUVuEcMU/pCFpxoCfrp+hWb/e6e0m4ZqXLZQlcbrWQMkchxCHM16+Y3/y79LZbGopZbMAa6qMRYqJX3HQQzg7jbj0dSg4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0451e86-49ec-44c6-b934-08d6dd040d87
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 09:17:59.4418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2833
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_021803_638150_44B664EA 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Monday, May 20, 2019 17:08 Pavel Machek wrote:
> > > Hi!
> > >
> > > > > > +static int rcpm_pm_prepare(struct device *dev) {
> > > > > > +	struct device_node *np = dev->of_node;
> > > > > > +	struct wakeup_source *ws;
> > > > > > +	struct rcpm *rcpm;
> > > > > > +	u32 value[RCPM_WAKEUP_CELL_MAX_SIZE + 1], tmp;
> > > > > > +	int i, ret;
> > > > > > +
> > > > > > +	rcpm = dev_get_drvdata(dev);
> > > > > > +	if (!rcpm)
> > > > > > +		return -EINVAL;
> > > > > > +
> > > > > > +	/* Begin with first registered wakeup source */
> > > > > > +	ws = wakeup_source_get_next(NULL);
> > > > > > +	while (ws) {
> > > > >
> > > > > while (ws = wakeup_source_get_next(NULL)) ?
> > > >
> > > > Actually, we only pass NULL to wakeup_source_get_next() at very
> > > > first call to get 1st wakeup source. Then in the while loop, we
> > > > will fetch next source but not 1st, that's different. I am afraid
> > > > your suggestion is not quite correct.
> > >
> > > Sorry, I seen your next version before seeing this explanation.
> > >
> > > You are right, but the current code is "interesting". What about
> > >
> > >     ws = NULL;
> > >     while (ws = wakeup_source_get_next(NULL)) ...
> > >
> > > then?
> >
> > Did you mean:
> >      ws = NULL;
> >      while (ws = wakeup_source_get_next(ws)) ...
> >
> >    Yes, that will be the same to my original logic, do you recommend
> > to change to this? :)
> 
> Yes please. It will be less confusing to the reader.

OK, if no other comment, I will work out v4, fix this and extra ','
 
> Thanks (and sorry for cross-talk),

That's OK, thanks for your time.

Regards,
Ran

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
