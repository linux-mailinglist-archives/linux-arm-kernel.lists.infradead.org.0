Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB94622FE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYtvoxJKRPgGfr4hogzGeoLEiAyEo8NORCGVSAx8paU=; b=AUpYWoj+K/wb1z
	Brnp3vVycgb1ivTdd8CoU+VnkS0KTcvPiqTe9AMldSMoXvv08cc2zLBoyUyrXj19NyaQtGL2Yfdqz
	kF58m0HuNoaA4ZyiFV2LsGn898qsWCMoTGgEdKbJSsPO11EPGbCur5MZ0pDT43YM6rB36kCZwwCGk
	UXn1A7Z/n8O5/8VJUcBj+6xeKzG1Gnx8SE0UOFY1BnQZDJmUFTcRNnP6X0JmAWjj1A/ipcv77k7um
	8wqlyLfb02544/bfw2sfCyZOH+8gMxLElUKpuKj3Mc9hEHv4x+ercd6OVR01SIH/ScYRZLBVDDJMx
	P14j4kQzcjtb88yNPaxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeLB-0006fZ-FI; Mon, 20 May 2019 09:12:17 +0000
Received: from mailgate1.rohmeurope.com ([178.15.145.194])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeL3-0006f5-M4
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:12:11 +0000
X-AuditID: c0a8fbf4-519ff700000014c1-41-5ce26f60b8b6
Received: from smtp.reu.rohmeu.com (will-cas002.reu.rohmeu.com
 [192.168.251.178])
 by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id
 8F.D3.05313.06F62EC5; Mon, 20 May 2019 11:12:00 +0200 (CEST)
Received: from WILL-MAIL001.REu.RohmEu.com ([fe80::2915:304f:d22c:c6ba]) by
 WILL-CAS002.REu.RohmEu.com ([fe80::fc24:4cbc:e287:8659%12]) with mapi id
 14.03.0439.000; Mon, 20 May 2019 11:11:49 +0200
From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To: "leonard.crestez@nxp.com" <leonard.crestez@nxp.com>, "broonie@kernel.org"
 <broonie@kernel.org>, "lee.jones@linaro.org" <lee.jones@linaro.org>
Subject: Re: [PATCH 1/3] mfd: bd718x7: Remove hardcoded config for button
 press duration
Thread-Topic: [PATCH 1/3] mfd: bd718x7: Remove hardcoded config for button
 press duration
Thread-Index: AQHVDunRAQsqgw5TzkyWWRZ4GrJMiqZzmM2A
Date: Mon, 20 May 2019 09:11:48 +0000
Message-ID: <67cb37340895aa6a2f0f005945e72dc1ee72253e.camel@fi.rohmeurope.com>
References: <cover.1558341613.git.leonard.crestez@nxp.com>
 <ed27e04ba7486cce7860197bc8c76bcedafde398.1558341613.git.leonard.crestez@nxp.com>
In-Reply-To: <ed27e04ba7486cce7860197bc8c76bcedafde398.1558341613.git.leonard.crestez@nxp.com>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.255.186.46]
Content-ID: <07E3616871749845AB212EDAA1F64813@de.rohmeurope.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Ta0zTUBiGc9Z2HJCSw5zuiCC6RA0mCvOWxhjEHybVEKORBKOLUKFuxK3D
 bijID/H2w6mgAirTifESEInI0ATRGVmEgEHxFsSAgbl5QcVEkRAlXtoVhD/t2+/t873fSb4D
 CU27OgbmCA5eFDiLXh1BPqge9SzMtL01JhV/SGJ+lDcRTKCvBzDl/qCaqXz4hGLqG3pIpqb8
 Dsn0DbcApvrNN4rxBLooxvnrGsFcffVMxRz2PgxjPt7SMUdvPgYpUWy5sxqwtRdqAeupOaJm
 e7vuqdmGK/vY+q+NKrbkdxI75Jm1AW6ZsnI759i9KcckJCZnTjF7Rvqp3H4qv7vqJVEEOign
 CIcYLcWBMwHgBBFQg7oAHnpaE6Z8tAE8WF8rORCq0UrsfB2qa1EpwMHrCkGgayQ+dchFyq2m
 oi245fkoIWst2oq/dLvH9GL84pw79A+J5uLgsQ6VrGm0Hp93tRNKWgnANzpbw2QjHG3Dn5+2
 hWCA4vCRoq8hgEA67Hk/MjY3wlfudRKKnoYHAn/G6nrs/ekn5akJlIDrmhIVNAXvL/ZSip6D
 y476w5QZonF7RZA8Aaa7JiW4JmjXJNo1iXZNoi8CqgZgK5djMXEO3rBI5PMWiTazVXpl2awe
 oKzBj0bw17fWBxAE+kg6cudbo4bidtsLrD4wA6r00+iRUr9RE7Xdll1g5uzmDDHPwtt9AENC
 r6WXzO8zauhsrmAvL9rGrZmQ1Ovo0aZmowbJyTt5PpcXx91YCPWYLhSknGiRN/H5O3Isjglb
 BcPl5hExWjsvZPMil+cwZ8j7kmGXFka2IqXcdBmn7bmcVaoq6CNggA8u+d0EbB6Rn4PNH9yE
 hhRsAh+jo99bJQDJgDlP+B/3CeikU0+lTbIbKd2P/90+SUEqKSg5LRTk4CasmCKQ6J2Zljo0
 Z3/6/d+G2bu+tzqzdgy7Nm+OHyp0p3Z2nC+LvdQDok3gxbGBulWpJzW3Xy4/UOXb47bMEzIb
 MhKq4tuS78btK+RP98HeitVZPcHjdQkV6w5+PLSin2p2ri0+ZYw2VGvPlF6u5N9VrhlYltKY
 /jn+7EZ4x8+eu3vVO39YT9rNnGEBIdq5f/6oAE3cAwAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_021209_866978_FB7D8963 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.15.145.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "angus@akkea.ca" <angus@akkea.ca>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "yibin.gong@nxp.com" <yibin.gong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-05-20 at 08:55 +0000, Leonard Crestez wrote:
> The reset button on imx8mm-evk is tied to PWRON_B pin of bd71847 and
> the
> long press duration is set to zero from OTP. The linux driver
> overrides
> those values and breaks reset from button.
> 
> Overwriting OTP or bootloader configuration with some hardcoded
> defaults
> is not desirable, keep already programmed values instead.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Acked-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
