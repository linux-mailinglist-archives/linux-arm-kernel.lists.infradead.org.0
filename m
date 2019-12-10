Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA90117FEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 06:47:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eKMSvjny+O3hn3YjiqGwF5NWOHDdGTXe3OgATpxe5g=; b=TLfMQfI/OFX/mq
	uI5hG0xP44UZmaO/4lp+piUxIx0aNSPAm/xXPQvePBjP9zBN9zYqPJiYVs/KxMJ9sWqVthuuG8tCO
	/SuvfYhcFZ6H3+yzEkX6WKuDrClfT7uZ+lOj0w2+4iuvedgOJIgvhzCWrQEE2CNpWHD/pOn5yviVt
	KR5R5QpFlVLpa9L4GDwp9ztY1APNsYp8qbovqYikyl0zwfwKhilqdMlTLyVf2zSHh4qz1F0qRdgRP
	OwmnXSRNqWvrxmPk8F/PNf0N8T9UMICjc5yxfYNmqerguFBmn0F7LunBPl3IDMExS7c7+sSDjEQ11
	+yabWQUS7THP7MfEdcqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieYMK-0002Pl-Tz; Tue, 10 Dec 2019 05:46:56 +0000
Received: from mail-eopbgr130082.outbound.protection.outlook.com
 ([40.107.13.82] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieYMB-0002Om-Vk
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 05:46:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ps/mRYkdlDOnqaUHAtr5KE7BU+5ZAH6+zwYtwXXcn7dMchrTIKpeAdIKtHqi/sPDAnKbFWWaG5V7XhiV1rQG1iikD5tj1JtKuXYq00i23k4XOFiwM6Xmlc5tZuOOCri9hABOz/9GhCCC3h3eEcW3px7i7Joyi3Ygjz/JG6PLRqQLEjzY+042v8eUa7d3xwRMdPpA8HnpZWCLgbHesJcJ0kiYAj6kCBZMkPfTdHNtQ1tv/lxianB8sUhGFyBlhCELQD3jH+OUPX9pzwPHStKK9YuACHk0dGGWWfSrrzhcjAQ93j5p3QQ+TsJAhUtu59nzErcl4Hh5VqBts0uhbhaiPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EEGQqb41bj64/UuA4ycviSypehWaggeln7sKfUll6cw=;
 b=jTDFsIUfur5NI5wFklEX6qjq/k/n5VIlgGOo3n8wY58yi7l4vSUK8TRu0IiUYggX/JiXlzrBPtEVcUEYMWBXzoMK1xvBPeCCz+t6HAPyFIydZxK4mn0ulJmtdSWW/AYXj5k44lGJ+45b2LiexZYT9LrX2am/siNCU2t3O2UvhjKQ5ZDviWApOeYll8o8teyWdKfykpUTrSfxMATHjNOBoUPwkIy8pWMVIfspdKVaAwYfzFS0eHAaMHAnd0rmhgccHuHzuSNEGT3+/4+S+Z8b8HDxgnfQQZB2a+4srDF+UWAlgByukaJ+8GD7gJtFwfWdBhPNc6IwCJxlHNLS6djJ1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EEGQqb41bj64/UuA4ycviSypehWaggeln7sKfUll6cw=;
 b=Rvp5Ve2emZsCcjX9Wr6oQ/RJe/wC+Yg7Qy73TdsNfApP3Sbm0CeHrxoG0GBpS76Dkg7wHBia70V/6kQOTakm1XIoF4GZzIwg9KH/NfLAD2AFcjGwbLnmgUBlhgfArY+gLvx8xBoN0mcxj0u5xkgX3+odLOGcNrwfzkOFBa0EJj8=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.3.146) by
 VI1PR0402MB2799.eurprd04.prod.outlook.com (10.175.20.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Tue, 10 Dec 2019 05:46:39 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::30e0:6638:e97c:e625]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::30e0:6638:e97c:e625%7]) with mapi id 15.20.2516.018; Tue, 10 Dec 2019
 05:46:39 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Andre Renaud <arenaud@designa-electronics.com>, Fabio Estevam
 <festevam@gmail.com>
Subject: RE: [EXT] Re: iMX6/UART imprecise external abort
Thread-Topic: [EXT] Re: iMX6/UART imprecise external abort
Thread-Index: AQHVqVLo4K9VUksIR0CZH5d48DlS+qeyyvKAgAAcIyA=
Date: Tue, 10 Dec 2019 05:46:39 +0000
Message-ID: <VI1PR0402MB3600DD7A4C9BFFE8E2805378FF5B0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
 <CAEj2-1M6950NxK0mOBzdc4qz3b=eBzD8NdLKE55aas5WN0iZkA@mail.gmail.com>
In-Reply-To: <CAEj2-1M6950NxK0mOBzdc4qz3b=eBzD8NdLKE55aas5WN0iZkA@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 28638e04-7cd6-4d43-67ac-08d77d3453fa
x-ms-traffictypediagnostic: VI1PR0402MB2799:
x-microsoft-antispam-prvs: <VI1PR0402MB27992C5734C7DDAD18F6BF55FF5B0@VI1PR0402MB2799.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(366004)(346002)(39860400002)(136003)(199004)(189003)(4326008)(186003)(26005)(55016002)(76116006)(9686003)(8936002)(53546011)(81166006)(7696005)(2906002)(8676002)(33656002)(110136005)(305945005)(66446008)(478600001)(81156014)(52536014)(6506007)(86362001)(316002)(71190400001)(64756008)(66556008)(66946007)(5660300002)(71200400001)(229853002)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2799;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wHoSKGKxgXKB4xgNADO5c1ztGiNYjirL7qbDnKi5KqIZUl7KuyHt/nTa5cWpP5f6q6F3Sc2qh2sQL+mIOIywQXjEhoaJugAtfqfe1YZj6IyATYchpa0oGsvPopa6fuPKDfRXAnfQ+wVspqbeuYHjCQgtgSru88klcfXZSXi21dQD17YNLrsRLoVOdcTau4E4MHwExRY+KARTYULfPluLqT/gf4StPAEBX8bGcQ85Ql9ROaKmErYzFdefe+0j569M7a3Gs6WUMGnMmAs+MjpcIXaCQhi0WVDz0yOlQB2KdRSyy9X+LWa+9jGoj8O6U7Zu/WLjwL4FX6bnFv8adBJzx7CLITcJpzOkZ3Gm5rK9QgRq68fGr0j7b5AOVUmtw+/3bci5ishleZo1sQ0yNvi2Z8ZfxBcuD6mOH8D0L00EmARkyiNZKb8jROt7Pn62pJYT
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28638e04-7cd6-4d43-67ac-08d77d3453fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 05:46:39.5136 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0a2EUAQTME0HRJs8Mx5IW3PaOqI7deOcISL6I+dO04cTqSoJYnyx5GqWwfhDjhSGMCOGAysTOl6oFynjYXtUkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2799
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_214648_022556_2B7798E2 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Renaud <arenaud@designa-electronics.com> Sent: Tuesday, December 10, 2019 12:04 PM
> Hello Fabio,
> 
> On Tue, Dec 3, 2019 at 9:56 AM Fabio Estevam <festevam@gmail.com>
> wrote:
> > Could you please try a vanilla 5.4.1 kernel?
> 
> We have confirmed that this happens on the standard 5.4.1 board, but only
> when the RS485 ioctls and corresponding device tree entries are enabled.
> We have tried it on different hardware (the Wandboard iMX6Q), with just a
> minor change to the device tree - the addition of uart-has-rtscts, and rts-gpio.
Documentation/devicetree/bindings/serial/fsl-imx-uart.txt
Note that for RS485 you must enable either the "uart-has-rtscts" or the "rts-gpios" properties.

And please note rts-gpio should be the pin for CTS_B.

> &uart3 {
>     pinctrl-names = "default";
>     pinctrl-0 = <&pinctrl_uart3>;
>     uart-has-rtscts;
>     rts-gpio = <&gpio3 23 GPIO_ACTIVE_LOW>;
>     status = "okay";
> };
> 
> Then if we enable RS485 mode using the ioctl:
>     struct serial_rs485 rs485;
>     rs485.flags = SER_RS485_ENABLED | SER_RS485_RTS_ON_SEND;
>     ioctl(fd, TIOCSRS485, &rs485);
> 
> This will cause it to panic fairly quickly (in a few minutes).
> 
> This is with the SDMA peripheral disabled. If we enable the SDMA peripheral,
> then after a while we stop receiving data, and the unit locks up, although
> there is no panic output.
> 
> Regards,
> Andre
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
