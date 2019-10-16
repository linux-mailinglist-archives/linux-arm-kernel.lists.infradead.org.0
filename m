Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0955D9219
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WE3onu8pSt6FvrAg1L6J9iAYxx7EsPuaAoJl6dRNKXg=; b=icEU0VUzyF34ye
	rnj4/Mc98nfttKyN5b9O9yNm6fuVWnTLbl5WYmOIhZvLKPj/8ZqwU3ODfUrQ7tHYQLD1HV/PUNC9t
	dEMMEpTIqoOaQpRQYf1QwjMz+dhFRa5fHHr9y9pE8XGShqMM0uHRPtDu75FMMyv2BNEf+KWUp7flu
	HQZuNK+3ix4x+ThcIjW7JiH1ZZbFVt1deM/sSG1ZKpqNqvqbajz1FSwqAtqTfHS413VGBFCdVmaUZ
	wo7sva55LXJtaQcnXU/VEWDVFUU7t+m88fs75N8GTanIg2uv+zUDeJkZG+09BYKezyXJKJ/zJoBi6
	a5jbwmpCQN4aAOWroYxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKj6p-0003Ia-Mj; Wed, 16 Oct 2019 13:12:59 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKj6e-0003I9-MV
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 13:12:49 +0000
Received: by mail-qt1-x843.google.com with SMTP id 3so36054521qta.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 06:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8JThs1XG1ijPDoWXd001r2c0QxpUa5W2X+j98FgzGb4=;
 b=UB9ELyOZDOPd221KTRZ44E6coQpNcftSoMxNazf7t7nDHFWdnlu49LfY4juaUuij+u
 uyg+XuKVTfjGgg6f4yohjI/jki6Ey5vm/kSgHuM8jhxf8/TeIfQLhCTR8hCp5SKkjOEc
 aghKyx6Go8GpAiGyEFJslvNxarC4F497LwkwyzhKWbLaZ7BdJv16xCl6s8xTFOtqdhID
 TJFzruv3A7f6Abldxi7qPSb4ZpmJ2yHh+g3JpVmUCO+vLOrQZZ3rIcfXGEVyYPEgFO+H
 f2kIyl+jZ8TgDuq7pviRq5YjYRyEK5T0FwsIZlAqJsL0s9vXcXnOHCVpJctB3HcgeqZH
 ClHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8JThs1XG1ijPDoWXd001r2c0QxpUa5W2X+j98FgzGb4=;
 b=oU8RoV1Apimapn3+oF/ijxjObprUnQYY9MAgEsi1tRBIClu4/WEWvNjJrUNx9A3rHo
 84QJ4U/frHMwiAT7PQ94OozZEVmFHaCERq0HKSwCLNQCgo8K2yo1HASWlaOiGDiVcEeZ
 mWwDsYKJzjgCyP0cpfQ1Na3SxZsNFDy+5Bcey1VH8czh+T42sZZC/pLYskmQv4Qd6mMq
 4ixnA0ZYDMPECtkgOq3SDa1d3580dF7A1y6MYRSOqj+JZaCCivi5h1mPWpBCVwiKrEwz
 utZWXWhhXHfVnihFF3HE2t6iNJKEScQWinlpD9H3Ej/dBTHGZVcrTVQx4xY+OeYxV5Ng
 YaKQ==
X-Gm-Message-State: APjAAAX41hfm6z3DMHJz5QXIHBMjSoA9MjTnpAhacDu3l1YFCFjl26hH
 H13+XW/TJeRKc5YnXBscb/N8oOwObQWiYlpGrS6Omw==
X-Google-Smtp-Source: APXvYqz4WACK7QZCPQXxStJci3zXaPb5Yc24BDtLg9Q18h0g3nKjgnK1rXsHGJ3td2yB7eQaUO55uFjrFVgjSv4QrKM=
X-Received: by 2002:aed:2462:: with SMTP id s31mr45553740qtc.40.1571231567878; 
 Wed, 16 Oct 2019 06:12:47 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-23-arnd@arndb.de>
In-Reply-To: <20191010203043.1241612-23-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2019 15:12:36 +0200
Message-ID: <CACRpkdb07KyJDgACuh2ho822pHAUcw2ubu=WJwqxf8NO-Pv+_A@mail.gmail.com>
Subject: Re: [PATCH 23/36] ARM: s3c: move s3cmci pinctrl handling into board
 files
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_061248_739644_DAB0DA42 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Ben Dooks <ben-linux@fluff.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:47 PM Arnd Bergmann <arnd@arndb.de> wrote:

> Rather than call the internal s3c_gpio_cfgall_range() function
> through a platform header, move the code into the set_power
> callback that is already exported by the board, and add
> a default implementation.
>
> In DT mode, the code already does not set the pin config,
> so nothing changes there.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

It looks good:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

It would feel better if someone was actually testing it on these
boards. I see Ben is listed as maintainer so I bet he will
pull the board out :)

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
