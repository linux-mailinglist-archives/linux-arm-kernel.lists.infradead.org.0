Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 425091C4E3D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 08:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQJVzCy3JUrZhJ5Eo7hRIFJCx/J88+fSTAeJAROsmfc=; b=JCAY/Jv//ATSbr
	ZGRO9F+vzG/d0ml0PdUwGlT50Uu10ivKT39E53avhrw7WJvKL0pUc5QSUeP4EUa+UEfS3f+Kz0E/l
	+6i14H0N84SC8wxiw1CNsBPudPOKoSYis+75G5WIKejB0H5O7FZRK9ZK4yqH4xICq9p+wvtqpLtcE
	ZNUVabIePm5UzYST2gpnKzwXKhs596Iys7ha77r+QCfRAXx+PsN+DN+ThGJAII4zNquBSO4PjOmy1
	kck3heeonbVoAkNKlJLvRcYCoFYkfCwwB0AuR0Y4PoVOJMCLcQbu3GES491osw9mhO1+D2nSIkc8V
	PRtgss0E05AVrqGEpIDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVqyj-0004lR-K4; Tue, 05 May 2020 06:22:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqyV-0004gG-H9
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 06:22:40 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1AB25205C9;
 Tue,  5 May 2020 06:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588659759;
 bh=lNw9VNdY6ydGhr1S4CIpxILN1zceeM6QPTCMt3rTsHs=;
 h=In-Reply-To:References:Subject:From:List-Id:Cc:To:Date:From;
 b=LJd1Vw8/RYIyoIpCvvbuAQyBXy39UuRs9G+JiBCXszB9xzA2HNFrRpmNQNIUhuj+W
 g4D9ClSzH8umL6TL/M+ohVmXpmQt97UHvWRmXIoD18vxSWVojXSBA+bGe3eGwbafjj
 VeJavnTDBC+V5JzlXtFTJuhqOiceCSEZYNBajGCk=
MIME-Version: 1.0
In-Reply-To: <CACRpkdaUzK0jsOknvXTrZueT=Bq7GnhbTg7mTzHtYtLqp0=pYg@mail.gmail.com>
References: <20200428204945.21067-1-robh@kernel.org>
 <CACRpkdaUzK0jsOknvXTrZueT=Bq7GnhbTg7mTzHtYtLqp0=pYg@mail.gmail.com>
Subject: Re: [PATCH] clk: versatile: Drop the legacy IM-PD1 clock code
From: Stephen Boyd <sboyd@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>
Date: Mon, 04 May 2020 23:22:38 -0700
Message-ID: <158865975838.24786.156719110016797672@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_232239_593641_B4FBE0EB 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: SoC Team <soc@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Linus Walleij (2020-04-29 05:14:34)
> On Tue, Apr 28, 2020 at 10:49 PM Rob Herring <robh@kernel.org> wrote:
> 
> > Now that the non-DT IM-PD1 support code has been removed, drop the clock
> > related code from clk-impd1.c.
> >
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-clk@vger.kernel.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > This is depends on the pending IM-PD1 DT support Linus has queued up.
> > Perhaps apply on top of his PR '[GIT PULL] Versatile changes for v5.8
> > take 1'.
> 
> I was actually gonna wait until next kernel cycle to do these cleanups,
> but fine with me :D
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 
> If the clk maintainers are OK with it, I would have the ARM SoC folks
> apply this on top of my Versatile patches in the ARM SoC tree.
> 

Go for it!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
