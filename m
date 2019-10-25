Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43817E5608
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 23:38:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhfXXDX0EXOqL3NgDRpIQL/vdrJE7AQTaccZNDhlnIw=; b=QcO/yH/v+XKMUS
	ptWxPZkbtSTzrq5qwQ40+zn/DI9ZsNtefws2umYpWDHxbvv0NAlXrj32C37Jze+dREROr4cs3ARVv
	32sjaj+mEy9PGIhzfbWJXnsepWAsXu/qvc4IvMfkQQKOLDSmXIfFmnj4afH7yLXQ8GW3yt7zzms2J
	PCNWoP1w99ZQ9IBpLFTUTAYkrWnBKcefLO13+/R+LxRSLC0l2sDrKayk8epkyCUkwMsSCOvNHDTBA
	u2P28VW+0TSdQEuVW0r65+HjfsWWnZqUvYvhDYQyWMQlPT48EvkpXA1w9f4hlotDH6JyioL85XKmp
	bMb3kiX+rUVDsK0jAZAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO7IA-0004o4-0g; Fri, 25 Oct 2019 21:38:42 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO7Hy-0004nc-KH
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 21:38:31 +0000
Received: by mail-oi1-f195.google.com with SMTP id o205so2535524oib.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 14:38:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AJg4z4K6dKxVgKfiKrGLtK6h9eZ9S7nIhf+xHWhd+KI=;
 b=pssB5na7VHEwS0oh3PJkub9me+Glny7nT0G9LgH0CLs7kzVdgFQ/KqJKzaPTG6Uxu/
 31xgNBGBBGlJuMReZge6r4/bT1BTuMTicQzsynVSWL3FzmftuQwxULgBs5BOHC3wkg2u
 91/e5U6C79Q044sZyd+IU7H2etEzV+zJkZ7F2axWwa8PUTbwY+txfEhkCKVwc4zQzzz7
 +lbqyRbpuVd2cKHMz5YQZMaJU4LhqAOtxOha5n5Ij7YYtg+EYRbQ1XkWwCr+GvvdEnFX
 vhgm+XfYxsFZlqOKl46LgxqGUNuRzxWxMPwbd3/5n1erWPm8TAPdEv46JO1TC1iu4WVb
 u3BA==
X-Gm-Message-State: APjAAAVnkr72ti0BNBqEKdUwsJNrFnKyH6L+RfXYQRI6XkZoH4dvSi0f
 zaJJBypaHICqLLw8QGM3Mg==
X-Google-Smtp-Source: APXvYqyKKYeDsz6d6MNdmrfb3ZN68gpOWy77zXJ2XZq2BotysCtHUYhMQnG5QT0oNOeKsX0d+R1ZrQ==
X-Received: by 2002:aca:5691:: with SMTP id k139mr4909601oib.54.1572039509694; 
 Fri, 25 Oct 2019 14:38:29 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k24sm894477oic.29.2019.10.25.14.38.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 14:38:29 -0700 (PDT)
Date: Fri, 25 Oct 2019 16:38:28 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: pinctrl: Convert Allwinner Pin
 Controller to a schema
Message-ID: <20191025213828.GA30637@bogus>
References: <20191022160806.42971-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022160806.42971-1-mripard@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_143830_666547_6BEF6F94 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-gpio@vger.kernel.org,
 linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 22 Oct 2019 18:08:06 +0200, Maxime Ripard wrote:
> The Allwinner SoCs have a pin controller supported in Linux, with a
> matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> 
> ---
> 
> Changes from v1:
>   - Add a description for the interrupts
>   - Put limits on the number of input-debounce items
>   - Remove the vcc-p.-supply type
>   - Fix the supplies description
> ---
>  .../pinctrl/allwinner,sun4i-a10-pinctrl.yaml  | 243 ++++++++++++++++++
>  .../pinctrl/allwinner,sunxi-pinctrl.txt       | 164 ------------
>  2 files changed, 243 insertions(+), 164 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/allwinner,sun4i-a10-pinctrl.yaml
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/allwinner,sunxi-pinctrl.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
