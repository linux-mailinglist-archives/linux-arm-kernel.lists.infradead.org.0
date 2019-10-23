Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 831DBE16B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 11:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZXXIhuXc6IJAxmo0+WFyBdaLODX9diAWxd08ZLJ5oQ=; b=os84H4vMtBVdFK
	foxT47ELqz/+N1XuXBZ3kGPeZN9VtC6XFQENi0khh+6m/XluSVFlMdlWmmxueD/N8v1YnDDJXxpBX
	dClaD7I9ixgam48sDeLxzz4KQrI5Jjlr6QUDhRQlr2Oy8b2isnXZV/Ss5cWWEqHVFO1PY8xIziQEm
	SRch8r6HQSsp8QbLFHcrNSYcW0+uUjFkyWfefVkRhBiuFpquRpz2tSiFPQLO/gb/DkqTwkSzfcBI0
	mvUY3Nvx/D4RMD8lnPPdijTfqj6oJfN6CKWW5xShJ54EWfnhGeEc8b4Ow4X5ut0Y6TjWBSoGxOobH
	1K7tYJWWzDnDq2kWby1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDJz-00006V-5K; Wed, 23 Oct 2019 09:52:51 +0000
Received: from mail-eopbgr70079.outbound.protection.outlook.com ([40.107.7.79]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDJo-000055-7M
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 09:52:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IVCz2GQOSskeQvdbXQMwhwuJb0Hu7C4GvkT9Y7GIZut6ADMH8f6YG9bxxPrg7vixTOBke/aMRUlL1L/k6n4teEbSpIckHkuNXsTGoQQUaYCnAYzU/t8/Wi0TpCGKykfAk8MBx3Fi81Gj4YgpIqZm8zOlPOty1TuZv6bbkFVkkZ9GjIBM8xHfXiTp96Hzm7nC81A/3KzhT0vLUIgJOqLgia4JS3jscg9GD4g42LnrdQCFn1bSu/dHdxH7h4kLh/2OrxajuPng8rGoHSNFAp6Xk/lfSnEteGZxojLd587CkifopDmfDj0Hg+lR1rUNPk0Pgb6CymXXTTO31L+nR7S3Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y+zkCo3fe9gLsE7BLQxy++PAwztFcHXKQ66Z2Q/zYIA=;
 b=ULpLFdS+PITwuoJXijhiNcgY7maV78LiEouU1wPluPytDutNlcHpNrPEOoexwGz3P6kLkVEDAoBizoiIHy+oLbFwYdFN/zP9OFvD4ESvam/g3sY53CNFXCFdMw2i+YqXFDNwS+vgw+S+tmr3XzuK7YYVRZvbX7GSh1NaxFhZDQ3Dkb4LAQ9adUVmrSgLPnrrp9hvaQ1O1sWLAv+DTOb9N9hSKAzU2UwwX0bsj9XsbJyqiQK0+Lm0Mwa7jg2ZXK1W3ZKpLkNGEhZzZ/NO6U63tb3il8OUCFOJt43YGtpze76DWbTeSBDHJlR4+bWR/6k4bACeUJMUq3wPPeuTedy+yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y+zkCo3fe9gLsE7BLQxy++PAwztFcHXKQ66Z2Q/zYIA=;
 b=FX+z9mTuCoh/q1jVtTsODks52xjJr/tSewFQCae4Ou10WjQU5026oD5/ToaZd8cs0JSENnf9i0KDvmkCcNT44ORFPpd8wt01cJtyJNvf86vA99HGpEjWWI47CkkktnDxBXc+dQ1QQ+O0+XsFvzWUv1kw3yY1hILu9FivZ0THQHc=
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com (52.133.243.14) by
 DB8PR04MB7002.eurprd04.prod.outlook.com (52.133.242.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.24; Wed, 23 Oct 2019 09:52:36 +0000
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::bcee:92dc:277f:6a78]) by DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::bcee:92dc:277f:6a78%7]) with mapi id 15.20.2387.021; Wed, 23 Oct 2019
 09:52:36 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: RE: [PATCH v9 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Thread-Topic: [PATCH v9 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Thread-Index: AQHViXs7UdarjtV7pUSRto5BtluIHadn72mAgAAD6VA=
Date: Wed, 23 Oct 2019 09:52:35 +0000
Message-ID: <DB8PR04MB68261D8B18D39DF170ECC7C8F16B0@DB8PR04MB6826.eurprd04.prod.outlook.com>
References: <20191023082423.12569-1-ran.wang_1@nxp.com>
 <CAJZ5v0jvQaREhg94f-COdYTt58gMP7YvqdEH0oYiS9Z56tg-XQ@mail.gmail.com>
In-Reply-To: <CAJZ5v0jvQaREhg94f-COdYTt58gMP7YvqdEH0oYiS9Z56tg-XQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f046a4d1-3e53-4029-56e8-08d7579ebb9b
x-ms-traffictypediagnostic: DB8PR04MB7002:|DB8PR04MB7002:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB7002FE0A224980C1063BE2CFF16B0@DB8PR04MB7002.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(346002)(39860400002)(366004)(199004)(189003)(14454004)(486006)(4326008)(476003)(54906003)(66446008)(66066001)(11346002)(446003)(7696005)(8676002)(2906002)(76176011)(7416002)(81156014)(81166006)(5660300002)(6916009)(6116002)(52536014)(8936002)(3846002)(74316002)(99286004)(64756008)(66476007)(71190400001)(71200400001)(102836004)(26005)(6506007)(53546011)(33656002)(7736002)(186003)(66556008)(305945005)(25786009)(316002)(76116006)(66946007)(229853002)(86362001)(6436002)(14444005)(478600001)(9686003)(55016002)(6246003)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB7002;
 H:DB8PR04MB6826.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4dqyDE5/H37BxgjQxq2YG1+8REOLL3UDHOz3MCLBEWBSwZCqa9rgl/tNzajgG/kXeupZzSgTa2itTQ7No4IIzbSq8tEfd9ezaP9GpIlB0+O7H5fbyBnEcrBG567V2M4zTVpKixkDxT1fGxjqPiRpBqjgkUB5nAbWub2bs4Q9mS7jG03El2O1e/1GzUj26I4bsCwUfMvvWNGTKmh1CkHwuYaN+MizPqu8mwOx/+dryUMIkCs6PHBFH15Sz5ZcFDthRBWAfKggZ54F+6hOC4ps2GzYNFSvC8tw5vd5mjxcoC+KWG07RQdgMmLYTjoph94Re40CA9jyjAKrx+WQ3VWQbZPAbHlDoear6gQLXGi23AiKztImjEdAxXIwlrRsrYPZX+jOkMRG7I6gLe5W3xVkVaumaDgozlNq+81RFQu6La6hnmhPU5RvufgPK/aVb+zf
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f046a4d1-3e53-4029-56e8-08d7579ebb9b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 09:52:35.8948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uQplgfQzr0ExExL1A8eUXQMtCPSfucu1oImQZ2W6myyJmd/j8aBHcG+quo3eL08r296lVA4EdBIYSbmk2ZTMCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7002
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_025240_263649_5C9A5A5C 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.79 listed in list.dnswl.org]
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
 Anson Huang <anson.huang@nxp.com>, Len Brown <len.brown@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rafael,

On Wednesday, October 23, 2019 17:07, Rafael J. Wysocki wrote:
> 
> On Wed, Oct 23, 2019 at 10:24 AM Ran Wang <ran.wang_1@nxp.com> wrote:
> >
> > Some user might want to go through all registered wakeup sources and
> > doing things accordingly. For example, SoC PM driver might need to do
> > HW programming to prevent powering down specific IP which wakeup
> > source depending on. So add this API to help walk through all
> > registered wakeup source objects on that list and return them one by one.
> >
> > Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> > Tested-by: Leonard Crestez <leonard.crestez@nxp.com>
> 
> OK, thanks for making all of the requested changes:

Thanks for your patient direction :)
Actually Leo and me planed to have a f2f discussion with you about this patch on
LPC 2019 but unfortunately missed the opportunity finally (v6 review was
pending at time).
 
> Reviewed-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> 
> and please feel free to push this through the appropriate arch/platform tree.

Yes, we will do this later.

> Alternatively, please let me know if you want me to take this series, but then I
> need an ACK from the appropriate
> maintainer(s) on patch 3.

Thanks again, I will wait Leo's comment on patch 3.

Regards,
Ran

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
