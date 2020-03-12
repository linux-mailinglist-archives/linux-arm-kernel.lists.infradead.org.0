Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 502AC182C8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:36:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Utm73kldrPzvFCj6Up5pJI09b9Ld80tRyFkGvGFl2pI=; b=OAPiXZMUmdF5mF
	3ffGG8vwJwxu51rwQeafCDvhPw1vcTWZU4+vZv0sNVeaveCO46eCYrVpBNl6Djgyn3qzWu0JwCNkF
	9cnTvuaZWe6FmiINpLR4dShEW0hI7yKi+DT8Ni4VbJT3mi1KMrMiUTlI/IzWuVtHuawlESECbZlVg
	IIROG+a+8giJiw4RbAb3ldOvk0D6ECQY5A3TIKSeeF/7/zTj7bgY08f1/ULJsjKTc/FQy8i+mMW3D
	ay/qeuEcjY3HADTK6WQ4STNxoiXfeba8L9/aMeceAYI4Xq0dR/6FDLwpxatrdpYDvwJUvHQUiDTNT
	h4kW82pP2vV01xfar6JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCKGf-0002og-Ou; Thu, 12 Mar 2020 09:36:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCKGY-0002oK-2v
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:36:35 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 382AD20674;
 Thu, 12 Mar 2020 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584005793;
 bh=CkF0PFlSE0VaAcGMHzTbnIszgGzP+Ca1F4ntluhxkbw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yhv/ncVCTp+GDteHohx416xdzR5v1FJN4II6t81m2v8LTWcQwHfobBI1DKaKIoQ3A
 1vLN5m0dkGB99wFiGoFZ1l00qN9/a5KwgJbduWM1HPQYbfDPfJaFrIN72yGGSaus4A
 AOBTVtN3ZEEwSxkcUgxC3rLMCakpYJTaqNPMdMig=
Date: Thu, 12 Mar 2020 10:36:31 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH -next 005/491] ARM/UNIPHIER ARCHITECTURE: Use fallthrough; 
Message-ID: <20200312093631.GB216768@kroah.com>
References: <cover.1583896344.git.joe@perches.com>
 <dae0878058223a42c77d725b8d7c5845a7ef9dc0.1583896348.git.joe@perches.com>
 <CAK7LNAS7GAk9yXkPhbS3ByU+n9Gb-rk0PeLcXLCNwpW1B22aeg@mail.gmail.com>
 <891a42ad8d8fd7beca911845108e1ded022ef3f7.camel@perches.com>
 <20200312085606.GA154268@kroah.com>
 <CAK7LNAS98yeCeFZpKgNRRKcFhXSKWQ7Ka4vP90YcY=ufScZRCw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNAS98yeCeFZpKgNRRKcFhXSKWQ7Ka4vP90YcY=ufScZRCw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_023634_149764_95D7432B 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Joe Perches <joe@perches.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 06:02:19PM +0900, Masahiro Yamada wrote:
> On Thu, Mar 12, 2020 at 5:56 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Wed, Mar 11, 2020 at 07:31:07AM -0700, Joe Perches wrote:
> > > On Wed, 2020-03-11 at 14:15 +0900, Masahiro Yamada wrote:
> > > > On Wed, Mar 11, 2020 at 2:07 PM Joe Perches <joe@perches.com> wrote:
> > > > > Convert the various uses of fallthrough comments to fallthrough;
> > > > >
> > > > > Done via script
> > > > > Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com/
> > > > >
> > > > > Signed-off-by: Joe Perches <joe@perches.com>
> > > >
> > > > Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > > >
> > > >
> > > > But, I think the patch subject should be prefixed:
> > > > "serial: 8250_uniphier:"
> > >
> > > Yeah thanks, that's difficult to script though.
> > >
> > >
> >
> > Kernel development is hard :)
> 
> 
> It is strange to process this per-platform
> and to send out a giant series that
> consists of 491 patches.
> 
> This is very trivial conversion.
> 
> I think it is better to have a single patch
> to convert all files under drivers/tty/serial/,
> with the patch subject "serial:".

I agree.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
