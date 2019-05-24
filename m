Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED9229722
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 13:26:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLVA4hQjQQZamOxK1EXLWo/TDPS8GTQJ6PAwveMoMWw=; b=iYhanaCM07RLd9
	4duTFfHTrAc6booCKTQTixsqSN2bE+EBaCU63bWuYsJldYwX7XLy71NX4kpyMe+6TfdB8iNZXhJo+
	AVsc8MCT/tlybjmtyUp22LwZj8SWztwwBLQSC0esoRDFVVNy1kCUAcO0CQsO/Wi/gzS9KR/oPp3cR
	G24d2r/wBnfSLfrpXKGPBLIfIKs8B4y7RGiJCxaGFEMvdcI+j3eUHJXsUQPj8uJR/jeRUVnvRqJpk
	bktnsdRNQjGpAUpkRZfki1eIAZ1Hffczra8TnJz2MjTaDnG91xqgG2udOLARet8e3hO6SMMF4y0sa
	VF3fPSlju5AddZGMhfow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU8LN-0003Cx-GA; Fri, 24 May 2019 11:26:37 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU8LF-0003CD-TZ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 11:26:31 +0000
Received: by mail-qk1-x742.google.com with SMTP id b18so958401qkc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 04:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AQbzxXz1q7eupENIwZaibprKRQQ1QGdGQzKNp6w4Rig=;
 b=qno0DZOafF73RT0ZDcC5fDnleaIYN1r7Spg2AtrRPoNELpOm+eVBquKf6qMKWbrZll
 vML+ySumfkUfEYJsRHL24yaWH5pJ2yNZvk+QsCm9PHbbqB9FvVUNPlDWi7czSYwW62gh
 LZl2c3bZ6CtXghWBQfFf+LQJRDn3nM+w6HyXoPhLlkwZ26YXO2dC2zAUmr3wKfwVhcjz
 zJb7JHfyzcbGDJkHpUPYxU8vDenHtUxsi88gK56wAcnT1O7pEsALLubqM2Jv9hNu4Krf
 /OvG8Q/kHdAMj8+NFilB1sUaRV8xwnSu+MqeNgwFaIq7JTUC/dBUgN7YcA3F3ADeOT4k
 vaeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AQbzxXz1q7eupENIwZaibprKRQQ1QGdGQzKNp6w4Rig=;
 b=Qrqqnoev0waPQ/g86r1ijm0dbyichpM7YgCOpH+AsAzYQ9N6sDiXHBf58k3JzQN4Q/
 59/5+IcdM9zVFMAOq++VbKz2x/d6hrWhCEpElYGwswIsEa1OS5xEZuFNBPaeMKbsnlK1
 Y7nfXje9ZbZOxJwKtdudE2DIgVLQQH1rug8HWwlconxvt5FCulgNk6hk4hoiryItt2FM
 MN9dyurqJz6H0Xf0tDRH/922Uh4PkL9Aa6jUIt2CpE/K+ylbQOrCnemCtOWyQqKWws4N
 fls8feP9rRRMwvY3+0c+tUqy3fHXyF74MIc+DFA3Bszf0VFfnXSiB3hR2/DT3wbPX7p6
 hPyA==
X-Gm-Message-State: APjAAAUI6Iq9o4Zq8d6qg0PTn2KDWh+Lr7mNkfvN2OtmvoqQqSj8qX/u
 nrMdYgssXuy1O3rzCK0nzAFBFrJ/JDG1zMlI+qzaIx6i
X-Google-Smtp-Source: APXvYqwjkUQ0RLpOGJmq7DNe4leRPE5WFR5Q2/qSAXC1a4jjesdy4O9Mkrsk1p39MJVgfwXgFcwsHDCr+h35uS+jHwU=
X-Received: by 2002:a05:620a:1648:: with SMTP id
 c8mr73380286qko.186.1558697186148; 
 Fri, 24 May 2019 04:26:26 -0700 (PDT)
MIME-Version: 1.0
References: <1557474183-19719-1-git-send-email-alexandre.torgue@st.com>
In-Reply-To: <1557474183-19719-1-git-send-email-alexandre.torgue@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 24 May 2019 13:26:14 +0200
Message-ID: <CACRpkdZ4P=PSCu86p48nBPeVk-h5T0Ytc1CYV3XZGd4fLuJLGw@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: stm32: add lock mechanism for irqmux selection
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_042629_955894_80E566DB 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 9:43 AM Alexandre Torgue
<alexandre.torgue@st.com> wrote:

> GPIOs are split between several banks (A, B, ...) and each bank can have
> up to 16 lines. Those GPIOs could be used as interrupt lines thanks to
> exti lines. As there are only 16 exti lines, a mux is used to select which
> gpio line is connected to which exti line. Mapping is done as follow:
>
> -A0, B0, C0.. -->exti_line_0 (X0 selected by mux_0)
> -A1, B1, C1.. -->exti_line_1 (X1 selected by mux_1)
> ...
>
> This patch adds a protection to avoid overriding on mux_n for exti_line_n.
>
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

Patch applied, can't say I fully understand it but you know what
you're doing!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
