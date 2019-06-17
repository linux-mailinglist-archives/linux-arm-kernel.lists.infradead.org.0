Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE293491E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 23:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=wMt94PRkbIQQD6S7JTpfmvRvnvDzz7SAmT2Q3bGdvpM=; b=iA0XYVNDfcFgaC
	54An17hI1UG+Wlx+g7mKVuu2B6swbn/Hg57qyk84K0B8zVppprzxwbwvelRtwL8LAGkaAwGIorXxw
	o0h5+MlPZDAdMANhrU2hUufD166yx5jdZf3F5+YLg2tP7izb9F/IA50tcc5wA9gA+z0BJbd+WEiPo
	od+L0WWgd8VufnftvIspPfexkj6ldjR0rHpBPW/6gpDpvTiZKQ3S9aX40nSmhPrAm3tlABhDNqkzY
	KRn2JoVrP78PfLZLta5Jo3k8j9Y+thkyOtumFK7OdZMuGDUEfw3/c9u2e4NwofaXSbHieLqDod71R
	zChBrmMoMo1s7YUHzAKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcykR-0005XW-D8; Mon, 17 Jun 2019 21:01:03 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcykG-0005WU-N3
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 21:00:54 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 9C78B806A8;
 Tue, 18 Jun 2019 09:00:41 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1560805241;
 bh=GTADMuzdK/ZS3g8VOZ9XtxpUP/TjXPNtpzO+owLF9lQ=;
 h=From:To:CC:Subject:Date:References;
 b=AoT2VV+BGgHwvP21C9mhXWKBNIbQBsSXM4ydqI8gyQCpqxkmnhCjnAz4pBa51NqN3
 wtlT06hKqcbWp6OB0rUuxzRpwmhWh0bPkU0TekxSeuW7EguafGtkrte1rmv7Rmq7ob
 qldqNwTpwLZhHTCNzRC0SRLw9rNDYiCmts9bJ+il+BnRfMr8BkAwMcgamggj6mFXwt
 5wdOFZL58X5Zv+mmMm0/x3zaXiIPraiXdBv7sRGgDLYFk1PEyr2Vik30iGqjkZqQoA
 8T0bjITcmOA2Y2frdhW/PTuJD9EonKYzdd0PItWNHaiHpecYYZTYh6rCjcgEyZnmBQ
 MzcL6LG61HF3w==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d07ff790000>; Tue, 18 Jun 2019 09:00:42 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8)
 by svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with
 Microsoft SMTP Server (TLS) id 15.0.1156.6; Tue, 18 Jun 2019 09:00:41 +1200
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Tue, 18 Jun 2019 09:00:41 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH 2/4] dt-bindings: clock: mvebu: Add compatible string for
 98dx1135 core clock
Thread-Topic: [PATCH 2/4] dt-bindings: clock: mvebu: Add compatible string for
 98dx1135 core clock
Thread-Index: AQHVJPQWO1K5IrBk6023sLSGAZWOmQ==
Date: Mon, 17 Jun 2019 21:00:41 +0000
Message-ID: <52f0fe4f276e4088ac7ad47bc761722e@svr-chch-ex1.atlnz.lc>
References: <20190617100432.13037-1-chris.packham@alliedtelesis.co.nz>
 <20190617100432.13037-3-chris.packham@alliedtelesis.co.nz>
 <20190617170931.GG17551@lunn.ch>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:3a2c:4aff:fe70:2b02]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_140052_944061_81586772 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On 18/06/19 5:09 AM, Andrew Lunn wrote:
> On Mon, Jun 17, 2019 at 10:04:30PM +1200, Chris Packham wrote:
>> Add compatible string for the core clock on the 98dx1135 switch with
>> integrated CPU.
> 
> Hi Chris
> 
> Should there be a list of provider IDs and clock names?
> 

That list would be the same as the Kirkwood/Dove. I thought about adding 
it but decided not to to avoid unnecessary duplication. One compromise 
would be to change "for 98dx1135 SoC core clocks" to "for Kirkwood 
98dx1135 SoC" which would fit with the MV88f6180 line above and make it 
clear that it falls into the kirkwood bucket.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
