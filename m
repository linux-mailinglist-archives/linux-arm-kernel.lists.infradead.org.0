Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483AF10732A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 14:30:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZTTY1epIBGM51Zf7ArBCa9Jmn0/MRyj1qrxCmebwgU=; b=QpoBsJfYdk+AMh
	Q1YZm2XtcE207DrKuXGr9LaR+4ORThz2pqNUe7/yZU4s6OIW/9kvx+QdT7i39Ly0U+zk7RFQLU7gl
	E4SwzrSy2ezAPRkYCzfg78AZWyo/mSKuOkgRL9BxfOyGLb+MOhCJFurkYuhGNemMW5lZ5fkjLKJsX
	E9e5bfbG+4zhAi6HKlU28J4rU3lDTHWfYSN30MJ1amTVBTr3wf4gmWHSq1Xk9gP5v/yOd62P5b5DB
	ai4Qbxi5TYiSmEbKAuCOWy+K7q+LFvtcrK3YXMD7m1XOxUo0hI8ZyBRxg8JieO/fU2+P3yMxSFbIE
	r9BgdrFc4EIdmupCXZuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY90p-0008NI-EZ; Fri, 22 Nov 2019 13:30:15 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY90S-0008Mj-W3
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 13:29:54 +0000
Received: by mail-lj1-x241.google.com with SMTP id r7so7406926ljg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 05:29:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W+Zc7Z97fvvNYHZnL1c1JIxGRQj+2WpocWRa+cXonDE=;
 b=IDL7ob5nX7sNC8DySqXW3eLlpoXTzpVE6NPwX6QSGY0Zw60mX9pYqxDVlaPXAyKEwG
 69iCabqzuza5RvNull7xO5wQV9fWZAEGL36eSd+mtLC8C9dWRl9E5venP912P4VCzJCT
 17gi9A7QnWGqmTGjAjqzCjsUqFJwhvZCfT7Fx8N2Zw3wSgzefAJ4+CLMsCdwGPDjgEPf
 jtsXQgeayqTAzGIl15ujsKAqD3gPDjevVAc7YnpRWuXnZm0SpMMsp316u9g1ox9yAkFM
 079HvOm5xazduN5QVrea3FZLjpznvlXJfqxe6xH8OsCJCoC7JbyCmAr5kSG+UePwvzsp
 96pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W+Zc7Z97fvvNYHZnL1c1JIxGRQj+2WpocWRa+cXonDE=;
 b=HWbhopXvO39x454n47nYOA2/diKk9G5G/xzfgV1N5KJLkHBSitlW+fdz7aFT/tc4+8
 NYnQOkKxWtCUoXjRX3FHc87kvXLVYQj0HsWuvbdyHOBIX0KYEfFa6N39Rh/e5ZbqyJT5
 dCF/vcaYIOF8XxXgE30rRJ1FJqlD1vFa2DxSeruV78B/fJQdLioYJlJ6yfkBWDALUX8T
 Dl8XD/CRPQQYZLXsmmbGViaKFFvTQ++O8bCuz+S0qYdC+kp/tPtJ28RyWrLup0TcWity
 7mZYqxiJoMBbHJI19dBUB0speO/Xdq6cNNNQ7ULkPqLt+o0/VbaSQ/X8a3u183xdMisB
 IdzA==
X-Gm-Message-State: APjAAAX6m/iB+X1U/nGAl5fGpQK7l2N+Q4/EZsT0MANQLrdOpgXSHfF8
 cmaHPDABWoAV36RIJ2s4vOb7YJ7peq32OaPDsqGkpQ==
X-Google-Smtp-Source: APXvYqwmSSOtVmBtX/HzWWq55yxz03Q3CaAmSGcHqiRIokiCHZLjK6quI6vEVqsvu5R0BpiQvgrlF6raTPg3lPC0DXg=
X-Received: by 2002:a2e:5c46:: with SMTP id q67mr12014078ljb.42.1574429390771; 
 Fri, 22 Nov 2019 05:29:50 -0800 (PST)
MIME-Version: 1.0
References: <CACRpkdYhLoGdGQt_jzj5aFa-EY_kMimoVShi7QFLG3sZbC436w@mail.gmail.com>
 <563f2fdf0c32103d95a53fc1e7fd84c0@walle.cc>
In-Reply-To: <563f2fdf0c32103d95a53fc1e7fd84c0@walle.cc>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Nov 2019 14:29:39 +0100
Message-ID: <CACRpkdZWP0CSDGPjkUOTuEkDSvBpoW0tN3ia+B74s1dfFGNinw@mail.gmail.com>
Subject: Re: [PATCH v1] gpio : mpc8xxx : ls1088a/ls1028a edge detection mode
 bug fixs.
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_052953_049233_AAC48836 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 <devicetree@vger.kernel.org>, Hui Song <hui.song_1@nxp.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 2:08 PM Michael Walle <michael@walle.cc> wrote:

> >> From: Song Hui <hui.song_1@nxp.com>
> >>
> >> On these boards, the irq_set_type must point one valid function
> >> pointer
> >> that can correctly set both edge and falling edge.
> >>
> >> Signed-off-by: Song Hui <hui.song_1@nxp.com>
> >
> > Patch applied!
> >
> > Yours,
> > Linus Walleij
>
> mhh.. this bug should already be fixed in a better way with [1]:
>    gpio: mpc8xxx: Don't overwrite default irq_set_type callback

OK I drop this patch.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
