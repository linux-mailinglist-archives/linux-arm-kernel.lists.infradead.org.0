Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E53FEC80E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 18:41:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dq5EqHYZW39JsV1c4J5AvBDgDL3K0x8fmvqib3LLYEU=; b=X47b+wcaX0hjzo
	xr0Rsr6P7IvOY71CzPrfYmVf3Ki16n16/C86XguWoQ88q+YoiRxayz7q0Qb9CWtP8NnjUx7WbDCOD
	dwj5lkj8sNA9umr+PvfXZ9EzIQXMn0AgMPYzL6X9WfHlkSgNfn4/OtEG08+gU7U6pfNtHKs2+RkD8
	LXDuWDpdcv/4f9yFc4Kz0BsjMsvpx15deFzhDg3OX5mlRgGgJENu9Wjidbe9e4aAD3ItQDzXpoGQ1
	AhqqVpBpVdi1vpnt2FHwitTw8wXZMqR9sEH1OopR8NvT1Ikt9ZNUCi5RPdPikm1fPyFO/tcz+IXu0
	+vIrJ+xkhwDSpGyuaN9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQav2-0005wS-KQ; Fri, 01 Nov 2019 17:41:04 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQauv-0005vU-QH
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 17:40:59 +0000
Received: by mail-pg1-x543.google.com with SMTP id l24so6895242pgh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 10:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nFNT0LPVheWA4KBpnwRedDxe323lH3c78BcmwLbJ700=;
 b=ge/UTzPgmx562dBN7M+gJnaLpgdt7tTLMJj965/UtlsjHMookPjfZEeSyuW6yaBJ/t
 aziJDTH8+9YwXmzr0Xx5hpG5e9caR15dZKiaMPAf4PyasAzBv0vx87Vf02OLwoM8qUbQ
 6lPYg2bQvvDGYW2hQQo3KXH6Ha7iuEaqv3kZymF1Pya4y1sjKq/0iDVomDCBsrW3lD8g
 ojwug482SwJTWzYJ62hWzrQPU1DwHsebPq4qsbWjVIH8HEXoJSGpXC7EiUAYFoakcosh
 BvXhyG9EnJgXnPi+dYOf2m1VxgGQ8+bZg54SqXSHvHom7gowiYfuCyJdZaeqoOS04AsO
 TbAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nFNT0LPVheWA4KBpnwRedDxe323lH3c78BcmwLbJ700=;
 b=gONacFmaxXVQ5ZnlOKKzJZ+8PWpZPVRbjGwNH2Hmod8mwhr9/vMEYj0/Z/DooeEATt
 Fk4fTMGT7mqO29p2QY8Nlrrmmx/RGSdfB5opP2czd2faBOhYnqxKeZ4s07D+KznkPnw7
 S8sPypoPpgl3IJqIPZ8/XMDfB5vgW4iDx/kiBaqXHjhQaQMok4wXk25rmgF/67G2zFzW
 DOZWPZgMzDrL+38v4g0nD9SaBHWtH8LbtxFE88qZDwMKy77gpiVofqfqCh6LCZYzktR0
 QdJA6kkbzmJt2othi0rmx+YbteVZuhxFP7FKP2mwQg25Rwt8OzTbMFLZK8YhHiY7nSAz
 Dh6Q==
X-Gm-Message-State: APjAAAUMXeFrGmQTMWRgz3VkZODiFZ8a4k2iFy6Hbsc/QBEbwuMKwo0m
 5A7ZW0b5DiHSGp9vdhQuEI0=
X-Google-Smtp-Source: APXvYqxEMn19nRiQYdcMHXDUyl1sN5kC5K5u0Di4ZM95TyefIw5grebLlrUdxgtbp3mv1L0GC8D08g==
X-Received: by 2002:a65:5388:: with SMTP id x8mr8040065pgq.398.1572630055931; 
 Fri, 01 Nov 2019 10:40:55 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:200::3:155b])
 by smtp.gmail.com with ESMTPSA id b18sm7009793pfi.157.2019.11.01.10.40.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Nov 2019 10:40:55 -0700 (PDT)
Date: Fri, 1 Nov 2019 10:40:45 -0700
From: Tao Ren <rentao.bupt@gmail.com>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH 0/4] ARM: dts: aspeed: add dtsi for Facebook AST2500
 Network BMCs
Message-ID: <20191101174044.GA13557@taoren-ubuntu-R90MNF91>
References: <20191021194820.293556-1-taoren@fb.com>
 <CACPK8XcNxs5T=ZC_mRnvkOF_kqS1AvP=9PvMB6w9Fgn_XbtZQw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8XcNxs5T=ZC_mRnvkOF_kqS1AvP=9PvMB6w9Fgn_XbtZQw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_104057_853094_46C039E5 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rentao.bupt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Tao Ren <taoren@fb.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 10:08:35AM +0000, Joel Stanley wrote:
> Hi Tao,
> 
> On Mon, 21 Oct 2019 at 19:49, Tao Ren <taoren@fb.com> wrote:
> >
> > The patch series adds "facebook-netbmc-ast2500-common.dtsi" which defines
> > devices that are common cross all Facebook AST2500 Network BMC platforms.
> > The major purpose is to minimize duplicated device entries among Facebook
> > Network BMC dts files.
> >
> > Patch #1 (of 4) adds "facebook-netbmc-ast2500-common.dtsi" file, and the
> > remaining 3 patches update CMM, Minipack and Yamp device tree to consume
> > the new dtsi file.
> 
> The patches look okay to me. I modified the file name to match the
> convention used by other device trees in the arm directory, where it
> includes the SOC name first.
> 
> I also reworded the commit messages a little.
> 
> They have been merged into the aspeed tree for submission to 5.5.
> 
> Thanks!
> 
> Joel

Got it. Thanks a lot for doing this, Joel.

Cheers,

Tao

> >
> > Tao Ren (4):
> >   ARM: dts: aspeed: add dtsi for Facebook AST2500 Network BMCs
> >   ARM: dts: aspeed: cmm: include dtsi for common network BMC devices
> >   ARM: dts: aspeed: minipack: include dtsi for common network BMC
> >     devices
> >   ARM: dts: aspeed: yamp: include dtsi for common network BMC devices
> >
> >  arch/arm/boot/dts/aspeed-bmc-facebook-cmm.dts | 66 ++++---------
> >  .../boot/dts/aspeed-bmc-facebook-minipack.dts | 59 ++++--------
> >  .../arm/boot/dts/aspeed-bmc-facebook-yamp.dts | 62 +-----------
> >  .../dts/facebook-netbmc-ast2500-common.dtsi   | 96 +++++++++++++++++++
> >  4 files changed, 136 insertions(+), 147 deletions(-)
> >  create mode 100644 arch/arm/boot/dts/facebook-netbmc-ast2500-common.dtsi
> >
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
