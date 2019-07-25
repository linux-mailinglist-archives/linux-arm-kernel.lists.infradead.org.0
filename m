Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB7374377
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 04:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayxS1dbXNLUnYlbQdkBkVTQYZiLq0da8Ehm3CtHMdr8=; b=jQxOslpL/PpMTD
	Wc/iPMQ4pXUe5VyBsXPClCktDsPmYzxACc+/bbkei7cPmdGThf3FLmQFDmZORwVmP5g+apq+MJBHy
	mGGaDqZ3JGaE9DIwhl9kWJ/BL6j7podyJ3KYYXPaaZ/KhqHhlUlTb6j5FIvRQaVD89IEQk7DDrBJC
	dB4fbA0XExfAYxBsDNC/ZY7PdIoOCH+LqZ2T5BI6oakPO8jv6mIlSysKrUIf7Xj1eMUw/fLDW0p8r
	rbFTb7TMY3i3FDh/q5DsfYmuEBkXoBYtE+fLQhKyxm9/JwtUDUEo4uR8wBNrLm8nRhR1jKPKBguwF
	QtZOEuCGI3MhMJNWUICg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqTsE-0002aC-Sn; Thu, 25 Jul 2019 02:52:54 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqTs1-0002Zc-Qm
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 02:52:43 +0000
Received: by mail-qk1-x741.google.com with SMTP id v22so35365798qkj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 19:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TYbaU/RcXXoDnrZeMQ94CuW6JxA4bBgoJMHBj+E8c3U=;
 b=VWLm7pb1QP2B0tihwP9USNElFOTjEp6/v4Hd70rru6K+fpcBLvsEDPhud9KTe7tp1C
 gOYRrkbY5+tRQ2nBFGxx4CHJMbUfjVlQcbyTAYX2Zp31qb6KjaBAMSvULqFBUzF8Kb53
 /HA80hSPJspYIH/79t0OEPIUrlEg+sessZKds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TYbaU/RcXXoDnrZeMQ94CuW6JxA4bBgoJMHBj+E8c3U=;
 b=Oct/k3Smv8/xdFTYM0jze7Y0RopRJC4BUBbkty9YnMltmpq18t/hl/7J3jm0dnBXEH
 31y7kYSwxBEqdxQzjfPkYJa8Nxg0SR/UO1LLaxxOZv5MmTlUDwnA0U8mSaZmKkSxrkQt
 sWAmQbtjjBuCCjZ2uvb1upyC+VIVnkneb8Vp1/quJtYbWiU6ea8ylvK1TmC+bF8xWBLy
 /3GJjvWl6SNZrNUDZuRlnKvhe82p/o3HE+tDIUkSJxycxKIg1VX87CSf+tbsdCYc2ywO
 KR3nDgekup0eibyueXjZOYoryTA0/q4leg5KEBjwyo8ULZKmW02iqgDMzD9Tlv7dBdBB
 Et0w==
X-Gm-Message-State: APjAAAXd90NL29SPsmaVNuN8RjClyk5xLgDP3zF9Q+KTkenZeMh0Bcpn
 pGk2FyxJSB1LFW3kSZhTO9iexQkPUvEQMmQKHhw=
X-Google-Smtp-Source: APXvYqyM3sqW/iwNxySOMbv+KfAtuOilJ1tOA6mmxNVc4AhyblxyzikTIraPFFcFyT9J6TSPJ9ksANxa4ctyvg2uzs8=
X-Received: by 2002:a37:a1d6:: with SMTP id
 k205mr56474155qke.171.1564023159729; 
 Wed, 24 Jul 2019 19:52:39 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1562734889.git.joe@perches.com>
 <cddd7ad7e9f81dec1e86c106f04229d21fc21920.1562734889.git.joe@perches.com>
 <2a0c5ef5c7e20b190156908991e4c964a501d80a.camel@perches.com>
 <4f6709f8-381f-415c-8569-798b074b66c5@www.fastmail.com>
 <4e5bc8d61436024a30a8fb6a1516e29e23a75ede.camel@perches.com>
In-Reply-To: <4e5bc8d61436024a30a8fb6a1516e29e23a75ede.camel@perches.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 25 Jul 2019 02:52:27 +0000
Message-ID: <CACPK8Xd3+iwkuw-Ofwf+Hy1Ez5-1pBvnk_G4xT72ZQdOVd7Sag@mail.gmail.com>
Subject: Re: [PATCH 03/12] drm: aspeed_gfx: Fix misuse of GENMASK macro
To: Joe Perches <joe@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_195242_064958_52F78164 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 25 Jul 2019 at 01:18, Joe Perches <joe@perches.com> wrote:
>
> On Thu, 2019-07-25 at 10:40 +0930, Andrew Jeffery wrote:
> >
> > On Thu, 25 Jul 2019, at 02:46, Joe Perches wrote:
> > > On Tue, 2019-07-09 at 22:04 -0700, Joe Perches wrote:
> > > > Arguments are supposed to be ordered high then low.
> > > >
> > > > Signed-off-by: Joe Perches <joe@perches.com>
> > > > ---
> > > >  drivers/gpu/drm/aspeed/aspeed_gfx.h | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx.h b/drivers/gpu/drm/aspeed/aspeed_gfx.h
> > > > index a10358bb61ec..095ea03e5833 100644
> > > > --- a/drivers/gpu/drm/aspeed/aspeed_gfx.h
> > > > +++ b/drivers/gpu/drm/aspeed/aspeed_gfx.h
> > > > @@ -74,7 +74,7 @@ int aspeed_gfx_create_output(struct drm_device *drm);
> > > >  /* CTRL2 */
> > > >  #define CRT_CTRL_DAC_EN                  BIT(0)
> > > >  #define CRT_CTRL_VBLANK_LINE(x)          (((x) << 20) & CRT_CTRL_VBLANK_LINE_MASK)
> > > > -#define CRT_CTRL_VBLANK_LINE_MASK        GENMASK(20, 31)
> > > > +#define CRT_CTRL_VBLANK_LINE_MASK        GENMASK(31, 20)
> >
> > Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
>
> This hardly needs a review, it needs to be applied.
> There's a nominal git tree for aspeed here:
>
> T:      git git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git
>
> But who's going to do apply this?

This is a DRM patch, so it goes through the DRM tree. I am a
co-maintainer there and can apply it once I remember how to drive the
tools.

(FYI, this macro is not used by the current driver).

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
