Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EF778FDA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 17:51:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEkcfeYFBlUDjeqS6CGxWK5pWWWY9HbYfVVcBuFNsKY=; b=ZiAsMzBlRm2xLA
	EhdYtMN3j4wS12agx2Fk6wuQGj1JlWGK7WA07zq1JizNZPCzkPSYTAPxv+gc7/CQ4y0zfU4I4Fzcb
	eZRV7HTC0AG6oI1nHzSkszsE31Skn8uT3hCBkYLxxzbpOfOPnWlsXmW6vIXEqndRPZ9howfmC07sK
	xKq+/+u1vlppnb0PhQL5KJO8CZrvwLnaCIpHG1egel/cSeLPvVvJdRl+85bBBEsR9c9aoT/9Hs47p
	9LPgFGLsSsFkbVwQNmacPrTbvb3ocDjTNJzWJoZeCm2QSFVvvNALkB8LwjIx64/ELboaUUebMZuUJ
	YmTUFsM4w/GcqM4Ci3pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs7vg-0007O4-Id; Mon, 29 Jul 2019 15:51:16 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs7vU-0007Nk-WC
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 15:51:06 +0000
Received: by mail-lf1-x141.google.com with SMTP id c9so42369066lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 08:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F40lGZ5Y/dCEzpWTYTx/X4Zd/G360xL3G5J5Vnqc+uM=;
 b=CGv3ctCI/3RASXmbu+U1Fwxxnk0jZXexm3jertP+lBvqUZI3bFLHLlOtbyxOuy41Xm
 3qYf/aJtU8yPT8euw4MhXEYPXTEa3KNYh65Z96R5TezfKKl5a5K7vuhz/JUGhIeFRZMY
 ar6o0P02kszB6mIxSn0cOsMRQYnWRnVn/zEBTj3diHu8TqLsCAUQMMufpsVaDwCw1NLd
 HXPxTcaXERLzC3QiZGPaJeWy8jRbcL7xfF+C5uiQ6q8IioubGfNeD8lw5+DJMl1EOHxV
 /xVTBhc+K3BxASrYhpd6xTemyIvfi1OHeECJJm/BBngR3YPbVb/PGXXdbgF939+/sRMB
 I3nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F40lGZ5Y/dCEzpWTYTx/X4Zd/G360xL3G5J5Vnqc+uM=;
 b=kCYOMIE0Twn6VtYxN3YUY0ta6IlXv3rzldxLX4Zeb70AEy8yrooogP7X23YMwwBY5R
 ATrm9aRlH61AVuS1ZB4D+SDKcphgvpvmXuP3gmfN77mwE6KI1T2bhqqn2sWOw69VQNdy
 ZmiMfF0OT7zc0GFv3ndIdH0Dke6VpL2+DUqkD9pmQqmZlqilof9L4cFAR9vzNF98h536
 GQXLVoSUD9RWWuZ78iECNXR9VChrw54pRD7MJKgfEVZwlcx0Fj7uAWXTYD87RTj/nqM7
 IETC3rilG3ndzJ3q447+DK+uwnLIRpL0hr+NeahZIn35tjaLRwIDcx2e1h4QS4eXT05q
 5W3g==
X-Gm-Message-State: APjAAAUp1y8BuF80iN/6VtF19sJ3EbRDfHQqRa5BY0hKrr1R12HT2/yj
 x/Za2lT0mb+ScPMzJ1nVzZV+CDEPd276gq9RYn0=
X-Google-Smtp-Source: APXvYqz50dj+aOYazfoYgFD9FrzD9jcB50OsVJ3zrOY1O1BGw/6yhvdJJWEWXNUVAehrLxtX7rYRMbWvyMGcjidXX2s=
X-Received: by 2002:a05:6512:146:: with SMTP id
 m6mr51844088lfo.90.1564415463082; 
 Mon, 29 Jul 2019 08:51:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190729141349.28465-1-sebastien.szymanski@armadeus.com>
 <CAOMZO5CFqQEdqgwyHZ2E2F22QDgG8SUjBM0y4Y6qyn8Tqo4O0g@mail.gmail.com>
 <20190729143749.GB16927@ravnborg.org>
In-Reply-To: <20190729143749.GB16927@ravnborg.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 29 Jul 2019 12:51:08 -0300
Message-ID: <CAOMZO5Aew=fWnu1wweSBdFpN2SrChR9r+RST+C2RWwbsOyzRxg@mail.gmail.com>
Subject: Re: [PATCH 1/1] drm: mxsfb: add i.MX6UL in Kconfig
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_085105_040066_8ED5D12E 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marek Vasut <marex@denx.de>, David Airlie <airlied@linux.ie>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Julien BOIBESSOT <julien.boibessot@armadeus.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sam,

On Mon, Jul 29, 2019 at 11:37 AM Sam Ravnborg <sam@ravnborg.org> wrote:

> Could we throw a COMPILE_TEST in the mix so we get better build
> coverage too?

There is no architecture dependency to build this driver, so we
already have build coverage for it.

Regards,

Fabio Estevam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
