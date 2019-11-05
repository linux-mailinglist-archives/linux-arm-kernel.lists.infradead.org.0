Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85157EFFD4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 15:32:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZURqIUKQS86B1Ztk72JIUYFHWgUBey7mQCzgIPbVfAc=; b=FgREaQ1Vb/I3YU
	zJAjqwQ8Esr7PF/8UCi/BZOtnRItPsUJPuRJoeX36HIwi47uTpYrpiTGSWnm4yIutcGc/2lEvhC8E
	GzyRSTYJ6pgoHe2qEHHM3BLK8a2JDzVFeVT4/yvhJddO0Tbjypr2t4DYAmg5WJQb0N/wL0WeBM7Bi
	GW1TRSXKq14CUwvLqGGwQVKeNDrEvnvN1o4cXzFjnVEhcY1YODyI4n04m6OaOH5A711UW+uMo4TIT
	xAYyr9XmTT+optt6YNaJhp96qtWZU5ivX20MIwbOOYvDC0z5taC8Jd+ELU1YalqBkhXlqONO3vQM3
	8Tmj4C2f8H81PNYCgkZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRzsl-0002GE-MC; Tue, 05 Nov 2019 14:32:31 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRzse-0002FZ-1z
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 14:32:25 +0000
Received: by mail-lf1-x142.google.com with SMTP id f4so15294070lfk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 06:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PLFMRSJOoW+yEvqE/nAHqNvN0PVJDrTXShmTG7ns9As=;
 b=y9perWPcAH4j5mAUN7KY2NmEekUSQ+a30wlQ/BNkpsPELwH8TkoyNWnfNTa3lXV3DG
 BkFwl5e2C3KBAEq3KrADfJNW1Ypu1c/6VxByLiYBAbCXpJq19EQ4g+exGsZm5h5Xlspb
 +Iq9W9nVecCRfhhM+jooPvA76M2X0wekEJFrOpHNcoKkEubx67vn9D5P1VY90UD436Hk
 T1tZtH3MMuvo3yEaGGNwhUmdU9HpmW/8QBNjtT0SxqiVtwGseNLZgQXk5Un5QKIiCuW0
 f+AFNL5Hr9zZUf5RXDuhMfNZsepmrFclGE7uh8/yMAabPU5TAGPuMIR/DxA+lc+l5PkB
 CHMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PLFMRSJOoW+yEvqE/nAHqNvN0PVJDrTXShmTG7ns9As=;
 b=kXCM8qoC/nLvHx+KuvyZDqeYGFjX48bY1rM3ezwl06ibT8gtMv2JII9h2XjHHunOha
 tFQ0O/m+XIWSCjwZYqNwbUTgqp0NUASg1IefLDsIAkLAnL7Jx8yXuDKdlyRFvV2Ti0lT
 DtnTNTthSEZNqDI+9zlbOE6jZC41MzTrOzwoVfPQAwlMXEN6limi2HLp4VYTKK4y9gt6
 C8XDN6OLDxOgeigK64eHRxCnTOxlFUHeXA3w97wWk0e1ltjEsyFX7wfrMmI6BOoa8t4+
 OsuExeQNmzaGzg14XDf8AtrWdaJ0ISSsuwbA3Paq2kGO31MCLb9DAUJqdEG0zYI+sq7n
 24qQ==
X-Gm-Message-State: APjAAAWos0q1LSxWgU2I+yy3rLViruKql57mpBCsARC4ybcYvcOZHdvB
 xqNeBL+7xQmaUOgy0S6LckYLG+00mjN+5cOdQF0CQA==
X-Google-Smtp-Source: APXvYqyVnOresRhCD7/BA1YBuA6qLWnNQMWqlAcN2EojWeInmLqNK2B9nacejztyRPmOEA5D/NM+oKAP10yDAKivgGk=
X-Received: by 2002:ac2:4a8f:: with SMTP id l15mr20732685lfp.5.1572964341873; 
 Tue, 05 Nov 2019 06:32:21 -0800 (PST)
MIME-Version: 1.0
References: <20191104100908.10880-1-amelie.delaunay@st.com>
In-Reply-To: <20191104100908.10880-1-amelie.delaunay@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 5 Nov 2019 15:32:10 +0100
Message-ID: <CACRpkdb1c-NHXDQXYS78VTcGPnJApmxjzZbF_cM8SUknhDiQ4Q@mail.gmail.com>
Subject: Re: [PATCH 1/1] pinctrl: stmfx: fix valid_mask init sequence
To: Amelie Delaunay <amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_063224_108253_661E94E6 
X-CRM114-Status: UNSURE (   9.63  )
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 11:09 AM Amelie Delaunay <amelie.delaunay@st.com> wrote:

> With stmfx_pinctrl_gpio_init_valid_mask callback, gpio_valid_mask was used
> to initialize gpiochip valid_mask for gpiolib. But gpio_valid_mask was not
> yet initialized. gpio_valid_mask required gpio-ranges to be registered,
> this is the case after gpiochip_add_data call. But init_valid_mask
> callback is also called under gpiochip_add_data. gpio_valid_mask
> initialization cannot be moved before gpiochip_add_data because
> gpio-ranges are not registered.

Sorry but this doesn't add up, look at this call graph:

gpiochip_add_data()
  gpiochip_add_data_with_key()
    gpiochip_alloc_valid_mask()
    of_gpiochip_add()
    of_gpiochip_add_pin_range()
    gpiochip_init_valid_mask()

So the .initi_valid_mask() is clearly called *after*
of_gpiochip_add_pin_range() so this cannot be the real reason,
provided that the ranges come from the device tree. AFAICT that
is the case with the stmfx.

Can you check and see if the problem is something else?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
