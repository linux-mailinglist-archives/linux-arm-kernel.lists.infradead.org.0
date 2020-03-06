Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC7617BF75
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 14:45:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tyeSw22C9Qn9k9yA/AgQ6BB2xl4A39d53oUhbu82Q2A=; b=WXxdiluQc2a8F/
	+d4IjKyDkC2lnIdqnUCZODMb5H+isRSDM2/3uBx5OCUa3UBVde9BtNdr/OF5ncLqT5LhMWZRa11LX
	ae/t8pFDDYFgBFZU/+pgaUBaSCDrJK4d3MwLRUeTA9v0ROwDyKB0pd0tJLgj78/pglIWNuA7WxyJ5
	moLwKeXo8I1rv5AvxKqGEpXfrtC+kyJcM2bLeHAPDfEjDJWefSxCXWHmb9i7o+Q59EBaQ8tTssLYj
	cpqrH0TEJZe309V6qKYWrD78Kpc55juVtHijJC9GDMjarnxuZ/yZUzA+ysluYlzHMf/aqVeTwFp+X
	NmDPYxCfU7IvO9D0LsYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jADI7-00078e-Na; Fri, 06 Mar 2020 13:45:27 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jADI0-00077l-G2
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 13:45:21 +0000
Received: by mail-lj1-x241.google.com with SMTP id 143so2252296ljj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 05:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7HlHInjFMccqDiZAW2h7dIR71BCrB+D8mPZu9+j1MN8=;
 b=FHQ6qk5hqbD2qhFvRgZ3LVpYdSyWjhuFzo8kQy9oW1+AW/vDKIqTBYC8mb4BrjqzYu
 PUKHoxlds59gjOrwJZgYpIHlwyEpf7y2889eDr7CF8k4uM4yxFCVaq71Wml0/0xz+dWG
 U8wChxbMKfNDhuI07VZcoqEEFyNrO3A80u58UScYrMHiIxQoP8so8W1+tKRMouzGeY6X
 V0/OBotJRq7p0VlH836pIjR5s+msoqEWcnjd8EQ5sywecQBNKfrnW1Jpfp2XUsXtXd0e
 GW5JF5yMarrByddEEJO9zne6E6EVIbnJUvPpZVQUgFHoHw9RLlA8oOy/jTh5SyiBt5Sw
 i+sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7HlHInjFMccqDiZAW2h7dIR71BCrB+D8mPZu9+j1MN8=;
 b=Jsys46UI9YGkbThNm4CzFzj0NGKBxLpN+vE/egfASf3syd/s6Yb+i1S01yJ3/ntsdy
 k/TeAiVuMaX3Su8ZjsfV9bHFz3fykYdaZ4Aw2LkMugDG1k48+nakN4X6mpu5MYDQGSCm
 D/6wavRyrJvR9Y+3+69QeSkZDGpZgcE6UQeCDTY0j/91qanrdI95JRtmuiUk+Cy4ZLOH
 erJrw5xZSXWxjgBewuBA/Hn8O7BM4arOHpaeHaVjueqW056HNjSxiP2X6QbYXhNN4mYY
 JQ65AvVKWU8VXXaE5/ZVEVNqRWYLDgCTuUuOICj+R8iMXxUKHq7POn3lMEG+s5+FRzRe
 pezA==
X-Gm-Message-State: ANhLgQ0aFxfUyEZAusRIPM+58VDSsvigp/opAOsLXyNP1dgdQQ4euavI
 jQHSp5Xu86R2PuVoDgJqXmf2ofkot0sSPVReyh4sJA==
X-Google-Smtp-Source: ADFU+vtS4etaU8JF15tZD3Ix13FzFgX9XaRY1ceFufTOGBQl3SOmzB3BGAdD+9bvpxp6KQsusW0FzkuQaZihBrzNwzY=
X-Received: by 2002:a2e:b169:: with SMTP id a9mr2039334ljm.258.1583502317443; 
 Fri, 06 Mar 2020 05:45:17 -0800 (PST)
MIME-Version: 1.0
References: <20200306005809.38530-1-alexandre.belloni@bootlin.com>
In-Reply-To: <20200306005809.38530-1-alexandre.belloni@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 6 Mar 2020 14:45:06 +0100
Message-ID: <CACRpkda3DnsoYQSwrny2iS-vx2VmqzdwhBjuNXb6KNUwp9zc5w@mail.gmail.com>
Subject: Re: [PATCH 1/3] rtc: pl031: remove useless invalid alarm handling
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_054520_539234_6F879342 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 6, 2020 at 1:58 AM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:

> The core will never pass an invalid alarm to .set_alarm, it is not
> necessary to check for its validity.
>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
