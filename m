Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 091E5E2403
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:09:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAblCrmurkp8d2YjBOO37DqYS1MXolPjTxUjS5IOQv4=; b=kfkiK0ObNDtV7q
	2L6tpGpm6ZEmoQM6FogMLZW4MCIha/IDXHLIQCkQBfZxqbsh7UDjWBen6iQUkISvumTilcFPrgOjO
	BTla+ibkTHjN7Tj9WGF7GbMlY1N+33vqdqwiws6X2HYBn8kdmUJwD9wuh/ITfY1PqfQuXwitVVOWL
	7EPEjGhCVWPMJ8raSEc+GfOmdIdkpZLe9Tfj8mw3ywemPcw3IuEleDeABVxJdcLO254669GV+EX6F
	rJSwUDSYXUeALGQse9Y8CZhizvBVIY0yJDhVdYpelPXWlCajsHWrpVOUwR3rodXy5++5qXvvqBEZU
	6Z+EWBwVecbbl7D704OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMw9-0004TR-7N; Wed, 23 Oct 2019 20:08:53 +0000
Received: from mail-ve1eur02on0603.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::603]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMuU-0002qx-MA
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:07:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HavgujDjrOJaUDO/kjV29ZFyxa48586+e+olwiBRD0KGfzR52XIMixIaBAx+YrmyLaHjkjM0bbp6tWEK1PXWmRtVCYbQfrlLcXlqleUj9q0vk10+8LOMUiZtsx8I2jX7QgZgBuNYtuN/iVfxU8CaT4HuRUOOXHLChfFiKb6bSXpQZM8EBjwAL5BOLfbUgSa3tAXiwOoNKP3JpeznSpaZXBBzu5Wbdzzc/1OOtalb8ZDoibvWM/Lu0wYxnruqeVtzCyCP9xkmsbudtAesrBgQjVuacVUmGTPWj2mut6EDST8Nk2N9Y6GSwFY9FnWQ+CgrbxvDMjq4m6wkkeBOUX7asg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=btlRay3yp9k/vMTHvGvVM5ycBW7OvOsN5xwkzn1H+v8=;
 b=G4Him6BKajnKsZ9kKZC6grfF7AT+jV8G6J1L708Fuu2NHzmeLVULJp49mah3n9rfNgF3TMc02CUXAlNuI+Wsf728Z2/tp1ZhMPfmZkVC/uZXaKbbDgA1uUmr91M61uZefRPXwQXLkxZAI13tb/9asiIHHbyfG5134qmvu0v4Kn37Wu+dC3ytLP/QP1eLsIfwZsQkEToYGznSyynFA6tSwqcTOd933YICG6QXipjtV5DClbh1FsFKPRFgPEYSN31Z5itLj8++2d33owM4jeFIq+nYmExD7rsrEsRnb1kZ5t03KG5yNS7/1o6a727hvulA5r3agCDzKrFPL+vWUm2LXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=btlRay3yp9k/vMTHvGvVM5ycBW7OvOsN5xwkzn1H+v8=;
 b=SlGscV6umKHhArMOVP73SRAVDdMC9z+oS0OeerUe4vfOXyPgdR+FVQBKbbISxsSFjjRXBTFCmEfsX4OJQSYMbEi4kqtg3WVAAPFx2Mewa8ySfxuCYJ8EiDFZ8jsT+yARKFTGl2vSvJ5ATlBJiEpPkucNJpz4jyR4wHgk61YduOg=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) by
 VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Wed, 23 Oct 2019 20:07:05 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::c93:c279:545b:b6b6]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::c93:c279:545b:b6b6%3]) with mapi id 15.20.2387.019; Wed, 23 Oct 2019
 20:07:05 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Ran Wang <ran.wang_1@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>
Subject: RE: [PATCH v9 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Thread-Topic: [PATCH v9 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Thread-Index: AQHViXs7pjvy0YmnJESZ+DezIHv14qdn72mAgAAM0YCAAKtBgA==
Date: Wed, 23 Oct 2019 20:07:05 +0000
Message-ID: <VE1PR04MB6687A70243B9764F1356442C8F6B0@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20191023082423.12569-1-ran.wang_1@nxp.com>
 <CAJZ5v0jvQaREhg94f-COdYTt58gMP7YvqdEH0oYiS9Z56tg-XQ@mail.gmail.com>
 <DB8PR04MB68261D8B18D39DF170ECC7C8F16B0@DB8PR04MB6826.eurprd04.prod.outlook.com>
In-Reply-To: <DB8PR04MB68261D8B18D39DF170ECC7C8F16B0@DB8PR04MB6826.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9e96d190-6828-418a-7fbe-08d757f493cf
x-ms-traffictypediagnostic: VE1PR04MB6687:|VE1PR04MB6687:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6687EA5F673D647B8B2839D98F6B0@VE1PR04MB6687.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(346002)(136003)(366004)(51914003)(199004)(13464003)(189003)(55016002)(476003)(186003)(71190400001)(71200400001)(256004)(14454004)(6436002)(446003)(26005)(7696005)(5660300002)(52536014)(478600001)(66946007)(14444005)(53546011)(11346002)(54906003)(76116006)(102836004)(25786009)(99286004)(66476007)(64756008)(8676002)(8936002)(81156014)(66556008)(66446008)(110136005)(81166006)(9686003)(305945005)(6246003)(86362001)(7736002)(229853002)(4326008)(316002)(33656002)(3846002)(6116002)(6506007)(76176011)(486006)(2906002)(7416002)(74316002)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6687;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OO6dGbREqJKG2+d0hxBuOb4FGQa2VqQOCXMD1cYaEZxkpcDhYQlNdHsK0RvR7EGt7WAlXbOY3iqHOBY47Zohy2wTwA018vu3g0jhgwMse1zUsQ+26QhV04mp9x1EHrTSUyFK/fadosrqo90PbDAWcZRmM7wBzAvsMUqFRn9jHOL5X9cSDzSlMcROteYXwyOlWbpKMA47ggBog4axZgTfIxP2uwuCexRr6fRsrEbf0OiIRyczp8dCY35/BzBc5C7Fs70IP8HzKfkrcVKLBnm2PaQFgf5Ya7Lz2yMIde1uiPBQr2iz56eh8mCAZymri8y/6FIwZZOP+UJbn9uZ7bB1vYXSldfaTzT0Unj2HwMSg2LQ4qK0xD2aZJcjZ7P1TKchRig01jOTfL7gdhxYPuCbeu15YWOmj4rbaQBCsOz43oFMU0S4g8KbU0EmKSifHePa
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e96d190-6828-418a-7fbe-08d757f493cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 20:07:05.8581 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uTzE0P3KOt4dSHYh0h8rQSpS+5NMzbTXut0jK51yIPTM1gZAEvvgellZmsYOW/QSdVfREHtTQ799fqkHqB6YXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6687
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_130710_824488_997A91F7 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:603 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Ran Wang <ran.wang_1@nxp.com>
> Sent: Wednesday, October 23, 2019 4:53 AM
> To: Rafael J. Wysocki <rafael@kernel.org>
> Cc: Rafael J . Wysocki <rjw@rjwysocki.net>; Rob Herring
> <robh+dt@kernel.org>; Leo Li <leoyang.li@nxp.com>; Mark Rutland
> <mark.rutland@arm.com>; Pavel Machek <pavel@ucw.cz>; Anson Huang
> <anson.huang@nxp.com>; Biwen Li <biwen.li@nxp.com>; Len Brown
> <len.brown@intel.com>; Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>; linuxppc-dev <linuxppc-
> dev@lists.ozlabs.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>;
> devicetree@vger.kernel.org; Linux Kernel Mailing List <linux-
> kernel@vger.kernel.org>; Linux PM <linux-pm@vger.kernel.org>
> Subject: RE: [PATCH v9 1/3] PM: wakeup: Add routine to help fetch wakeup
> source object.
> 
> Hi Rafael,
> 
> On Wednesday, October 23, 2019 17:07, Rafael J. Wysocki wrote:
> >
> > On Wed, Oct 23, 2019 at 10:24 AM Ran Wang <ran.wang_1@nxp.com>
> wrote:
> > >
> > > Some user might want to go through all registered wakeup sources and
> > > doing things accordingly. For example, SoC PM driver might need to
> > > do HW programming to prevent powering down specific IP which wakeup
> > > source depending on. So add this API to help walk through all
> > > registered wakeup source objects on that list and return them one by
> one.
> > >
> > > Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> > > Tested-by: Leonard Crestez <leonard.crestez@nxp.com>
> >
> > OK, thanks for making all of the requested changes:
> 
> Thanks for your patient direction :)
> Actually Leo and me planed to have a f2f discussion with you about this patch
> on LPC 2019 but unfortunately missed the opportunity finally (v6 review was
> pending at time).
> 
> > Reviewed-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Thanks for the review.

> >
> > and please feel free to push this through the appropriate arch/platform
> tree.
> 
> Yes, we will do this later.
> 
> > Alternatively, please let me know if you want me to take this series,
> > but then I need an ACK from the appropriate
> > maintainer(s) on patch 3.
> 
> Thanks again, I will wait Leo's comment on patch 3.

I will do another review on patch 3 and apply the series through my soc/fsl tree.

Regards,
Leo
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
