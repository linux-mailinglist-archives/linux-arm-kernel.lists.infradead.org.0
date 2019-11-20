Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F36104305
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 19:10:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+7y92znBCYatIiQR3uJaWWdOtP9wNNiu0eFF2lp0ZU=; b=kTeKq9iZQFe6sN
	/q2NzELYxnsZn3oXC5MHxBsq630c09WJmL7/KLNb+fLUsK9kqG6FMxWotpFxOOyt1fPy0k+4XM/HT
	ygW0y7MlYpa90CuxNWOr+PhveiSYeQrG8r5xDoTIqbMEj3isyPVBlWKEe/rnVQ864nO12SjIaaK/C
	yO+DHQe+VKaH0E16knn50cR4bVIByIlY6z5c/YPNM4nCMbE1hOJTR3aerecM6wIrYO9I2j6ag5a5K
	K+dwh/WdKg+pvz+lIZK6zeIJjps2wJTUU5i8ZKOJ04fPXrIu4hJvBYcHsi+OQTPWW6Q97PEbQ985d
	E3McYe8aw1Zx3UaOqaOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUQh-0001XD-Gj; Wed, 20 Nov 2019 18:10:15 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUQP-0001WM-TV
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 18:09:59 +0000
Received: by mail-oi1-f195.google.com with SMTP id e9so603019oif.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 10:09:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YzyZQ4fEqLiui26PMcdzE5fiKafIuHsPZ+HchTRfUPQ=;
 b=VxISk4Haq57F37jagIvdG7MDdmrF20uepHZaOXRqrvxMetDxW1DWPJyQ6eM40h0isq
 CBV8L40j5EhAYuJH0nbHr9D+oi0OmuXq53epJHGHATC6Cc7d+FszUs40ATlnO2VRM6Bo
 tJaFoUDPAwxfgBHSgdku6rnzzZoQ4kOkUUHRrBlAYxxVeSDbwGivzoMgK+I/2EgJCagT
 yjUIklDs6n3CoMYMdxGPdHBgu12z+iXkp5R/88XNZ2QRNj23K4ZJf/1W9Og0ZMqYzZz7
 xXuckpSAV6p5a58qNXeapH5gkSibWu61kW2w6Qnek9791LVZ3kisH9csKIiuq9i7Y5I8
 mUpA==
X-Gm-Message-State: APjAAAVmCPyt4MTOiNRmQDHUpDL98/+4NB2UeLUKzPE/gGJhd4Xj9fyx
 ARd5kcZ8ForQFQq/wmVNSQ==
X-Google-Smtp-Source: APXvYqzaDfbYrfeEjWY541EKHP6pgAPEWL5ptEcD1hGCgK+Un3JISnVZs/7iXribLlYOAxWgCIgp5w==
X-Received: by 2002:aca:cfd8:: with SMTP id f207mr3990174oig.145.1574273397185; 
 Wed, 20 Nov 2019 10:09:57 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a10sm8305379otf.72.2019.11.20.10.09.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 10:09:56 -0800 (PST)
Date: Wed, 20 Nov 2019 12:09:55 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2] dt-bindings: mfd: Convert stm32 low power timers
 bindings to json-schema
Message-ID: <20191120180955.GA22823@bogus>
References: <20191118094842.20171-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118094842.20171-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_100957_954873_EC6EF7E7 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 alexandre.torgue@st.com, linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org,
 u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, thierry.reding@gmail.com,
 linux-arm-kernel@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 fabrice.gasnier@st.com, lee.jones@linaro.org,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 18 Nov 2019 10:48:42 +0100, Benjamin Gaignard wrote:
> Convert the STM32 low power timers binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> changes in version 2:
> - improve counter function description
> - set reg maximum to 2 instead of 3
> 
>  .../bindings/counter/stm32-lptimer-cnt.txt         |  29 -----
>  .../bindings/iio/timer/stm32-lptimer-trigger.txt   |  23 ----
>  .../devicetree/bindings/mfd/st,stm32-lptimer.yaml  | 120 +++++++++++++++++++++
>  .../devicetree/bindings/mfd/stm32-lptimer.txt      |  48 ---------
>  .../devicetree/bindings/pwm/pwm-stm32-lp.txt       |  30 ------
>  5 files changed, 120 insertions(+), 130 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/counter/stm32-lptimer-cnt.txt
>  delete mode 100644 Documentation/devicetree/bindings/iio/timer/stm32-lptimer-trigger.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mfd/stm32-lptimer.txt
>  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-stm32-lp.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
