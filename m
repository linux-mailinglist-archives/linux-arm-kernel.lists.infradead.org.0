Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34F41DBD23
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 20:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6bUR22qcuZakccq+epb4lXgb5raJj4D279mUNwLY+Y=; b=Pc5j//aUffi/Bs
	iSHsg79/+wh5RdLDwOjHxTBMi6PwpQv1dYORoXTeEZ5oRZCcKfqKDwB/v9ehPp5tF8LzRrsU5mVPt
	sJ5v/wfQu+FDWBZuhb3PdKKhU1DKBuHfTg2QarxgTOHZla8QObyD6KBqwoqUHhqanSKyUn9SO9hq+
	NpJO/8aJzp17mM56xUm+F+zZm6hXfMbM4CuFBwYiJpn1VcCBCRe/MyRP2erAdV1A8q9acHOfTif9m
	Nvbcrap3lEtnT5Oa1qt9/bs6Oa84FQMfYBBhCX44tMQEnJ+HPVg5lcBU8MYC8xP1lB1qUI+Q9eiua
	K93rMJ/tgDVyZmrpLYgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbTfP-00013l-63; Wed, 20 May 2020 18:42:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbTfJ-00012M-R7; Wed, 20 May 2020 18:42:07 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jbTfE-00040R-0g; Wed, 20 May 2020 20:42:00 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH] dt-bindings: input: touchscreen: edt-ft5x06: change reg
 property
Date: Wed, 20 May 2020 20:41:59 +0200
Message-ID: <4727344.YYj2SkWT1V@diego>
In-Reply-To: <20200520171324.GS89269@dtor-ws>
References: <20200520073327.6016-1-jbx6244@gmail.com>
 <20200520171324.GS89269@dtor-ws>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_114205_875711_75ECFB90 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-input@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dmitry,

Am Mittwoch, 20. Mai 2020, 19:13:24 CEST schrieb Dmitry Torokhov:
> Hi Johan,
> 
> On Wed, May 20, 2020 at 09:33:27AM +0200, Johan Jonker wrote:
> > A test with the command below gives this error:
> > 
> > arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml:
> > touchscreen@3e: reg:0:0: 56 was expected
> > 
> > The touchscreen chip on 'rk3188-bqedison2qc' and other BQ models
> > was shipped with different addresses then the binding currently allows.
> > Change the reg property that any address will pass.
> > 
> > make ARCH=arm dtbs_check
> > DT_SCHEMA_FILES=Documentation/devicetree/bindings/input/touchscreen/
> > edt-ft5x06.yaml
> > 
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
> > index 383d64a91..baa8e8f7e 100644
> > --- a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
> > +++ b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
> > @@ -42,7 +42,7 @@ properties:
> >        - focaltech,ft6236
> >  
> >    reg:
> > -    const: 0x38
> > +    maxItems: 1
> 
> Should we have a list of valid addresses instead of allowing any
> address? Controllers usually have only a couple of addresses that they
> support.

from what I've read, the fdt touchscreen controllers are just a generic
cpu with device-specific (or better panel-specific) firmware, which seems
to include the address as well - so it looks to be variable.

But of course that is only 2nd hand knowledge for me ;-)


But also, the i2c address is something you cannot really mess up,
either it is correct and your touchscreen works, or it isn't and and
adding entries to this list every time a new address variant pops up
feels clumsy.


Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
