Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4E7124750
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:53:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVzn203FzxGeUHD/sn7g9qqeZUPGM3j3oi0Y0fKZXy8=; b=jLn82vp6PDdMD+
	JVOHRdYOkX1hu0ww0w+aMPWLGCy8YxUkMkCUVSTEFGObzzMtpl4dsAc5X9M5QWM5lknv2JkzQqSbO
	Lg2yyUN7NtLV00vrNVAU0OJmZf71afG9BrkQkecVl9jU+G7RgLrhEITQ+9J9p2UkA/0kpMlqyzv8c
	sFbTgTrK/wiR0aiCnSErjfHJRgcmoTLEqc/wPLOjbU7y8Xq0xzrb1RX8QR7fYDIr/7m5DYVZTSKXs
	0XDlech2wav+3qo/o+dHC+/5udjfiU1b6VtURInrPn/aLypC2QB79w6TVV1VSvEtbhXlRuu9ZPSrf
	qFbhkaQGbaBr4ACn21qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihYpo-0004dn-IP; Wed, 18 Dec 2019 12:53:48 +0000
Received: from mail-eopbgr150057.outbound.protection.outlook.com
 ([40.107.15.57] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihYpg-0004dI-7P
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:53:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yjg6WyTJoTnuPchLTtCvPGuMibDf6QWrNwkh41yC0+b6Sxdl9594nt2cEsDs1GtWiuD6UzjIOqSFGeZ6OXqT8u19TCmOWy/ZiizsOfvfDVtzQPl132DBkm80uKT15vK5tWncDHvxug3sCZQMaZUfzQ0nVNqh+zpn/wQSb//YcKJWMELNnLq4/Q29jwhLafwjxzS180+67BquHC947bEMAol3CjDF+K0JmdjK5UJZ6rZYVDVXb1r9vlSNpUSFqKcftzhuael6ofkg30Ryi5FwTC4U87cK5CnxnigQ7ZACSqfxUGjlPadazlEO5uuuYBIjb2Y6kam38FvD/ud7jpsrYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9sYiC5a53T12wfqXA/aZn15QyMiCp+e1OKZWyrsR/ok=;
 b=hrrsxG2OJHhpsWynb6VvWjCgC0eYEakSNAA/noUf3U5o7P89XMcJ6RqI8O3Ecrj1a8DUoY7l4hWnNJbiUa0Xp29pI9OURML6qZteCD8B0AIgKAGfdrSsu4IoAC+q1hFkFQASUpOaqy8Y6avBn6sAgjJlUT9E82iyztg72ZqDbM6MG9GkJZESNgEt+L2i6r0Y5f/rKuF99CJuT0N4pJ8lXvAu61Chq/imYCJgd+Pn78NOUQ7iLo30O/WirKg1zpZnEBDhwmYlSRiIKRMXf2JxtlQMUpPwcUxJ0IPtSecWP0mebOmS3ajjI2MvBvpZUO/+w7EtoS4o8lDc/VbDx+hfdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9sYiC5a53T12wfqXA/aZn15QyMiCp+e1OKZWyrsR/ok=;
 b=Kknc+xgpFS4L7gUXeMeitU56jCfTVX0Q7SbTgUoAIZyL8O/yjqPK2I7wmEMrRFXKlOsmeiHJWIU8fLkMpa2ZjQ7VkcKSm5oFjInMUVC5QlbljovyMCyoRdpNKV5OMr0TbrikJN6R9KS7Rl6AVgMvQdy2IVmHvQCGC2H99ovDNLU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7091.eurprd04.prod.outlook.com (10.186.129.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.14; Wed, 18 Dec 2019 12:53:37 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29%7]) with mapi id 15.20.2559.012; Wed, 18 Dec 2019
 12:53:36 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH 1/2] pinctrl: mvebu: armada-37xx: use use platform api
Thread-Topic: [PATCH 1/2] pinctrl: mvebu: armada-37xx: use use platform api
Thread-Index: AQHVtaDOy35Q6KpKLESPO8UEr8sdH6e/17qAgAAA/vA=
Date: Wed, 18 Dec 2019 12:53:36 +0000
Message-ID: <AM0PR04MB4481B3EAB2DDC42A137E8AAB88530@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1576672860-14420-1-git-send-email-peng.fan@nxp.com>
 <CAOMZO5DeA24EUjr-E=V=tGNaZ7UkOEi+F5-kEBqEB288DSNSoA@mail.gmail.com>
In-Reply-To: <CAOMZO5DeA24EUjr-E=V=tGNaZ7UkOEi+F5-kEBqEB288DSNSoA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 76324939-dc25-4b05-19c2-08d783b94c24
x-ms-traffictypediagnostic: AM0PR04MB7091:
x-microsoft-antispam-prvs: <AM0PR04MB70913FF7763FFC57C128806288530@AM0PR04MB7091.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:335;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(136003)(346002)(376002)(199004)(189003)(71200400001)(76116006)(33656002)(81156014)(7416002)(54906003)(55016002)(7696005)(2906002)(66946007)(8676002)(4326008)(66556008)(6506007)(64756008)(66476007)(478600001)(186003)(53546011)(66446008)(81166006)(9686003)(86362001)(52536014)(44832011)(8936002)(4744005)(966005)(316002)(6916009)(5660300002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7091;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SIrZViJ2jxbZM5BBOGLXOoirDxWp8lYLeFOY9Cuvile6R/S/AreLoehXmcTA3U2icbGPxaz++SoRSBLOWdzBUnuqmju8YbUEPFS/WloNl7sG6DywH208Q45UonM7sVCBw8jGVS2bjlhpPwNwIGgbuz4tLqBosRW8LR68/uASbM4ACYx9kizdm6afeKap+gpa484a3yr+3XDNOKvJIiuim2doWPLzF/pZl4Ic6pqfV0Kq8uEuuLGaPK4odPlC2jHKEoEKdXaxVQL8x3gDUucC5izEHRAj2MOQ0j16zUWjU19FFdqfwnv+4LPhZCkDoHbb46NVmz4f2VKjov7jpkXgrUFTP/bJlDqRsjAEPTEfa3uqmlgt0MeB29U8PO8A+kfFQcvxH1yantOMzIVsV3mlROWbbnsvn8Bt7SKK7FidJJJ7S8t69KppzQQIJC6gkAd1PYvkgFHCcibVv7okG+YZrCujtT7PinFRniDW3InLfGY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76324939-dc25-4b05-19c2-08d783b94c24
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 12:53:36.5287 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lnqqyORTYksBrcpyXL8zTP48+wOs04Q1krplR5U1YWnKkNVrHIfBnXh9exgQ8I2uDAZmImkqlzSZkexan0l36A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_045340_270850_B4ACD029 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "wens@csie.org" <wens@csie.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 1/2] pinctrl: mvebu: armada-37xx: use use platform api
> 
> On Wed, Dec 18, 2019 at 9:44 AM Peng Fan <peng.fan@nxp.com> wrote:
> 
> > -       nr_irq_parent = of_irq_count(np);
> > +       nr_irq_parent = platform_irq_count(pdev);
> > +       if (nr_irq_parent < 0) {
> > +               if (nr_irq_parent != -EPROBE_DEFER)
> > +                       dev_err(dev, "Couldn't determine irq
> count: %pe\n",
> > +                               ERR_PTR(nr_irq_parent));
> 
> Why do you return ERR_PTR(nr_irq_parent) instead of simply nr_irq_parent?

Please see:
https://lkml.org/lkml/2019/12/4/64

and the patch in tree:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/
commit/?id=cfdca14c44a79b9c9c491235a39b9fc1e520820b

Thanks,
Peng.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
