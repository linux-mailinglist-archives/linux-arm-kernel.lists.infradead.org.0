Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FEF19A868
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 11:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVZUxTPgyD96M64+bU2CMxzJXO5ViItHbdnlWNb71GI=; b=cS9J2X+CD3+JKJ
	YlXq0aeBenKGtBQgcV+CCjbd72L/bJrTMsESjvJ3MJcaup9cdMvLQr0mz3Yo/7RtJVO2cED0jqXz6
	H1px2SQv2Y/143kc2ffoLhZR4EFwr0Brxx7/OC248hpu7BqlcE6d1jUoRdAdlNGWVthP2uKYHN+6h
	hwlz+XruA1bB83IfzUpczeVyJ5LaOh7bkmpblAJSHnGUPqM42z4v6IZRZ7P2/+JUwhpEgIjjOaKlq
	kcNmCDirCvyWRKwmqqsz6H5dXqGmtvlx5wv4wgj6j17ybtE3T5xtoTQqk+AOzzG1BMDS/sTSBMIZO
	rb28rjzUsX7jl5q4adUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZSR-0005eA-KB; Wed, 01 Apr 2020 09:14:47 +0000
Received: from mail-eopbgr80057.outbound.protection.outlook.com ([40.107.8.57]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZSL-0005d9-4D
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 09:14:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VWdXRkGRNQuZl5UwIh/BzyalmahhyUbJwqS2bXOk4mV/nUJmluVvQlB0i2QIrPD7YioxzGn0gjdP4PLrcx4U16hUJu2QQTphVDNgzGKeZ+T6kbi0eVpCYRLZur4JKeEtnF1f02Nbd+v/0aC2jDeCKak3dfMNKSl0VwvYa5hnInbf6pAnBpy59VNA6PfwTpVmlzVGgeS49lHsBU1kaJCVxc74gk9m6P4i+OEMMDnOvcuC9b/TmrrqYCDxSYHYbJIDbaMnLRJVLLQzSGXT0ioRNlfpXg256T4ylHALOOJRPXwSuCHXmk541vsVdRln0FY7Vg5NSkpGo/9CdqPtHcl0ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ucjZifibYVWcXAcTWYBlC1LprzZi7XnRdEG8NE4nbrw=;
 b=TnMzPUWBh2DNvinIVMB9elY7gktC24tOFkfuorFQWKOrD0BPVPML1yFbeYIX+5x7yPw7TlkF9P2E2mb08g9xCFEq9T6o+sRWC2hMy4Ifw/BxrAZXfC4EhpWoM3yctS8FE8dq2+MqLwZxKn+WV4epIwyGBMLbzTgIN8QaVO2CFCdeMqG+gNoJQm7G5er5cw4F0/p9aRp5dtEteyjf3NbcpH3H2Mt/Sa0Ii9iQ3h6a4RbmVgZdq/2JE3rGtQ24kkwBHVvNbdJ6WSOUDMkxd/HmG8FhcO+/7qKkPqDzLAUfsrxztry+ukolodf2V2G3j3eYSlLylYnMJLD4HlXKrO/pCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ucjZifibYVWcXAcTWYBlC1LprzZi7XnRdEG8NE4nbrw=;
 b=MEQawrRAHn25CYP0t/iEB/thuHcymzazVBjCB4miJoLrDKDULUT3Aseu0GEzOsemT73rM3hq8eTruGrwoVNmyMXTryIjhkHUHUCqzX8BwcydubFfMcRF/3N4QTJMbmMgkJ5ZEzDuxIwoDAnPmDwDJTJx1fYbKnQK1k+DEz0I12c=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6324.eurprd04.prod.outlook.com (20.179.34.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.18; Wed, 1 Apr 2020 09:14:36 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 09:14:36 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH 1/4] firmware: arm_scmi: Make mutex channel specific
Thread-Topic: [PATCH 1/4] firmware: arm_scmi: Make mutex channel specific
Thread-Index: AQHWBFX27nJMU2DyaUm7ucC0dRZvA6hje9AQgACGwACAAACPYA==
Date: Wed, 1 Apr 2020 09:14:36 +0000
Message-ID: <AM0PR04MB4481E4CC4FA7A55488E7663988C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20200327163654.13389-1-sudeep.holla@arm.com>
 <20200327163654.13389-2-sudeep.holla@arm.com>
 <AM0PR04MB4481562E2A31386752F92C4488C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200401091208.GB3954@bogus>
In-Reply-To: <20200401091208.GB3954@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 19112969-722c-4b81-fd11-08d7d61d1991
x-ms-traffictypediagnostic: AM0PR04MB6324:|AM0PR04MB6324:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB63241D81632EA98ABD5B359888C90@AM0PR04MB6324.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 03607C04F0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(39860400002)(366004)(136003)(52536014)(26005)(5660300002)(66946007)(71200400001)(66446008)(4326008)(2906002)(33656002)(76116006)(186003)(316002)(8936002)(44832011)(86362001)(66556008)(7696005)(54906003)(66476007)(81156014)(6916009)(9686003)(55016002)(6506007)(478600001)(64756008)(81166006)(8676002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8e6bKpihNZepJncl+9xCG9hmp0wEsamEhcXAics6927py424wR40IHbtlQD+ZiQ7Ops+IwKyKQHYg5GSB93wwo62nzuvSwH0u6U7B0WH9l3TX1CbjrkBKFGswH3CWBTskZCxkxJzlduXTm3KvGMlNVXfv7gDvJsSjzXdBu4b3KxNWEyg3a9wHR48ie/KTPcUDuj7+XpebCCYuJY5U9+DjxBfXT5qU3xjIexB2M5PQzSqBjF0fHZwMmPaU6icoFhUAbqh6ibRNBrzMU+HPtFg/V8ZX0G7hW1g0fX49WLhOWsnjtFLkru4crQvqm6poJJtDoQIPj+eSqoE1M2cYkr3z2ZSCxeQ7CAdlv4TAenY3KwfN1frQUHpfOZTk2biHxS4e5tzqu42AQZZlhZ2btAhZ6geEMr85PfMsEeBK9l0/RbJmmnUZbsFgZ8wWc72YsBc
x-ms-exchange-antispam-messagedata: jERP86l+zOQHojqR+UnqgUqG6M1OEIww/Ip8xzFQhxfgpOg/yGtZXJJgnyi6uyyPg3QnSp5tIqMw6XjVNdkK6YH7FfNKAcIuFzHEPDGlhV92tqkr52bosVZbx19OuQ8sSYxqztygNfCWVQblFfAOzA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19112969-722c-4b81-fd11-08d7d61d1991
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2020 09:14:36.6698 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7j4ZRpkUszKmZet6F1zuIJadkEeaJo9ezfBy/3jPRNb8rYSw4Yn792eLayyMi2bfJkTsCOR+hsueEOn9G5SNZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6324
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_021441_178011_D57E7AF6 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 1/4] firmware: arm_scmi: Make mutex channel specific
> 
> On Wed, Apr 01, 2020 at 01:12:37AM +0000, Peng Fan wrote:
> > Hi Sudeep,
> >
> > > Subject: [PATCH 1/4] firmware: arm_scmi: Make mutex channel specific
> > >
> > > In order to support multiple SMC/HVC transport channels with
> > > associated shared memory,
> >
> > Does this mean each channel will have its own shared memory? Or All
> > channels share the same shared memory?
> >
> 
> It depends on platform firmware and DT. If there is only one shmem at the top
> level scmi node, all share that single channel. If some/all protocols have their
> own channel, they there must be shmem entry in the corresponding child
> node.
> 
> > it is better to maintain the mutex per channel instead of
> > > existing global one.
> >
> > If all channels shared the same memory, use per channel mutex lock
> > will not be able to prevent other channels accessing shared memory at
> > the same time.
> >
> 
> No we don't create channel per protocol. If they share, we just share the
> channel pointer. Look at:
> 
>        if (!info->desc->ops->chan_available(dev, idx)) {
>                 cinfo = idr_find(idr, SCMI_PROTOCOL_BASE);
>                 if (unlikely(!cinfo)) /* Possible only if platform has no Rx */
>                         return -EINVAL;
>                 goto idr_alloc;
>         }
> 
> If a protocol doesn't have a dedicated channel, we just assign the base
> protocol channel to it. We don't call chan_setup at all on that channel.
> Your patch assumed so but the core driver never did that.
> 
> Hope this clarifies you doubt.

Yes. Thanks for the explainaiton.

Thanks,
Peng.

> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
