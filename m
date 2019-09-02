Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E0DA5934
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 16:23:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iw2VNNXlzahmpCM/Lm2b14o/ynbdrV/0tirwYzxQXVM=; b=LkNbC2Pn/shvrw
	vH8SvgMalvs686uM2QqTYsvCjCPDN+BJgVFzi9a8H5GoPHYYbhgCd6MYAhdVB53C2FcZDvu04jI6D
	G5nwVSB5+A8yCv7vPSmcf8ljDZmUYb7kwMhnDOaExIFhSuEBnN0DHB8Ag6fP6X7FUvA7bKAvLDaLD
	zrQMbd7xCg5+ZkRNtZQuKVLdmGttqXK9Lx3ihXgMsedjhDt6wuUG0Ss7piDFIc3FHZNOqZfoD61LL
	wOOIuV1AhElZGdetizeKWkfpNTBNWBwu67cgtfz1VbaMj7WHsIuGHPVa29uvHxzrLdxbqU0lw8QGt
	XAYJHD27IWLS9Anfz/VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4nEh-00072s-HV; Mon, 02 Sep 2019 14:23:15 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4nEX-00072N-1G
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 14:23:06 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 92B5A6000A;
 Mon,  2 Sep 2019 14:22:54 +0000 (UTC)
Date: Mon, 2 Sep 2019 16:22:51 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v4 2/9] dt-bindings: i2c: add bindings for i2c analog and
 digital filter
Message-ID: <20190902142251.GC21922@piout.net>
References: <1567418773-2427-1-git-send-email-eugen.hristev@microchip.com>
 <1567418773-2427-3-git-send-email-eugen.hristev@microchip.com>
 <9a9c209c-2fb8-0a4c-4e0a-b04fefda3360@axentia.se>
 <b6528812-65d3-6561-38e7-c0545af900d8@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b6528812-65d3-6561-38e7-c0545af900d8@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_072305_229780_2353C75E 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsa@the-dreams.de,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Eugen,

On 02/09/2019 14:15:14+0000, Eugen.Hristev@microchip.com wrote:
> On 02.09.2019 13:49, Peter Rosin wrote:
> 
> > On 2019-09-02 12:12, Eugen.Hristev@microchip.com wrote:
> >> From: Eugen Hristev <eugen.hristev@microchip.com>
> >>
> >> Some i2c controllers have a built-in digital or analog filter.
> >> This is specifically required depending on the hardware PCB/board.
> >> Some controllers also allow specifying the maximum width of the
> >> spikes that can be filtered. The width length can be specified in nanoseconds.
> >>
> >> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> >> ---
> >>   Documentation/devicetree/bindings/i2c/i2c.txt | 11 +++++++++++
> >>   1 file changed, 11 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/i2c/i2c.txt b/Documentation/devicetree/bindings/i2c/i2c.txt
> >> index 44efafd..8dbff67 100644
> >> --- a/Documentation/devicetree/bindings/i2c/i2c.txt
> >> +++ b/Documentation/devicetree/bindings/i2c/i2c.txt
> >> @@ -55,6 +55,17 @@ wants to support one of the below features, it should adapt the bindings below.
> >>   	Number of nanoseconds the SDA signal takes to fall; t(f) in the I2C
> >>   	specification.
> >>   
> >> +- i2c-analog-filter
> >> +	Enable analog filter for i2c lines.
> >> +
> >> +- i2c-digital-filter
> >> +	Enable digital filter for i2c lines.
> >> +
> >> +- i2c-filter-width-ns
> >> +	Width of spikes which can be filtered by either digital or analog
> >> +	filters (i2c-analog-filtr or i2c-digital-filtr). This width is specified
> > 
> > filtr -> filter (two instances)
> > 
> > What if you want/need to have different bandwidth for the digital and analog
> > filters? After all, this is a generic binding...
> 
> For our needs, this is enough: the purpose of the filters is to avoid 
> noise on the lines, the noise is as big as it is for the digital and for 
> the analog filters, since we use an absolute measurement for them. So I 
> do not know how useful it would be to make a difference.
> 

You are adding generic properties so they have to be generic and not
tied to your particular use case.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
