Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF828180E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fk29LQON0FduMX8SsiJUEch6gLkxnNKjkkieqE1t7jI=; b=NSpztHMyCMvVbo
	Tkuc2u0hFIolwm8jdi0xqekM1T1bBo4gtQ2akTlZV2eTzlFtzu0MO+g4PPMdUz1Llqr/10jYuK63l
	1vLzQ4y1tEp61LDijm8ryaR9rup8AFJkKwi+0VG/qgGJlyn1gTHT18gErwThiGunhLlJOiQxdgmqr
	ZqBYN+WI/JQ66mAD9qjuWcvoCf3xF3EAfsKQuEeeW3OVBVjMXVVFWPLzm8a3g32Zso0hq3uStrQXw
	8idMxeU6H3RT7o4dV2sIgkLXIq32y6PhSZXcEbqiBjlMFIN3xUP1QTOrIZPda5FwFdrlnJ3mjscwT
	xmY9ym0u53zeggopUB4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hub3Z-0001bF-Dp; Mon, 05 Aug 2019 11:21:37 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hub3L-0001ay-Pf
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:21:24 +0000
Received: by mail-lj1-x242.google.com with SMTP id k18so78939650ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 04:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d8hNDwGs8bcTkf5jcX5OpjV6TDJ03VTJoMgNpkl3MEU=;
 b=SmFf48nlUMtHnH/4MDqfmGZa9SsDFGG08uJ9cUu61xnoEmCdTkl4hZ2mab1PS3iWTd
 0emsWS81L1qTrLPk336eb/6aZPADuZ/G8JKgWKNLY3CXqRzfJUs0sFnxi2ulkYMqn9c+
 Lr7CPwjWDiEOO1IGxcJHf3Dtot1TE1jfnSk0uMZ+uggCsWjm7NfxsM012T0w/RGOh62l
 w3ILbSxbdh758KsMkaXY6cr8vOrhrqupbvTuMBxYHKUEYGu62aL+thTBWGlS8AAjZsrm
 PGqqxSNPF4LTN+7X74PUXAB6ZwG4PgD9TQ6r8+ksMb0tumAAe0S/gJTzLjZJjwzTkKSs
 Kwgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d8hNDwGs8bcTkf5jcX5OpjV6TDJ03VTJoMgNpkl3MEU=;
 b=I9H+gLzBMG0GW00tre9Rdtwpm4yukgoEIynQz1yoM62S2JvkgWz8xQOs1sKPzAeSON
 gtEkzBM2YVTZO2GsuH1DX63RJmFk47AfUS9tFsImH0uN4sm44W5U0o3SubImdkxXVZnt
 cq+ANgEQwULzW7it8+caAOyOj1TpipEFTCzUXsQrMdx/byo30VlYffHU94GIAoAjqHQi
 Btw0X6hNDsTg8t/aF/PAAM5YoZGHrTjUjogcnY1AIXAGHIUKv4HtNW87wHSN2/apb8vL
 lBpDzYZrPwEaJ2aZcGty1a/ft/Ah9SAv+43EDJzrSQja1Pt+gDU4PefNAiBNk7VwDjs1
 z8Aw==
X-Gm-Message-State: APjAAAV1ztMuk0q/bb5WWzdGXe2j9sg3jen4I40+HAE+hsCAVpa4UvWJ
 lYme1NPlWk2+ZemVjU8j7nC2ZJ/8Ih1p4I+iNLQuEg==
X-Google-Smtp-Source: APXvYqzc/dxywuCfBMgBTR5GgO9I26r0ATaAILxLk3ZjLZrmxVOqZjYWKXaz3vtYEUWieKdVt+79lFCdSQo5MvANVl0=
X-Received: by 2002:a05:651c:28c:: with SMTP id
 b12mr13898023ljo.69.1565004082120; 
 Mon, 05 Aug 2019 04:21:22 -0700 (PDT)
MIME-Version: 1.0
References: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1564465410-9165-5-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1564465410-9165-5-git-send-email-hayashi.kunihiko@socionext.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 13:21:10 +0200
Message-ID: <CACRpkdasSJAq6KdsMPMwo77VG-5TzDMmKPPNXXrmEZj4jzurvw@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] pinctrl: uniphier: Add Pro5 PCIe pin-mux settings
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_042123_840195_C49091EE 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

> Pro5 PCIe interface uses the following pins:
>     XPERST, XPEWAKE, XPECLKRQ
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

Patch applied with Masahiro's ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
