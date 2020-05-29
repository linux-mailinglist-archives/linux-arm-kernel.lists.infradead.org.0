Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0061E86BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 20:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xtVUGDSzixhaxkNBb36GVaHeACRabsPk1clPRVy90eo=; b=Gd23g/Ru4QKi3C
	b+iD4nm+Jt66TkUlfj3U1UWo5A0SpE2x1orKGqJjuZw/Hg3AH5iKGsJCZE2SSEgDJX6J4AoXMXJAo
	hnvWQQZkbAGl/+3J0kytHGKkTqKOUqzxX12ZHJCmXvCw+C7b06xQTyPjfsDfBHhN2JEelVKJwHXsf
	piJ05Je7Cpg/j2eZwYUPLSzXuBzzqqpN3vLrFQFY5h3EqBa47Aw4NVG7hAXDYM8GChg+ItpMNryNX
	LobWm2Di2YZbFTS1U1kFLMvPB/AQtUWyhDhKsPVDcVJL59Isb2lZRB4JS/sGWxnjiHkDbTKZ0Gl71
	YDYnpNCk7FYmgfHxmaeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jejqp-0003WA-7k; Fri, 29 May 2020 18:35:27 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jejqg-0003VE-K5
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 18:35:20 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MZkxj-1jSrKQ16pD-00WkUj for <linux-arm-kernel@lists.infradead.org>; Fri,
 29 May 2020 20:35:13 +0200
Received: by mail-qt1-f171.google.com with SMTP id h9so2751776qtj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 11:35:12 -0700 (PDT)
X-Gm-Message-State: AOAM532OnrOyzpHuMW1fPwx3UYE8CFZ2+jkHJIa4rGP6MtSwv4PFYjMI
 ho1wdPUn+Ia6U9fouA76LtwKGIRj2NjWE8XpUCw=
X-Google-Smtp-Source: ABdhPJz0GQVZ8aEOYoh2Eg686R2qtyZBwglBT2H2SkC4sf7A7FKjV8ciE5SbxV0sBfMPwA64WiBDRICxg4mo/fBWltM=
X-Received: by 2002:ac8:4742:: with SMTP id k2mr2866567qtp.304.1590777311089; 
 Fri, 29 May 2020 11:35:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200512123449.16517-1-grygorii.strashko@ti.com>
 <a132765e-f4e4-a1e8-fb43-239188fecf1b@ti.com>
In-Reply-To: <a132765e-f4e4-a1e8-fb43-239188fecf1b@ti.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 29 May 2020 20:34:54 +0200
X-Gmail-Original-Message-ID: <CAK8P3a31DYOn1TyjxCYM7ebc9nL5EFKsNpSHkq55bG54Bns+MA@mail.gmail.com>
Message-ID: <CAK8P3a31DYOn1TyjxCYM7ebc9nL5EFKsNpSHkq55bG54Bns+MA@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] soc: ti: add k3 platforms chipid module driver
To: Grygorii Strashko <grygorii.strashko@ti.com>
X-Provags-ID: V03:K1:CHpvTznC9KyttYXmBgDSXICdqg0a0x5th2jDC+WMuJwWJHlRTtZ
 MAgNDAj3kQFTErZ6qm3Pb2U58ZxyNw+YLYYub16FPSo2aqrJuLt4wZsX5Khknpy3VYK5oZw
 k0q1Dduy5xggWpeZWWEXCHysLg1aT7fp93f/SQPk2dQHlJyKpp7VWtDkx2lCc5NvAu9H0lf
 pssj3ShSgkNSDBUnAjn6A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zrd5HuLOs7g=:ECMMncHOeJvwl/0o6qmtfU
 aQB9GGZoHlchkYG5L96rVBCaIQFDXijxbwH5CJhyDjP45GkNA1UR98tP4Gb69vcGWOmm8KXFG
 eJErVVapBENmFGv5dY2TfkcVCPaZBwDsvti08/dZthtTCB21WKfRMhWK+2WRIUkFaUxkRns9+
 H/kHWkAmk+FCsBCHbbpAML2RVgcouT/P3jyC+K5cj6p+EdSfDK5bWaEwFXJpBe4/w89ost4dh
 Cm9UdpnM3tXf6lbw9Mc9fbKxrMCCI9r8kuqTQ+0s4Bp1q16wYVcRFSbcTZZmITkRfosyX0a91
 uoRT7hTstAENiyff1fPhadGoo84OZM6TtWpV8B/nkUVdHfDXkMmWjXGHj4Byyw3IwINguvR6o
 Mbb9XfYvAAbx6J2KWJLuk1f57GaZuidGuQxUr2nKy6VV5/mWJN3jBfpUnrwtZ2jHQ5E47aPz3
 669C+G/HP/3EBsFkBnmWN74dxcad1cu3eEhBnMCXqHzT0/uzXpWbZ/h1mvqUBxVGiVknMbddj
 F49iS3pzuUBmbC8JpMvOofUcn8LPYvVeCT39AA/dZASt6P4RvTWNqaXoKmSedBGD9UH7EdFJ8
 kVDxTC5cjch4cqb4RHOFwVBrg8jE7hLdGMwJWOW/5Ew5rDTCMyAPtFHtNSfsgVxJM1HvxdqkW
 cJ9tyT0eEB5sU2c8topArE7oUwZH6VRTlwUeZoOQMS0OCTMTdttbLBea8tqI/skLyGrKnQ+21
 SxD1xVfJ8j+EBYroVDacEY+3Wc5Boja2NZ3JyaT9yL5emKDzKL1cyl4Zl4rZcNvypbU7p0FpQ
 ByTOo0wEauDjwWvi+z8Uk4l9udjPHt6v/TOF9HCq+GyjdmHVL8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_113518_952910_FF277B99 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
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
Cc: Nishanth Menon <nm@ti.com>, DTML <devicetree@vger.kernel.org>,
 Dave Gerlach <d-gerlach@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 8:22 PM Grygorii Strashko
<grygorii.strashko@ti.com> wrote:
> On 12/05/2020 15:34, Grygorii Strashko wrote:

> >   .../bindings/soc/ti/k3-socinfo.yaml           |  40 +++++
> >   drivers/soc/ti/Kconfig                        |  10 ++
> >   drivers/soc/ti/Makefile                       |   1 +
> >   drivers/soc/ti/k3-socinfo.c                   | 152 ++++++++++++++++++
> >   4 files changed, 203 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml
> >   create mode 100644 drivers/soc/ti/k3-socinfo.c
> >
>
> Any chances you can pick this up?

I merged a version of this driver from Santosh's pull request into the
arm/drviers tree yesterday.

Is there something missing?

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
