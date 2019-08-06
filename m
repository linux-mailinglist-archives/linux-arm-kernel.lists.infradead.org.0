Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14121833D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 16:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJCKRqHc53/c8E+fcAarcwtrxFbf13curR+WS3Eu0Xs=; b=PlnrpGsyOoky45
	v6i0ySYnoHcz59cXOU/NGQ55tJj+jg+O0Rj/P6d3L6LQ8Y83zjJ+Sbj41FZUoIfESAJ8XGMCOYPC5
	74el/WQnZ4P5DNH9wb+zdSldTdutHsSIOtjufMCPqD7oYDAHLWY5jUR18jX/Q9D3xnlX5m96MxZVm
	873PVItNFHOZRQHOOAGeqhgD6An1tTLth86N8XT+3vgcrcbG4RRT/9ZqF0iksHUxkO53pbJF3C6su
	n8dp0FeId4KZcctI7ETcAEFtJ4OKRL/djLCrn4HIfXtUG4n9a9Z1BwTv9c5wpZQPjzX9IsbbAMrdm
	ML/ZRNoLCiRtwabg8neg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0Ja-0008BY-1D; Tue, 06 Aug 2019 14:19:50 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0JQ-0008Aw-HT
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:19:41 +0000
Received: by mail-lf1-x142.google.com with SMTP id z15so57011852lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 07:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V5jEF7EG4PC/suq/OlXR4ZWTuw0HGXTqAzdKkVGslUk=;
 b=ULcOMR+jww4NTNUs7NcAx18e93B5Nw/gBlqWx6xiwSBs6cs7d37AY/0at+jBAZsz9L
 nKGakf4d3FcI66w3uSvEv2o1eYC1cGgIEeINGfJGS+NGWswAIsexCY2Qi12ZTECRlBUe
 Xs5PxT6h/5r5zjx/xyRVp6WcvOXeAZHhHhtKQJgViFGxqshcnDNoKNZHphz9RjZ4rPG1
 pCHl+Ur0ep1NsDIAWaesNPR9rG3NJNuVmyvy020U3GeG+2j8iN0rc/8pmV4Bl+YJ5CuY
 7+/YbQopJ/SEahHd2BEbvp9irA2CuIxEk7yd+3t4oDFVCLIfUxnrXiRIBBNCWiCEumud
 B5/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V5jEF7EG4PC/suq/OlXR4ZWTuw0HGXTqAzdKkVGslUk=;
 b=SxW6bGFV04UU2FdEzzy0bSBLoDukdATfTVxhs7+pMKH5HnxGPazY+6jvJlyUmz/2fN
 NRCKXnkOut8vIRFoqgir4jZnKoidewrefw91a0R5ks/bxE0wMKqmMqba6IkDQddaEo/K
 7j/IVKhhWBlEAfb2v+QSMBsv3WK/Lp6Zn2bMf1hyqI8zsXfnaJOmcdVSfJMyRrkb3jCt
 kt8wYfFnX5hsFECcSiYYSFa663fTHVurnPp/EFAn9tK5eEHWhsffuKFuuDA61pFOPk63
 d/BQm5hZGaxKMEusRC1+qOROMycaEQfzPmp+UuUQ/Kf//w5zhCeiCctbAi65wT3eybHD
 FfqQ==
X-Gm-Message-State: APjAAAU0f17q9wrSmt9F/IaVrW39ZgogxyGuMaRoYQw7edIXAsvj9VJW
 qE8X0J6vxNHqDs4p+VYmrC6pyZTibUbRgSnsHUKYKQ==
X-Google-Smtp-Source: APXvYqyiScvaJDP2ekkmRlgBAXhfXHwRa26aWf4+vzG26RvGWoN0Fe0dbrrYZnADbBqjPhQeEpVSj3qURqtbrw8I10E=
X-Received: by 2002:ac2:5939:: with SMTP id v25mr2709543lfi.115.1565101179215; 
 Tue, 06 Aug 2019 07:19:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190804154948.4584-1-nishkadg.linux@gmail.com>
In-Reply-To: <20190804154948.4584-1-nishkadg.linux@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 6 Aug 2019 16:19:27 +0200
Message-ID: <CACRpkdaZs6+V1d0R+-jmukxbSgJhyRP9JXmP5oJ9L0tyfyKEHg@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: spear: spear: Add of_node_put() before return
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_071940_586693_D7E01015 
X-CRM114-Status: UNSURE (   8.61  )
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
Cc: Viresh Kumar <vireshk@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 4, 2019 at 5:50 PM Nishka Dasgupta <nishkadg.linux@gmail.com> wrote:

> Each iteration of for_each_child_of_node puts the previous node, but in
> the case of a return from the middle of the loop, there is no put, thus
> causing a memory leak. Hence add an of_node_put before the return in
> two places.
> Issue found with Coccinelle.
>
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

Patch applied with Viresh's ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
