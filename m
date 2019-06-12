Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A37C242F90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 21:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hh+SZQj635QiI88pQ4d5xvmAVNL1hZwnm419+qcyku8=; b=EqOb77xbCj2xbP
	2pGQ2MXNhE0eeHK7VQMfmrFImo8VBUesF2vm0NWRd2Ay/UlibMhz4VKe524MyYXjQQARIZ8j3YepR
	ZKgrduS423zP2fDm0tNp9yk4VsZ7lIws1S9k2mE03iVWKLThUBR061K+GizUGC5p1R21WK7LUaa5W
	TohDXJo8emqj5LyhWQWtlYXsEywPf4Urv25RMnLjGtlXG5qZx34sIZimlYs0zXU0RXMdXoTtakVNE
	CmsOw7aICnAmtSq7jQKNyZFLYBOgVzog3X3RrlwrpqEUajQflQuDZnG5EWo0viyXSBcDxlMQzvnI6
	ak9AxXsDHIlJOCn7zQBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb8dZ-0004Hn-6z; Wed, 12 Jun 2019 19:10:21 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb8dI-0003Ik-1S; Wed, 12 Jun 2019 19:10:05 +0000
Received: by mail-ot1-x341.google.com with SMTP id z23so16502535ote.13;
 Wed, 12 Jun 2019 12:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QuqFocSg9o8HUQMFMXkITDEsFRcGeNlt6jor7ci7lwQ=;
 b=asFWsQkjo5sL0Pgv3QNs+6zWvnJ2F0MKXwfYFe7V5tk3zZ3Vp630R+0pL87ezY0Cf8
 Dsme6KLFrif8guMFZ8I+pZBNrGgkf/Eqr4VDGBKGnJmcSgYfVkP8n3PvOcOSn4A4I1OS
 APXb2jcu6cTsKSwEz1n1aqDIFVYMjVUp2VM4V2TlKeCLu+C11xh6SXmV0Pcv9o4Ve8Fd
 MG6lQwZmuSgcvDafrwFvMBmkC78p9LHYAMtO0nJ/NG2DZzh64rSuJ5FtP6yFQWe0iHUd
 Da1Hz5ywud8jClaAGR/ECcC62FL5KjHks18kw0x/uZ0uDIFalxW382cwT71013VpNmTW
 5HIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QuqFocSg9o8HUQMFMXkITDEsFRcGeNlt6jor7ci7lwQ=;
 b=Z+eKuY69UMGgHopyr7EF3ZD6ew4+CwXXiMI3V74e6HttoKMLv9B8uQ5n2wdyR3dieV
 JHcLl2GuA5fL7lPIqexeWaRL/6u2AU2vZ9QWeKFktkLDeTcnThbT/fDhQay82hvP2HX/
 LpxzUQAVPQAMyFId4amdYQQeqDiFdgtjQ8YMKRPNaPqxYrfijpCpJbWpk4qcR9bu/kbh
 WowASewYyquOrEmneTulx0j11+GCTsLSr1httzRMCaLuL39zICv/kT2dKV9t1/YXReoE
 8eT6ZzJEGxLf8S7Ua2GVl0kaTdoFw6WHkgACl6F5P98E/L+pyCBC1ndpW5nnlhR7FANM
 e9WQ==
X-Gm-Message-State: APjAAAUp1dZk9RkhrvDYhUBCTC43wP2pzvbihBH/sQIHufH4VuPfOCuU
 JeyZjthRxhltn4KHUE3+zGBCjMoTy4hj9e+g/Bs=
X-Google-Smtp-Source: APXvYqxXjAtCc0jz8ggkGpz2VYDoIV6tftmYi/Tal4fm/eivfHf2kijP6IXKETJIB+K78VK+EsUa7r0YbvicExj8aa8=
X-Received: by 2002:a9d:6405:: with SMTP id h5mr28468921otl.42.1560366602415; 
 Wed, 12 Jun 2019 12:10:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190525190204.7897-1-martin.blumenstingl@googlemail.com>
 <7htvcv3dhh.fsf@baylibre.com>
In-Reply-To: <7htvcv3dhh.fsf@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 12 Jun 2019 21:09:51 +0200
Message-ID: <CAFBinCAVqBxiRz+Fw5D+8XEPTxP13O35OhSD0pEzKjFcGK1H=A@mail.gmail.com>
Subject: Re: [PATCH 0/4] ARM: dts: meson8b: add VDDEE / mali-supply
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_121004_126663_34126A34 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 1:32 AM Kevin Hilman <khilman@baylibre.com> wrote:
>
> Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:
>
> > EC-100 and Odroid-C1 use a "copy" of the VCCK regulator as "VDDEE"
> > regulator. VDDEE supplies the Mali GPU and various other bits within
> > the SoC.
> >
> > The VDDEE regulator is not exclusive to the Mali GPU so it must not
> > change it's voltage. The GPU OPP table has a fixed voltage for all
> > frequencies of 1.10V. This matches with what u-boot sets on my EC-100
> > and Odroid-C1.
> >
> > Dependencies:
> > - compile time: patch #4 depends on my other patch "ARM: meson8b-mxq:
> >   better support for the TRONFY MXQ" from [0]
> > - runtime: we don't want the kernel to change the output of the VDDEE
> >   regulator to the maximum value. Thus the PWM driver has to be able
> >   to read the PWM period and duty cycle from u-boot. This is supported
> >   with my series called "pwm-meson: cleanups and improvements" from [1]
>
> Just FYI... unless I hear otherwise, I'll wait for the PWM cleanups to
> land before queuing this series.
I'm happy with that because I'm not sure what will happen *without*
the PWM improvements


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
