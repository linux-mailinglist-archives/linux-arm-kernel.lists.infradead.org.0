Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FDB1ECFE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 14:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0K/8cpgNwZVBtCd9XuOfc2g4p33svaPDfmXE7M1dpEg=; b=SJ8gqPcYzKSWt8
	gbJMxYIZYkywXuDYWlwNxyuD+FRXAvjpVB9EyxTOD6lw5MA4aogvZDs+9dam47oSsqF+vsNfqO7wt
	yZgz8NnIDPS94QFdjOFlicupFHNZeJFhsYLrrLHPNfH7+pDYTVnGH2nvvebyUS9UYdSss+7iavx1Y
	S1S8yBYBKfJ6llAd8vfux57hEn0MY/20K2rzNniIufkJjR+fT/Fne6fxbv0f22R8TYy0JnQ9XkLbX
	1LXp7cjKeK1hCEayXNBYFKwwDpdAJrmuJ4ow/DY+TuTtbV6S2/B+LVx7t2S20K0AdnndKZagIpvQE
	49IS7fBl6XNsXpw7sd0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSd6-0000s5-9q; Wed, 03 Jun 2020 12:36:24 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgScy-0000rU-S6
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 12:36:18 +0000
Received: by mail-lf1-x144.google.com with SMTP id d7so1193570lfi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 05:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2oyZw0RFpvd7NmXeAe7nEQlUj76DhyhPpaW7s64pjzo=;
 b=nYbT+KBvLmwkQ6le6OlzAzNOKvT3Jh7p9gr61RHPWHvUzcjcnSFSjWjunQ/a14BwFl
 RYVXP8Jd6L5c/jA8xnImgA5ldUsdUiYHYpHi7+isWWKHQ5qEaNQW1Vqzix7ErPwjSQ0/
 PJHJl+YSh+/WG3rXz1W8TWAqLbQ5DdErtdDy7ROGhT603o53dqXT1Jf9y3q+6Mordp9+
 e283njEu6S6F/edrVG0wwT8uBAv7JnoOe51eiNmVuASPn6I7yuwgMNGBc/kPblXDf4Cq
 /PeGpvo+3Nqm9MB1MnLI0dWDpEybIlTrf9qaiCDVEBWudLTlwfCbPbAQOMP1aAlSvQ+6
 fNcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2oyZw0RFpvd7NmXeAe7nEQlUj76DhyhPpaW7s64pjzo=;
 b=PiBEB3R+lF8uxcXG/S0jKsxoSR+mqwaSf0MfS7OvTfOX0Y0ARAE8k1kI8stQUqL7nK
 ZusXfeGBrinKrJ8mRIA3fGY9Dy7jtMN1gsxslfRul63AeK3XDjb7RBboSb0Q2ifD6alL
 Rgdlv7uBTxKBXGSZc8ryRfcpbbis/7FejBnggnBKus/BF7MeoJ842DW0LvKfxUVAflo4
 pDwIjJzyeTm2DNiohO5tjJRAAyh20e8nEBL8P6KyAhkDPRrO4EKL+lFWk9GBXGtRmEh3
 Qcp3bGHCcG9utPwH5bbpKS3ykXOVyTmzL9Zj8L+Nd95wt5a7lEBuZJC8LiJMwn4ehFYG
 6Big==
X-Gm-Message-State: AOAM530ojOM1/tC9TE4lfcpo3+L2Ig8WeOfiBiW41LeRtAXzKAzJVH1g
 XzuwXP1z9zwoe6YKGd69qp3l1/hymkvEyhDf7D7z9A==
X-Google-Smtp-Source: ABdhPJwCYemYvuXwzTBpyi6T9nzWXhKBePZlC6Fv9LIFM+G4DsxpeTAyg4aaSqPz3ZBzGFeYp/yuKFfOc2jEiOJ7ASU=
X-Received: by 2002:ac2:562b:: with SMTP id b11mr2394435lff.47.1591187775383; 
 Wed, 03 Jun 2020 05:36:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200602200626.677981-1-christophe.jaillet@wanadoo.fr>
In-Reply-To: <20200602200626.677981-1-christophe.jaillet@wanadoo.fr>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Jun 2020 14:36:04 +0200
Message-ID: <CACRpkdaVcTqPcpf9jgauWEuinJG1aJm-OC7nCfFy=PvBz8UdXg@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: freescale: imx: Use 'devm_of_iomap()' to avoid a
 resource leak in case of error in 'imx_pinctrl_probe()'
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_053616_908097_A125D168 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Adrian Alonso <aalonso@freescale.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Stefan Agner <stefan@agner.ch>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Dan Carpenter <dan.carpenter@oracle.com>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 2, 2020 at 10:06 PM Christophe JAILLET
<christophe.jaillet@wanadoo.fr> wrote:

> Use 'devm_of_iomap()' instead 'of_iomap()' to avoid a resource leak in
> case of error.
>
> Update the error handling code accordingly.
>
> Fixes: 26d8cde5260b ("pinctrl: freescale: imx: add shared input select reg support")
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Patch applied!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
