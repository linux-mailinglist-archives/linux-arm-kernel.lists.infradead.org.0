Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D67AF1CEA88
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 04:09:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLjqwSYe9hVMWAlsAdFyhadx1jT55A2LqqYqXNCz+n4=; b=qiwqdiuL1KHvuj
	pDU8HdpzJuTEsKP9nkzO8u4eZhPjoIglxtoY5g9scNfTcRYd7yX5b1r+gB4omTMII25RxWVVc+wBo
	OI90b++gF2sR1sdWhl9qeZWCfEKllYPIqxrUwaXVpGIvcxInz1lkk9UOWJAz1Lsf1WUGVHT2cEn/J
	tDd0Ayw17ByMRcnHE9EuLcE98bqyn/ILcFRE9zS1gDxlEolO6VIpabIiYoYZQ2iCsrQxogAIjKwDS
	7Jcq+w53gyYz6B/i5i2uMGQIPhYd6nsTC7KE/YLvI1r+bO94CZh5XMofh7TqRcj9uXxmwBNUMiwb8
	gGkDjFPIVJq2zyRAeUEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYKMi-0004a0-M9; Tue, 12 May 2020 02:09:52 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYKMa-0004Zf-C0
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 02:09:45 +0000
Received: by mail-ot1-f66.google.com with SMTP id m33so9309751otc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 19:09:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=hx2GPWhJqt9kxObM/JXtvxzVEbR5wT0H4fhgwGryEc8=;
 b=gs9fdCbDveVGASQ5VeD1P3+yRgrR8MxGlN1UwMAUP/DeCdOhIRhjR+uHVxphi+qnfz
 APUcEErYy0PjZ2lKG+0V8fl4q7HqBnM3ynr42hogRg/Zn3ADwJlJQivB8sSEw1dv1C2m
 Ivy2YG7kVJ4rTexHsBb5go7VwN1hJItSa23iJVQEDaKR6rgx8josv+IielUh7g5m3hza
 2akD4h9iyQNCxALncczt2St3R69hzZPZh81BwhiyF5cToeqSRyPT2r+dsfz2ceDGr3dY
 OqRZNwTLbdTpiP6jicXzvz+TBIHhz5UO0qZFKnOgiEyoJOLQ4BoZNTBzzs10IlaHeQeC
 bblA==
X-Gm-Message-State: AGi0PuYyQVMIMxH7ylAf5yuvWDh8+e5zFNPopnmj67WEbKf6gHfYoeIp
 1rRUXpy2KN17sbyYpdIylFx+4V4=
X-Google-Smtp-Source: APiQypKIirFNWU90d1Ffrh4CEIScFhMrBN5Ab2uVt6ZLzmIl26jkrZYjHyZQwqCfgrroO/ir5KlD9g==
X-Received: by 2002:a9d:5f04:: with SMTP id f4mr16523087oti.154.1589249383244; 
 Mon, 11 May 2020 19:09:43 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t22sm5101089oij.2.2020.05.11.19.09.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 19:09:42 -0700 (PDT)
Received: (nullmailer pid 12354 invoked by uid 1000);
 Tue, 12 May 2020 02:09:41 -0000
Date: Mon, 11 May 2020 21:09:41 -0500
From: Rob Herring <robh@kernel.org>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>, kernel@collabora.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net,
 laurent.pinchart@ideasonboard.com
Subject: Re: [RFC PATCH] dt-bindings: display: ti,tfp410.txt: convert to yaml
Message-ID: <20200512020941.GA2002@bogus>
References: <20200428092048.14939-1-ricardo.canuelo@collabora.com>
 <3e377c73-25a3-a7b3-0604-41c54d70039e@ti.com>
 <20200506155320.GC15206@pendragon.ideasonboard.com>
 <20200511145911.2yv3aepofxqwdsju@rcn-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511145911.2yv3aepofxqwdsju@rcn-XPS-13-9360>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_190944_407607_1A2FC716 
X-CRM114-Status: GOOD (  28.20  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 04:59:11PM +0200, Ricardo Ca=F1uelo wrote:
> Hi Rob,
> =

> What's your opinion on this?
> =

> Some context: It's about bindings that define signed integer properties
> with range checks that go below and above zero. The schema checker fails
> because, apparently, it interprets every cell value as an uint32, which
> makes the range check fail for negative numbers.

The real fix is dtc needs to carry the sign thru to the yaml output =

format. In the mean time, perhaps the schema should have an unsigned =

range for signed types.

Rob

> =

> On mi=E9 06-05-2020 18:53:20, Laurent Pinchart wrote:
> > Hi Tomi,
> > =

> > On Tue, Apr 28, 2020 at 12:49:28PM +0300, Tomi Valkeinen wrote:
> > > On 28/04/2020 12:20, Ricardo Ca=F1uelo wrote:
> > > =

> > > > 2) The definition of ti,deskew in the original binding seems to be
> > > > tailored to the current driver and the way it's defined may not be =
very
> > > > DT-friendly.
> > > > =

> > > >    This parameter maps to a 3-bit field in a hardware register that=
 takes
> > > >    a value from 0 to 7, so the [-4, 3] range described for this wou=
ld map
> > > >    to [000, 111]: -4 -> 000, -3 -> 001, -2 -> 010, ... 3 -> 111.
> > > > =

> > > >    Then, the driver parses the parameter (unsigned) and casts it to=
 a
> > > >    signed integer to get a number in the [-4, 3] range.
> > > =

> > > Interestingly the current example has ti,deskew =3D <4>...
> > > =

> > > >    A vendor-specific property must have a type definition in json-s=
chema,
> > > >    so if I translate the original bindings semantics directly, I sh=
ould
> > > >    define ti,deskew as an int32, but this makes dt_binding_check fa=
il if
> > > >    the property has a negative value in the example because of the
> > > >    internal representation of cells as unsigned integers:
> > > > =

> > > >       ti,deskew:0:0: 4294967293 is greater than the maximum of 2147=
483647
> > > =

> > > I don't quite understand this. We cannot have negative numbers in dts=
 files? Or we can, but =

> > > dt_binding_check doesn't handle them correctly? Or that int32 is not =
supported in yaml bindings?
> > > =

> > > >    So I can think of two solutions to this:
> > > > =

> > > >    a) Keep the ti,deskew property as an uint32 and document the val=
id
> > > >    range ([-4, 3]) in the property description (this is what this p=
atch
> > > >    does currently).
> > > > =

> > > >    b) Redefine this property to be closer to the datasheet descript=
ion
> > > >    (ie. unsigned integers from 0 to 7) and adapt the driver accordi=
ngly.
> > > >    This would also let us define its range properly using minimum a=
nd
> > > >    maximum properties for it.
> > > > =

> > > >    I think (b) is the right thing to do but I want to know your
> > > >    opinion. Besides, I don't have this hardware at hand and if I up=
dated
> > > >    the driver I wouldn't be able to test it.
> > > =

> > > I don't think anyone has used deskew property, so I guess changing it=
 is not out of the question.
> > > =

> > > Laurent, did you have a board that needs deskew when you added it to =
tfp410?
> > =

> > I didn't if I remember correctly, I just mapped it to the hardware
> > features. The hardware register indeed takes a value between 0 and 7,
> > and that is mapped to [-4,3] x t(STEP). I don't mind either option.
> > =

> > -- =

> > Regards,
> > =

> > Laurent Pinchart
> =

> I haven't found any examples of yaml bindings defining signed integer
> properties such as this, what's the norm in this case? Do you agree with
> any of the proposed solutions? Do you have a better suggestion?
> =

> Thanks,
> Ricardo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
