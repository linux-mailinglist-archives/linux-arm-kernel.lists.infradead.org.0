Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E9011CAF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:34:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PuKtQseiPdtYNbHB0SFOR0okVU7f6Vy8KdbED0moUhg=; b=M2GhzpvS7VdLqM
	fZ/r1RYTRF0YKIHFwzc/CCYT2TuJZ8Spfnhae41pdB3TqfQaVLyyWzbOV+O8nPSHXqxCi1dQcy/z5
	GSZmt07dRkjVvB/WptBT1RHOou9Sw/ryvWUl2AEJuUo5RM0rIcQ+7vXMfP/8oyqAQIIGj38Rd34hf
	IvHjAyFHR5JaQz3t15+jXaPCCmjtV7WK8DiAEVpfpv7x+LEH0H7MBmnvA8V4wNpyDZxkDIcsQPNY8
	XJK8USUE0f4EcxBpAA7bTOYGcn5B8SspZKMFp8l7Uc0fxqQ6OauAL5mi3NryPiKeABdhkvsEENg5R
	DPen5PixWu//LPNsOetQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLnK-0008GE-DM; Thu, 12 Dec 2019 10:34:06 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLmy-00086y-5K
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 10:33:50 +0000
Received: by mail-lf1-x141.google.com with SMTP id r14so1302397lfm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 02:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qPF/yalYFBJGDvckzezeF6fnanapi0q/ha5oqUAAdfg=;
 b=bxIPBTZs+yyuk1iz9+TSeqfLyQlsmsZfby1gnoJPTupkUIIcjhzcAZV9uufsKBGZWN
 vR23FlTa/YkI85fPoHmQ4FgXSF9a7mK/nnWkW+c3Zpzt+nLzOEGOesVlVfVJPQgaGr93
 FlPWdlWae9BWBbJ15aG9wHqztZLEl0OZXoJtDEar4hhVSb8uVspdReOtPfaMBf3qojY4
 /HwPMp5fU9dpztsingagfq+N1kqlraRGZ4M2CJ34t8ohPrUd/rzGc0PZLnz01aZfCeeq
 3r4OBKGePnEbVXQ/kbKUExFUz7YRNCsM6bo5mmnQC8DmaVZ3EtsZRxS9P037JZWIDzeD
 x/fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qPF/yalYFBJGDvckzezeF6fnanapi0q/ha5oqUAAdfg=;
 b=PnYAjcQ/KWF0OryLlKI6QueDPs8NWiX8XPZ+ndBCwcEhk1pfxop33EYbicuE4k4hfr
 V7Wn+wLVk2RSiNEGgcRC/X9rNkYFZjOFfzffpFA55rzs5uDjqhbfMf6BcczROnfgNSmi
 4VFuZWnhwYFDpX1MIbOdYqo5OKAJoVuOVdcfsPBNpZfUUNBp2vvfM0ZbSNz+XrG92hBg
 HXbt8ghqO5ahj9Alwa20IE9JJPxOBGsoiNRLoKDAhbeRYjd9Pn9aWFQFgLl33RbzRuN8
 IfKhgnG5t2phwYU00knGRsJEnzBAImuDQfJgt2U/iSyIt8LmD3mFwSEAKFta1Ju6Z8Mi
 SddA==
X-Gm-Message-State: APjAAAU6u0M5jVYMTJsGs/x/JrsZuf4/x+jS96jks0olZbrqsYkoIwEX
 P1M5ls4Ix1aDrHKPR5kRsbwrDQyH4dv6ynnO+qwssQ==
X-Google-Smtp-Source: APXvYqx0DF665CL99HUndMdW5PwUL0nbCGCmH0rw2D798Z4vnEevdnPuA75RWOwCG6MTgLnkPM3wqGCGL/aWEO6tMgE=
X-Received: by 2002:ac2:5c4b:: with SMTP id s11mr5064376lfp.133.1576146821960; 
 Thu, 12 Dec 2019 02:33:41 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574871463.git.nishadkamdar@gmail.com>
 <bcb86aa22d8d8499502bbd8c54a364be24886a86.1574871463.git.nishadkamdar@gmail.com>
In-Reply-To: <bcb86aa22d8d8499502bbd8c54a364be24886a86.1574871463.git.nishadkamdar@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Dec 2019 11:33:30 +0100
Message-ID: <CACRpkdYL+_bQU0PRfOFBY37O0K8W8WW0-tRM49FckA3Uh8S8WA@mail.gmail.com>
Subject: Re: [PATCH 3/5] pinctrl: meson-axg: Use the correct style for SPDX
 License Identifier
To: Nishad Kamdar <nishadkamdar@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_023344_251484_29C6F5A7 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kevin Hilman <khilman@baylibre.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sean Wang <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Joe Perches <joe@perches.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 5:44 PM Nishad Kamdar <nishadkamdar@gmail.com> wrote:

> This patch corrects the SPDX License Identifier style in
> header file related Meson axg SoC pinctrl driver.
> It assigns explicit block comment for the SPDX License Identifier.
>
> Changes made by using a script provided by Joe Perches here:
> https://lkml.org/lkml/2019/2/7/46.
>
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
