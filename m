Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C3C1718B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 14:29:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNVgIMe+xNLqgztpKU77DldcobkRnaRGAaJDuJahlFA=; b=EmsCpoNgp0jHtf
	JBBcdGcDLIYG8Fvon0/u7cl9WY4fyUq336CEbodxJASone/ZlaUtqyK5ssWJi3IikECaPRiaslb81
	ymYzhmMv6lqyHHpnJg+yxRHhywLnMQhKDvuLhbSPPd72zJc7QVyHgGM7CSEwSc+3cRZprCgVi0JLj
	RB81TDqE5vXIPBTN4c+EERhJev0EVUolN2YT8VjdsnfDWnFxpzHyQaDhnzq4z91j8TTju0cjayuzR
	VAXZpmNMa31CRwXWfQu6VqiLBtaNctYnfnSgK9pmWG7U2RtXTdhxFUPH7tS8U1TY1vG9zCHjget3b
	jOvSvB3j2H8PAy2lE9lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7JDx-0003ao-9X; Thu, 27 Feb 2020 13:29:09 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7JDi-0003Rf-WF
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Feb 2020 13:28:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=//cTzY2jobbRh8YsJlOJYjMBENtlYHf1uI24D6DEJ4A=; b=XvpMflgUUT86VE/KtIkq0iX9oJ
 ujr5pzwoguW2TkaqSEkpXdCG1bLeIXkSJC4ewW/uJ89Q/scj12bJ1AvkeTeCytu150OBYM2XC6nDi
 pk0T6pJpUzSsM6nz7AczZtoOQolhqyVcX7RFD2h9vgz3FAypor7FvAZe1qz5bm9fky2qAisP+4tHF
 VxFQdoeW4sISEtA+0s357QT5a+zWybrtdgWtNDLTi4UWWINhbVk4j7ABM509mctVrjsE7HYGQsXRI
 9vp5oXffYemsqSXWlJHre07wqWYkmgLKJsGdZNdb13/EK+3n5YcCtIEQ4Gu5fv0Ymp0KP9rx3W2dC
 1Qn6RKvA==;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7JDf-0007co-NQ
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 13:28:53 +0000
Received: by mail-ot1-f66.google.com with SMTP id r16so2910276otd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 05:28:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=//cTzY2jobbRh8YsJlOJYjMBENtlYHf1uI24D6DEJ4A=;
 b=sZwspXi7jRZ/zXzxnxTQiFotth86f/nnbXya+DcNwMQ4kKSiSzvjBoW1t2t7ZsbTBe
 6wIcal53QuqXsg7jBwtB7Td4U/taBKg6SJ/K0lWUhJf/sh7XB1OEqtGh0HIc+dsCBFZZ
 KTTxa5+J/HSvmCfb1mSt7dPmW8m2v67ziKSpnf8qQJdJVkacixQkYDO1sEdQScb8P2PC
 Cc/A011iVchalULYG42M6aV3OwflG6u5GGd6XZ1yqaLjW/DvdJxFFTDFGxQYtjYeDJpc
 tD4FnpZTEqXP8kkWhadWpQk6eTyrgmTznQ6bnB1mtA1Y6kWlspYAo4CCgDZHenlmbWKs
 FfBQ==
X-Gm-Message-State: APjAAAXMCqp/1Hrz/ws8kFwr7IB9KBqox4QXFO3XEEs8aIHpsg2h7rig
 wS6dzFUP14ogle7WLfP8termb4O/RycRFK3hO5w=
X-Google-Smtp-Source: APXvYqwoav7VAvRpxWespYQXROtXYAxxR/lhJ9BIHxTAy4kvVi44lWZOsMb2I0GiCyANrGW+f7BSim4VRrTCfMC2XRg=
X-Received: by 2002:a05:6830:10e:: with SMTP id
 i14mr3308619otp.39.1582810125298; 
 Thu, 27 Feb 2020 05:28:45 -0800 (PST)
MIME-Version: 1.0
References: <68219a85-295d-7b7c-9658-c3045bbcbaeb@free.fr>
 <f53767e0-e533-74bc-2967-e2cc4c3df15e@free.fr>
In-Reply-To: <f53767e0-e533-74bc-2967-e2cc4c3df15e@free.fr>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Feb 2020 14:28:32 +0100
Message-ID: <CAMuHMdWA3CwABeiV0whvuThVYSZvVi_KNAKdNEFyM0h9fAnTOw@mail.gmail.com>
Subject: Re: [RFC PATCH v4 1/2] devres: Provide new helper for devm functions
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-clk <linux-clk@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, Russell King <linux@armlinux.org.uk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Suzuki Poulose <suzuki.poulose@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Wed, Feb 26, 2020 at 4:55 PM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
> Provide a simple wrapper for devres_alloc / devres_add.
>
> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>

With the grammar fixed, as per below:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

> --- a/drivers/base/devres.c
> +++ b/drivers/base/devres.c
> @@ -685,6 +685,34 @@ int devres_release_group(struct device *dev, void *id)
>  }
>  EXPORT_SYMBOL_GPL(devres_release_group);
>
> +/**
> + * devm_add - allocate and register new device resource
> + * @dev: device to add resource to
> + * @func: resource release function
> + * @arg: resource data
> + * @size: resource data size
> + *
> + * Simple wrapper for devres_alloc / devres_add.
> + * Release the resource if the allocation fails.

Releases ... failed.

> + *
> + * RETURNS:
> + * 0 if the allocation succeeds, -ENOMEM otherwise.

"0 on success" would avoid any discussion about "succeeds" or "succeeded" ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
