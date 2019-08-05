Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0125C81807
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yej2pHrquuQEFqM19C4p3F3x7j0Wxa+fgJzwNFkpoUA=; b=RyK5td/2uyT29i
	+Kh2VLMb5+qPbec7dDKzhGs32ePnw49nOZLuC24s8d2txheqOBYeR4Tn2NmbnGrhR6/J7zZV81YbO
	QhcP0QZMhbLMU/XEu7IjeilNW9Nj8RSqMmDh51r/+yw8vIi6yeirRDjU4HNUFfd0S043rLoMNzdrJ
	HmRqKbOY4Fb2Nr9C1qYlNrF+UJdsMtOtZvKj/4+86jUDQUfC7n+WXcztZNZvJSQ1oFagvLOJk1i+C
	3B6byILJztiAp3W6+59AwdU5dus8qIES/KE7sbHpkH05zw6u6KmlCWb4/LPWl980hWM0LlNNqSZA5
	PZDUMscwbXW2zIJNxl/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hub1g-0008Iq-Of; Mon, 05 Aug 2019 11:19:40 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hub1S-0008Hr-Pu
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:19:27 +0000
Received: by mail-lf1-x141.google.com with SMTP id j17so3606052lfp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 04:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=If2p5MuMUgWrpA5iJZhIZ1wfyNa+k0/qK9QG1U50VmA=;
 b=zYcNBvOER7QkOzaZlD5YxYF00/Rtk5gIixj755hN9Pa8PENH1orP4d6NbSMAfr2E1e
 hkVLaoLERziQ0B2dtVD/yIOByDsXQRCoyRcNCggfpm/yT9tpDp26F8bPOcydeY4SVsf1
 EEKJgr8ObbogXKe/+9rzRscnPoZBPWF6HFHa+aiP9TmLLtYI2v8GxKvFDRK9BakbyZ6t
 8cCiNqBgiFT52eNbSCYYGuJLlxVpnKLhM5nQmIaoyylgsplUm9/1oGv9GF6G6VCL32y5
 JVtg8HCpgVrsBuxGQyw5WBG7x3WgEY/S7ZXh8BUd7KYzyc66AahKtyHL//L2ErYuDsHj
 rt+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=If2p5MuMUgWrpA5iJZhIZ1wfyNa+k0/qK9QG1U50VmA=;
 b=NmklsTtz2raiIqBw86aBkLGj6uFxHjp1/NZk90Pactr5rgf47S9nQdEzm3sucuNBat
 kDxULiERZUrH9/3SeCBt9sq8IzMBbXIXg20ty7RiBOPz7MGy+uLYQtOrg5Kn5TyPKRQu
 QTl4f9MBl5ixhPgnmhL2DAU9Oze4BnRO6SOf4eIk78vsGvPv6ixBzbM+RXHpwOsI3ErV
 W79Wm7XNIQYNVtCRQWYcNhENU2LmreRCpWepjHHQYp08uDHyQnz0wbBuzBYf5y97d+mP
 zJghRxBahMeFr1pf785iPPliDPTceqYinNMbwcEwhYvTBix/4qYezNNN5mPvbHJrufVk
 myRw==
X-Gm-Message-State: APjAAAUq/lEwqGa5azU0Kma+ykhujOjyvW77dE4Sbh52aq7GK0r4rwPM
 zejOglN7LcqXPeNjTs11GqadHJ/2cf+ArYloJi1HVg==
X-Google-Smtp-Source: APXvYqxHgbLLB4QzzgK73ltagK7gUx7fz6MICytm9/FkLAF84pKeZp2qo9z7oTMZ3EQfBRWhVJIiLc0VENYNGP67YAg=
X-Received: by 2002:ac2:4c07:: with SMTP id t7mr1510773lfq.152.1565003964027; 
 Mon, 05 Aug 2019 04:19:24 -0700 (PDT)
MIME-Version: 1.0
References: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1564465410-9165-3-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1564465410-9165-3-git-send-email-hayashi.kunihiko@socionext.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 13:19:12 +0200
Message-ID: <CACRpkdaNFz_S0MV1SSr_yiC3gAAQ3vsT0KQY1BgJ1riyFhxrOA@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] pinctrl: uniphier: Add another audio I/O pin-mux
 settings for LD20
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_041926_842121_A77C0ED7 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

> This adds support for pinmux settings of aout1b group. This group includes
> audio I/O signals derived from xirq pins, and it is equivalent to "aout1"
> in functionality.
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

Patch applied with Masahiro's ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
