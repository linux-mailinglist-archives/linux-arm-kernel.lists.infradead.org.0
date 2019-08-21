Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B27B98262
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z358QIi43+omwuzoCoL9XAs1B5IjmhGrQRJsztKZGAs=; b=ulmT7AicWolidq
	Y2aKyRgWhaX4iHxQAbPRQuL/rfmUQjEYuAgFXouYz3PuAnoEqL35fvkX4Whpkdoiu8TugBuc1FLKt
	IMsxMGumTZazHmMppbcHpl7VAui5SgwYPsKiTqOm6hENM7Fuc/oh6l2Lf9bTl1ZQ/LiJr6BrGqfIL
	5pVcLZgZgrocXXaDkNWKY6iVWwRECDcfQU/ZsSavhyvle98/gibIfDd46M8y09pTB9FcrPod/I+dC
	x9CVnFDiLQUksN43da2KeKxzdJAYLF/35qK4YqhwCNa/EBxHSLXmxXurCkgiEJMNx/wQkIfdD73Xi
	sjATtb/HCLENDiELpflQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0V3s-0003RL-8r; Wed, 21 Aug 2019 18:10:20 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0V3j-0003Qg-Mu
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:10:13 +0000
Received: by mail-pl1-x642.google.com with SMTP id f19so1752276plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 11:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=BRaE3rjeT8FCEq2Zbhrcwzz/PytLOULw+1k5/xkFYgY=;
 b=fw2gO6TC8tNLS0jC+pLn1ymEqa+6Ggr3tFsCMDsJFC3AdAQD7uyifHENer7jG+2UUJ
 ocONF3pHy7Z8RN9i1YQb2yGYVRkp2UbPS4r74gmmmzwc7h8NIp3aUIW3N9N3s90+4rWy
 JSptEtCHiSGU85fm6dw+A3PLYMgwU5O04BGuEcBm+x5pNGG2MYIFFyRwMn/5zwDHiV3A
 Cz6pHDAWf04QiXkyXp9A+yp9tqVBtTZMM0zN7V6Oid9atVKXC8NZyO9ggtSOSbB11SXx
 M00zwElWK5r1FQ4PhG1wyNHSPurcUwKL9ugCvQAcWfcpwJ12BCQ1dLTLf3chKJquE+VN
 OGLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=BRaE3rjeT8FCEq2Zbhrcwzz/PytLOULw+1k5/xkFYgY=;
 b=qnajh51cULqRvRKgMCo97N5gSi02ZPLSPyZpFuFXEypPOnXfjZe6RAIfx00UFXkfGL
 HhAzBHar70GKMTE9WUb3f9kyvxvI9JnmB2AZqyxcac7jhArpfJ9p6kMAQv9PXhph1jj3
 DS8KFLTso4y+G0P+U2UbOccc6WsdKSzOoaiyM7kUdVpnEeNEngbDb8dm4v9GNzn1XRJD
 z0/Ye3ED9d8rTjTKl2KmAwyAFLEcnqjRKK8crlqWs8itxdMZBm9i18RT5wXe7b6MOOKT
 Z6Ho44MxMQMIDZNup7GNmXGIJDb00lXf0oj19mvsrzK9dyPzUDqcSuoom3lcs5tr/iNf
 orAA==
X-Gm-Message-State: APjAAAWi6MxdOd8Ojt1KNBPcRF13gvFxrZ+gAFLNtE09Kdhyu5FPYtqo
 hopC2VrQdD+Ws8gHMn2uzzU=
X-Google-Smtp-Source: APXvYqw7jrvERpK0TvcG5LufdB/a+fUB8Dtj+XOTHWONJ/0UKlGLuryo1MgZMuVh02WFzQekc1vi3w==
X-Received: by 2002:a17:902:9a41:: with SMTP id
 x1mr18562143plv.88.1566411010884; 
 Wed, 21 Aug 2019 11:10:10 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id l4sm23809086pff.50.2019.08.21.11.10.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 11:10:10 -0700 (PDT)
Date: Wed, 21 Aug 2019 11:10:09 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Alexander Amelkin <a.amelkin@yadro.com>
Subject: Re: [PATCH 3/3] watchdog/aspeed: add support for dual boot
Message-ID: <20190821181008.GB15127@roeck-us.net>
References: <1f2cd155057e5ab0cdb20a9a11614bbb09bb49ad.camel@yadro.com>
 <20190821163220.GA11547@roeck-us.net>
 <9e7fe5cc-ba1b-b8b6-69c5-c3c6cf508a36@yadro.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9e7fe5cc-ba1b-b8b6-69c5-c3c6cf508a36@yadro.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_111011_779265_E348BD7E 
X-CRM114-Status: GOOD (  39.03  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Joel Stanley <joel@jms.id.au>, Ivan Mikhaylov <i.mikhaylov@yadro.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 08:42:24PM +0300, Alexander Amelkin wrote:
> 21.08.2019 19:32, Guenter Roeck wrote:
> > On Wed, Aug 21, 2019 at 06:57:43PM +0300, Ivan Mikhaylov wrote:
> >> Set WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION into WDT_CLEAR_TIMEOUT_S=
TATUS
> >> to clear out boot code source and re-enable access to the primary SPI =
flash
> >> chip while booted via wdt2 from the alternate chip.
> >>
> >> AST2400 datasheet says:
> >> "In the 2nd flash booting mode, all the address mapping to CS0# would =
be
> >> re-directed to CS1#. And CS0# is not accessable under this mode. To ac=
cess
> >> CS0#, firmware should clear the 2nd boot mode register in the WDT2 sta=
tus
> >> register WDT30.bit[1]."
> > Is there reason to not do this automatically when loading the module
> > in alt-boot mode ? What means does userspace have to determine if CS0
> > or CS1 is active at any given time ? If there is reason to ever have CS1
> > active instead of CS0, what means would userspace have to enable it ?
> =

> Yes, there is. The driver is loaded long before the filesystems are mount=
ed. The filesystems, in the event of alternate/recovery boot, need to be mo=
unted from the same chip that the kernel was booted. For one reason because=
 the main chip at CS0 is most probably corrupt. If you clear that bit when =
driver is loaded, your software will not know that and will try to mount th=
e wrong filesystems. The whole idea of ASPEED's switching chipselects is to=
 have identical firmware in both chips, without the need to process the alt=
ernate boot state in any way except for indicating a successful boot and re=
storing access to CS0 when needed.
> =

> The userspace can read bootstatus sysfs node to determine if an alternate=
 boot has occured.
> =

> With ASPEED, CS1 is activated automatically by wdt2 when system fails to =
boot from the primary flash chip (at CS0) and disable the watchdog to indic=
ate a successful boot. When that happens, both CS0 and CS1 controls=A0 get =
routed in hardware to CS1 line, making the primary flash chip inaccessible.=
 Depending on the architecture of the user-space software, it may choose to=
 re-enable access to the primary chip via CS0 at different times. There mus=
t be a way to do so.
> =

So by activating cs0, userspace would essentially pull its own root file sy=
stem
from underneath itself ?

> > If userspace can not really determine if CS1 or CS0 is active, all it c=
ould
> > ever do was to enable CS0 to be in a deterministic state. If so, it doe=
sn't
> > make sense to ever have CS1 active, and re-enabling CS0 could be automa=
tic.
> >
> > Similar, if CS1 can ever be enabled, there is no means for userspace to=
 ensure
> > that some other application did not re-enable CS0 while it believes tha=
t CS1
> > is enabled. If there is no means for userspace to enable CS1, it can ne=
ver be
> > sure what is enabled (because some other entity may have enabled CS0 wh=
ile
> > userspace just thought that CS1 is still enabled). Again, the only means
> > to guarantee a well defined state would be to explicitly enable CS0 and=
 provive
> > no means to enable CS1. Again, this could be done during boot, not requ=
iring
> > an explicit request from userspace.
> =

> Please understand that activation of CS1 in place of CS0 is NOT a softwar=
e choice!
> =

> =

> >> +	if (unlikely(!wdt))
> >> +		return -ENODEV;
> >> +
> > How would this ever happen, and how / where is drvdata set to NULL ?
> =

> This is purely for robustness. Seeing a pointer obtained via a function a=
ccessed without first checking it for validity makes me nervous.
> =

This is not how kernel code is commonly written.
Sure, we could add similar checks to each sysfs access code in the kernel,
blowing up its size significantly. I do not see a point of this.

> This code most probably adds nothing at the assembly level.
> =

That seems quite unlikely. Please demonstrate.

> >
> >> +	writel(WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION,
> >> +			wdt->base + WDT_CLEAR_TIMEOUT_STATUS);
> >> +	wdt->wdd.bootstatus |=3D WDIOF_EXTERN1;
> > The variable reflects the _boot status_. It should not change after boo=
ting.
> Is there any documentation that dictates that? All I could find is
> =

> "bootstatus: status of the device after booting". That doesn't look to me=
 like it absolutely can not change to reflect the updated status (that is, =
to reflect that the originally set up alternate CS routing has been reset t=
o normal).
> =

You choose to interpret "after booting" in a kind of novel way,
which I find a bit disturbing. I am not really sure how else to
describe "boot status" in a way that does not permit such
reinterpratation of the term.

On top of that, how specifically would "WDIOF_EXTERN1" reflect
what you claim it does ? Not only you are hijacking bootstatus9
(which is supposed to describe the reason for a reboot), you
are also hijacking WDIOF_EXTERN1. That seems highly arbitrary
to me, and is not really how an API/ABI should be used.

Guenter

> If you absolutely disallow that, I think we could make 'access_cs0' reada=
ble instead, so it could report the current state of the boot code selectio=
n bit. Reverted, I suppose. That way 'access_cs0' would report 1 after 1 ha=
s been written to it (it wouldn't be possible to write a zero).
> =

> > @@ -223,6 +248,9 @@ static int aspeed_wdt_probe(struct platform_device =
*pdev)
> >  =

> >  	wdt->ctrl =3D WDT_CTRL_1MHZ_CLK;
> >  =

> > +	if (of_property_read_bool(np, "aspeed,alt-boot"))
> > +		wdt->wdd.groups =3D bswitch_groups;
> > +
> > Why does this have to be separate to the existing evaluation of
> > aspeed,alt-boot, and why does the existing code not work ?
> >
> > Also, is it guaranteed that this does not interfer with existing
> > support for alt-boot ?
> =

> I think Ivan will comment on this.
> =

> With best regards,
> Alexander Amelkin,
> BIOS/BMC Team Lead, YADRO
> https://yadro.com
> =

> =





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
