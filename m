Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3EDFD09D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 22:53:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAgyf2DWs1KJLGhzrkvv9gHhhiOfXD9fotdxaiFmYMs=; b=MumdwYW0OiSyck
	KOz9be9FAEoF5wlwR3U2KY1U/7icd+L6IvyaL1/wi7HM+ExYdRE6puRcCYMetqyKTIUYPQZjeew3P
	swfYXU/k5Exgvjfc5Op4TXsSS4bVtUzXkpW418SYk5miNGIoxx+2gW2iJvdziEncXsSzebAD1lwPe
	fZbVWbAsDAAibb9vpYPhhykSqhZzgpXt68TjLNy9jnkXLhiBjZ8beJXI1UVF1BZ2avwB/TTKWlF2J
	lgXZwONlRjrNTcBq+Ck+j1iKXD8xQOc8XGdRuj3p5+XNTB+Ztw7zq5lV5Muz6kr6oUFVzjIIGsuzO
	r6VGHe+msnLkGHncVRNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVN3P-0001gw-HM; Thu, 14 Nov 2019 21:53:27 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVN3G-0001gW-1P
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 21:53:19 +0000
Received: by mail-wm1-x341.google.com with SMTP id f3so7986794wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 13:53:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AYtxXvV7rq10di0nCWaqkGfMn0fSIV9NDKI+yoF5mf8=;
 b=vEQgq1op9ByoduD0PSXhrq+mTjXh/a9Gtfy2C1k2DUjnz8JbxAvA8+U5GF1tv9Lk6R
 IsJPImJwyCgxRAdHe4sWwbis38qHhz5db7v3BSmaY6CAKtFDRa62ra2hSaAGIgGiYUW4
 H9347pZryUbpiAIYVc3M0czQxk6u/MiKfhH/blYvu99pGd4Tpi1S6SxbK0asz5cyHTOf
 I20Hm3bi6T+H5nEVXNn62VNv6qx63Gvp1PrgZkzxT6DyINgQWfcsT2fDehCfkt2vU/XT
 eIDeZkVHQzXqPmwGvHJoCObgeUQiIXVf8f7JhGT9IMeRA7cvW1WAXaRJF3PiZ3/wqSpd
 C6bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AYtxXvV7rq10di0nCWaqkGfMn0fSIV9NDKI+yoF5mf8=;
 b=U8C6j5Pa4JBvK0pmKmcGfxvKPhk5WipPsy/03ucJf37lLObIiz/wMvZRddC71+vFj2
 ep5wsKCRqZrdOGz3EiGyNgc0Aqmuxh03Bbn7Uj40fU8J8W6/8WhB0eTB8mbjVs3mvYVk
 iPXg1eQuQGqYUpmda1cg3GD+ViiesL6cKwJ+7o0AO9NyilLXjFktM+pebVnYruupkvMC
 fxAQSPWhWmB/Ed0yNZRaU87x0u3b0m/+0GdysFjSNHNArovINByOkwsA3wpFByNSE6FG
 FxArsGmwvUi7ElydMYm0p/NMhRLIwSMX9drdyDZcSld1iErkrYyEhfhHYZjK6pbp+AI3
 mQBQ==
X-Gm-Message-State: APjAAAUZDtEnV66q0m8VxwbVSl4T1QhQiEa6NNcPWalba/IpugMCUqdd
 oOVlwGxxKlazfsQRhYPdaFQ2q7PUKGxzXbobOf0=
X-Google-Smtp-Source: APXvYqyer25pIwMp04AbL8hennAHCOuUosGk+t1VEFMYAff37A/7WH3EIPa1ZSLfmfuxc9MZc4jsGSnMrgSUVRXVktQ=
X-Received: by 2002:a1c:ed16:: with SMTP id l22mr10462653wmh.151.1573768395760; 
 Thu, 14 Nov 2019 13:53:15 -0800 (PST)
MIME-Version: 1.0
References: <20191114110254.32171-1-linux@rasmusvillemoes.dk>
 <20191114.133959.2299796714037910835.davem@davemloft.net>
In-Reply-To: <20191114.133959.2299796714037910835.davem@davemloft.net>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Thu, 14 Nov 2019 23:53:04 +0200
Message-ID: <CA+h21hqXnUE4d777T05y6tcS61B5SvdqSpCti=_0QAgUeEkqLw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] ARM: dts: ls1021a: define and use external
 interrupt lines
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_135318_082329_A49D9ADB 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Andrew Lunn <andrew@lunn.ch>, Marc Zyngier <maz@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, netdev <netdev@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 Nov 2019 at 23:40, David Miller <davem@davemloft.net> wrote:
>
> From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Date: Thu, 14 Nov 2019 12:02:51 +0100
>
> > A device tree binding documentation as well as a driver implementing
> > support for the external interrupt lines on the ls1021a has been
> > merged into irqchip-next, so will very likely appear in v5.5. See
> >
> > 87cd38dfd9e6 dt/bindings: Add bindings for Layerscape external irqs
> > 0dcd9f872769 irqchip: Add support for Layerscape external interrupt lines
> >
> > present in next-20191114.
> >
> > These patches simply add the extirq node to the ls1021a.dtsi and make
> > use of it on the LS1021A-TSN board. I hope these can be picked up so
> > they also land in v5.5, so we don't have to wait a full extra release
> > cycle.
> >
> > v2: fix interrupt type in 2/2 (s/IRQ_TYPE_EDGE_FALLING/IRQ_TYPE_LEVEL_LOW/).
>
> I am assuming this will go via an ARM tree.

Yes, of course, they are for Shawn. Netdev and Andrew was copied for
patch 2/2 (an SGMII PHY interrupt).

Regards,
-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
