Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E85CCB7A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 18:50:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lEjb2eA8HIXaoDj3YAIfpYEjuTIDM7MLVdG3CKINndA=; b=q8RSgFmlLgUlCR
	JB9e5EA70Y+XDnobnI5YPX73eUid5TTCTe/zJgog3TM+FiBYguCuCuwryW4r4yzUtZu3QFxYIGP5T
	mNP5RuI8BQD38PQ1Zlx32Rk5Aulrw89KmTtvEdpqRwVxE5av5r0K3AQZbiyg/k4uXAqnMYUqoK8gz
	TFf1ScD2TZUt4usvlFFWCZgA4FiDEX3aPhSHUWttKM2oGN8r8ls9I5i6KJp5mh9b1Em8SBAqHUELD
	KrMrA4m2ZsrItC4gLDXeWWkV+xf84goVeajOE5l7vaeBPkKiQ54UYSIilQGGg7PlicZnNHIZImqAY
	J5X4/k9pHL3kqMUbYDRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGnG1-0002Wt-10; Sat, 05 Oct 2019 16:50:13 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGnFi-0002W6-DV
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 16:49:55 +0000
Received: by mail-lf1-x142.google.com with SMTP id q12so1592222lfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 09:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bFYXbByYhGEXfOvEgQ/Yv7O8maPlLwNPKG6/+oAaKb0=;
 b=F5Qjpvpi6G+ab+VeuCiBsb6tm18qqaMtmFRT4reLGjpmUHLQIKEy38RCdhiSjtQoYr
 gxUT6twp6LaP1bTlGnWGv4bQySjuigIwrgHhmPKCbxPGBjd7/LYxeuA+gBsCmRkysK3O
 pH/XMlhMcKe8iXOk/2VDpQk54SIR+ndpxUrBJzAe/NI5B0WdIBaj5ogYjdYehYK3cQ35
 Uz82JVR+RRWh/cH1+2hUTPNVyI31grf74MbU6CHnN01sEYQskDQY5F905me9Q1O4MIuO
 66UKqnl76X1MvlQ2KDltSwqSE5p2wZNmWRtT45rianVJwNaprLpXKDq9dfy+9WkxiBB0
 rISQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bFYXbByYhGEXfOvEgQ/Yv7O8maPlLwNPKG6/+oAaKb0=;
 b=MewPJGL3LTBgQpQNt5JUOrOd02/k84ECqPe0LmPlc6WzYs4WcUucaiw3wC4wK8dYgx
 uhgoxd68Fk83vLW7kzQ0bNqRMciPIpk740BgwDl9ojoY5GMLHHkhz1FOudJpo80FZeOX
 l3iBdIhe69nsc5tYnaNmsO9e8ZUk/7TL6xHw0tccZ6WbXLJ1DOpahRtej0gs3Ko5qtWz
 404Owf2J5p4CjV0s3ef6NhoACsKC94SaGL2eBz/rwVCQV2Yl3MlS1FM+C2MzH2k28CLZ
 sHZjKvMYGfxu6ITIV0h6PrQ5xOzUX6sAegJcH58OrAHafKaO3kpyi7jZvE2fPNMiU0ci
 JczA==
X-Gm-Message-State: APjAAAV/Fc/HlIm3yCbCecavXTOTnCq/7y5F1whmmFD7xya9uqUTSFox
 Ok6hBSCAMGFVaqfuKrYBVRoYXa9o1muFdXirJzSojw==
X-Google-Smtp-Source: APXvYqzWLIXea2bSktYcXAMWUxPBnRthWgHgKi9V9cmgUV7xXLZpltHmYaRhUSOORfu5uwvTkgz2I3T7Lp7NJCXeluc=
X-Received: by 2002:ac2:5c11:: with SMTP id r17mr12207816lfp.61.1570294190713; 
 Sat, 05 Oct 2019 09:49:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191004122923.22674-1-amelie.delaunay@st.com>
In-Reply-To: <20191004122923.22674-1-amelie.delaunay@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 5 Oct 2019 18:49:37 +0200
Message-ID: <CACRpkda6CyYCt-s-VkaK856Jt3TxQg+HVDz-5Ww9T9KNHHAjaQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] pinctrl: stmfx: add irq_request/release_resources
 callbacks
To: Amelie Delaunay <amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_094954_466994_24BE2814 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, Oct 4, 2019 at 2:29 PM Amelie Delaunay <amelie.delaunay@st.com> wrote:

> When an STMFX IO is used as interrupt through the interrupt-controller
> binding, the STMFX driver should configure this IO as input. Default
> value of STMFX IO direction is input, but if the IO is used as output
> before the interrupt use, it will not work without these callbacks.
>
> Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>

OK I see what you want to achieve.

> +static int stmfx_gpio_irq_request_resources(struct irq_data *data)
> +{
> +       struct gpio_chip *gpio_chip = irq_data_get_irq_chip_data(data);
> +       struct stmfx_pinctrl *pctl = gpiochip_get_data(gpio_chip);
> +       int ret;
> +
> +       ret = stmfx_gpio_direction_input(&pctl->gpio_chip, data->hwirq);
> +       if (ret)
> +               return ret;
> +
> +       ret = gpiochip_lock_as_irq(&pctl->gpio_chip, data->hwirq);
> +       if (ret) {
> +               dev_err(pctl->dev, "Unable to lock gpio %lu as IRQ: %d\n",
> +                       data->hwirq, ret);
> +               return ret;
> +       }
> +
> +       return 0;
> +}

Just call gpiochip_reqres_irq() instead of calling the lock etc
explicitly.

> +static void stmfx_gpio_irq_release_resources(struct irq_data *data)
> +{
> +       struct gpio_chip *gpio_chip = irq_data_get_irq_chip_data(data);
> +       struct stmfx_pinctrl *pctl = gpiochip_get_data(gpio_chip);
> +
> +       gpiochip_unlock_as_irq(&pctl->gpio_chip, data->hwirq);
> +}

Just call gpiochip_relres_irq()

But all this duplicated a lot of code from the core which is not so nice.

> @@ -678,6 +706,8 @@ static int stmfx_pinctrl_probe(struct platform_device *pdev)
>         pctl->irq_chip.irq_set_type = stmfx_pinctrl_irq_set_type;
>         pctl->irq_chip.irq_bus_lock = stmfx_pinctrl_irq_bus_lock;
>         pctl->irq_chip.irq_bus_sync_unlock = stmfx_pinctrl_irq_bus_sync_unlock;
> +       pctl->irq_chip.irq_request_resources = stmfx_gpio_irq_request_resources;
> +       pctl->irq_chip.irq_release_resources = stmfx_gpio_irq_release_resources;

What about just adding

pctl->irq_chip.irq_enable and do stmfx_gpio_direction_input()
in that callback instead? gpiolib will helpfully wrap it.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
