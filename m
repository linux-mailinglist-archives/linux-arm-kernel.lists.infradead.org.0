Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 489BB1278E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 11:10:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ocJ/hzsn+WDFdDhFDgFSFWyrhzeTPQsT/bVHYhEL8U=; b=jvqzWAfrxvbUs4
	8psdusHJLmbXPLWqODxrRm24jRUlyABQvLw5QYSHVDotgauUUVmH2Kp/cNRCLF1ohrlC/UjZxXfK1
	cc0cj3DWvtUaXhPgm9x902ZmAoPwX4dNsvgkZETGEYEQTL+1l1ye/V+j0CIjAjR7zdHfcrLqwh86T
	4HWNsL0hx3oQzyR5RwVQULHec1L6+2SsLIvHpfJlnWUMo4nYoWcN256lI5aydyWO8STFsENYOuWH3
	DZD3yNtTOQEGx/1fVK/XWmiULJOYkKEfRNGdvUH+SM5etxer9qjjtTKlgnkEHR/bo6zo1QPqSbODt
	nKnE/Y8NFvM35HAPxqIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiFEW-0008JX-Cd; Fri, 20 Dec 2019 10:10:08 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiFEB-0008Im-Tl
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 10:09:49 +0000
X-Originating-IP: 90.65.102.129
Received: from kb-xps (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id B9615C0002;
 Fri, 20 Dec 2019 10:09:45 +0000 (UTC)
Date: Fri, 20 Dec 2019 11:09:44 +0100
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: at91: Document Kizboxmini and
 Smartkiz boards binding
Message-ID: <20191220100944.GB2601@kb-xps>
References: <20191209091339.32593-1-kamel.bouhara@bootlin.com>
 <20191218202345.GA22591@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218202345.GA22591@bogus>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_020948_094933_93768F79 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 02:23:45PM -0600, Rob Herring wrote:
> On Mon, Dec 09, 2019 at 10:13:38AM +0100, Kamel Bouhara wrote:
> > Document devicetree's bindings for the Overkiz's Kizbox Mini and
> > Smartkiz boards, based on a SAM9G25 Atmel SoC.
> >
> > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > ---
> > Changes in v2
> > =============
> > 	- Added Kizboxmini Base board documentation
> > 	- Merged Smartkiz documentation as it is also a sam9g25 based
> > 	board
> >
> > Changes in v3
> > =============
> > 	- Made a single items list with all the sam9g25 based boards and
> > 	put description into a comment.
> > 	- Fixed duplicated item in enum list and checked with 'make
> > 	dt_binding_check'
> >
> > Changes in v4
> > =============
> > 	- Fix missing "-" before items list
> >
> > Changes in v5
> > =============
> > 	- s/at91-kizboxmini_common.dtsi/at91-kizboxmini-common.dtsi/
> > ---
> >  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> > index 6dd8be401673..8d50915330e8 100644
> > --- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> > +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> > @@ -35,6 +35,16 @@ properties:
> >                - atmel,at91sam9x60
> >            - const: atmel,at91sam9
> >
> > +      - items:
> > +          - enum:
> > +                - overkiz,kizboxmini-base # Overkiz kizbox Mini Base Board
> > +                - overkiz,kizboxmini-mb   # Overkiz kizbox Mini Mother Board
> > +                - overkiz,kizboxmini-rd   # Overkiz kizbox Mini RailDIN
> > +                - overkiz,smartkiz        # Overkiz SmartKiz Board
>
> Should be indented 2 fewer spaces. Otherwise,
>
> Reviewed-by: Rob Herring <robh@kernel.org>

Ok, thanks.

Cheers,

>
> > +          - const: atmel,at91sam9g25
> > +          - const: atmel,at91sam9x5
> > +          - const: atmel,at91sam9
> > +
> >        - items:
> >            - enum:
> >                - atmel,at91sam9g15
> > --
> > 2.24.0
> >

--
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
