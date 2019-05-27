Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7431D2B996
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 19:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gjy3N9oaH7Sj9iBEMR0rxQrOj5hHk9/7pZS3gPywR54=; b=fhWfa4KuH0lIhO
	5NQbmou9/Wu41asmObHtmNmehbUEwsOo0xlSr8KV5ZRZ8ncibkj7Vl1aJZ+P2cTGYt73M+bX30zEB
	UIKvYXReho5BwbIkD3BwG9TekcldmdpzdLKlx1kpZRwjmvI2o9Z2RZQn1rYr2RnqROnJ7vrHN7AEH
	R9lE5t/QZ74uxdmSCzBTDMwMU9+TxMpj49i875d6/t/r2uxjmrBJARI2NcfTVmtM7Oyno89MY1GFp
	5znNu1G4qVt/vs0hsyjYI2nIYlQVDhhudGrx1VhV+JcCq3PbITX1a44kLNyZUqBajtx1A/ZcT0uAr
	DtqcaStBLRr9gY5crJzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVJo6-00036F-Az; Mon, 27 May 2019 17:53:10 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVJnx-00034t-Nv; Mon, 27 May 2019 17:53:02 +0000
Received: by mail-ot1-x344.google.com with SMTP id r10so15477859otd.4;
 Mon, 27 May 2019 10:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=odU0SgbTEI5GhdwYmf/8HQWqSSD3RqQBq6W2Heqhv/g=;
 b=bxE/eExN9DUllzlPqfF6gBqDQmqz6kf3hkDdqXF1OsTTBF6tFi/jlwB0B9y4Hc1xs5
 wDNnDO4c5ec1MjJTgFAHYbmeozBgLYwg+wOlWfNWDz7p7NJfcI8gkPfUmZhCr8O2ZnRc
 K4h6PoOPb+FOMjip8VMFMe6JOg9IHvqG+j9zFUpmemOfdlOheyrZgVb38w7ychsQ26Pn
 eAXTK35CW404qo4h4pSJDwRZVGOPcXT1juOyfKEAzTDcSxqT2YmvCxcuITKtDRAaViyz
 3PO0j0f4K4yYEgQtf/xfQs2N/j62Pr0SEMMG4M5cMkWC0rbkMZ0x5x50PANo7U04AoOW
 RsbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=odU0SgbTEI5GhdwYmf/8HQWqSSD3RqQBq6W2Heqhv/g=;
 b=hYdMVve8Yxa0hE8bKlVwZXq7Ob6I3AD4Iupq51s6ttxlzubcAsmwhGF5hFPMewQQKh
 tHIS/PtFjPSbCa9YFShYu8T/R0jKvxbG3jYS8BmCghevno4grH+M6nRijJh9MoHyIHWm
 8RtBOWAp3uAeY5TbIrwOAHAXFkT7SXcge4RrARTpuCxa7nHsyBr0IiWkWa2pMndM8ZYr
 RiHcukr4lrx3C6kLgXqusAQK+bF6XIVnPPNwNWjURS7BIpxPjbDde/5Qq/Gr6kg0jYVu
 P75cSpxGEAG39ljF/p/plMYKKHyeVJcR/+Z1m+tQI8Fr9TIDPtMywk0UDZvhpBzwlLO0
 qH0A==
X-Gm-Message-State: APjAAAUyZYy4rdy09CWEmLHJLhuFMg52a8tFf7vOdQvBCotEtQK5tAgz
 1ToeWBlfKT3ovfu2r0JMX4RiN5MZrMVQ0nooK9ggFh7k/qY=
X-Google-Smtp-Source: APXvYqzN00Cuv7RkZRm5zYVZtYYroc43LSaIjSU8KO/gl+bM0ccpLPNKsokyqH3WeTCV0u7HXvOhGtnnXYEw4k8FwJU=
X-Received: by 2002:a9d:32a6:: with SMTP id u35mr61251110otb.81.1558979580496; 
 Mon, 27 May 2019 10:53:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
 <20190525181133.4875-8-martin.blumenstingl@googlemail.com>
In-Reply-To: <20190525181133.4875-8-martin.blumenstingl@googlemail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 19:52:49 +0200
Message-ID: <CAFBinCAYaLd60ABFxEB28p4J7FO1PRaTZ+N6Ak1AnizAKGaxnw@mail.gmail.com>
Subject: Re: [PATCH 07/14] pwm: meson: add the meson_pwm_channel data to
 struct meson_pwm
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org, 
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_105301_810072_996FBF77 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 25, 2019 at 8:11 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
[...]
> @@ -509,18 +509,13 @@ static int meson_pwm_probe(struct platform_device *pdev)
>         meson->chip.dev = &pdev->dev;
>         meson->chip.ops = &meson_pwm_ops;
>         meson->chip.base = -1;
> -       meson->chip.npwm = 2;
> +       meson->chip.npwm = MESON_NUM_PWM;
I messed this up during rebase, the macro name is actually MESON_NUM_PWMS
I'll re-send a fix so these patches can be bisected cleanly (patch 8
fixes this typo accidentally)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
