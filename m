Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353C372F40
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 14:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMqP41Z3xf2ZhUQ1UaswCDvIOolhbR2qyWSwwYC0yT8=; b=Jn9syklUstREvA
	VgY5g7FQs+94aACaL8/UrbBUDruE4VoJ9yFPnbuZM908gCQE1FoNbn6AmeG0lFrVI99X9BtkUF+8r
	H9kiSIHv5jZ0v7gWERtEnCnLddHw4nVGE0m9aKgq/EVCWXZUQfT1eEjvuT6vuTQzcuxJxrKkfXNVu
	6P6waUIGfCBzevsju5iI0P6c+7rZqD8MPi15m/7ifxe7/rhfpr1cCAdEhpUXc+508oU3cQ+ONp6tk
	08TUz4T9fizeO28qgYQTHo8pASRaQT7ENfKTyaw78FX3sa9yXt2+Bc0jM0AJoNI/WzP59KI1KaQgl
	CfaJqQdQQiVEUjt0Hhrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGmY-0000cF-Jq; Wed, 24 Jul 2019 12:54:10 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGmP-0000bh-Pr
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 12:54:03 +0000
Received: by mail-lj1-x243.google.com with SMTP id v24so44474614ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 05:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8s9iwMI4cfgXm2mI4kKjxaoQF77Iv3LnFssVNk4/AqE=;
 b=e6gvQFZnmqmpSV1KLF5/Oh4lmuhM+EVXiC4pDDYJGMi/JyybPBcZWITgcypC2TuL6q
 kFoFmaW1yUWOnX+Ftl4FcvWz32H1FOQl1KpMftg/vudtHv+gDtsSwjJQ3eYnE6L7gbH0
 KP2NhVvUYl3AI47t8ya5DycFECEqq8+7pnhyaw7dySZptDVFwGKAokJt0aoZ2gIv9nC4
 r2hfHQfjWREb1kUs82nbNyI1zCfGlPvBLsm3VEa0TFkT/184d/gQ0IIoDHhnE1mCGaRG
 FJ5N3d/XGWgPQL4rn/UgoEpvu+1FTKfl0Z9kiVPUscZq0M4sceqio208VDrVLI3ABqm4
 HCLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8s9iwMI4cfgXm2mI4kKjxaoQF77Iv3LnFssVNk4/AqE=;
 b=cHfTQvOXqte7MYxXmIoGE58fR/TVBVTEhmvqs46Z50KJC3hirUFtcIRNoKpQgDXhs9
 m0owFmrurcY8yQyFOYtjNpUhhi5u4A1Vxu8Mtn7mXD+3CnRPQjZexyfJ0mVTE/PzUeR3
 kjVj+TPwosiOist5l/wH8faXyqXKg+m9BfiaItuQxm/1cZoD1Hrs16xTVfdtri0fD1aj
 lqtAVkfOPkFTIc8bXtgJOjt7ihez4kLfxCfCWHZLqdLi3dF+xQHIwD6aJsEOJfM+R4Gq
 ULgQ1ZS/OCVaVHTRSdWX2JZgUW3hSdtLZLxss3pBraP4kAbRh1TLP3yXCY4HYdCjSU7K
 dlMg==
X-Gm-Message-State: APjAAAXAOYQ0JyvucpXOYNd8W12mp76G0Ty7GF5lZDp+/hl14v1vWV7k
 U6BPih0B1LpHbsIKkiuaKl9PhlB38D9OydCcVKETcQ==
X-Google-Smtp-Source: APXvYqxZKwYIfufL+NOiqSuv6XiPFbChSpOwB74aj0pQp3yYznJLElIPijgnRJJpEuGBIzDFWAWl2n2grgGihEArFZg=
X-Received: by 2002:a2e:9048:: with SMTP id n8mr23521163ljg.37.1563972839947; 
 Wed, 24 Jul 2019 05:53:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <20190723181000.GA24663@ravnborg.org>
 <CACRpkdZhYy6o9xMD42pQm-MCZUi0EpXs1uwQg6D-B4NXpyMHWw@mail.gmail.com>
 <4d576e9cc749fc47b57f9bc64a082aa791e9780c.camel@arm.com>
In-Reply-To: <4d576e9cc749fc47b57f9bc64a082aa791e9780c.camel@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 24 Jul 2019 14:53:48 +0200
Message-ID: <CACRpkdYYcco-4+vOfNFTVvJ5Yb6t5HNdBZjT8T87J7G9egV=4Q@mail.gmail.com>
Subject: Re: [PATCH 0/3] RFT: PL111 DRM conversion of nspire
To: Pawel Moll <pawel.moll@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_055401_841709_5EF57C3A 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Liviu Dudau <Liviu.Dudau@arm.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Fabian Vogt <fabian@ritter-vogt.de>, Daniel Tang <dt.tangr@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 2:47 PM Pawel Moll <pawel.moll@arm.com> wrote:
> On Wed, 2019-07-24 at 13:28 +0100, Linus Walleij wrote:
> > On Tue, Jul 23, 2019 at 8:10 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> > > On Tue, Jul 23, 2019 at 03:37:52PM +0200, Linus Walleij wrote:
> > > Do we need to support arm,pl11x,tft-r0g0b0-pads before
> > > we can obsolete fbdev stuff?
> >
> > No I don't think so, the only in-tree platform that was using it was
> > the Nomadik and all it did was to switch RGB to BGR and
> > I already handle that in the driver using the hardware
> > feature to switch RGB and BGR around instead.
> >
> > Right now I just check that the pads are there, I might just
> > remove the check.
> >
> > However Pawel added this binding and might be able to tell
> > something about if there are platforms out there that really
> > needs this. Possibly Liviu knows more.
>
> It was only there so the fbdev driver could figure out the output mode.
> I take that DRM "pipeline" now takes care of it, so I'd say that the
> moment the fbdev driver dies, the binding can go along :-)

OK I'll get rid of it. :)

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
