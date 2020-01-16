Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0586F13D666
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 10:07:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/gj4QQp8Yd34QjsH0eSmCMyhgxWkTntinJebQ4FF6G0=; b=KDO1PXvlzvwbxd
	JI0rRxI3+K90IsiTEu4P+SdtYRQbVowreOTHBZn5WIA+fAgrzs1uwrzconToz4lI3zXxiKdqPUq/S
	hT6z2kIURckt6KFMRiRszlruaWXrQ8mjLLjNriOYKGlIL2d84zNfC+Fhby75GOT8baKQ1tXQQDENP
	D0kYe++2nbMl7j/Q2g+Nz+uzC+bk4aufeQBUsjqTkygf369jU+J+86/foDorTHACOPhZ32A5W1Grj
	QyBG1G+ajFnokBz1eUAIzPYsAy5jQep97MCaG8bU6FmeIVRoYw8txFouol58bl5XBXKbOrZ4HjNTP
	2pVID9RwpSVb75dpaFtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is17J-0006In-3b; Thu, 16 Jan 2020 09:07:05 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is177-0006I5-JR
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 09:06:57 +0000
Received: by mail-lj1-x243.google.com with SMTP id a13so21742653ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 01:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YX3/Ti4rNNr6UCshG9bZTqGTKsmc/hxmzqtnVPBHDm8=;
 b=MGfwKQoKAqc3fScLEHCq7ywLuKCcvWPmQ9A7lwyExcP8OV3fnyDUQ4mQEIZsH51+oJ
 0kNXekwRVSQafelLavUheZa9llfrrDBxGeJJtIf2c5aYnACbp3ferLP/cK1w4LwfX0F3
 6Y7NAppxwKV8qjOAUP4jQl6u1uUyfEKMd0lLnEwFErxZTg7GvpGuBiAIDoD22b5Qu04x
 FmzKSj5FCFYAwffwgIp3VN72A7V4dI1YvvpN/tGlg9y7nXiewtk9bT33IzGyPGzNU5+w
 7RvD5HjpxlCMTAYkHfR4pIC5wzIa0hnrVGufZMvfS0btIgdaMkCANDqJNtjHbDC/IHe9
 87uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YX3/Ti4rNNr6UCshG9bZTqGTKsmc/hxmzqtnVPBHDm8=;
 b=STuSHfrLkpwqjmiXfhDIK/CnYvTztnHkzSPaQWj29q4URpZBN98CJmTi23kwmhMyXQ
 cnPHiNgClSNI8cbLKQINCWUsNqPpU8AJVbKl/oEgKJDNCLOR9LmhqFVOT5ssQ3rzOYvJ
 aIHMUENdmzqVmccToYv/BnP717jkAcfi4vrFlcV9dyY6YuCJ5xot7m+hwU0+mBd0ITuw
 yia4HKtZZzVPqLZ53T3h17G24yaWK2/Y0BGW4db/tQ7OrGbR/U8ds5iYRVNmVuF7UhZ5
 Tt8NmLLhKCbEEv/f8yZkH8cW7QF72+BuczNnceTkUZ8wi6dcrGHL0+Z3rl7y2+AIXKcM
 w+Ig==
X-Gm-Message-State: APjAAAXTq7UvRyBw2VnNYS1Pn5i/I+AaCJ0dKuXbGpVoeEG0kU5olRZ6
 xhgWZiGEDH93zZWLnVfIAI2pjSDYKHQ3JPG3UZRGUA==
X-Google-Smtp-Source: APXvYqz1bWJIuOjw+BT1TEwOPq4JBdgdI/skG6NXF/N1KsERHNA6I+CpAf4tjtbyYYrx3gjxL2aY1jk3BlxmtyTmf9w=
X-Received: by 2002:a2e:960f:: with SMTP id v15mr1685441ljh.265.1579165611849; 
 Thu, 16 Jan 2020 01:06:51 -0800 (PST)
MIME-Version: 1.0
References: <20200109145333.12260-1-benjamin.gaignard@st.com>
 <20200109145333.12260-3-benjamin.gaignard@st.com>
In-Reply-To: <20200109145333.12260-3-benjamin.gaignard@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Jan 2020 10:06:40 +0100
Message-ID: <CACRpkdaK+kQZH_Txu-r4DY_m6muh26aCWcGOkxbi8hbCgww28A@mail.gmail.com>
Subject: Re: [PATCH 2/3] clocksource: Add Low Power STM32 timers driver
To: Benjamin Gaignard <benjamin.gaignard@st.com>,
 Baolin Wang <baolin.wang7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_010653_670033_3B1F06EE 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Pascal PAILLET-LME <p.paillet@st.com>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 9, 2020 at 3:54 PM Benjamin Gaignard
<benjamin.gaignard@st.com> wrote:

> Implement clock event driver using low power STM32 timers.
> Low power timers counter s running even in when CPU is in stop mode.
> It could be used as clock event broadcaster to wake up CPUs but not like
> a clocksource because each it rise an interrupt the counter restart from 0.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> Signed-off-by: Pascal Paillet <p.paillet@st.com>

Looks good to me:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

If you have a spare always-on timer (and it looks like you have) which
you can set as free-running, you could register it with
CLOCK_SOURCE_SUSPEND_NONSTOP so it
keeps the system clock ticking also during suspend as
alternative clock source.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
