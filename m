Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF885DE460
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 08:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NN3mEL7BQqN04q9Mnbj+91ssypaPpg1SmC6Cvf5Y/P8=; b=LwbH+xwW2SUq1q
	4A6XaGLghaGu7A1z4CS255KD/bNNg9U5kjW4p8fkbZAiROiC2SI/IQAibW3fXvw5fQuXfFWSfhThG
	SPdN9u7Ufn97r4AW4TODyhc1QkOEtvcRJ0EeB7KXt+sVabZ1VFmhwQh4AKbJqX6TunKvE7wB0N4El
	d+lRb14JrJx4cL1Jn0s3yB5BQ+lJzlWLvVoN4JdK7VjzukNfeO74wPfnWsyJa5xquKFrmrF60xrN6
	dYDJQFi9LiLKCpoGl1pT/A8SWB6ciOF1Ewho/vA/41Wv2VI5LFS3FpSGJYeDM6UeYDg3bK3bMd5Pf
	05q+Y+eKchLctD4jEdvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMQzH-0000s7-0w; Mon, 21 Oct 2019 06:16:15 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMQz3-0000qd-VU
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 06:16:03 +0000
Received: by mail-pg1-x543.google.com with SMTP id p12so7106311pgn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 23:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=z8AislL9bBizOL/3zmH/pFdDSRFzv2U9ezQYDPpf/uY=;
 b=eG9C2g2A4PaRfDjkuUYycqvHLpwFwwXFoIHPEJB4S4aqUilQqRiRg5/brU94N70PeD
 +XbbwDmqAiX+M0nZWiPdZ0r1qUm3xvVo2fsi3TL1IMD9cwuZdQeu1BhWWWD3vazDac0O
 z1Buvm/bypyjVu5q4P3no2LuGvFRpIYNywAetJM8+Gu75G5kIkeStD/j2p7kWv+r2ji8
 911oMY2QK9mqZi22+AJOBF/2NTC59N97cofnI1NMRIOMHtRMcTjpRrZRIzalyGpKHNhp
 Gzw/APURFJ/dMAvGQ7oXi5ITYR04qndf6BcxFQOZ1srgtVPMKwqf58nuZdyTkeaSD2O+
 FPyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=z8AislL9bBizOL/3zmH/pFdDSRFzv2U9ezQYDPpf/uY=;
 b=LaaTi52zmvXCWPH79OAT0FKfxULYHuZYdkMnHqps5GvOym2DoOpGiwwLDvhm19WIkW
 CT1HPKq/xzxMmzmZCljvcwStEUIm/QJLwyzu9HlukIUBT9998pKIHxZSrWzcdCMw1dtr
 4+n4KtPn8yP5AWewAP9aNMnTrQMgekC94t2Yqb5txOPRsYP8v8ub9mSt4UJumQ/Ix/wU
 +vHu5GpKkzpmDQFQXh9utYFYTBddw7AfdfclvdCMta+HwoHMzp+BJfIY9DURqhRH7FRk
 +JU6eN3vyan8g8VPBsIGxN+ssr4+obatZuYfWdTPnzObugo3SnGjUjLunxyGJvbnxQmC
 aGNg==
X-Gm-Message-State: APjAAAVnxwDHOBPPSH+V/oERz6Ips7TdW8CnmQWEgSu2IBVDsq9HREya
 r0kBlFCNCJfHOxaDxM/0etaQ
X-Google-Smtp-Source: APXvYqzq3YMDZBcNbZq7GPKnRRFgy2SO4k0a07WKf/88S3YXLlZv9fCcV5ut+NIOUDsG42YN1kRNVQ==
X-Received: by 2002:a63:ea48:: with SMTP id l8mr24258354pgk.160.1571638560579; 
 Sun, 20 Oct 2019 23:16:00 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:700f:8db6:2442:890f:ac37:8127])
 by smtp.gmail.com with ESMTPSA id a13sm16828601pfg.10.2019.10.20.23.15.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 20 Oct 2019 23:15:59 -0700 (PDT)
Date: Mon, 21 Oct 2019 11:45:51 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: gpio: Add devicetree binding for RDA
 Micro GPIO controller
Message-ID: <20191021061551.GA12001@Mani-XPS-13-9360>
References: <20191015173026.9962-1-manivannan.sadhasivam@linaro.org>
 <20191015173026.9962-2-manivannan.sadhasivam@linaro.org>
 <CACRpkdY3OC675EjZ4PYhYxnk1XWh4EO-a3JJBha2rdBttySUNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdY3OC675EjZ4PYhYxnk1XWh4EO-a3JJBha2rdBttySUNQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_231602_021772_FE4829DF 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-unisoc@lists.infradead.org, Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On Wed, Oct 16, 2019 at 02:27:44PM +0200, Linus Walleij wrote:
> On Tue, Oct 15, 2019 at 7:30 PM Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
> 
> > Add YAML devicetree binding for RDA Micro GPIO controller.
> >
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> First: this looks awesome to me,
> 
> Second: since this is kind of a first... could we move the standard GPIOchip
> YAML business into a generic gpiochip .yaml file?
> 
> We currently only have pl061-gpio.yaml and this would duplicate a lot
> of the stuff from that yaml file.
> 
> If you look at how
> display/panel/panel-common.yaml
> is used from say
> display/panel/ti,nspire.yaml
> 
> Could we do something similar and lift out all the generics from
> gpio-pl061.yaml to
> gpio-common.yaml
> and reference that also in the new binding?
> 
> If it seems hard, tell me and I can take a stab at it.
> 

Eventhough I really want to help you here, I'm running out of time
(and you know why). Let's consider merging this, and I'll come back at
it later.

Thanks,
Mani

> Yours,
> Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
