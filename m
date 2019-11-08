Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1973EF45B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 12:30:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjCfS4R48lRPW2OuV3RCDLdMyl2nTZybrvQ2s2EBs90=; b=mVe++PMUtG1mhd
	CIRiXj2F6sl7Z5jViD4gIMgJzuxaxF7ZxwYPvitCbGFz/p0PcIjInAGBJZlh0tSpH3BGD1XivUS9G
	pixNiaXkh5bx9YiFpCbi44z1yCjimzpizq5f6mYypqDOcKvuIrMu/dJVKyi+Co9Hr+fkTaGNU04Wt
	Sf9L2U6pWSOUrVy2rZD9q0t9BXw66L9AIryTpGB11sDfsNFw9OW09Y0SPWS/VEJkY9hr/y7Dvf6Cr
	qIKc2BcUjqBm3O1ImaX7SsRQLD7WPy1Gqu6K3E6R7R3lz4zfRVk3jzOzTjqZ1gGCAZGt15EA/oKpd
	UEVMq/Lb6kn/bM2ERWDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2Sr-00031L-JJ; Fri, 08 Nov 2019 11:30:05 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2Sh-00030P-G5
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 11:29:57 +0000
Received: by mail-qt1-x844.google.com with SMTP id t8so6108627qtc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 03:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=19tliVy/iIF1NdAW0nZ7cVhCkJOFQ8X7U9RXNc+1Lro=;
 b=iGMI9aiSpFkL2Xcx4lkbR0yhLSgF8bW9F0DM80XakAiuf87a3LhSrmEqWIMzZyTbqA
 fkvDVTPzY9blj61tPjO+wW0caVDkIA2zMoLqO3dO7V8u9M9KGCAKoglxHxAar5UVcmEo
 hxXdCIR+AvMno0NkoNHKMLQCXxI9cNeaSFE7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=19tliVy/iIF1NdAW0nZ7cVhCkJOFQ8X7U9RXNc+1Lro=;
 b=OpY1lc5GLLle4k0mmMA73zD7H6TmI74487xikDP6dpZF25zp6UOC0n11+LIliOG+6Z
 zN+EllfY169ZsCVAQxG7cyQEPJY/P57QfOkly3YnkTT6hmA+ffFhjnW1CvDd0DDfMK1U
 lNWMZe++jWLYJpA0tAN33lf9T6zKi9cTj7eoB1fOoXIod8qZ24kuri6e4tURyU801Ry4
 7hOql8qtk4KuAjY0PlRGhYCIbaXO2UAABL/5ppP19OXRuSzXP7vHVnxookM0G5MJ81+V
 t1RRPnKxzSBfm+rSSAp3iRZHGofOIBqGBsFQt39znEssQHFigZvIC47pOmKwnT7cA/qw
 nyiA==
X-Gm-Message-State: APjAAAWhpLR2T0mp55ulKAwgTlKU9GBvFgfvcFR+jj8XLLLcHeq6IvU5
 NQJyQVW/PlYK8FYsG+0qAuZucZiwCPUg5Xhs2+c=
X-Google-Smtp-Source: APXvYqwKJZ6bO/qaUDabsFFu/MQ2R2cYOCy4YbyBPX5qBunktYtwdlI59RKnWWOSZiCLoSbjjip5Dos01Fg2X3vQ3QI=
X-Received: by 2002:aed:3baf:: with SMTP id r44mr9788084qte.255.1573212592983; 
 Fri, 08 Nov 2019 03:29:52 -0800 (PST)
MIME-Version: 1.0
References: <20191010020725.3990-1-andrew@aj.id.au>
 <20191010020725.3990-2-andrew@aj.id.au>
 <CACPK8XcGgGsoLNpCccKPb-5bojQS4c5BePewwocc-z29On7Rjg@mail.gmail.com>
 <20191107230029.75ED72178F@mail.kernel.org>
In-Reply-To: <20191107230029.75ED72178F@mail.kernel.org>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 8 Nov 2019 11:29:41 +0000
Message-ID: <CACPK8Xe7dmeVjQYObzOw9LdwxH3+1XTcU+RJOZo5C69j8d-yOg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: Add AST2600 RMII RCLK gate
 definitions
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_032955_701732_9108F3FD 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 Nov 2019 at 23:00, Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Joel Stanley (2019-10-31 21:50:42)
> > Hi clock maintainers,
> >
> > On Thu, 10 Oct 2019 at 02:06, Andrew Jeffery <andrew@aj.id.au> wrote:
> > >
> > > The AST2600 has an explicit gate for the RMII RCLK for each of the four
> > > MACs.
> > >
> > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> >
> > I needed this patch and the aspeed-clock.h one for the aspeed dts
> > tree, so I've put them in a branch called "aspeed-clk-for-v5.5" and
> > merged that into the aspeed tree. Could you merge that into the clock
> > tree when you get to merging these ones?
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git/log/?h=aspeed-clk-for-v5.5
> >
>
> Can you send a pull request please?

Sure. Here you go. Let me know if you need it in a separate email.

The following changes since commit d8d9ad83a497f78edd4016df0919a49628dcafbc:

  dt-bindings: clock: Add AST2600 RMII RCLK gate definitions
(2019-11-01 15:01:18 +1030)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git
tags/aspeed-5.5-clk

for you to fetch changes up to d8d9ad83a497f78edd4016df0919a49628dcafbc:

  dt-bindings: clock: Add AST2600 RMII RCLK gate definitions
(2019-11-01 15:01:18 +1030)

----------------------------------------------------------------
ASPEED clock device tree bindings for 5.5

----------------------------------------------------------------
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
