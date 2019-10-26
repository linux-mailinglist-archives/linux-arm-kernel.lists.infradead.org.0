Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A22CE578D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 02:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uSZ0ZvMoKgir2doGZTpEQqe1QFX7LYIhu5TEpw1w5jg=; b=BE03vZEsgQ495q
	v2O1vwYq9ucWFA7WxQ+p6WAMIyCjmIHNi6/QeR5M9wAeInO0obj3cHuQFbRo6i3a53ymxF/ryUY5H
	n19wonse1NR/dndDMJTg9v/qYcIwrJm4yPuXJxylFMbl0wCfFxuhuCQOKhJCROOfceqUf0P7SCWVi
	Y+ur2+MAIL+MRYsTFKFpQS6FqJrQXqlcf54Alhli3H5zOWCSipSi7UBexSb0w3QNNPq2e2fffUH3x
	m8uU1GWIkTpevrrVh/oxjYSdUGLWmqiji0N6cLMFbojpIgRSUre1ysBRlC2MuabmfU4BDJBuStvBg
	Nbajl3U6DkliXEcb7yeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO9p0-0006lv-Nu; Sat, 26 Oct 2019 00:20:46 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO9ok-0006g1-VZ
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 00:20:32 +0000
Received: by mail-oi1-f193.google.com with SMTP id s71so2730571oih.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 17:20:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xFaVplPix3RECfmw0mP26wLx1h1GSiIqpWNBxTGaapo=;
 b=pG+ZohGKLgsf8jjG6eox0uFr91AI7Gpsa+rUukvWN05YJHCiIvLZVmvHZJLebrNz96
 ZyNJTdeHH2BCE2QuoAURq1CWIRoy2aDAjUxkW1ahAQFk0dFy2nY1HC27M2EWlimwq0HA
 yQIZwZ1NlOMsqj+T4GX4l17TebAb0nQiPihzEfbQQXDF2BfLICvXQuXStaPe1YK216BT
 fOCAAMogbtIZfoh7D48ra5d9hMxLm3mHOGiOSJH2T63TFzb36xYwgiQq/hO8xhiT8mgz
 6DvqP7GbaHGRMGYu24PS7qj9J9pxJ7Uc8xImBpFXbPI6SiYVBg4cin3+5Xx5Vsv8T36v
 WHJg==
X-Gm-Message-State: APjAAAX4g8Wm/iu1/uHJCw6X2H9aOXKFkqn4TT23aWM23oGn2YaD8hyi
 2+YHAidyKyPrulPCcJwkkA==
X-Google-Smtp-Source: APXvYqzpqk2Jv5TqpJClrIhi+vYwGvPQet1RBJ9Lrp4ewD+6Q8fdl9123Lp4ED+xjPhOJnmC5HuodQ==
X-Received: by 2002:aca:7543:: with SMTP id q64mr4340495oic.95.1572049230274; 
 Fri, 25 Oct 2019 17:20:30 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t12sm1250767otq.61.2019.10.25.17.20.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 17:20:29 -0700 (PDT)
Date: Fri, 25 Oct 2019 19:20:29 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 1/3] dt-bindings: pinctrl: sh-pfc: Document r8a77961
 support
Message-ID: <20191026002029.GA11965@bogus>
References: <20191023122955.12420-1-geert+renesas@glider.be>
 <20191023122955.12420-2-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023122955.12420-2-geert+renesas@glider.be>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_172031_024621_C9ED0181 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, linux-renesas-soc@vger.kernel.org,
 linux-gpio@vger.kernel.org, Eugeniu Rosca <erosca@de.adit-jv.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 23 Oct 2019 14:29:53 +0200, Geert Uytterhoeven wrote:
> Add DT binding documentation for the Pin Function Controller in the
> Renesas R-Car M3-W+ (R8A77961) SoC.
> 
> Update all references to R-Car M3-W from "r8a7796" to "r8a77960", to
> avoid confusion between R-Car M3-W (R8A77960) and M3-W+.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
> v2:
>   - Add Reviewed-by,
>   - Update R-Car M3-W references.
> ---
>  .../devicetree/bindings/pinctrl/renesas,pfc-pinctrl.txt        | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
