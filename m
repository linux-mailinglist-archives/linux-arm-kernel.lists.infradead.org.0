Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD2F120095
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:13:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5cX8vsUbxS0Sf1evupcJ35UK9BdawJ9uCW2/vcEWah0=; b=DB1Afu23az31yv+oTS/lbYGFLB
	QDmjI3Iy/xU61JpOnyCq95r/qdgCSWMm7qU03GXfp5H6v79czbxGwGeKzDcjKJGaoBqZTRDfo9oJk
	VU8qLfQCDMxeN4LGwIktmmJjvyEoFHJk2gzoShy6foPusi3sDN+N885BHYmV5xg5NqgyKvJ8mWnRd
	Gp8K2WaOwsU1CeUYMXo6YK9SftFsz0CepHFQaoGtlDfqJPoBGAsuE4Jo2khL6hgcsrPhWi9svC6Cj
	ANSXpXbwG+dvY0UunQ2SZIDHzeZmJzJif+LQS2ModbTIF3iB60hKxzCnAfUcX8edFDA7UQfVNY5XF
	VO0CzAbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmRk-0002zI-Ht; Mon, 16 Dec 2019 09:13:44 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmRb-0002xm-KZ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 09:13:37 +0000
Received: by mail-wm1-x341.google.com with SMTP id q9so5852166wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 01:13:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=hGz9qWdY8ZcUU5/VcrTyxse6NvOSG2JsP6RQHgyur6o=;
 b=WUP++UkkkRHAngukuNoFL6QdnnAcsECwDXGu5MQfgjJHODHN6xd2WMIiokGIBHeJeY
 Xtr1sfbZVaBjybPoIos7VuR8uYpG2CQ6mV7+A9FhXATLlJdFc21aKVjsQctJD3oOVJI+
 j0gaFHhyX0/J//241U49HhKK5tv0N7vfW8xW9nsL+FPYkfo7loQk7KaEkpgiFgXb26FY
 bbd35FmlBznv/3K5Dw4098MXk+dR5bhE1BZFGdprT0krRVjCR5XeI/758Sqgk5ZBKLBy
 DTlU59r2daKnL4q0/U9E4IeAjQIt7ZYunYv05taTdrauBJUWbfi0v5Pr3wcN7Phj0ZOw
 DreA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=hGz9qWdY8ZcUU5/VcrTyxse6NvOSG2JsP6RQHgyur6o=;
 b=lVX+rkytCXaFHrjO/e2X+92ZNg0HuCndAqaZGUL4wfzN0tabmp7mS8ym/SQJLw0JJp
 xO1g14KG3nYSJeJIMbRF9O+UcQpbOwrYY4o+deEcAYhvVpa5qYwRmkqGS3nddrPz7OIZ
 fRmMOcCVZWjl20VvgbsdZRXnt1ee1oMEK9AO0dWQenFZwrP+W2yabKK4dkmeA5S1RYHB
 kO52gHv+fSz6EKOhkx4+5ZCBxtXiPyP7WOVRGJOVsbZCZUq46jFiM9WbHTMBf7hQ9jI1
 /ZeeFRR60igXwNkOlx+gdVvqdnyNRL5jSBW+cn/WvSvBZPOIZcu+iK+K8vGltHHJQDdt
 KtqA==
X-Gm-Message-State: APjAAAXl0gcuZI2NbVyC950m6eONECEG+uU5qSDWShpv6Uo0sQqSMU1D
 YH5FeI+X7iXn9CSIOQJsVGWeoA==
X-Google-Smtp-Source: APXvYqy19YVm/1kSejmA9wVlq3iOrl0I2bxY+X47LQj5Bypu9SC2jPZAIHgTCn3wIgxj4Ti9RIfJaw==
X-Received: by 2002:a1c:4008:: with SMTP id n8mr27710908wma.121.1576487613009; 
 Mon, 16 Dec 2019 01:13:33 -0800 (PST)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id b10sm21088066wrt.90.2019.12.16.01.13.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 01:13:32 -0800 (PST)
References: <20191215210153.1449067-1-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Stephen Boyd <sboyd@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, narmstrong@baylibre.com
Subject: Re: [PATCH 0/1] clk: Meson8/8b/8m2: fix the mali clock flags
In-reply-to: <20191215210153.1449067-1-martin.blumenstingl@googlemail.com>
Date: Mon, 16 Dec 2019 10:13:31 +0100
Message-ID: <1jr214bpl0.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_011335_676536_B40E62DE 
X-CRM114-Status: GOOD (  21.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sun 15 Dec 2019 at 22:01, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> While playing with devfreq support for the lima driver I experienced
> sporadic (random) system lockups. It turned out that this was in
> certain cases when changing the mali clock.
>
> The Amlogic vendor GPU platform driver (which is responsible for
> changing the clock frequency) uses the following pattern when updating
> the mali clock rate:
> - at initialization: initialize the two mali_0 and mali_1 clock trees
>   with a default setting and enable both clocks
> - when changing the clock frequency:
> -- set HHI_MALI_CLK_CNTL[31] to temporarily use the mali_1 clock output
> -- update the mali_0 clock tree (set the mux, divider, etc.)
> -- clear HHI_MALI_CLK_CNTL[31] to temporarily use the mali_0 clock
                                      ^ no final setting then ? :P
>    output again
>
> With the common clock framework we can even do better:
> by setting CLK_SET_RATE_PARENT for the mali_0 and mali_1 output gates
                ^
From your patch, I guess you mean CLK_SET_RATE_GATE ?

> we can force the common clock framework to update the "inactive" clock
> and then switch to it's output.
>
> I only tested this patch for a limited time only (approx. 2 hours).
> So far I couldn't reproduce the sporadic system lockups with it.
> However, broader testing would be great so I would like this to be
> applied for -next.

CLK_SET_RATE_GATE guarantees that a clock cannot be updated while in
use. While it works at your advantage here, I'm not sure CCF guarantees
the assumption this implementation is based on. Some explanation below:

In your case, if it works as you expect when calling set_rate() on the
top clock, it goes as this:

- mali0 is use with rate X:
- => set_rate(mali_top, Y)
- mali0 is in use, cannot change, will round rate Y to X
- mali1 is not in use, can provide Y
- mali1 is determined to be the new best parent for mali top

So far so good.

- CCF pick the mali1 subtree
  *start updating the clock from the root to the leaf*

So the mali top mux, which choose between mali0 and mali1, will be
*updated last* which crucial to your use case.

I just wonder if this crucial part something CCF guarantee and you can
rely on it ... or if it might break in the future.

Stephen, any thoughts on this ?

PS: If CCF does guarantee "root-to-leaf" updates, I think this
implementation is a clever trick to solve this usual glitch free clock
update issue ... much more elegant that the notifier solution we have
been using so far.

>
>
> Martin Blumenstingl (1):
>   clk: meson: meson8b: make the CCF use the glitch-free "mali" mux
>
>  drivers/clk/meson/meson8b.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
