Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A162833B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 16:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMmgin0ZydeSZ7RGSeLryKbSszAuKj316sR11UNB7YU=; b=KHwqAkpbAX8/3l
	elUfPEUQ/chYD0sMM1s/lKHH/SEDH55TGqiTo3JVGCVCC+CM2zdLD0P7rl/fMJMtFNHaPzsQssG5Y
	v04COxKLEY8EHBZvMeADW7lE2jO6Wmwj2KofDriRssJ2FkKEWnwGQs3fw5a4XoYoB9HAvgI1I8Xjy
	Bzj26EvVLHKc4d4/85x5UGdTSNRfu+ccL/paFrCCqA2TEQwLoI9y9VZm1Sjq8aEsDdQRyfw8KaInY
	+g/urKI+ubv7vS4XFfdmLI7dmcYGWic+c8jZR+ESbvuXqzd2A7Jrf4mFfJ52eCABGauU2A/sKBOP6
	+UGVez55GUEg9bZheT4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0Fu-0007o7-NU; Tue, 06 Aug 2019 14:16:02 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0Fl-0007no-BF
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:15:54 +0000
Received: by mail-lf1-x142.google.com with SMTP id 62so56401708lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 07:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sAIRh0zHCkxzUmxSyq4qdiGiTcGIDNFzc3TNynpsgqk=;
 b=E2Wc85sLfivMU4AaCneNl6LCApr1GrJtCEc8ojybQ7Z4JKOMkTX06Un7zgIDoQQb6+
 6vGIgLwWWDOA62UzA4bpo0CrCe7PnH02iRtfPaN7kS1BhzYyDFD4Lc/w6uBmKmyepx3t
 hwdxXtIIH1ol5XXIUCjaCG9CtUKpjyQR+XqGrbI0yYK1whN/UZT7myGqfhLOzI2V7+DV
 7LggCCWyMn9I8J1CCfg7ozwxE30C//brOpGIMtNuUaUYM3jzowZpPqd9SBI+6PpNABrF
 EZay1BlpSDwastDS1SVWap2cMmM2NjJzWQ369b7XgPCsh+xSWfkg2CaG+BvdyWXr4hY4
 UWiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sAIRh0zHCkxzUmxSyq4qdiGiTcGIDNFzc3TNynpsgqk=;
 b=abe0uvvebZ6QYvKdVzbPM6WezicE0tmHifKTAiobf2d9NcoqXWOEyLSYtxeHJ8vpwL
 L+bFnuhlrEh19PxuWltt0OfpoI9/HOG1G9bbp1v8gkvxDtugc9nqezCCb94NFBkYngxs
 1MNSQpxR/fXdd+M/aF6FIzUBqjE7MYAhDtYVMiYxfPtvc2hsYb0RQ/AEH0zs+CqCLGtR
 lR30HvmgvXhwyYm/vSTnToKua3XpqP+R6+OOn4ZpckfObZJvdrT2wfBcHlqULW1TZyEb
 vaP4HFArVTsoWg7sJ39O1BFKCRmjFVgFYKpTSRiZyYONxKgl+OaUki2MF+SwISfGL9pW
 Jy7Q==
X-Gm-Message-State: APjAAAWO1ULpFWHlv8arElSi6QR+jk5tQD9Yw9q65EFC2V9PCwH9Q/Sm
 wnrTL3Z1+Al+Z+R2pS0QFsmGUkFUka8QnaBWg057FQ==
X-Google-Smtp-Source: APXvYqwa7eUgjmF+/YyxXU15VYYv+720bBdbuzkjozsLAQLMlpvCf9Pylm6GgktGjdxlqgSSV2RTz8KoVio2DmPxnIo=
X-Received: by 2002:ac2:4c07:: with SMTP id t7mr2453376lfq.152.1565100951048; 
 Tue, 06 Aug 2019 07:15:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190805162710.7789-1-krzk@kernel.org>
In-Reply-To: <20190805162710.7789-1-krzk@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 6 Aug 2019 16:15:38 +0200
Message-ID: <CACRpkda8P522pkxctZbf2Ut13V6Rzx=mSYsRuHv0BvPyF6q1gA@mail.gmail.com>
Subject: Re: [PATCH 1/4] pinctrl: samsung: Fix device node refcount leaks in
 Exynos wakeup controller init
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_071553_401548_45FE2967 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Tomasz Figa <tomasz.figa@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 notify@kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 6:27 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> In exynos_eint_wkup_init() the for_each_child_of_node() loop is used
> with a break to find a matching child node.  Although each iteration of
> for_each_child_of_node puts the previous node, but early exit from loop
> misses it.  This leads to leak of device node.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

I assume you're collecting these for a pull request to me
at some later point, all look good to me.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
