Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B919A914
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:44:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z0z1Su9uME+lypy2cAUIZBt2xBmBFodAry4uW2cQYyg=; b=jQ42XwRY7jb7FM
	EgQ4CG/mTpH8YAkDLpZni1f8ZqAvjH2u66+Aq1aOKRgYdVZ7ewB9BYCv8Yk5xn2TeWb0Fuhzt//Ib
	ZP4MHZxhcpLjXe4AchIqBLsQNacZAjZzz4jtjJ4CSDGJUhJUQfp15h/fS/5Ktk6nydjv3Gv9sfDiR
	YuYAYrfdJIBhysbP7FnHyiwiWxlzH95bIRPqbYkT/UwlyEzk9dK/aHvb5fPdDWYM9VmxXYEKd//0R
	sDHKVZijyMO/yTRMsc8ROkTpVVHGxNrBtQE6VvTkl1CKkCpvHcHFaf7CMsXetpylK+a5VT7qKty2o
	7Y+JgtnHIsZf4VCbn4Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14Fe-0000YO-Iq; Fri, 23 Aug 2019 07:44:50 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14FN-0000Y3-0g
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:44:34 +0000
Received: by mail-lf1-x144.google.com with SMTP id 62so6425419lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8VhnyQ/lvnPjeI+ZEe4VcwGbfHZbPpwY+AwHcnvR+oE=;
 b=I7Wm2w112kZVo5kWC7G4B9lxgpkpfdDFoX4S5HugYjmAlJg9Z0erMI9NUjIR6JI91X
 Ksvwc+eyUbldOgsBbz65LlhuXXdpscFzJc1vJ07sq2yZe6jlm9x/fvoK0tql9th3ci1/
 CS+DHzG+MT0BgLZQuteblBYRpuXfutqgO3hdFI44CeD329VZcVFLu1vQ44gVVuzeSVII
 9p9q/El026NdnM9A+3b7963AZEg2TEzK3EH31+tAvlgORlD7In2/scnhEcL1feu4ST/1
 DZzgp81ZoP5eiSFgyUIMgsd2vNRj0qHbQfnJPxqefeos6vZgInxz5UN2yqRGIAW1wRLF
 a/Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8VhnyQ/lvnPjeI+ZEe4VcwGbfHZbPpwY+AwHcnvR+oE=;
 b=OeesND7uyfKJ6w7nX9rNke/B4mO1pxtORwRYRG2PcCyRSX09KO21jCihqrjIohCxfA
 T+dxPn2R19BRobo44woM6e+VXVnInr/dHKrBIDnQS9TfiD8V5DxMcte9XNRb2m4RariI
 SG2kR222a3nZCe2xJGOA8+C+Vyteia2HpPr/Rva2fP4vRgFY2/imdKSlxtg/VPPNS4rA
 1BIbq3oJ0iTuWAXp4etq1AFPsiqhJwa8FazmGX0donXIiOVDIuCSihvc6ZBq4XGU6Udj
 yGQ06pAP4j1FAQNOSjH1S4DPDMDJwxNE8YinQYWrfrBdTsjMTu7R7OYe6sqiUfWIf+RO
 qPkw==
X-Gm-Message-State: APjAAAVyNxIuAGjKhAHb41eR7zWx0H6wz/yrFfADqxkZ16B7L3gGca2E
 2TaYdDqEudwo1bpiR/tQEUCvi8V1/Xe7GrR1uUdSLg==
X-Google-Smtp-Source: APXvYqyNoQgfYc8y4pHvuwV6KbLFLXwLC/iwoPTjq9ZJq+M/tH/JxhgIoE9IKKUF7jG7d7iHWjhzOuKCY0Oof3gDTrw=
X-Received: by 2002:a19:e006:: with SMTP id x6mr1828413lfg.165.1566546271241; 
 Fri, 23 Aug 2019 00:44:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
 <20190809163334.489360-5-arnd@arndb.de>
In-Reply-To: <20190809163334.489360-5-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2019 09:44:19 +0200
Message-ID: <CACRpkdajapOw+fsEx1fqG3FL-n-WYmOUoGw_HGRHd730h+uv-w@mail.gmail.com>
Subject: Re: [PATCH 5/7] ARM: xscale: fix multi-cpu compilation
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_004433_122165_CACCAEF5 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, soc@kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 linux-i2c <linux-i2c@vger.kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 6:33 PM Arnd Bergmann <arnd@arndb.de> wrote:

> Building a combined ARMv4+XScale kernel produces these
> and other build failures:
>
> /tmp/copypage-xscale-3aa821.s: Assembler messages:
> /tmp/copypage-xscale-3aa821.s:167: Error: selected processor does not support `pld [r7,#0]' in ARM mode
> /tmp/copypage-xscale-3aa821.s:168: Error: selected processor does not support `pld [r7,#32]' in ARM mode
> /tmp/copypage-xscale-3aa821.s:169: Error: selected processor does not support `pld [r1,#0]' in ARM mode
> /tmp/copypage-xscale-3aa821.s:170: Error: selected processor does not support `pld [r1,#32]' in ARM mode
> /tmp/copypage-xscale-3aa821.s:171: Error: selected processor does not support `pld [r7,#64]' in ARM mode
> /tmp/copypage-xscale-3aa821.s:176: Error: selected processor does not support `ldrd r4,r5,[r7],#8' in ARM mode
> /tmp/copypage-xscale-3aa821.s:180: Error: selected processor does not support `strd r4,r5,[r1],#8' in ARM mode

OK we certainly need this.

> Add an explict .arch armv5 in the inline assembly to allow the ARMv5
> specific instructions regardless of the compiler -march= target.

You probably mean...

> +.arch xscale                                   \n\
>         pld     [%0, #0]                        \n\

Explicit .arch xscale rather than .arch armv5.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
