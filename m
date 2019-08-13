Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F758B09E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 09:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCBOobWjf1iPvR3sful3F5+ymyQV34J8+ZAUowtoF7U=; b=hF1cJt/iy55syn
	zYQHJE4lPBJx4MeAZO9IfQGUtfiH3zpXRNwSXIhv+ZbxiY9yFbmakgfeogVorYSSWxGL3LBvN3LGa
	SK+OJgLb+TeBUTBsUWsJQJPzQTFntxWXHERiqLsdy/Di7YO4Upq/3PNu74DUaLNkUmWRrCuhOwe2/
	aVcBQoK91aAGedXzJN2Mh7ZWYLXvTR7Rvf2dI5ycfF6qsRKyDHCqAT/E2OAWAw2It/cVsm05HlL6D
	BvoodrzLynCUdzO6VmpY8kS4lJca+RqCUCGKmJAT0/EmmEb9syDVZSsrqABlKL0xbY1HYA390y19d
	DOllSW/95ST4rA+Bb9nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxR7M-0004Gn-5N; Tue, 13 Aug 2019 07:21:16 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxR6q-0004Ap-7q
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 07:20:45 +0000
Received: by mail-lj1-x243.google.com with SMTP id t3so12053992ljj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 00:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KzvQR20lPoeZjhurVT6RSVppuCsYxsd66Yq17XgsMlQ=;
 b=FN6Gp6LngiMd8Ivm0OmPalHTogtRAH5WDU0i4gzDyH2/pA7v/HGPMI9xSigL6xOC3V
 7SJ8SsB5pAocpjRBt3NywRc2gIuZ/apy2oMMrRpbMc15jy4hvtmUROE+IKpS16/EhQSw
 FPdAZ8VvR3g/ON21wN9r4295rqlExYuhztI/awfbIQvyKeyta0Kb3ES/s5ypZV+5AuDK
 Dd6kVZJiis4RyeRYDSHQSfmQ8MzomMb8tIXCIOBw8GQV/egYZUzFaGuSh6SRdhnZVBs8
 CyIVpwY5rEDu8+j2idiXG/GjVar4sqgxTxgpn7BULkfQVlOmvrHbb5dtGiQ9qLl+GHTn
 q4cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KzvQR20lPoeZjhurVT6RSVppuCsYxsd66Yq17XgsMlQ=;
 b=JGRsBDccZluwoAnSCrVl57aefUnZHO78HzgryF+KKq93c7NZQBJ0OMELGcNs3PaJLG
 nhLEAem9/DaWX5yx7urgum9RX8pQxSGa+NuPv6jyXJf7J54OOpgyLczz6Y5y3QsB6pJU
 diLdBsQbsOt9ZvjW4V5noUvzfzUusgrwiZdrhzGC/bs4JPe/X6ovozE5O0A1h+amEFJk
 TPBCYWdlO6CMuOHLkvhu2EfInk1BQ75s+G77lQC5Ki5ZnI0jdMdbLK5sFWlQEmj2TQN0
 fGB8x2UiIJgX87OE1ecJP8GT7krprmz5nOjsI74ttU+HVApTzIq/EWGx1YXkwwBRFN9a
 P4vA==
X-Gm-Message-State: APjAAAWJGGWQDP/p42KKTBGWhUVFYuTkD0Elrxi3RPaM3KOGLoKEtGcP
 xMJVIrgLo8U6nScCAYJwxgkE3dI8XwkZgzewfEsjfw==
X-Google-Smtp-Source: APXvYqyNLDWKtInyLdMbW6jcx0sLa6zFjReLxUWdmVjMxzkJyd2bv8KdS95o0lBKkrmBODn2zhHKJct1YL8t4+Zp5LQ=
X-Received: by 2002:a2e:9f0f:: with SMTP id u15mr11580891ljk.54.1565680839664; 
 Tue, 13 Aug 2019 00:20:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190813061024.15428-1-efremov@linux.com>
 <20190813063251.21842-1-efremov@linux.com>
In-Reply-To: <20190813063251.21842-1-efremov@linux.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 13 Aug 2019 09:20:27 +0200
Message-ID: <CACRpkdZRW1fpjf=vQbuDdSC1ZU9o2tq2C2bL0GonQbnPWc06-A@mail.gmail.com>
Subject: Re: [RESEND PATCH] MAINTAINERS: Update path to physmap-versatile.c
To: Denis Efremov <efremov@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_002044_380560_E29B464B 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Joe Perches <joe@perches.com>,
 Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 8:33 AM Denis Efremov <efremov@linux.com> wrote:

> Update MAINTAINERS record to reflect the filename change
> from physmap_of_versatile.c to physmap-versatile.c
>
> Cc: Boris Brezillon <bbrezillon@kernel.org>
> Cc: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Fixes: 6ca15cfa0788 ("mtd: maps: Rename physmap_of_{versatile, gemini} into physmap-{versatile, gemini}")
> Signed-off-by: Denis Efremov <efremov@linux.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
