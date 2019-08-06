Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C240832AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 15:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0m2I4cjFVnCboDR5nqnvohu7MY0/yDVR+00hhL3n5A=; b=nkKZnNX17CxCt9
	erLgEx5KmVE3gpwI6OIDBuAZwE9RRhvLi0fbv6ONAa5PKd2Vp/95JriJeCNKgN/XPektfga/RtgBe
	bJczecVH/+3C6H/KCfii5u/dqR5ELUDGn+0EN9DikkDUC8Xi1oIxGXvS9+gm4v3BHWYqDB8YSQerr
	fzRUMNHhcXIpNub2D2ql0QYIrguIPuMCZyrwFQOyzGy0M3wXdHlC/v+kuzOvRuBF35b8LfUzLBztG
	5EY68FqAmZwnIgQOvbR+k8D8frlm+zF/VTYQ+Q1weYzJMg/ne+Am3NQqeZLzDpN1SMAZTAu6tiWsj
	P7a0LzMbT/vxC/l8hUZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzUh-0003Aj-9S; Tue, 06 Aug 2019 13:27:15 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzUW-0003A2-EL
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 13:27:05 +0000
Received: by mail-qt1-x842.google.com with SMTP id r6so80227020qtt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 06:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QepbGpjxdz/Q+6YHfXtoICko0cdKUjwXX4QETCQHWj8=;
 b=bzIMi9FXppLRWZzJ/iI9ZBXddD4PnneBE9NT/UoqebYxXA7CflUoPASr63iMdGtUBG
 Jwrbq1C0xSH9LIN5UdVNoHQCog70zRvlWfB7azMbuC+6Jn+2u15izE38bZomNxKHYJPA
 e8DiwPrQ+XaxM+rGs6hoXZuGMfRItnU+HM0zGMnAj7UUKF0SIAz09R+NnAKrerpSGXvo
 Kk7yVf5KECa3Iu4C3uvBpsJTFTpzygQX5eZxFqN9d+WbjlebcyTfbAy0i1SXHYMSpD4x
 KL3f86a0sMYIS5P9c8H8iy217oBZ4vytmlRRjpGAea0rJ5QL8OH8+CDi3octHWy+DIhO
 biYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QepbGpjxdz/Q+6YHfXtoICko0cdKUjwXX4QETCQHWj8=;
 b=KfOrNkIj71uXRC8CebrgLSCSamZ1gAo13wY7J+zFRbYhsute7mUoFxLJRG9tp/eJZK
 Z6K0yWGo1MJh0j5kViETtUweSOPXuT6MTSWcTRernNdl18QU4anGIu7rCFEageqhwFP4
 qAZcdV5Uk40Kj8l3odtlWhiVFzkEna1GUCm1enhmWefIzZ3SrVS6MDZHF8ZfGwvBjyi6
 1HvMN1Yb71FpNtg6vC1pYLzN5YjHuj6gwQz0Ilu0KnzBfCKa7cEvVKjGHwFes3ObW0Gq
 lOPLBe147DyLyJU8a+4VELA2tuMx3mSiIIIJ6ictQiXQEYP/PXKDYI9ei3atmfGAoo/T
 dcMg==
X-Gm-Message-State: APjAAAWUCa0x3wrWBhvaEvskD7Bu+QhHVbuDyI1m+RYKqcP5C0OCSijF
 eFdELrlsj9ByD8tFfB2Z9GLX6xB/z/ZiNGZsm/txLQ==
X-Google-Smtp-Source: APXvYqxjReH9a5RdVKP44/CxV4GA6MJPPJv6EhlnpRpk8YLqn8A8+xTkel+Txw9cXO0QR33NnMHiklTBqawLAq053vE=
X-Received: by 2002:ac8:253d:: with SMTP id 58mr3074770qtm.40.1565098022510;
 Tue, 06 Aug 2019 06:27:02 -0700 (PDT)
MIME-Version: 1.0
References: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
 <CACRpkdaBT24JPH_VsKtgp6fjWtVuqM50rXkDVYKmLHgR5hdJzA@mail.gmail.com>
 <1565077710.23705.21.camel@mhfsdcap03>
In-Reply-To: <1565077710.23705.21.camel@mhfsdcap03>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 6 Aug 2019 15:26:50 +0200
Message-ID: <CACRpkdZ8LjG22QCA0tB+vMi7fPJNBiX-sL1+t0yZqcfRjMJF7Q@mail.gmail.com>
Subject: Re: [PATCH v8 00/11] add USB GPIO based connection detection driver
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_062704_489684_9F96A5C6 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 9:48 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> On Mon, 2019-08-05 at 12:06 +0200, Linus Walleij wrote:
> > On Wed, Jul 24, 2019 at 10:51 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:

> > But for just "hey I'm plugged in" we can surely keep this
> > ID on GPIO detection in the USB subsystem.
>
> Sorry, you mean provide a common API? could you please describe more
> clearer about your suggestion?

Sorry I am not suggesting anything, this code is fine.

But:

> > I just get a bit insecure about how we should ideally
> > handle these "funny-PHY's".

I am more thinking about which subsystem these things really
belong in. But let's keep it like this for the simple GPIO case.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
