Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 853FBA6891
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 14:26:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T62Zx5OlX3p89ImQOBGKzuUQI8egLA1pOIxtehw7G/4=; b=nDluTtTLR1J49U
	/Up3OXlBEN1i13cbETOh/55f5lJ0IYVgMON0l4x0WlQVnFuWE8KqfaSDll0BzYlNg8xHA4ko1qcbA
	Ls2giKeEp/zwqlVtabwrMZY6syUHgWf6gGndmQPkDu1MA9UrPHzwrEbzyl4GuLchYijj382Zyz5Y5
	qyR8vIUcVNhtzpMBXdZVt+UhHewxY8Yg65SRyG2snpRJOAXpb73OdQwgnFCvyWVl+h1E10lp6dL4S
	H54cLFd+8dr6zCCSl2NulP83YeRlqRAsaLP2UL+SwqSxgyjQltZinvjD9/ARk7T3OV5qR9VurTkJV
	KLIfMMRIuVwtzrKme1/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i57tQ-00006T-Nu; Tue, 03 Sep 2019 12:26:40 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i57tF-000067-E4
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 12:26:30 +0000
Received: by mail-qk1-f195.google.com with SMTP id 4so15658486qki.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 05:26:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nbksFq4ch4VqcOSTTorJTlbqrbbz5tl78DMmKkD6/5Y=;
 b=c5RZW9QhcA0+tG3LIj+s2LSG/1SNH5WqvSDzGopZ6bx+m4RhawXFGBxDOveX60WCjT
 oFQfKLSAkpacYLdTJi1kM3DwL59dpkpZGCk/oZnBaJm0IZYJspHbea7raUP/rcRqCNAd
 0/lk10mj4ytmd0a9qhPa2SbbQVW7s19hPOUkrXKXIaa3bYXipvkrdevYyUIUHje5xo+G
 9QjH0jbRfSpJeJyGqIN5w4+Dxn2a0v11EPzfQlsOZGYmR6mfHygjZqBmIWNYsGf0o42O
 SdFsLkdKy0jwSMSyvH5i39trQyqz400Dpi4k2urNJax6+m4XEgpZsyLdGjudfPnV3K7/
 x7tg==
X-Gm-Message-State: APjAAAWJjluf/0TUYZBiX5Bjzw+rgOiOaZCvCkhnnBBnEcWoyTM5IR0q
 hPCTcYaoT4pXbB9mJ7QabsVpg4z6Fr6Tci3Q2BVJbw==
X-Google-Smtp-Source: APXvYqyTX4OjTJkFdyWU86q71YkB+K41ANO0BsW3v2ZivoF+x9aBpzjNu53CLz04mA+dErbaViC/Jr23hFl6gCQg2Yo=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr34012092qki.352.1567513588688; 
 Tue, 03 Sep 2019 05:26:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190825153237.28829-1-shawnguo@kernel.org>
 <20190825153237.28829-2-shawnguo@kernel.org>
In-Reply-To: <20190825153237.28829-2-shawnguo@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 14:26:12 +0200
Message-ID: <CAK8P3a04GXr7d+dkhbLMQxYZGZT6RhZ8Lyp4p+HzPOK=sgOaog@mail.gmail.com>
Subject: Re: [GIT PULL 2/7] i.MX SoC changes for 5.4
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_052629_468452_233761B7 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 5:33 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-soc-5.4
>
> for you to fetch changes up to acf993a0f22215dbc1d39f974e3053d6b4f4e594:
>
>   ARM: imx: stop adjusting ar8031 phy tx delay (2019-08-24 20:30:22 +0200)
>
> ----------------------------------------------------------------
> i.MX SoC changes for 5.4:
>  - Drop AR8031 PHY TX delay adjusting from i.MX7D machine code, as
>    it's superfluous due to the recent changes to Atheros AT803X driver.
>  - Select TIMER_IMX_SYS_CTR for arm64 ARCH_MXC platform, since the
>    system counter is needed as broadcast timer for cpuidle support.


Pulled into arm/soc, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
