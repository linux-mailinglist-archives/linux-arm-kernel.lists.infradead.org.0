Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4067DE7063
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 12:30:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNJsYulFgactSYVAI5XO5B1BELhKZU4vm9m1OsEDjYw=; b=trKZyHm/BxqXyC
	BhhGFBxy9uSimPaTXUX7jsfFsmx47kvaNMFKXpPrIKTBQai/S6HGJw+6ANYGuAGbsmtRlO1GXYxYg
	hjN/5Npz4iBhTIEhEsp1RTvYzmE/HxR9tQh8ET/DPLSevJsArE5qVGkCPSxSIkCF40fkgTlUevZiL
	wnAeY+07GhR7/76ZGi+13nryt3ixiA2W+JoElHJA4lPWw7vdudfZuso6k8g4O8ursxIww58Fa8tUj
	XeRgl1DGCiBgyX5bEJg1EC7vcpJb9SCtRkJskGHKCHn9PR0wn1b7DvUpKN/0MYiCMyQODRSbTkbg9
	/GCMvArCsfhNdqZxZ07g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3Dk-000553-Nj; Mon, 28 Oct 2019 11:30:00 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3DZ-00053a-OY; Mon, 28 Oct 2019 11:29:52 +0000
X-Originating-IP: 91.217.168.176
Received: from localhost (unknown [91.217.168.176])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 3E39E1C000C;
 Mon, 28 Oct 2019 11:29:27 +0000 (UTC)
Date: Mon, 28 Oct 2019 12:29:27 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v2 2/8] dt-bindings: rtc: realtek: Convert RTD119x to
 schema
Message-ID: <20191028112927.GL3125@piout.net>
References: <20191020040817.16882-1-afaerber@suse.de>
 <20191020040817.16882-3-afaerber@suse.de>
 <20191025212015.GA29978@bogus>
 <5491f3ed-93bf-1c4d-60f8-5d646c3bd2fb@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5491f3ed-93bf-1c4d-60f8-5d646c3bd2fb@suse.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_042949_933954_990A1918 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>, linux-realtek-soc@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/10/2019 11:46:48+0100, Andreas F=E4rber wrote:
> Am 25.10.19 um 23:20 schrieb Rob Herring:
> > On Sun, Oct 20, 2019 at 06:08:11AM +0200, Andreas F=E4rber wrote:
> >> Convert the RTD119x binding to a YAML schema.
> >>
> >> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> >> ---
> >>  v2: New
> >>  =

> >>  .../devicetree/bindings/rtc/realtek,rtd119x.txt    | 16 ---------
> >>  .../devicetree/bindings/rtc/realtek,rtd119x.yaml   | 38 +++++++++++++=
+++++++++
> >>  2 files changed, 38 insertions(+), 16 deletions(-)
> >>  delete mode 100644 Documentation/devicetree/bindings/rtc/realtek,rtd1=
19x.txt
> >>  create mode 100644 Documentation/devicetree/bindings/rtc/realtek,rtd1=
19x.yaml
> > =

> > =

> >> diff --git a/Documentation/devicetree/bindings/rtc/realtek,rtd119x.yam=
l b/Documentation/devicetree/bindings/rtc/realtek,rtd119x.yaml
> >> new file mode 100644
> >> index 000000000000..71b7396bd469
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/rtc/realtek,rtd119x.yaml
> =

> While renaming the file to .yaml I would like to also rename it to 1195.
> It would need to be 1x9x to cover RTD1195 and e.g. RTD1296, and looking
> forward the wildcard may need to be 1xxx to cover also RTD1619, which
> quickly becomes unrecognizable.
> =


I'm fine with removing wildcards as much as possible.


-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
