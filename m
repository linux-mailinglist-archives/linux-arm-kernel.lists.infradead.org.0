Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C0A91EF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 10:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUw5BULAJxAZcXMOwhk5nwFHK3obLIP1gIWVgf5QpcI=; b=krJ/SvpHfOTiGc
	8zWGK96sJYcQyCeilCTOZXsDMai5QZeP8p7KQXVJ/gX62Ic024ec+4sibhKBSVYSZpNv20v2i1Pk7
	R008kWSVzMbCtMzjuOwDrVLnHcIBAJ6IfUhczLmSsUJJNziiXh81w3KLEdUuy/M4QGFwxH25g6W54
	Qm9z4odG4m1XncwyP48ciXuQdO0UoDmLUloSqa0z7sIPcYipsOnZhjQ5AB3uISnvauXH6rL6zV0bG
	fkvtEiQT9H9+uShFxy0PlU3cV6Yx1NbWlJ3sVOK0uFqHXkwwkGCUcSDZZFOOTVoYkOldboS4ZRRNp
	QIy5IhkDjk5JLWwFNyvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzd6o-0007b0-Qi; Mon, 19 Aug 2019 08:33:47 +0000
Received: from mail-eopbgr130053.outbound.protection.outlook.com
 ([40.107.13.53] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzd6X-0007ab-JV
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 08:33:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BOqv+eXmRXS4fPzgZkQPPNkn/oWNBke9GZGH7++9utG71SjbFdMpUQ/t7HENdWgEiWbrwfaEXF1V7S/1vJmQBwXgVrSNSKCor/C6NNNDId/0eeEmpphg6r763KHCOYpOwaLatxB3YZOMEo+kJDu6XNudwZfJwtohs5FaBx3Aj4JAnKN7bReoYF1APxgZ+jp0CJBqWyI+WvD/+IV9VOR+tFbXo6buJgmhKBzAu7SJNo3zxEqO41/e//hmRXETqAEHQXJ2rKwT8vuMUbY4h01oCkrfRw2g1c7ioPRij+QoxzsmWGi/MHkEzvhe/xTbugwOog2LyKMLb1AddnFU+12NVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y3tHEMk3l3ATRx7p2Q/oXf24GzNcnxlzOs+76gmCR54=;
 b=WyVwztC+ORSaTSCYadpAQy/jWjrdyC8RMd0JsIv196jEnv5d9hLzzOrHjMvc4JTiMr/7aWu/upyE74odf02+RJw/BPmyJGjP7bRElMamFlJIH8oUg6gYe/Ny7diUdmaHbNgpaH19gp1yPnwG5LvSONkKboF9QmdphO4vW6gk5tM17Lcc4rTFKVSDxaFpCb36imXshXQXUnt1DK4w2ldzm1Nc8dSEyxi8FC7+9d+1GgcSwEXInL4npfCKZ7/q7HV+ZchjSJjy1b4IY2/Dl9F+C5SlwdumF6g02HO4+iETcPhtEIW8xXvmHnetNGxJ7Vf3zgAH+rzUPKhtaBfbb3JfeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y3tHEMk3l3ATRx7p2Q/oXf24GzNcnxlzOs+76gmCR54=;
 b=jXF+83zEJyDPHpXBcQhLI9tukPVE5RSKw304pfdIwAo07JKc9i15EUOTKZSXFzbzqyu/fl/AEkQqX9+y0G3X9JLVWOGbnAINrMmGN1xfbd+7TCZgtQ89abQVGiwMm068WEyOSapiBOiIFAucOwYHoA8m8Uit3MF6zQWH06jTbh4=
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com (52.133.240.82) by
 DB8PR04MB6425.eurprd04.prod.outlook.com (20.179.248.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Mon, 19 Aug 2019 08:33:25 +0000
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::ad63:e8df:f0c2:7246]) by DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::ad63:e8df:f0c2:7246%2]) with mapi id 15.20.2178.018; Mon, 19 Aug 2019
 08:33:25 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: RE: [PATCH v5 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Thread-Topic: [PATCH v5 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Thread-Index: AQHVQfPC8fuUrwx+d0SKWP625Z9OpabsZPGAgBWwP7CAADS+gIAAAc5g
Date: Mon, 19 Aug 2019 08:33:25 +0000
Message-ID: <DB8PR04MB6826475ACA623AE6D63617D7F1A80@DB8PR04MB6826.eurprd04.prod.outlook.com>
References: <20190724074722.12270-1-ran.wang_1@nxp.com>
 <4158639.B12JYek7R7@kreacher>
 <DB8PR04MB682632A586827032F8D6EA2DF1A80@DB8PR04MB6826.eurprd04.prod.outlook.com>
 <CAJZ5v0i58p-GsswzMGEsgD5OXDqJ_G5zXDYf8jq8JJbWxZv+nQ@mail.gmail.com>
In-Reply-To: <CAJZ5v0i58p-GsswzMGEsgD5OXDqJ_G5zXDYf8jq8JJbWxZv+nQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5774b5e1-734b-4508-1dce-08d7247fe741
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB6425; 
x-ms-traffictypediagnostic: DB8PR04MB6425:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB6425F482EA6704730BED09A6F1A80@DB8PR04MB6425.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(346002)(376002)(366004)(136003)(51914003)(189003)(199004)(478600001)(74316002)(7736002)(2906002)(305945005)(71200400001)(71190400001)(76116006)(14454004)(476003)(446003)(66946007)(6436002)(66066001)(66446008)(11346002)(5024004)(256004)(8676002)(6916009)(6506007)(53546011)(8936002)(81166006)(81156014)(66476007)(102836004)(486006)(66556008)(229853002)(186003)(55016002)(9686003)(64756008)(33656002)(14444005)(7696005)(316002)(76176011)(7416002)(4326008)(25786009)(26005)(53936002)(99286004)(6246003)(54906003)(5660300002)(86362001)(6116002)(3846002)(52536014)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6425;
 H:DB8PR04MB6826.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6MM4NF1G+zEty+303g/yAxtldCxDxkFvST6C97X+4xQz4g78Eu9n0P76ncxVtvqowYPp5HO6q7IHSPCICt5J9jMzG7NeD8iXHbnyF4KosH+xSWvisws0jlAEvFLQEgb3tb9L87goLYAqFP7YJJ0gA+DgpjLZaFQEjI05M84Up69FUnrYnEcpAxMqINXA/QnRdeD+tQo8dV0RfLKjEocDYUhZvKWtlaQ0GQwzommpS54lVfkB0CP9N7C0wLm/x5P4jswDnaH2ImFcOBkX6x4TEUC9Cr39EU4bytQhde0GRw2qcF8DlkOPegJKJi0Zz003Z/RPOLszn6MpBdGNWyUUe7A3AyBVdlCXPwM1WIH3YdkF88y7vXNG6cxXC1rLeK3vdT++X4y2iwRoPIO+z8TF0UyQJv7M0YFjMTAAjQVi9nY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5774b5e1-734b-4508-1dce-08d7247fe741
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 08:33:25.4484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cJ32wyiqDoxFbhELwPDtCgBnf6hhV9903WzOj3nQ3nZ/ZEmoI5obzRCKnKvPkYHkpq/R/JOnmW+glRoe1+fzDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6425
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_013329_650555_0CC9C6E7 
X-CRM114-Status: GOOD (  31.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.53 listed in list.dnswl.org]
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
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
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

On Monday, August 19, 2019 16:20, Rafael J. Wysocki wrote:
> 
> On Mon, Aug 19, 2019 at 10:15 AM Ran Wang <ran.wang_1@nxp.com> wrote:
> >
> > Hi Rafael,
> >
> > On Monday, August 05, 2019 17:59, Rafael J. Wysocki wrote:
> > >
> > > On Wednesday, July 24, 2019 9:47:20 AM CEST Ran Wang wrote:
> > > > Some user might want to go through all registered wakeup sources
> > > > and doing things accordingly. For example, SoC PM driver might
> > > > need to do HW programming to prevent powering down specific IP
> > > > which wakeup source depending on. So add this API to help walk
> > > > through all registered wakeup source objects on that list and return them
> one by one.
> > > >
> > > > Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> > > > ---
> > > > Change in v5:
> > > >     - Update commit message, add decription of walk through all wakeup
> > > >     source objects.
> > > >     - Add SCU protection in function wakeup_source_get_next().
> > > >     - Rename wakeup_source member 'attached_dev' to 'dev' and move
> > > > it
> > > up
> > > >     (before wakeirq).
> > > >
> > > > Change in v4:
> > > >     - None.
> > > >
> > > > Change in v3:
> > > >     - Adjust indentation of *attached_dev;.
> > > >
> > > > Change in v2:
> > > >     - None.
> > > >
> > > >  drivers/base/power/wakeup.c | 24 ++++++++++++++++++++++++
> > > >  include/linux/pm_wakeup.h   |  3 +++
> > > >  2 files changed, 27 insertions(+)
> > > >
> > > > diff --git a/drivers/base/power/wakeup.c
> > > > b/drivers/base/power/wakeup.c index ee31d4f..2fba891 100644
> > > > --- a/drivers/base/power/wakeup.c
> > > > +++ b/drivers/base/power/wakeup.c
> > > > @@ -14,6 +14,7 @@
> > > >  #include <linux/suspend.h>
> > > >  #include <linux/seq_file.h>
> > > >  #include <linux/debugfs.h>
> > > > +#include <linux/of_device.h>
> > > >  #include <linux/pm_wakeirq.h>
> > > >  #include <trace/events/power.h>
> > > >
> > > > @@ -226,6 +227,28 @@ void wakeup_source_unregister(struct
> > > wakeup_source *ws)
> > > >     }
> > > >  }
> > > >  EXPORT_SYMBOL_GPL(wakeup_source_unregister);
> > > > +/**
> > > > + * wakeup_source_get_next - Get next wakeup source from the list
> > > > + * @ws: Previous wakeup source object, null means caller want first one.
> > > > + */
> > > > +struct wakeup_source *wakeup_source_get_next(struct wakeup_source
> > > > +*ws) {
> > > > +   struct list_head *ws_head = &wakeup_sources;
> > > > +   struct wakeup_source *next_ws = NULL;
> > > > +   int idx;
> > > > +
> > > > +   idx = srcu_read_lock(&wakeup_srcu);
> > > > +   if (ws)
> > > > +           next_ws = list_next_or_null_rcu(ws_head, &ws->entry,
> > > > +                           struct wakeup_source, entry);
> > > > +   else
> > > > +           next_ws = list_entry_rcu(ws_head->next,
> > > > +                           struct wakeup_source, entry);
> > > > +   srcu_read_unlock(&wakeup_srcu, idx);
> > > > +
> > >
> > > This is incorrect.
> > >
> > > The SRCU cannot be unlocked until the caller of this is done with
> > > the object returned by it, or that object can be freed while it is still being
> accessed.
> >
> > Thanks for the comment. Looks like I was not fully understanding your
> > point on
> > v4 discussion. So I will implement 3 APIs by referring
> > wakeup_sources_stats_seq_start/next/stop()
> >
> > > Besides, this patch conflicts with some general wakeup sources
> > > changes in the works, so it needs to be deferred and rebased on top of those
> changes.
> >
> > Could you please tell me which is the right code base I should developing on?
> > I just tried applying v5 patch on latest
> > git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git branch master
> (d1abaeb Linux 5.3-rc5) and no conflict encountered.
> 
> It is better to use the most recent -rc from Linus (5.3-rc5 as of
> today) as the base unless your patches depend on some changes that are not in
> there.

OK, So I need to implement on latest git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git branch master, am I right?

However, I just checked v5.3-rc5 code and found it has the same HEAD (d1abaeb Linux 5.3-rc5
on which I did not observe v5 patch apply conflict, did I miss something? Thanks.

Regards,
Ran
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
