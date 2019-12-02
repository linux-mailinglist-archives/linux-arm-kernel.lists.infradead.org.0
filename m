Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E796E10E441
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 02:42:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wCdZSgotQ8gP1p8sILiyYAPo96yqkEjQUUnGN7UbWn0=; b=l7n9qk9+Lcb1xc
	1kZpYPb2FkmH7mVhUscUEJdgFvuPC8HgPLyj8OZA6B17OuXKoczhwc0kqyFOkm+6xp1ROTFXMsN8s
	czaaZN17JdLs0/ixMRGrpM+Otola5q6quGRY+huPdvkWGMIlU3o0QIOlrVAmOh7E7NI08iwrtzQ2G
	5iVTWvJ/ikP5wQD6JcK7BEN99mLzaXcxMg2iBwtf75IOY6ikQnA22dWlIre7qrscEmUPYQkBoTx8L
	y2HQPgnbbN6d0JqlejAd8af0OIVgeJVqLbCIzuLtpXgTQ5iB4zPu7o8z5YiFtsz9BLSswtbqOrKo1
	LF0UcX8py3kGIMlHFlpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibajh-0005Qa-25; Mon, 02 Dec 2019 01:42:49 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibaja-0005QE-N3
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 01:42:44 +0000
Received: by mail-pf1-x444.google.com with SMTP id x28so17651207pfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Dec 2019 17:42:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uhfo+Tsmbw3kX/yCMxwrxLrXfDbUCCVYUmIkTB7sVPY=;
 b=VQcNvJfF7M39+QSaXYKr8Rgd1oArBi1F0NTI/m+Y9OkyarJzFqLfTjCQq6TX+FUyOR
 wK9lkIbY+hVk7gVKH4ZWt2XtCKHW0VIo7KO/ekhnXmC8DpcHf7URaxZpQ1H4Cv50vI3S
 YMuSwknEpN5LCkxEauwax+kk0DNJLyaP+Y2DuP3JuZK8UMq2kJiu4UiOgN3on6UwZiiY
 oujDuPcNq67+eV/wm1lCcFHl7TN+TVpxx8zLBJddWekfBPPBFAMkKUtjfIOm2nMMtho2
 YlN3A/JoPlC/u11MSPw87N4G4ORBwYsvJ8R3DY4ys3QpErLSQ9WsX80gllECMKKJibLF
 cHVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uhfo+Tsmbw3kX/yCMxwrxLrXfDbUCCVYUmIkTB7sVPY=;
 b=Ue8hKEwLXQqUQgk6Q8lvYSJ9tHCKSwzCkPrQX91SwhrbXBhuyy4e2tlR9fTaafK0KM
 EGFCs6yrJ2Iy14mF1qwzHynZGs6bsfJTgTLoZ3vwbQ+zIAKZQ5h/eSrcyCem+0y0dQRz
 yWWEa4qGO+TZePS1CnE6/JjHjeH+iv5LueBVpSpX3Ox28Ck0f3v1bJBeOAseOBCJSBID
 oySLGRECE96skcl5bC8LtsVALvz0pmc49/9imEu3jcglvlSPDICN/ONwsOqsuOZMkjMi
 Upavd8cBreybKZ9oLdGxbdlqDriNnLsm0bqk6b81Kr2rAYYYX82yf77yH8PaTAMV2egV
 LhKw==
X-Gm-Message-State: APjAAAUxq4nLfkpJ/QpKUDS4++G2293R+eW2wxQLuCjxUgaANEaa9OPx
 z3+or42lIqVbz+e+Nl4pr4Q=
X-Google-Smtp-Source: APXvYqy3NxrHy9dDtOm4rbfhAZ5ovvcHxW7AxzSB9D2aLC4FbRyOoWq7jNqTfeCQ6zh8E7SCWi0Qfg==
X-Received: by 2002:a63:105b:: with SMTP id 27mr17554482pgq.268.1575250961136; 
 Sun, 01 Dec 2019 17:42:41 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id m71sm13516731pje.0.2019.12.01.17.42.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Dec 2019 17:42:40 -0800 (PST)
Date: Sun, 1 Dec 2019 17:42:37 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v1] clk: Convert managed get functions to devm_add_action
 API
Message-ID: <20191202014237.GR248138@dtor-ws>
References: <3d8a58bf-0814-1ec1-038a-10a20b9646ad@free.fr>
 <20191128185630.GK82109@yoga>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128185630.GK82109@yoga>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_174242_776883_39AB31C4 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Guenter Roeck <linux@roeck-us.net>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 10:56:30AM -0800, Bjorn Andersson wrote:
> On Tue 26 Nov 08:13 PST 2019, Marc Gonzalez wrote:
> 
> > Date: Tue, 26 Nov 2019 13:56:53 +0100
> > 
> > Using devm_add_action_or_reset() produces simpler code and smaller
> > object size:
> > 
> > 1 file changed, 16 insertions(+), 46 deletions(-)
> > 
> >     text	   data	    bss	    dec	    hex	filename
> > -   1797	     80	      0	   1877	    755	drivers/clk/clk-devres.o
> > +   1499	     56	      0	   1555	    613	drivers/clk/clk-devres.o
> > 
> > Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> 
> Looks neat
> 
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

This however increases the runtime costs as each custom action cost us
an extra pointer. Given that in a system we likely have many clocks
managed by devres, I am not sure that this code savings is actually
gives us overall win. It might still, I just want to understand how we
are allocating/packing devres structures.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
