Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6E38EBF5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 14:52:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oaHMCT4llNOWXxp9IbKReZMK5leotmEYhMHbuCazaGA=; b=HQ/QUFn3BvNQ86
	V6hUHvMKHdv9mxlKV8D9DqA5WiNP5qf99JnxJx8sSAqTJHgwQo1feWNW0h4cni/tk6Z50NbMF5ps2
	tclkoqmbhtkIMzLM2EjxXov0tJWbcVxvPoqCOJZIiJ6UbB8jT8syvFJDeRdULb9igGub8N5NC7hXc
	ijl7qUoGbc2YgCNOt25tD2bAVOnvKPQYlVTTWSuyEU0YyUW3KR2ByGsAz0Mm9gFTRsYD0uXBq37ur
	z467WEia1yJauqNRdRkShubQbm6RofSTgA3vVck4XKttUtTqoYW/bqh/GgP0LVZqXqBaeRdva2M5H
	oz/wCbUX5v45hyOsiNCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFFI-0004qg-3D; Thu, 15 Aug 2019 12:52:48 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFF5-0004qJ-8p
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 12:52:36 +0000
Received: by mail-qt1-f194.google.com with SMTP id e8so2157679qtp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 05:52:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1Xc60awoglWGqYxV4vax3gDJCjS6PmNYtaCl2hENAic=;
 b=AtEnuDhwqNjG82Iy1XyW+SZ8vHTIzOGYjh/zM1ll0jT6Ojy3/TcRK88cb87B0gFBbl
 3Fr7KFUFASW5LKk9Oj0K6dDzFjlFvjj2GbPR8t6y5io6UcbtTB7HMO43GheyUxboniX+
 KzCtVQpD7b0rAc9rVLTOCNhF9PX6fffPmUUdMLFUl0F88oupuZf5t9JORytOoIBqpwno
 Lceo/WMO2TTwG1s0CmTqBnemLeLUhzgnuu3GqBOKJWYoFv1h7fXn5pboumFPKb1F90tV
 nurjs8cK8p6CFh6MzVs79uxyLSgTF3zhYyN9/X8PQk4vIqqXLtOYLhUZIpaXPY0YVnu3
 sW9w==
X-Gm-Message-State: APjAAAUXqhMWsFDo10DH3ViN/ZhXOCY0nhObruFtkupxqNHhG2MNy17D
 2lEF65e5J6c8Fp9sPGE+B2LL8BErExce+9OeJ+Q=
X-Google-Smtp-Source: APXvYqw/USb3bIXmHYcRk91qUDC+Wuqhs9+4i1uly7IotAhyQbZvnWWxlpAnsqEGX5LFoHefTXTiSle6YUgyiCgItEY=
X-Received: by 2002:ac8:117:: with SMTP id e23mr3729022qtg.18.1565873554077;
 Thu, 15 Aug 2019 05:52:34 -0700 (PDT)
MIME-Version: 1.0
References: <CACRpkdbH-h5fRwuidcpeOp8mtRoKUW65SAk8a4A==BCDzn3QMA@mail.gmail.com>
In-Reply-To: <CACRpkdbH-h5fRwuidcpeOp8mtRoKUW65SAk8a4A==BCDzn3QMA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 15 Aug 2019 14:52:18 +0200
Message-ID: <CAK8P3a2Djs2gA9zvTMbBdUn3DEQMh0OY6E0=KVpmOQ+UEGzW6g@mail.gmail.com>
Subject: Re: [GIT PULL] Ux500 updates for v5.4 take one
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_055235_309301_BAF73AC9 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nicholas Mc Guire <hofrat@osadl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 11:42 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> Hi ARM SoC folks,
>
> here are some initial patches for Ux500 targeted for the v5.4 kernel
> cycle.
>
> Please pull it in! Details in the signed tag.
>
> Yours,
> Linus Walleij
>
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-stericsson.git
> tags/ux500-v5.4-1
>
> for you to fetch changes up to 163ce24a435061f9ff7e1673fec5be0868bdb7d3:
>
>   MAINTAINERS: add soc/ux500 (2019-07-23 10:44:14 +0200)
>
> ----------------------------------------------------------------
> This is a slew of Ux500 updates for the v5.4 kernel cycle:
>
> - Stop populating the PRCMU devices from the core CPU
>   file, it works just fine at device_initcall() level.
>
> - Add a missing of_node_put() in the core file.
>
> - Simplify the debug UART code.
>
> - Add myself to MAINTAINERS
>

Pulled into arm/soc, thanks!

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
