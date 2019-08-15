Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE628EB5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 14:18:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7mcfHs9/u4ginruQElvDTSDDGJngDmmvfi2J6kWKvg=; b=O5NV78I1W48Uug
	zrnEFfFObKb1r+PLuPZDhjR4fFWLubdo/sf9GbwAxuxd8jaBIkei8jOLA8FvzIPAYVLCVrxxm4Hxb
	yfPR3eedxz+VNVapyHnpiUZQXcQqrLXhu++kB+JqS7/bl3wzfRDqPSEge1EllOgUAAF8H8iV/h02b
	16NzbisD//2MIDWG7zIeZyy72Px867CbqXg55mXe212hAsmEa6FnsryawUK1OIHSX2X0CMNpgK3xa
	GMjY1spLgNYGFs616GsMKTZ2d33PVuFazJ7JWvbfz8ibzLjINdsO3qQ+C7QiWFQmrRCwGkZCHpL0H
	bszyFP+ms6S+AHIuLqoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyEhj-0007W6-MG; Thu, 15 Aug 2019 12:18:07 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyEhY-0007Vm-7X
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 12:17:57 +0000
Received: by mail-oi1-x241.google.com with SMTP id k22so1621443oiw.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 05:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qiHPGjT4mneYMl3fD4nR1DVCXwT+QkrTDhpYEK2suuY=;
 b=Pz8jPn2ssah6wDKBoYBYUccQCuMtseV2gmbUSR6owqpMBWN9Cty3HMjyGGotgLgLpq
 XSnGPLII2A2MPPyieBaIv8hHgVLz59J3n0vMZlXJA/BDDaf2wATg4HGr6/jaraUdndmY
 CtyEZXuX6H/ijAdh1hJe9AJDNJSz2Jo2HKWpsKpQB0C4QvhsyqBc9u9s69n+uHTfGRbu
 eCILRmSuPu9PJ24WpQcs0zik7YzGfBXAFO8sdFn9Spte+xICXto+IAes3vyL6kv5L7fc
 0cbil574Wm0Az4sAx48AeWTiY7Sey4k7y4ySWPK+FyBlNHk3DHIPDFcH/B5hvMfsiVWu
 YZLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qiHPGjT4mneYMl3fD4nR1DVCXwT+QkrTDhpYEK2suuY=;
 b=olYaeAZlNGyW/weUaV2n06qH+10ZjDwTZG9yo903bx68bTq5r1tj4yI/3P/liRHAku
 6fN3SWhEFU5O8pODRX3fuTZQo7thBoqI3o8+wutPeE8FzrrZWu8G7Hc5o6S3FwB/3xLb
 m73KKNz+cgnLYoBlkvoIV2tMtPZLzEvAtJ60/QbntPTkLWuJ347a8FSI84A99MMJtjOU
 We7Ez3DtCQUlKOAt9LRkhTxFp8PO3sOTlFCxgBl1hyf0ro6SRvQ9WgIpsWdWDKY3Q/Tu
 NfYtnMo7z7n8TbTECmvyG+zMpTHlZaFBJOXx0v/n7LZwsLPbavkQdcw779k1dbJy7iJp
 X8kQ==
X-Gm-Message-State: APjAAAUkukn2ynuRqjqLPJ5OR3RMPDOIabf7NH9zw+5fe0m5RE+iF27k
 SGhDmh1P1cAykYZImmgoMMUwM/kDRIrEX5xLv+k=
X-Google-Smtp-Source: APXvYqyTHlBfanB0RcgyIq8wqbHngOvK8tDZPm/Kf0+Fa9l9pm3GZxeqZYAEWxknIpv56rEilGUWk9kH61mwxvsOIDk=
X-Received: by 2002:aca:b254:: with SMTP id b81mr1351818oif.53.1565871474876; 
 Thu, 15 Aug 2019 05:17:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAJrUJt_HV+8MCGxv4=bq97JFiKqPtgN4ntfei0TmxGhDT-bCQg@mail.gmail.com>
 <20190815110308.GA22153@lakrids.cambridge.arm.com>
 <CAKv+Gu-OoFZRy_fv1z3GmTH3rp=TKviO7rEeFXwqqiWzbgJf3A@mail.gmail.com>
In-Reply-To: <CAKv+Gu-OoFZRy_fv1z3GmTH3rp=TKviO7rEeFXwqqiWzbgJf3A@mail.gmail.com>
From: skodde <skodde@gmail.com>
Date: Thu, 15 Aug 2019 08:17:43 -0400
Message-ID: <CAJrUJt_hJJChKviBG5jvkUhv=OJrGPWpxF9aBB=S8-mL4URFOA@mail.gmail.com>
Subject: Re: arm64/efistub boot error with CONFIG_GCC_PLUGIN_STACKLEAK
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_051756_298719_DBFB7895 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (skodde[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 7:21 AM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
> On Thu, 15 Aug 2019 at 14:03, Mark Rutland <mark.rutland@arm.com> wrote:
> > On Thu, Aug 15, 2019 at 05:56:27AM -0400, skodde wrote:
> > > The kernel boots fine with that option disabled, but strangely
> > > presents the same error when disabling only CONFIG_RANDOMIZE_BASE.
> >
> > That shouldn't be possible, given the IS_ENABLED(CONFIG_RANDOMIZE_BASE)
> > guard around the efi_get_random_bytes() call, so something sounds wrong.
> >
> > Maybe there's a problem with stale objects. If you're not doing so
> > already, could you try a clean build with CONFIG_RANDOMIZE_BASE
> > deselected?
> >
> Also, can you try booting with the nokaslr command line option added?

You were right, I haven't tried with nokaslr, but it worked fine by
rebuilding the kernel after a distclean with CONFIG_RANDOMIZE_BASE
disabled and CONFIG_GCC_PLUGIN_STACKLEAK enabled. That's what I was
expecting the first time and this is the reason why I mentioned it.
I've been recompiling too many times, sorry about that.

Anyhow, the main issue is the efi_get_random_bytes() fail with
CONFIG_GCC_PLUGIN_STACKLEAK enabled, and that's still valid.


Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
