Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E6EEE912
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 20:59:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyQyho5MYE3RYaGKv7Cermr3e5oYXBuUu38ssHyqbDQ=; b=Od7VkkrlKgzCm2
	5k/2Bs7iS+VEpdemaGjuDuzHBDDgHNSSjx1EgBEO7gSYkFsG8t02YWlhM2cDUGmk6O0Z/ITtomU7d
	amqSz1hWVbKqujSyBe2NXhjdYrlhNSk4fOVaNR384whpeup25cpm6bEYD8B0muy/JtR9mklewfjD3
	9ckGF0JsWfmcC40zyVihLaGnFUGdWRHaOkSegz3aX70H9GUvlwn9WfsIXW1sDMeivw5WEOe3y9bVy
	rGNAGQkZuF1k3OoHSfl8U3A3fTxkWJPf5Tl2ytk7JUHmHtEl2ofrKHTngj9XMQR6qB6c9o10RWWbn
	H9T0dbZC8U7BuA6ioyIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRiVG-0004WE-4u; Mon, 04 Nov 2019 19:59:06 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRiV8-0004Ud-C7
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 19:59:00 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 694A6886BF;
 Tue,  5 Nov 2019 08:58:53 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1572897533;
 bh=HdBTywQc8qrpgd8ZsBDiYT4SQgvtb8dj3sZGk/RXvG0=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=fFaosFEgfCj2/CfG9pTFKZ9c7jlN98OkxyMbJ0ZU0iXJBR/CJC2aQj+CUHtyhSH3Z
 kw/cyrljwO9a06dRMvlcworxsJ9w1NgI2kC97RqqKK4Zh0CsYPITQmu3Ekfr+zO2yH
 OSNAjgoUn+NYb2CsaV0V4nfdDzmL4yw/yeHYkpyDoSgA8qddnse/qUEdORrBQ2iCAD
 PC3RhpP9sJWdlA7WJfdxIn1mME1vmX4ZmZYrBwQeL9IRmbaPoOrib6+2IB6tiiyEjP
 KKeCghhgeA7vPS8SXJMfuIoI5GObywi2TJ1EBBi/p977IenryFC2+MCa5EElu9tcoz
 J2Ep4yCIwAbkw==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5dc082fd0000>; Tue, 05 Nov 2019 08:58:53 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8)
 by svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with
 Microsoft SMTP Server (TLS) id 15.0.1156.6; Tue, 5 Nov 2019 08:58:53 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Tue, 5 Nov 2019 08:58:53 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>
Subject: Re: [PATCH v3 2/2] pinctrl: bcm: nsp: implement get_direction
Thread-Topic: [PATCH v3 2/2] pinctrl: bcm: nsp: implement get_direction
Thread-Index: AQHVkqVeZmr/Y3m5nU6eLv+86DO9ead6SMkAgABMjgA=
Date: Mon, 4 Nov 2019 19:58:52 +0000
Message-ID: <ee32b9a0d6f8ecef9c70fb684e5e29b873993cf5.camel@alliedtelesis.co.nz>
References: <20191104001819.2300-1-chris.packham@alliedtelesis.co.nz>
 <20191104001819.2300-3-chris.packham@alliedtelesis.co.nz>
 <CACRpkdb530Do3BnVBA6Q7TWOQ0_QfytqaPHPXCPoZP_742Rvzw@mail.gmail.com>
In-Reply-To: <CACRpkdb530Do3BnVBA6Q7TWOQ0_QfytqaPHPXCPoZP_742Rvzw@mail.gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:d0c9:dea8:da1e:f79e]
Content-ID: <635A444F9D55034FA62731C85A549751@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_115858_939971_99DD4703 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-11-04 at 16:24 +0100, Linus Walleij wrote:
> On Mon, Nov 4, 2019 at 1:18 AM Chris Packham
> <chris.packham@alliedtelesis.co.nz> wrote:
> 
> > The get_direction api is strongly recommended to be implemented. In fact
> > if it is not implemented gpio-hogs will not get the correct direction.
> > Add an implementation of get_direction for the nsp-gpio driver.
> > 
> > Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> > Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> 
> BTW I think it looks like this the GPIO part of this driver can be
> converted to use GPIO_GENERIC. Compare to other
> drivers such as drivers/gpio/gpio-ftgpio010.c.
> 
> It's a fun way to cut down lines if you have time to check
> and test!
> 

I'll see if I can fit it in. Got another problem I'm chasing on the
same platform.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
