Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E8991EA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 10:15:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+n4zJIOdMnUV8tYGENBqY9Nob/qTfj/D5TW3CTBmW8g=; b=uhXzMwg0CBUohy
	rVeIX1uw7JTqtoYVuJ8VxZlFEvIgwqTfnPEx/M5Czg+gUTBEsuCzyvuE62Rzf+8dAG06VWa2fwqlF
	eNbrYmJYYWPAnJOMJCgn/S3eQPmEqWpjfGWctCZ3tkCFsCOBYK2z+lW1R5lgxuflBxONKfU1MPwZw
	AzRNlssQb7Ut1sYMf0lLtGtmf/6qz6fDlLg0T/m52o9TNrU9mMYpGWWY7bRgPnGfQ/Z+AIo3XQdwT
	HAnjqdrX5SMbbzX0goD/iDvq2Wv6cEi+ovwnqGI8oIG44VWrV1LHPhJ5GoKK8cgf5tz6d0cMI0PFW
	ap/NjlSloW71f6DYHvbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzcod-00008A-6y; Mon, 19 Aug 2019 08:14:59 +0000
Received: from mail-eopbgr30078.outbound.protection.outlook.com ([40.107.3.78]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzcoJ-00007V-Ul
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 08:14:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RDK3OMKIBi+VOMZFkiPDQpEjOnm6c3FOck72WAUYuCELnXFoFrGrmcRH54ozY43QzfBgqZqcjppMlvNig1uc3/ONxMK2sc2D+8QhRmYTFrCyVT3cDB1bkLAY8rv+k7wY8Bz/zXxA7Sl2St6Jvwm3ZYvS0auFgXK88PBDc7iUFBYuwSMbI+zp9YP6zQ7gDaQCVRFE5MEiEVk6Xnw88GvxArHo1JB2sMP3dNfrlekHifWCnwwyOjpRbk/jmJsY4k3vCy+Hbp4YXMmUtS/UZ7UzsAQ7B+9LDPn2MKEfdJKu921t9a1PKCs8sAbXGyrkJlOL56pIvWzXPvGhH6bwnktsKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1R4sHq13+IaHO8Cmfot74gAVxrLkdYHIEVatTcdtYAA=;
 b=axtTiLU4ylr+ZCoPn8gJwXQm+RFmb2fxj21d/mesYb5wcWKK0dPiaAQLbfr7CirRqSXPQ6fS4HvwGDrj5nRkyidAX8CkuH5kN9dsmaqXkjj7HOb5Rho2dSEO4hAAII7uvV3PKCNG2IkM6EbJbVoc/jLU4guKxvV6aLBMIWuBeKR1oMbckfZx9M28Zb8H5b68jmgtkxzc/nXEXdNVQFhuC65NLA1evlvSiCR8v+0okwr/wgD3VLMHYe3k8f8yjUkbDRcsIYOGXiYXCvOQozSKxgMKiOdvcb7KwZpH6cgZieKqfjZa0CK39REosUa8YR8sB0tjyqXFbZWSpB78how2/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1R4sHq13+IaHO8Cmfot74gAVxrLkdYHIEVatTcdtYAA=;
 b=qRuPGvY8/aVkILijABFrzdxs3xezzvxedjs3gq491zcVoI4nWvTgL2/I8Kue1JlYYuYzxd6DpUDh5Vg/rJm5FyuYFR/H+WGyf2U3ON0UIsUR9gdRsFCEJthFesUH12QsXrdaiRgrsrhKC63PAaedJCeU9SbmUNPpyFCmod8o2hk=
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com (52.133.240.82) by
 DB8PR04MB6761.eurprd04.prod.outlook.com (20.179.251.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Mon, 19 Aug 2019 08:14:32 +0000
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::ad63:e8df:f0c2:7246]) by DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::ad63:e8df:f0c2:7246%2]) with mapi id 15.20.2178.018; Mon, 19 Aug 2019
 08:14:32 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: RE: [PATCH v5 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Thread-Topic: [PATCH v5 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Thread-Index: AQHVQfPC8fuUrwx+d0SKWP625Z9OpabsZPGAgBWwP7A=
Date: Mon, 19 Aug 2019 08:14:32 +0000
Message-ID: <DB8PR04MB682632A586827032F8D6EA2DF1A80@DB8PR04MB6826.eurprd04.prod.outlook.com>
References: <20190724074722.12270-1-ran.wang_1@nxp.com>
 <4158639.B12JYek7R7@kreacher>
In-Reply-To: <4158639.B12JYek7R7@kreacher>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7024ef78-f04a-4d7a-b29b-08d7247d4416
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB6761; 
x-ms-traffictypediagnostic: DB8PR04MB6761:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB676179B6D34FED0D2FFAC9EEF1A80@DB8PR04MB6761.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(396003)(366004)(346002)(189003)(51914003)(199004)(478600001)(229853002)(6916009)(8936002)(6116002)(8676002)(81166006)(81156014)(3846002)(66446008)(64756008)(76116006)(66946007)(9686003)(6436002)(55016002)(66476007)(66556008)(7736002)(305945005)(7416002)(74316002)(26005)(53546011)(6506007)(53936002)(186003)(102836004)(2906002)(476003)(11346002)(486006)(446003)(5660300002)(66066001)(6246003)(14454004)(5024004)(7696005)(256004)(71200400001)(14444005)(71190400001)(52536014)(99286004)(316002)(54906003)(76176011)(25786009)(33656002)(86362001)(4326008)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6761;
 H:DB8PR04MB6826.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ClAH81fPqPTIE38CHMUl7jsd5XpSd2OmrOHQ0Ol/Pkp2Vi2doqzx/YPLiunYNfLQb5b2tmc4Omz9qKP5p1PneDVHak3mosR/4WIzt6VSq3ffYcukwKNHcAVVseLZLgpZlZKI5KJ4lkkuZOp9X+quLJZJdSBlqw17A6cVWnbi1wi5RVz9QKoRqIwl25mpWTe/n30h9U0z2ed/DKxM9R8l1BJG5Qi5gkWeOb6XIMh2RgeiSR6ZhO/ZC0FYKX2ko2TDXYLjmk1gtg7STDoSbgCfeOHSj70EII73YsinEeAnk/hE8WJP7Mkfr+Cx/AbNdgl3Tj64bmeRDjhTQqyLNUK8s2bW5+D/f82T1alWb3DJqF4VR4URCt8A+WZw2e+LMXEuZQjloKsTwdpWatSYBu3w7fvOQpqZP8GSUOqgS6OnNHE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7024ef78-f04a-4d7a-b29b-08d7247d4416
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 08:14:32.6873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yx15X8XyY62S0HxtKc7BKR/zlRhf10FWXwHYcgqR7P9kjh8/oBFHkeYn6p2uXHo83ANLf85h/5YHE8Ze61eSBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6761
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_011440_153136_2A86742F 
X-CRM114-Status: GOOD (  23.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Biwen Li <biwen.li@nxp.com>,
 Len Brown <len.brown@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rafael,

On Monday, August 05, 2019 17:59, Rafael J. Wysocki wrote:
> 
> On Wednesday, July 24, 2019 9:47:20 AM CEST Ran Wang wrote:
> > Some user might want to go through all registered wakeup sources and
> > doing things accordingly. For example, SoC PM driver might need to do
> > HW programming to prevent powering down specific IP which wakeup
> > source depending on. So add this API to help walk through all
> > registered wakeup source objects on that list and return them one by one.
> >
> > Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> > ---
> > Change in v5:
> > 	- Update commit message, add decription of walk through all wakeup
> > 	source objects.
> > 	- Add SCU protection in function wakeup_source_get_next().
> > 	- Rename wakeup_source member 'attached_dev' to 'dev' and move it
> up
> > 	(before wakeirq).
> >
> > Change in v4:
> > 	- None.
> >
> > Change in v3:
> > 	- Adjust indentation of *attached_dev;.
> >
> > Change in v2:
> > 	- None.
> >
> >  drivers/base/power/wakeup.c | 24 ++++++++++++++++++++++++
> >  include/linux/pm_wakeup.h   |  3 +++
> >  2 files changed, 27 insertions(+)
> >
> > diff --git a/drivers/base/power/wakeup.c b/drivers/base/power/wakeup.c
> > index ee31d4f..2fba891 100644
> > --- a/drivers/base/power/wakeup.c
> > +++ b/drivers/base/power/wakeup.c
> > @@ -14,6 +14,7 @@
> >  #include <linux/suspend.h>
> >  #include <linux/seq_file.h>
> >  #include <linux/debugfs.h>
> > +#include <linux/of_device.h>
> >  #include <linux/pm_wakeirq.h>
> >  #include <trace/events/power.h>
> >
> > @@ -226,6 +227,28 @@ void wakeup_source_unregister(struct
> wakeup_source *ws)
> >  	}
> >  }
> >  EXPORT_SYMBOL_GPL(wakeup_source_unregister);
> > +/**
> > + * wakeup_source_get_next - Get next wakeup source from the list
> > + * @ws: Previous wakeup source object, null means caller want first one.
> > + */
> > +struct wakeup_source *wakeup_source_get_next(struct wakeup_source
> > +*ws) {
> > +	struct list_head *ws_head = &wakeup_sources;
> > +	struct wakeup_source *next_ws = NULL;
> > +	int idx;
> > +
> > +	idx = srcu_read_lock(&wakeup_srcu);
> > +	if (ws)
> > +		next_ws = list_next_or_null_rcu(ws_head, &ws->entry,
> > +				struct wakeup_source, entry);
> > +	else
> > +		next_ws = list_entry_rcu(ws_head->next,
> > +				struct wakeup_source, entry);
> > +	srcu_read_unlock(&wakeup_srcu, idx);
> > +
> 
> This is incorrect.
> 
> The SRCU cannot be unlocked until the caller of this is done with the object
> returned by it, or that object can be freed while it is still being accessed.

Thanks for the comment. Looks like I was not fully understanding your point on
v4 discussion. So I will implement 3 APIs by referring wakeup_sources_stats_seq_start/next/stop()
 
> Besides, this patch conflicts with some general wakeup sources changes in the
> works, so it needs to be deferred and rebased on top of those changes.

Could you please tell me which is the right code base I should developing on?
I just tried applying v5 patch on latest git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git branch master (d1abaeb Linux 5.3-rc5)
and no conflict encountered.

Thanks & Regards,
Ran



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
