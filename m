Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991BD2699A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 20:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wdgiLP/mr99MDHAI+b8lp8xx31aF0OiBgXxARH2Qp1M=; b=Nzcel1LeUifzZy
	LLnRT/dQd30JCX1SRlUpY9gvJhQ6B6oUhdXrAsEqvlQdd9l+Y86MV/dGyAdiocG8sX1NpdIwxHQQv
	IlP9yUkfhVAv/CUEaT5w0HEPcAMdAv6bKPN0FC9ldC4G6CVrO5g2aKSZ1FrsAzAGeXPlQ1hdrMItK
	cluaUbFPkuTCQp14KDef0e31eKj8HLn/z20XQ0b3+scOmtyYHbgWmuWCScWT+GH1NsRtkpi2iqo61
	Q+vmOy5zDRgJaPIsd7Ms6B+2oVWyYXTgZTEmYFovIKoVqyRvaz2Woc60vdPyB4s0XCA/iZ+XvTgAb
	q5sz9vCQXu06BCWnM16A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTVhN-0000o8-3U; Wed, 22 May 2019 18:10:45 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTVhF-0000nA-N0
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 18:10:39 +0000
Received: by mail-it1-x144.google.com with SMTP id u186so4547694ith.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 11:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3TUaQnKxGVlpWSPefIyk2E07CFvwMDXGPaWjCwdOzPc=;
 b=frr1iTSygWFPnr5/ey27pxt1cfBtzPKcb5lZDA/fu8dE9SjUZ0g+PVcc06KiQ9/wJp
 HNO6AWj6TYApsqV+IK+BQsqd54H5A/bdFsoEMMgsXbs0nAv2poHnHbB45XVWALyR5Br5
 ymgG+BfyWDKpG/NnKJ6OQjG2wMuS9A+Ofk4AE2P05OaUy1D2AgH5cr+HLItgD0A6epA2
 zqkE3JWfzJvbob/DvPkPYG/u4MinzMxlP/cUqevtnoaIDimZ7e3vtLPo8dyZ/vmO0itS
 jOLex57FcbLpUAhIXMukWVDiCsoPvAIAbP7eXp3BA6oUgC3ESC5KHfIMt2+21yv+A8mQ
 Fafw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3TUaQnKxGVlpWSPefIyk2E07CFvwMDXGPaWjCwdOzPc=;
 b=gVoM3akbU4HLdgj5dykhRbnpnITgfhHzasvjIJXYVVju5Hs7XZmC7F3Kj1drqPCOTu
 DEkafwZP8dDLgJb9ZRFnJWvFtZuyoFn0QsZFz9zzbh+lQjlfx3hFrVAHW4wXLaoiUzL9
 laZVB+tW18lA53Wz1tKcOlHOJOcylotPdmjXDiY653WQGMUtIIviTPFS6Og+AideFuT8
 pyrRfl0FoaKJ8vFGdnAaW7xQDOtTEgKZ8Sh7JcrlWsyruF1zKgd6CWsrdzJSHaoiYRSd
 7CQUTkvrJM6QiT8HjSlMYVFeh/xWxeUwGI5Aj6U1UIWkrFVoMdulNbRDQsMfysPYsovR
 A27A==
X-Gm-Message-State: APjAAAUYyzm9Vk78fJTA+o20LnLtU5upOEsIWWyfwZ7tQgvRxReZojhc
 7DWf9P2HCCfGpqF1GiCqFFdqk+MQDOmINQxaa1c=
X-Google-Smtp-Source: APXvYqz9eLUgCjZxLo/vpG3af0L6etYrvYVd0GrTMp4ahq2xE4ZtnQGK9joeaxrO0qQ5Lx7oxC4w9UNyJNOsWgfJk0w=
X-Received: by 2002:a02:ad09:: with SMTP id s9mr20093787jan.17.1558548636248; 
 Wed, 22 May 2019 11:10:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190522071227.31488-1-andrew.smirnov@gmail.com>
 <20190522071227.31488-3-andrew.smirnov@gmail.com>
 <1558517601.2624.32.camel@pengutronix.de>
 <CAHQ1cqHQWqpJdZjeBiOhEC5JjfcHdY+uA+kbCxzj6kRk9SLUXQ@mail.gmail.com>
In-Reply-To: <CAHQ1cqHQWqpJdZjeBiOhEC5JjfcHdY+uA+kbCxzj6kRk9SLUXQ@mail.gmail.com>
From: Chris Healy <cphealy@gmail.com>
Date: Wed, 22 May 2019 11:10:25 -0700
Message-ID: <CAFXsbZooc5=_8SQT6rUQ2cRnor_o0fpW8-C3hFtszuXK+PHGZQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: imx6: rdu2: Limit USBH1 to Full Speed
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_111037_775534_74D16A14 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cphealy[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > Am Mittwoch, den 22.05.2019, 00:12 -0700 schrieb Andrey Smirnov:
> > > Cabling used to connect devices to USBH1 on RDU2 does not meet USB
> > > spec cable quality and cable length requirements to operate at High
> > > Speed, so limit the port to Full Speed only.
> >
> > Really? I thought this issue is specific to the RDU1, but you've been
> > looking at this USB stuff for a lot longer than me.
> >
>
> I am merely a messenger here. I didn't personally verify this to be
> the case, so your knowledge is probably as good as mine. Chris
> reported this based on feedback from their EE team, so he should know
> all of the details better.

The issue is less about the internals of the device and more about the
cabling that the device is connected to.  In the target application of
this device, the USB cables are almost always longer than the spec
limit of the USB standard for high speed.  Given our use cases, we
don't have need for high speed so limiting the max speed to full speed
is the way we work around cables that are too long for stable high
speed operation.

We have validated that running with full speed does mitigate the
problems experienced when attempting to run with high speed on the
target application installations.

Reviewed-by: Chris Healy <cphealy@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
