Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25F779B15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 23:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNu3XcCMoLeuVnNpKPtKpNfcQcJCmMpXpLbhP5kwsZA=; b=X/3QbWQ5oZtPiP
	gXzsIZg+0Q/d65Uf7mtR3TcD+svgLTwrUtWQWPa7EBWlTYFxiRYOhZK36lUoH7FajYJaN6I9yi7+0
	Qtvw8kAYDsMeffWHLgW2D9tH2SFgk2s56Ji39p0HlKDuJf65DZxhI2DwlN5u3ftUflAQnpj5oejTj
	Jp9zF4D2EjRCufwyTfkj8QGcc+N3fRoZImtcjJp8SrRhFIIRZYhWAPoZYjKnF2XlMtbvxs+vf6ia+
	NRz3Dmrq6gJtBtIJJW06eBuDGL4aufFqtXHcw00RfXo4zHAqjDT3FWQDCm8hbjpRA02npm8oiM3uw
	dwjpWVVV5jhPmTZorFNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDE5-0004xc-8J; Mon, 29 Jul 2019 21:30:37 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDDq-0004xA-EB
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 21:30:23 +0000
Received: by mail-lj1-x241.google.com with SMTP id y17so35440663ljk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 14:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HKkIBvCgiYwjQhYFTYEAh/Mb6txeYN6WDDQ/uj2gFUI=;
 b=OVWD6wHlg/XSy1nOvWhd7RWa8UEN/Oef6ahYwW3GYqAbC3Jb8IYHyZz3Qv7guhv+ke
 ayQu1zm+nihPVb0TxklyfIsxxgs7QLFgrnETgq5hPDxJR+Xq3gHaM8a71PJDigK3Mzas
 KZtfwpERVnDnylTN3Kbty4zkw5EKnSCvzP0E8qgOSh9dABQwlX6tg1RvuR8Le0WyFLJy
 9MtK9kmmj3iapk/x10PWP9721MYBi2Zs1XcGoZH/gyCCpqaQAysmUGeep+ay3jjQDQow
 zm+h113ufbLccs2ZGo6v+zPMlUYQysd+GBvCM4N5JVd7lF/52GK8gDQYSQqHbQKVoasj
 SUPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HKkIBvCgiYwjQhYFTYEAh/Mb6txeYN6WDDQ/uj2gFUI=;
 b=Xi0Ah4MlPhH0EKbZ8KPg3Aw1CsQ/zpCUn0XTnl5kdLN8F0HZ1Yx1r/D8MreBXkFT3j
 2TNGzLZH317dHqxLPo823PFi6E43I4SUiJ+CaVCl+ZEUov9StWmGIXtRW2L/eYxanveq
 44fzrJtUbnq1yBSRmGqDsdQyuSvyDQyvw4ZFHYGGsD/H7MScJRHDqBNyoAm5P1qi+yty
 Tv99uwvJVST3+AkXXGwm54MryIPQu/k+NliJWI5/Zjeq6al65FrGEkNX5mhZVT4qkEgr
 kSo97+gMAwqQ5dgq9WKjDV00JeMeN35WjHLJBG0RYu6/kB1yuZC+Qoc6m7Y5Qji3Al18
 QiWw==
X-Gm-Message-State: APjAAAXUoRJf3Xr7kOihT3tWj5xCbcMLV2HeCi04FXgFooD4pDZ+6q0Z
 wcha51W4Jji3ARirL/wg3umI46xWNjyB9HmMcVke6w==
X-Google-Smtp-Source: APXvYqwUhL9uJMcJBMf5PD9Q2tJQYMHtg2CF0rvUKzbc9I7QW0dTFe+hQ+z0pJ0FnCmvAz8JSJ5iGwWObU6G3+Peq0E=
X-Received: by 2002:a2e:9048:: with SMTP id n8mr12436136ljg.37.1564435819389; 
 Mon, 29 Jul 2019 14:30:19 -0700 (PDT)
MIME-Version: 1.0
References: <503b2ae8-ead6-70cd-7b21-ce5f5166a23a@free.fr>
In-Reply-To: <503b2ae8-ead6-70cd-7b21-ce5f5166a23a@free.fr>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jul 2019 23:30:08 +0200
Message-ID: <CACRpkdYrrpfGwTVHLbOwOWVxReAnH4q-bf5hTz_xFoM63sJoKA@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl: msm8998: Squash TSIF pins together
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_143022_484305_694EA69D 
X-CRM114-Status: UNSURE (   8.97  )
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
Cc: DT <devicetree@vger.kernel.org>, Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 MSM <linux-arm-msm@vger.kernel.org>,
 =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 gpio <linux-gpio@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 4, 2019 at 10:57 AM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:

> TSIF is the Transport Stream Interface.
> First, rename tsif1 to tsif0, and tsif2 to tsif1.
> Then squash all 5 tsif0 pins into a single function.
> Same for tsif1.
>
> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> ---
> Changes from v1:
> - Reword commit message for clarity (hopefully)
> - Drop unrelated change in qcom,msm8998-pinctrl.txt
> - CC DT

Patch applied with the ACKs.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
