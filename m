Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B55A6ABE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wg2vreu5xlb48cjrXYgJEIe06YSNtCm74GMUy+G9vZY=; b=frQeu8EUNPMXbg
	OlrWLfcyyJosq2NNW/NSdSMD0uWnB/plY8xdn1a1EjfzpxS11aze/QgZ4df7RL3OyQZqza+Muy51Z
	dlBvtySMrSxtLllQICQiMETG9xS6+WOiJPOuNuabVf/xYYwEvjKFN/CYzxxfe/03YNpHo6Ab6t1aD
	h5+iIa2XKtZYEgSIxGYzwlMUdjaG7S5aBNRBL88LnasC4NR3R8xv7BU50hdUK/pPnWXgqhvzY0WPd
	2bikwsAxBjA1lOVvC6jTBP5q7MSujOijrpmF2LEBqzkC6DhYYJZijcTn5aiBdPedF5Tffg21eOVXq
	XgLVKFDqr93U1TQll0EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59Qn-0001vU-4X; Tue, 03 Sep 2019 14:05:13 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59QZ-0001rT-WB
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:05:01 +0000
Received: by mail-qk1-f196.google.com with SMTP id 4so16022677qki.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 07:04:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=piOgFnyo+qvhJ8Tp/GFLI5Lrrzv6Zxt0Po5oCvd9yt4=;
 b=agwADcfvmiqwoYHn8nvv4/m2FMU8QuSJw37qwOGQSmmZnKJwGCHsaxRSV3tpWYSSoB
 vXGpqCX0R84SsYtBzzgV+BdR8XK2rSpHMkmfWFxLt12OtAJLXxjkJZ1Q9d8YHAv6SnWP
 RKtU7Ijn5DjsRSMAJNipHGegIFAYnTA7AlQaMrPXDy8w0KYSTk8Nv8lfjd7kR1Dr0HPl
 Db5akWpGh64Ykb/7xW8Gd798edAPsEXcYqdSm6lKfG+dsdQ4YsbLdePSgBwzolr3WKBY
 wMzYw/VEjIrDFLXA7fI6Hole4KxYhlXYfr58wGbS97VbC7VNfoy4fCkVE9K3PHh/RLN4
 Rdhw==
X-Gm-Message-State: APjAAAVWUztM/InqZHo6Pz0WzutQie1ZQFML5KiuAXkGg2piZCUyRAlX
 utbW2/IRsqjVywqbe5y6PX+M3UR4nudZ/rYHb5n56Q==
X-Google-Smtp-Source: APXvYqyL/tgV5kT3St3tUOb0PfdXx+o1U2a3MmkaBtUVY06m/Xaf8jRAhmwK0JFvn5B+qFkCyDw/8J+Et90wUuEwnUA=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr34504366qki.352.1567519499130; 
 Tue, 03 Sep 2019 07:04:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190825153237.28829-1-shawnguo@kernel.org>
 <20190825153237.28829-3-shawnguo@kernel.org>
In-Reply-To: <20190825153237.28829-3-shawnguo@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 16:04:43 +0200
Message-ID: <CAK8P3a0q2jzN0vQT9bHspuiftz7WSwvjs5TqaRwUMHX1OcJLeQ@mail.gmail.com>
Subject: Re: [GIT PULL 3/7] i.MX DT bindings update for 5.4
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_070500_038423_B6B98672 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
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
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-bindings-5.4
>
> for you to fetch changes up to 8d5fc0b95fd1542c575ac64457bd17d74a206497:
>
>   dt-bindings: arm: fsl: Add Kontron i.MX6UL N6310 compatibles (2019-08-24 22:44:48 +0200)
>
> ----------------------------------------------------------------
> i.MX DT bindings update for 5.4
>  - Add SoC bindings for i.MX8MN.
>  - Add board bindings for pico-pi-imx8m, Hummingboard Pulse, imx8mq
>    nitrogen, i.MX8QXP AI_ML, ls1046a-frwy etc.
>  - Add vendor prefix for Anvo-Systems and Einfochips.
>  - Update LPUART bindings for i.MX8QXP clock requirement.
>  - Update imx-weim bindings for optional burst clock mode support.
>  - Update EEPROM bindings for Anvo ANV32E61W device support.

Pulled into arm/dt, thanks!

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
