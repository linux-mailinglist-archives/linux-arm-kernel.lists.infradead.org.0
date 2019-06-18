Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4594A42D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FabMYgYPBi7GhKx1QmSbY+zc8xHf4Rtr46IRgiKooKE=; b=Ln3gSsDGpUhtEP
	CNltrJLJw5WypTRJNJyUalccfBRs79z/74JCBwLK0ZMbJvOc1Gd9Nj3TAI/2Nl5gr09ekGLeGcdCw
	NzvAA76S5wggNIEANU6oIkPgUikk8srxDvm3/FWgp1ihxz8nXIgHE+NRh4GWHeuHhjlr4T1jOf3q7
	FZ2HOv1IqLv3QAzUL8k3HYbXCtm3G/xRXEzMUWfIeB9sR6kyJuu1c6iO1B10VebiuciBqDW2yD+jk
	P0VIBKqtdJqwE0zIEIPpHdp//du3t+vVddpIdXc5FOOiwvvhBXkQpfnRbbIAFvkV0kgwOyzj1AynR
	4GK0t6TYamz6HSNl4w6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFHu-0006Xi-2y; Tue, 18 Jun 2019 14:40:42 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFHa-0006Nk-Tn
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:40:24 +0000
Received: by mail-ed1-x542.google.com with SMTP id a14so22053703edv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 07:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FPmqGlLqRaYsv5QgGolRusboFAose75I5VSohz4ueiE=;
 b=jq1e67QVaCOiRylO+VQp9tG5iEzpSV3Duy6Vx85CDYXe8syEMBWuDUdmcD64H7IpMq
 W9c6L4lHj15dOo76pOWnvBzGNVVnK+864NonAnwpaJGSU/lMFPE/C1mkzH7N4SJNHquM
 FAponMKenVFYn31s8XhfkSR3a1P07b8s+/oWqJhqIIBrRTnISjK5AcxEj4IciiQxG+3Z
 0OO4hXNX7uvzkpFJzCYKBSMLmOx9nqkEqf4aGjHAlGnSS68Et9fTjaC6yNGjDOPhB86U
 n1OJF0/6KNCxofUYqcZDFXmwZg7lnW79IZvBg3OWyXsJUimsAnvornV5k/a4v2WbL9aL
 Ybtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FPmqGlLqRaYsv5QgGolRusboFAose75I5VSohz4ueiE=;
 b=AY/Y+x0sHCxhx9nLBEA/seQDxC3pdWuP7k5pmH+HY1ea58v9dIlECkqxbCYGzQ08dj
 cWcumgdjKo7+XzITBOv27I9c8AHiJOEQtvbEV1Xfl5iW2bw989/Hmsc0vVfhdQuVi5/M
 WvmNCpjK06tcumOukKFOilPS5n1O98+ix6WO98aOEc3Jnv7v8z4r9l6YCEuUYxfMWj9S
 REbk3PuEvSzgXTKZ8MhQP4OqC1rTTdbp6BbTk+8r9YHiWk64jqFLDpyeQ6/5a/kxez63
 VPj2thsDhmuYDnVyTuBh5wdybtXDXwVgEIimvosv0xUsnhkLowHV21lC3VEx3iKRYhmp
 7wPw==
X-Gm-Message-State: APjAAAV9FvTy8/EF95dCGevPLW9CU4RcfZ2bGBKHJZfU6Kmc9B6rFu6Z
 D7h3wMhGSce3Vp0GwYaf3LY=
X-Google-Smtp-Source: APXvYqxt5h1W6a2Ca8NWGsKSDu10az3ukyEF1VBfMOe5R41qedc4r8PZzY8U/w815tPnxWZXL9raBg==
X-Received: by 2002:a50:996e:: with SMTP id
 l43mr102049233edb.187.1560868821425; 
 Tue, 18 Jun 2019 07:40:21 -0700 (PDT)
Received: from archlinux-epyc ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id y22sm4810536edl.29.2019.06.18.07.40.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 07:40:20 -0700 (PDT)
Date: Tue, 18 Jun 2019 07:40:18 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] clk: imx6q: Annotate imx6q_obtain_fixed_clk_hw with __init
Message-ID: <20190618144018.GA63161@archlinux-epyc>
References: <20190618022405.27952-1-natechancellor@gmail.com>
 <20190618134253.GK1959@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618134253.GK1959@dragon>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_074022_986562_18BD507B 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, clang-built-linux@googlegroups.com,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 09:42:55PM +0800, Shawn Guo wrote:
> On Mon, Jun 17, 2019 at 07:24:05PM -0700, Nathan Chancellor wrote:
> > When building with clang, the following modpost warning occurs:
> > 
> > WARNING: vmlinux.o(.text+0x974dbc): Section mismatch in reference from
> > the function imx6q_obtain_fixed_clk_hw() to the function
> > .init.text:imx_obtain_fixed_clock_hw()
> > The function imx6q_obtain_fixed_clk_hw() references
> > the function __init imx_obtain_fixed_clock_hw().
> > This is often because imx6q_obtain_fixed_clk_hw lacks a __init
> > annotation or the annotation of imx_obtain_fixed_clock_hw is wrong.
> > 
> > imx6q_obtain_fixed_clk_hw is only used in imx6q_clocks_init, which is
> > marked __init so do that to imx6q_obtain_fixed_clk_hw to avoid this
> > warning.
> > 
> > Fixes: 992b703b5b38 ("clk: imx6q: Switch to clk_hw based API")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/541
> > Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Thanks for the patch, Nathan.  But we already queued up a patch [1]
> from Arnd for that.
> 
> Shawn
> 
> [1] https://lkml.org/lkml/2019/6/17/317

Ugh, sorry for the noise, I should have done a search and seen if
someone had sent out a fix already.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
