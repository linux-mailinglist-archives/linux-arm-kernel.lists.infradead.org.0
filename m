Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D671558DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 22:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=4OGmq/XXm3FvU7eqkyrWDWwil3RJaTo9zJej4kpIpcE=; b=kdRKDOWaZzH2+c
	Nh1xvm5j0doqOqOHXczms0vMGHdGB7Ql/7VJWdwaTKZS4RMCGt/A+4cHEu8oBP+n1jTpkwYHWs+EV
	M936XgBATpN4NHK0W3RIM1TClj54exByNjVfZ15QFAWarQMYKX25S9pMNEc4qI97enFSvYM5SYAzS
	9oP0GltmyUA5o/Do2IlSlagegkl5tfoYzQDwJcMn2jRjALfM0U+sJ2BzLCkNma5ZVPi1MpV7Bjz16
	fDVlLcUgvPajwD767g8uDmw0BwV815KInZS7c0OIo2MoQfrTESxYyeyyLoIBEXTjx35ZyD7J6wP/t
	doCWkXH06GBxviF8pSpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfs5f-0003ow-T8; Tue, 25 Jun 2019 20:30:56 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfs5P-0003nz-O1
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 20:30:41 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 6157B8365D;
 Wed, 26 Jun 2019 08:30:33 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1561494633;
 bh=1kY+bwPF4p0YA079A5v673sAjTxOqECEQoGaHNKiN3s=;
 h=From:To:CC:Subject:Date:References;
 b=VjItwXPkxG2jYM8fucFA+6U+KKGhMJlV1pdLCHpbaf911rG7qGBsY0AB0hlpWYuia
 GERmgX6YTcY7luDgnRBGjpfrtQ7DM0drgyzazpNM+oY3TQger5V1kQJe6qWlzsiLvt
 eNVRPu/JO7KHxEDJ0DEk/PYNC08SVexa9tmgu0aJUvTjJ55RdLs2S6kaM6DcJxVuZk
 OiJ5TE4tEbuDLpxPAafNDfPX4P4qEQ/aN1E26WVnWZXJP5UZHm4KmP9EIKysdHFf87
 TG+9MrQ4gB+8YmT+zVWnLdCSBrrkP9kfuQ9bBHlslQK+vdHrAtafiqh4jVcudHu8jf
 fdQywZbAJ2sXg==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d1284690000>; Wed, 26 Jun 2019 08:30:33 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8)
 by svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with
 Microsoft SMTP Server (TLS) id 15.0.1156.6; Wed, 26 Jun 2019 08:30:33 +1200
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Wed, 26 Jun 2019 08:30:33 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 3/4] pinctrl: mvebu: Add support for MV98DX1135
Thread-Topic: [PATCH v2 3/4] pinctrl: mvebu: Add support for MV98DX1135
Thread-Index: AQHVJVdQehuQXtWHL0SatF2H1kpYDA==
Date: Tue, 25 Jun 2019 20:30:33 +0000
Message-ID: <f08d52a1c4864c6981f3631523965cf5@svr-chch-ex1.atlnz.lc>
References: <20190617215458.32688-1-chris.packham@alliedtelesis.co.nz>
 <20190617215458.32688-4-chris.packham@alliedtelesis.co.nz>
 <CACRpkdbSS18us3o=v7ki_=8cLXYjfDd8q321xMCounXPh11GAQ@mail.gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:3a2c:4aff:fe70:2b02]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_133040_166565_E83268AD 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, "open
 list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Sebastian
 Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/06/19 12:27 AM, Linus Walleij wrote:
> On Mon, Jun 17, 2019 at 11:55 PM Chris Packham
> <chris.packham@alliedtelesis.co.nz> wrote:
> 
>> The 98DX1135 is a switch chip with an integrated CPU. This is similar to
>> the 98DX4122 except the MPP assignments differ.
>>
>> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
>> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> 
> Patch applied.
> I just assume this one has no dependency on the clock patches
> so I can merge it separately.

Correct. There's no dependency between the patches but they're all 
needed to successfully boot a board.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
