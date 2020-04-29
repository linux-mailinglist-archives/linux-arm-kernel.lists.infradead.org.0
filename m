Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63B41BDBAC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 14:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PFbD7qQjvGJ2YiTKarIrG1X/wRoSohnyhMcFaZIUEBg=; b=e6fd6Lb4CAuLlk
	F8078HxknsKxbdhZKyH9kR5MF2DrYThm+vnltPn5pLOJMBNzA0dokCVCI6bu+MuANDui+vCk/QIDf
	LUHLDjbwJeTlw1BvFb37d3eckFQfqcK3c6itQxq0xAAIbM6sRApSjYsw1GGCoFv07d/dsZ+NO9bX+
	gFxcIGRG2ThiljNiNjOKRLf+1rIVWGZeQCWjC9Y3xEiRI1GHuvXRz82zb3N0KQki6jB+YIZFWqvc6
	5t67TPex1E4xbljAzeJmz3Br6GvpUO6uZ4Rd+r1/cc8v75qmEcT+7nOU6P62YfltDgX29XnKGjQMX
	sCJlitSPVUOrB2C9V9Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTlcG-0000lM-8P; Wed, 29 Apr 2020 12:15:05 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlc1-0000iO-00
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 12:14:50 +0000
Received: by mail-lj1-x244.google.com with SMTP id f18so2305161lja.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 05:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t0srpPN0nwlyjFhHaF4ibgTa/JwHHIQbEOB7fBzG6QA=;
 b=tTLZnF5kIusCAdwA9HNgdsweJr4mUMtTqr8Ekr6X777kaMhX+Vhu+WX7DllKVJsdke
 1lQVhTpjaZH0oxi+8vfHQaJxdcqKnrX6C9fOqUBbGsKCHgGz3TUlLmCo+dtB5xbj4mnH
 AU76EZWy/GcLRZif3lb0glyluqXV0gEWjtQMFZLRhGpTUNKMlCt2hSC3dvEe+TlC7UvQ
 gek+P2jqTiG/IhMlWMURGpHhMrNpibAGRwCRX2kvOh+Uyt+sGyeZcM2DhhxwRKDLB6Wp
 LP87J3N7G9fRYo4imcNGbvcSvlAaEQe1paMcUlNOSL4ROt9PrYY3C2VieuyunG317ppE
 LkBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t0srpPN0nwlyjFhHaF4ibgTa/JwHHIQbEOB7fBzG6QA=;
 b=VWseTt44fLNGouJXrLzTRpQ537xP0aVHa4xOiPWVf/dr8/heZsg46ogiimPibjKxKr
 TBf91r9z9acggOnKXF3QbLGlOm0SbrISsNYENw5l7hCAVDuwEwuBWyHj3+3e8eEZR165
 x9pgUSU+OrRK+znpDlK2fCUwEQL42XuJK4y89+yDwcJSn0hsSZKmQPmntyPrRjL2CSO1
 WvRG8+NVvs2jK2g2BjSKDioVDJ+CL7sPyTzAnShBVoxxcgxyLHTLy874Wgqh3UUQqXtD
 osPva3dHJEDeuCInQUQ45tevffimg7Wkmrl2qnFSFQIW0bAceuLFFGAHnHPEtYqiiDmL
 6nYw==
X-Gm-Message-State: AGi0PuYEp1toyxeqexWgGF9Xq3WkFR6oVYbImOZQ3/jezmC0Mm+uTWEt
 KaEvigA0lMdrlvuuKrjlY/gZotqwBWHSF7sPpZpGUg==
X-Google-Smtp-Source: APiQypIxAbz5j3HXwxIi1dQ00eUTerhBD5tGQ1Wnimo7fE4AnVIPvPeFy6/Jq6uOFl3sZDVM5jywXDnZ5ado4cimkqA=
X-Received: by 2002:a2e:8087:: with SMTP id i7mr19219536ljg.99.1588162486222; 
 Wed, 29 Apr 2020 05:14:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200428204945.21067-1-robh@kernel.org>
In-Reply-To: <20200428204945.21067-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 Apr 2020 14:14:34 +0200
Message-ID: <CACRpkdaUzK0jsOknvXTrZueT=Bq7GnhbTg7mTzHtYtLqp0=pYg@mail.gmail.com>
Subject: Re: [PATCH] clk: versatile: Drop the legacy IM-PD1 clock code
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_051449_098490_22B267F5 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Boyd <sboyd@kernel.org>, SoC Team <soc@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 10:49 PM Rob Herring <robh@kernel.org> wrote:

> Now that the non-DT IM-PD1 support code has been removed, drop the clock
> related code from clk-impd1.c.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> This is depends on the pending IM-PD1 DT support Linus has queued up.
> Perhaps apply on top of his PR '[GIT PULL] Versatile changes for v5.8
> take 1'.

I was actually gonna wait until next kernel cycle to do these cleanups,
but fine with me :D

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

If the clk maintainers are OK with it, I would have the ARM SoC folks
apply this on top of my Versatile patches in the ARM SoC tree.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
