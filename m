Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B599454EE9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=81NaanZO98Udadb7I31EUKbIa7dYnT7IK/hnTsfoXtc=; b=UB3knRK9TakdIu
	eYlSrk8SAvBzwnwermMP2wjxQj6S7ay5useRq/K6n15i+ZMn/JIEVKzLggxi0KoC98EEbagBYSfvU
	eS2nI/IggAL7mf5lioaU8bJ7T4NX6B7ZBGiX+OKYN3wVB+cLFLFDRSjx3odFG2Av78TvsJL5zqav8
	XMqFHs37i9nPQ3W5o+GgDgVBHrlXDCJ0pAtw7ODNnw22gOBf8yOOS3dwGevvrEskClyY6l2c749Ht
	cENb0ovRfWQZEu5TnC6poD/s5rgOJ4rVEbo0hIJ8tHX0/bwK1O7LSzdeee3+Tp3SxpjLVJRU9JRAd
	ZNbASQIqVkhWcQK5hRoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkbd-0002ua-Ep; Tue, 25 Jun 2019 12:31:25 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkbS-0002u5-Ij
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:31:15 +0000
Received: by mail-lf1-x141.google.com with SMTP id a25so12509422lfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kDFY+QTqqiMEOnTov2xDeNaIk7HwyPkPWyRkRRHSyzk=;
 b=Vii5TMev7BoCq2nTcUAUy4RbuYP5eF8K02+yxiVUgFGihW7crvsellgGLrySBn9T4t
 +ZkRMd97gjWfE+XgGd8lum0sPzBVxoZ2K816B9DvAM0Ki/jqLCcrmv3VTVxg7HhnpGJp
 SBMWg7UYzZhnl+uubEvGQjLsZDamg4LCVbD6Z8taj5/U/uA//cusuoJF11bC0dy+/Uiz
 qplUPH0xN3gxA8LErE1J7X4fM8KBREa80NElm64vR/wg1VorhA73iqTMYiSCRzSdyLv5
 UYsxileELIgN9UTwdRejFzAe9xZTj31cPdZ1M5xPnuAKfukfgIw6HyLcOEoajwel5ji6
 Xmnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kDFY+QTqqiMEOnTov2xDeNaIk7HwyPkPWyRkRRHSyzk=;
 b=Q1DjIfku1QAIFFGCF5Z3AMZ/e+R9Ui2tIfLv7FHWrtK0VRoIpRVId3cp9661PcPHsv
 9D1BXciPUeop0VinXOhymw46k7d79jpUHosgethIZDxKIGFfd9mW0Mrj6YCQxfh/qyd2
 IXwo/MbwS5rV0mo1h9uqqdMbebNx1dGjJkLot1lSljfWnVrLUESuAxS86kH959vLxCJI
 1j3pdGb7gNImoxth0J3py+DVMmiGb2PMWttTvqjxRE0iPus2GZ6mNxC4JouVhGzUbewU
 y5i1ouBh03x48vWTUO9yPRZS9AywZR4MgNrkvBk26F7THYGq7hMmraJtuyjdpYKkf2dt
 E4UA==
X-Gm-Message-State: APjAAAWjVu+cqPrmXQzu/Qbafi7MkKSFM2R+pR7NdNcC/HxWaPBZDf/h
 FBTZbphfU6NiDnToG/7tYAl74qwyuf+XuWthxjIl+A==
X-Google-Smtp-Source: APXvYqxJtx+kv4xSwtZ2Oh9SZIkuBtLHG+NnPvuNmG5fGRPD0rBSI3dyCsgfek9QsPqek/vYbO/dzGax8Uzv7n1exuo=
X-Received: by 2002:a19:dc0d:: with SMTP id t13mr52002001lfg.152.1561465872654; 
 Tue, 25 Jun 2019 05:31:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190618160105.26343-1-alpawi@amazon.com>
In-Reply-To: <20190618160105.26343-1-alpawi@amazon.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Jun 2019 14:31:00 +0200
Message-ID: <CACRpkdYgXZzvFKyvySWnsJ2_1pA1e_VHEY-QNzNYCikMUc_WVg@mail.gmail.com>
Subject: Re: [PATCH 0/2] pinctl: armada-37xx: fix for pins 32+
To: alpawi@amazon.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_053114_627302_37ED0349 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Benjamin Herrenschmidt <benh@amazon.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 6:01 PM <alpawi@amazon.com> wrote:

> From: Patrick Williams <alpawi@amazon.com>
>
> The 37xx GPIO config registers are only 32 bits long and
> span 2 registers for the NB GPIO controller.  The function
> to calculate the offset was missing the increase to the
> config register.
>
> I have tested both raw gpio access and interrupts using
> libgpiod utilities on an Espressonbin.
>
> The first patch is a simple rename of a function because
> the original name implied it was doing IO itself ("update
> reg").  This patch could be dropped if undesired.
>
> The second patch contains the fix for GPIOs 32+.

This looks good overall. I am waiting for a maintainer review.
If nothing happens in a week, poke me and I'll just apply
the patches.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
