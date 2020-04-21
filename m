Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A34341B2FBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 21:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJaoIsYYqWZCNnYfTW6pSHELKsVKXKzBliIwTBBAYu4=; b=Pw942aPkMXpdXE
	lNrtuB6Lvq5LZjXINWxQLEAihgX6hHkiobgYJq/PaJXGc7TUDM6LfLY8T4ONO374dBDkvM/tGZQTo
	Zg1W2/5lif1fL8oDIVYN5Az9KwDRj1wKsUvQXYHHEC4taCAhikBq+sLfG13zesgickndjkEqk2hOl
	CDO8UrRvB2BIWQXQvgAuS+YnJskMzwiD3jiqufNsWLgoAnJqzIDOImyAwTNXyOmY1XSqf99g4vllE
	ncv0YDgpx0o8TA/lD/p3qOizyZqi4PPJTpboZg9kjNp1lZtmdGxFrOosNkb7rsWndP8MXdEGU4izM
	cqhQYflH0vzqoZNciZ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQyAw-00010n-R6; Tue, 21 Apr 2020 19:03:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQyAp-0000zE-5C
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 19:03:12 +0000
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C10C92072D
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 19:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587495789;
 bh=zzuxna0xb8Q1TdC2MB2c2yaiRdzpJ1eGR8Ub8HY5Gd8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OxQ7rPaFtXQrWe3Td6ny9BtnD1TQh3P7QOD972q8srd5+AgucSbkxk6uYjIfh+m7N
 F8Ncj568tjXPTszHVSxio8YtYRoejRoEgjSh/gfxoL8PW8ZNR3z6gvQhx7hA298dIA
 i/qjotI3hA3MP5fcZf7qR2gN9Ea7AFgg6exLJPTA=
Received: by mail-qk1-f176.google.com with SMTP id l78so15679880qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 12:03:09 -0700 (PDT)
X-Gm-Message-State: AGi0PuZyOLJkMx6fYnh2A0656UlIyDPwUarBmvd2xz9vys4Ddq2KGvgB
 JdI92F2JYOrdcd+7JLt8It2uhsQhx3nZc14hnw==
X-Google-Smtp-Source: APiQypK4Yv9pvWyQXJx3JdeSn124hpxtt1JLCDuQWjVYKhF0tbCsvIrqP7V2PBuV1TcfREEdndVuo0ZBbnynFvkhgvg=
X-Received: by 2002:a37:4a85:: with SMTP id
 x127mr23060837qka.152.1587495788872; 
 Tue, 21 Apr 2020 12:03:08 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1586939718.git.hns@goldelico.com>
 <06fb6569259bb9183d0a0d0fe70ec4f3033b8aab.1586939718.git.hns@goldelico.com>
 <20200416204158.GA1006@bogus>
 <C7C58E41-99CB-49F6-934E-68FA458CB8B1@goldelico.com>
In-Reply-To: <C7C58E41-99CB-49F6-934E-68FA458CB8B1@goldelico.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 21 Apr 2020 14:02:56 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLfamBLVus65GUzq9DUu0VcK=p_7KkHbKvnLc=0uhsVvg@mail.gmail.com>
Message-ID: <CAL_JsqLfamBLVus65GUzq9DUu0VcK=p_7KkHbKvnLc=0uhsVvg@mail.gmail.com>
Subject: Re: [PATCH v6 01/12] dt-bindings: add img, pvrsgx.yaml for
 Imagination GPUs
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_120311_256395_CAEC31C2 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, linux-omap <linux-omap@vger.kernel.org>,
 David Airlie <airlied@linux.ie>,
 OpenPVRSGX Linux Driver Group <openpvrsgx-devgroup@letux.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 7:16 AM H. Nikolaus Schaller <hns@goldelico.com> wrote:
>
> Hi Rob,
>
> > Am 16.04.2020 um 22:41 schrieb Rob Herring <robh@kernel.org>:
> >
> > On Wed, 15 Apr 2020 10:35:08 +0200, "H. Nikolaus Schaller" wrote:
> >> The Imagination PVR/SGX GPU is part of several SoC from
> >> multiple vendors, e.g. TI OMAP, Ingenic JZ4780, Intel Poulsbo,
> >> Allwinner A83 and others.
> >>
> >> With this binding, we describe how the SGX processor is
> >> interfaced to the SoC (registers, interrupt etc.).
> >>
> >> In most cases, Clock, Reset and power management is handled
> >> by a parent node or elsewhere (e.g. code in the driver).
> >>
> >> Tested by make dt_binding_check dtbs_check
> >>
> >> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> >> ---
> >> .../devicetree/bindings/gpu/img,pvrsgx.yaml   | 122 ++++++++++++++++++
> >> 1 file changed, 122 insertions(+)
> >> create mode 100644 Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
> >>
> >
> > My bot found errors running 'make dt_binding_check' on your patch:
> >
> > Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml:  while parsing a block mapping
> >  in "<unicode string>", line 74, column 13
>
> It turned out that there was a stray " in line 74 from the last editing phase.
> Will be fixed in v7.
>
> Would it be possible to make dt_binding_check not only report line/column but the
> contents of the line instead of "<unicode string>"?

This comes from ruamel.yaml module. I believe "<unicode string>" is
supposed to be the type of the data, not what it is. However, it is
possible to get something a bit more helpful, but it depends on which
parser is used. By default we use the C based parser (aka 'safe'). If
we use the round trip parser, we get this:

ruamel.yaml.scanner.ScannerError: while scanning a simple key
  in "<unicode string>", line 84, column 5:
        maxItems
        ^ (line: 84)

This can be enabled by passing '-n' (line numbers) to dt-doc-validate.
Currently, you have have to edit the Makefile to do this. The C parser
is a big difference in speed, so I don't want to change the default.

I can probably work around this and dump the erroring line, but I'm
not sure that's always useful. Many errors are indentation related and
those need some context. Plus just dumping the line can be done easily
with sed:

sed -n ${LINE}p <file>

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
