Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF459F0018
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 15:42:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7BFiue1Aqsu7DZb7oqypNBChZvccCAwm17ZgZ8nRJU=; b=IihQQ29EqMnuUG
	p/wXb/HYfctj5c5bB6T0hQI8MLD6iw/BJ06YIUKD4UQB4RAWydUWKXJcd4aYAeut18VZH9NfXMI13
	EnPReVtEHl+C+ltUr6ElIfzXBKBuOibSWSLyNm17ksjYXOz7/eLurLZpcFMbOlmyFkHp4zXgSihtk
	jAZaV5qtW5DBS/qAQ0QawbTRw8iuROJggcTOH+C3ch46BEF7Z6/4q0hBJkeA21vzWGhuY8apGcgC5
	mYACvvmEC3Rw7bjx7FPwdQkwad7mWrnJBC5whwo0qKWNVepixOUR3MMk1Rry8Y6Kf4qxEHWOWNjwZ
	zgP2P5qLpbMswOzQrPuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS01m-0006Uf-Q6; Tue, 05 Nov 2019 14:41:50 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS01f-0006U4-HI
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 14:41:44 +0000
Received: by mail-lf1-x141.google.com with SMTP id y127so15318835lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 06:41:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jBzTOxq85jxdofnlZM+XjruaJTIDQtuSsbh7qG9jKHg=;
 b=bBozmJV5Qw6b9lVapPQvukL2eua22QYk1tsW4G0355k0kjw9pURqm/uRwStnFEhLZR
 qC+5Ag8kIoG1xVD1hfQfSl7+po3u37+/b6N0zQAdCCEZWLhKMeOM3qvwZbD/y5ZPSoh6
 MTpvr6/VaUaAyoUz4Y8JccTmFEyS+gGu9TWdmB4keanawpHY4PkyNbC/Voz7M14+OnwZ
 TAYmCLZMTmHCvh1OlS+QhfLx88suOLdzkGHhH4anmzik178Ir6mYQkjWWe3B1jcu/+04
 a4brbdKi5sikiFVFPQq2Ib0/aLqGEoQrOSpOQwKU5qoOl+r+i4V2u+8HjMNE1sB13TOv
 FTSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jBzTOxq85jxdofnlZM+XjruaJTIDQtuSsbh7qG9jKHg=;
 b=LgsfQCTxLPzGMrUI5p/MZZOBpueT9PWvoT/Qpq75J0J/w/NHfx0uPFqgdnyNawBhU0
 MepVDJ4u4iCH3VlwMeOKj8hMLB/quJvcacdEFCgj1egieK63jQBKA4YBlBCdJ3r+KkGu
 7cBzbd+XXjwy9k5l3kdDi0Js/WmEmffZ92sNpwZd5z7vW20/iTszkIog4Qppw4WY+Kih
 9HzRF/ZNxO9r7hGTh8EjWOJpNQeI1LDDMCswJgpE4XLeLL8qUGnClb9lB8NH/wyLNilY
 eyw1jpQmquKStcFUo7jfKkYxCBNeXfrchaFWp4hYyGylYgyoHbMJ/R7SHNdzm176OV/p
 uBXg==
X-Gm-Message-State: APjAAAXdZgKy6+cB4ztZQw6Og8Sq4JenRXIhbDXWqQX+kxOtiNa7yFTZ
 hfwcrWOony5glSkfu6+YV5Qi5qAaYaauJlOm1TzMUA==
X-Google-Smtp-Source: APXvYqwfEk1h321csKMTRrt3DsgpCia8GUNn3QPeXjglwCRgaQ1riCiRrh9/anJdOd37y0N/igvpYMZJnznCmdaOJ5c=
X-Received: by 2002:a19:651b:: with SMTP id z27mr20715395lfb.117.1572964898491; 
 Tue, 05 Nov 2019 06:41:38 -0800 (PST)
MIME-Version: 1.0
References: <20191104175744.12041-1-krzk@kernel.org>
In-Reply-To: <20191104175744.12041-1-krzk@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 5 Nov 2019 15:41:27 +0100
Message-ID: <CACRpkda6mtF=yjPMJReO50q1Xnys6i51zm2iJvHRidxZJCKU6w@mail.gmail.com>
Subject: Re: [GIT PULL] pinctrl: samsung: Pull for v5.5
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_064143_576867_5E039471 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Sylwester Nawrocki <snawrocki@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 6:57 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
>
>   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
>
> are available in the Git repository at:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/pinctrl/samsung.git tags/samsung-pinctrl-5.5
>
> for you to fetch changes up to a322b3377f4bac32aa25fb1acb9e7afbbbbd0137:
>
>   pinctrl: samsung: Fix device node refcount leaks in init code (2019-10-01 20:22:04 +0200)

Pulled into my pinctrl "devel" branch for v5.5, thanks!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
