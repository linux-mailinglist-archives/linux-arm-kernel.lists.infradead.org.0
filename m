Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2571E6E52
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 00:03:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WErjpBCXcNb+b00mCg5RYJEi6F+Etfr2yYUNVnwiLnA=; b=LO4Oy0crlWWSqW
	PgQ/RmZw8o5721z6qIBFApMVsGmE2gbAz93F0k5ZozoV7n0JrBObVjfpq5eatO1Zg1pj9jhvXQRUK
	HhB2jbWt80b2WGLJDpv+5A976aDm8+Bz/9OVintzZ7fCaRdQgPW/Mctq+SN7QuUw8fZIMd87hLrRx
	NPzjvZSpvn/Ddkmjn2GMtBoTpQjdEmSNUTWo3Ub6eR2nvI6EJNGKKhcq7mkeOXD7j1z9JtDIoCNGV
	v3qOuwa0kRsuAE7rcVMTGjAmX2gSteitxkIsS/h/wEUS/+iDgkXyyuSdg9tBw0GEiTRLDE1md9gTW
	hoFokG5vGVaUOMackx+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeQcF-0000nY-Fg; Thu, 28 May 2020 22:03:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeQc0-0000mj-Oz; Thu, 28 May 2020 22:02:54 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jeQbx-0005Eo-Rk; Fri, 29 May 2020 00:02:49 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: input: touchscreen: edt-ft5x06: change reg
 property
Date: Fri, 29 May 2020 00:02:49 +0200
Message-ID: <12739492.Qs6HZxOyHu@diego>
In-Reply-To: <20200528220136.GA748777@bogus>
References: <20200520073327.6016-1-jbx6244@gmail.com>
 <4727344.YYj2SkWT1V@diego> <20200528220136.GA748777@bogus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_150252_814794_4F158293 
X-CRM114-Status: GOOD (  22.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-input@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 29. Mai 2020, 00:01:36 CEST schrieb Rob Herring:
> On Wed, May 20, 2020 at 08:41:59PM +0200, Heiko St=FCbner wrote:
> > Hi Dmitry,
> > =

> > Am Mittwoch, 20. Mai 2020, 19:13:24 CEST schrieb Dmitry Torokhov:
> > > Hi Johan,
> > > =

> > > On Wed, May 20, 2020 at 09:33:27AM +0200, Johan Jonker wrote:
> > > > A test with the command below gives this error:
> > > > =

> > > > arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml:
> > > > touchscreen@3e: reg:0:0: 56 was expected
> > > > =

> > > > The touchscreen chip on 'rk3188-bqedison2qc' and other BQ models
> > > > was shipped with different addresses then the binding currently all=
ows.
> > > > Change the reg property that any address will pass.
> > > > =

> > > > make ARCH=3Darm dtbs_check
> > > > DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/input/touchscre=
en/
> > > > edt-ft5x06.yaml
> > > > =

> > > > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yam=
l | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > =

> > > > diff --git a/Documentation/devicetree/bindings/input/touchscreen/ed=
t-ft5x06.yaml b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5=
x06.yaml
> > > > index 383d64a91..baa8e8f7e 100644
> > > > --- a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x0=
6.yaml
> > > > +++ b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x0=
6.yaml
> > > > @@ -42,7 +42,7 @@ properties:
> > > >        - focaltech,ft6236
> > > >  =

> > > >    reg:
> > > > -    const: 0x38
> > > > +    maxItems: 1
> > > =

> > > Should we have a list of valid addresses instead of allowing any
> > > address? Controllers usually have only a couple of addresses that they
> > > support.
> > =

> > from what I've read, the fdt touchscreen controllers are just a generic
> > cpu with device-specific (or better panel-specific) firmware, which see=
ms
> > to include the address as well - so it looks to be variable.
> > =

> > But of course that is only 2nd hand knowledge for me ;-)
> > =

> > =

> > But also, the i2c address is something you cannot really mess up,
> > either it is correct and your touchscreen works, or it isn't and and
> > adding entries to this list every time a new address variant pops up
> > feels clumsy.
> =

> Is that an Ack?

for the patch itself:
Acked-by: Heiko Stuebner <heiko@sntech.de>


> I'm fine either way. It's really only useful if there's a single =

> address because with a list it could still be wrong just as any other =

> data like an interrupt number could be wrong.
> =

> Rob
> =






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
