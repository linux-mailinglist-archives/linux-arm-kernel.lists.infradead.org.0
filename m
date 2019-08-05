Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1FE81802
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLqOcTvhtrY8rtOsSxsH047usxXS7E1aW5xzbAfRrDM=; b=NNb1evS5LdjpaQ
	FOPMk7S8onyeO+31PcbnA3+tMfM/lp+bApl2RrbxC4rjiRSKlRob46lw9OeaHg8cA5lnxZycOq8+L
	YrAdlo1152owX9J1MKmYINOGOtHJ4N0nZyewDC94IoMJJLwBmJdGVOKBakdrOTWBiyYRFcZ0T1ii0
	NXTlv2OlMBJJB+Tubwbo0uZZRJpooB7oEqZo3WiBzJvTYZTgE39F+lja+D4mScoi3OzUdfkjFUPjZ
	AHxLSZ75LVpBx7Uwnq20cgUEY8CKMGL5yq4FxHUeFRm7MbT5zVLrmuVjy3jdl13PlgzOABEnbmWdW
	K2UjitJ5gbo/ptLfwlhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hub0Y-0007xz-20; Mon, 05 Aug 2019 11:18:30 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hub0K-0007xe-Dc
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:18:17 +0000
Received: by mail-lj1-x241.google.com with SMTP id h10so7505028ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 04:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pTrdNULqRQePZooec8hzYMuIdhWzshDsgdUne7v9Rpw=;
 b=HfMDJKbibOLBUBs34DEUtHqcUBsW8mIlsJ4cc8eYz6VcbQmKPZvnH/qVxN79tm1G08
 bEjAhCBkfH4Nj/pWLyZMs29VsnmVCV9q4O5CrlHx7hESCejGeUF5Y2ycoW+s1yhIrQBq
 sYcAbdXAidoCi9RTvz3gvMMZEzbhDFaae9gYrqA3JyeVq4vtDIb4kw6dDCyCZLt70BJX
 HGEx7Z65iLiegnTNg2lGymGYbDDRjkalIgzSel+z9gtWuD/MpLa88cjXdTRAOQM7AfOl
 FnEOH5AXGz8ex15jR2XnRA1OsQJoagE/0AUdvuplwCjEYYFrZDA5fYM4BxZM/aH/zXSs
 wMDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pTrdNULqRQePZooec8hzYMuIdhWzshDsgdUne7v9Rpw=;
 b=SCcbmiwX+y9WQxQrgplCEXqyLYD0WV0oxV8aeT5AS2gK6ZSlsaaHa5xnl2vgNWeaoF
 AazYRSQrk7BvspLn3OB9e0M06u5KtcN5aIJaWOsbAFjVpZLangN027fuP/qWmWjklA4o
 vJ470ItvfnhC/yufBTF96ZXV93fyiuGGvqbO9/X9f9347BAYkng0Oidzf1+C4NvSSUmu
 Xh2mEZiUA3g8+FQ6Lgkwe1JYcelwXaKTBqY56HnN2Z6bzhsc8WKls/RR0jfEtO+OcKQO
 CK/GlvN6jCuZQmirw4grNSh6qOO92kxxnr3N9yRYF5/18PbvPkVDQ64gRlXNlSqht2ju
 W+bw==
X-Gm-Message-State: APjAAAXPeS2EiTpd/o9P7ZUzMk/Ez3tb0+j9V3JhS23z/H4rQXUseftj
 wlqx+7hoiGnr9FwXRPvLzGO962LW4HDyO6swJj0d+w==
X-Google-Smtp-Source: APXvYqyLXiSKJTl98Lkgl0Ja3jEwM+BGOX7bwjIKoiganUjSPKjHOrR2xjbwuvFB38NS1GCnOdkwwVZ1OFVgw843jm4=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr16561733ljs.54.1565003894943; 
 Mon, 05 Aug 2019 04:18:14 -0700 (PDT)
MIME-Version: 1.0
References: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1564465410-9165-2-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1564465410-9165-2-git-send-email-hayashi.kunihiko@socionext.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 13:18:03 +0200
Message-ID: <CACRpkdbt63WrZszChi25H+mxrHneKFHbakiYYskCLSXO=A9rkQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] pinctrl: uniphier: Separate modem group from UART
 ctsrts group
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_041816_465890_71990A8F 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 7:43 AM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:

> It depends on the board implementation whether to have each pins of
> CTS/RTS, and others for modem. So it is necessary to divide current
> uart_ctsrts group into uart_ctsrts and uart_modem groups.
>
> Since the number of implemented pins for modem differs depending
> on SoC, each uart_modem group also has a different number of pins.
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

Patch applied with Masahiro's ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
