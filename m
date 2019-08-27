Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AE69EA19
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:51:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rEbdYGEKeoIuq1W6YFkxpdD4+LK76eAzWuFL7Oafzm0=; b=orpeGuyiGGmeRP
	APaNGxX+G8Kfk06XS4H2Syubbd4mU82jahEc4bZS/SLP2t0si/FvyMAGCUJUTQ6rruyKxzP71rsYd
	tFA1ZOoBHPDRbEEtdbNapdIl/M5VQaStVrWTa0cAOvQlE+ooSfZfsP7nzUsM5VbmeUFVQwBnTcUji
	FA2Um4hBQjoXoMa7MDQt2gx4J3kk7+nYT/GWSPrHjs0VhBQNhtIhobp9OyOuZQEMOPQbg2qTQ2pSp
	Bx3DFlMz/xP1zEX8HGhOJzF/XUlJkNLKbziCRLYAmWs8C7mIdtQmnhOWiuG/Xyk0h91IR3R8B0Unz
	DOMTgmh87PzeM26s1CMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bsO-0007UZ-9M; Tue, 27 Aug 2019 13:51:12 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2brY-0006kU-Jy
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:50:22 +0000
Received: by mail-vs1-xe43.google.com with SMTP id b187so13474915vsc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 06:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Azqn8B8zEoK6qeo0gqFEO5Y6U0l3RHxOtMnA5UrW9xo=;
 b=S1KWANYd3hxj20Oktt/812hJNXbDjSq+iPYkPPc2E0UYVq1fPky1u8+0m7jBg5Qjsu
 9saaDiWsSk4C8ciJjV6vtKC78MxSVKTNzdP982jnw2N/G8BpDzqPlr8nffUPXrF0A1pK
 ptEiM0eRGUZHJCu9UxuZkDRv75hDXvbeqpB7J7f6Bu8mWSP1mf5PW6de3EGQH6LDOdLU
 NuaDp6E1e5rMaQpoxVA6l/lPkC2bnH8xfK6WpgUUcG0Oo3jjCr0WIfP26jhk+RgHKM4C
 r+Eq5tnea8njJrkwp+1DEfxMt7F0Vuf4R0p7KVhTzeoTFopw9bSjA0Rk0eSiGj5Gk+7U
 hhtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Azqn8B8zEoK6qeo0gqFEO5Y6U0l3RHxOtMnA5UrW9xo=;
 b=kb55hfhfbNHXBakjZoGAEnPXemTjbf45wpWWiM+0fbz70VZXS3QdkeTyKUAjwGtNlx
 dfTB+CCB0Suz1iXxgBJfGjiFFz6ED4gI3QnCtLXK9rOx3/1oUivY85zLb6Vm7Fp0ckXZ
 x5TMPXW1bIR5gbXLgQJ4dUFcAfCIXoxKdYDNP/XPX+capoNYSF9H/3mKznKC410SjwcM
 kSKHvxvojTVnm4kex/xA+BviWO3GTZXKrS3Rm8tOwPBSVxk4GT8s7SKusW89U17bsTiv
 q2kUg4xnR6JSodaAQ6Sepx6ezPhiEXqxiF+FpFauDZK6oBRXtw3d2ryQt4hWSurktgs4
 nqmg==
X-Gm-Message-State: APjAAAVNirgv39Vj3tdoX0MJ5CwU4BT1N+5jINa3u/FIGRLHGd7blxD+
 4QTw86IKWWrh+Ga3Rps3BbvAftfSFgxIfa6XNVXWfg==
X-Google-Smtp-Source: APXvYqx1yncYH92Ikl/BgP+ETxGhkpBu01ffZ2ej/nlflY0sLbDKUCylNmbGeeDyd6Kvh74U3dWYaZ9FdZniZqF64rY=
X-Received: by 2002:a67:e287:: with SMTP id g7mr13476377vsf.200.1566913819149; 
 Tue, 27 Aug 2019 06:50:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190826120013.183435-1-weiyongjun1@huawei.com>
 <20190826130343.GA23584@kadam>
 <629128e7-cc91-412f-8946-668fac2eb3b9@www.fastmail.com>
 <alpine.DEB.2.21.1908270845410.2537@hadrien>
In-Reply-To: <alpine.DEB.2.21.1908270845410.2537@hadrien>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 27 Aug 2019 15:49:43 +0200
Message-ID: <CAPDyKFqXLG7VCh+9oQQ4HD=6dHQLY1PHEkmC+atnB-zDntKULA@mail.gmail.com>
Subject: Re: [PATCH -next] mmc: aspeed: Fix return value check in
 aspeed_sdc_probe()
To: Julia Lawall <julia.lawall@lip6.fr>,
 Dan Carpenter <dan.carpenter@oracle.com>, 
 Andrew Jeffery <andrew@aj.id.au>, Wei Yongjun <weiyongjun1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_065021_097823_956CCFB3 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 linux-mmc <linux-mmc@vger.kernel.org>, kernel-janitors@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 27 Aug 2019 at 02:47, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Tue, 27 Aug 2019, Andrew Jeffery wrote:
>
> >
> >
> > On Mon, 26 Aug 2019, at 22:34, Dan Carpenter wrote:
> > > > Fixes: 09eed7fffd33 ("mmc: Add support for the ASPEED SD controller")
> > >                         ^^^^
> > > When we're adding new files, could we use the prefix for the new driver
> > > instead of just the subsystem?  "mmc: aspeed: Add new driver"?
> > > Otherwise it's tricky to know what people want for the driver.
> >
> > I don't have any issue with the request, but I don't understand this last
> > bit. What do you mean by "it's tricky to know what people want for the
> > driver"?
>
> There is no obvious algorithm that tells how to go from a file name to an
> appropriate subject line prefix.

For MMC we normally use the name of the host driver file (excluding
".c") as part of the prefix.

For this case that means I amended the header into: mmc:
sdhci-of-aspeed: Fix return value check in aspeed_sdc_probe() and
applied it for next.

I also took the liberty to change this for the other related patches
for the "aspeed" driver to follow the same pattern.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
