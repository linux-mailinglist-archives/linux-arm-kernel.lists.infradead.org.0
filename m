Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 660CC1C7AFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 22:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJ5A4BZONYQMb1w/AgYJHn+izwvXUB0TUKkncncpH7A=; b=lYO5+Gp+69+DN8
	Rz59jPytQOvzw82V0GcfZ4zC11oUlmankn43KnHkHEe1Y5SsjoWgGhgKPwKcha7EnRp2H+CfyzhnT
	kHgHzil+xBgdK9Oo5XxrYF/V7eyeLvw8GsvohDUJTcn1jv5o1M4Br9vRNnN9KbbMZmjImUFHiltAV
	CNiMFxZrIvFf6IaxhwXIaQLSibSVALoyZxl3HJ8hhqqKrUWxF41YMrJYLeg/bnSvmSfnpYqeIw+Sm
	rP6YB34lUv5UJ44JNLCB9842Qs6DC5G2vbfzSovL86GCiYwkQDcCgeSq1trqzZwOXwErYp8djFyUa
	ZFnmwb6tTycFrHboN1KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQPP-0003dt-Ih; Wed, 06 May 2020 20:12:47 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWQPF-0003cU-KW; Wed, 06 May 2020 20:12:38 +0000
Received: by mail-ot1-f65.google.com with SMTP id t3so2475010otp.3;
 Wed, 06 May 2020 13:12:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=e+vn9EFSA0UGxoYXwE1EVzF8LOPmMyHze30Po1rkro0=;
 b=Jyw7g8bCBr1zHQiWqTkpMulSUwTK04AbdfiviTgIZQH31wtaP1O0IJOHEDrfsAu8V2
 wwH+BBhgW59VeFSN6pOMvYOQ2BfoDaFaP6KsugjvV4750Sa+CQJCq7JyNfWNs++o4E+M
 6UKiDsAyqvNng6YD4U5kJGypC1ZJer66btDmw8rnrIZ+oFqjHaAjU5usQ1cWqfyGgWv7
 6t9wPXPtDpbISqPjuh181jn8b8BcuyXRf8fl3TWV9rq9jTo+KFIA0/agM+Y7Hfeb/W54
 L2GgvEE8mtg7XOj1DHagy0my5scwbNVcuwRPxDfnb4AgwtpJwLBwtTA/mzd4eiorCFol
 C7aA==
X-Gm-Message-State: AGi0PubAPxcGo4+PrNe6xkyS8WWaBTj/ynfXUDANrNgCg9mGkBWKQxoL
 f2pKia4ms3COwkqKJHxx2w==
X-Google-Smtp-Source: APiQypKFp1fXOaDvxKO48NzVwW+KRP+mYewDEAYdGEby8SRscKRUph/tJl+f9aaKBbZIMCVBbTTVqg==
X-Received: by 2002:a9d:12e3:: with SMTP id g90mr7344939otg.247.1588795956372; 
 Wed, 06 May 2020 13:12:36 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n9sm758855otl.76.2020.05.06.13.12.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 13:12:35 -0700 (PDT)
Received: (nullmailer pid 14836 invoked by uid 1000);
 Wed, 06 May 2020 20:12:34 -0000
Date: Wed, 6 May 2020 15:12:34 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [RFC 1/8] dt-bindings: mfd: add Khadas Microcontroller bindings
Message-ID: <20200506201234.GA14756@bogus>
References: <20200421080102.22796-1-narmstrong@baylibre.com>
 <20200421080102.22796-2-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421080102.22796-2-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_131237_674349_8BBFE304 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, jdelvare@suse.com,
 Neil Armstrong <narmstrong@baylibre.com>, art@khadas.com,
 linux-kernel@vger.kernel.org, srinivas.kandagatla@linaro.org,
 linux-arm-kernel@lists.infradead.org, nick@khadas.com,
 linux-amlogic@lists.infradead.org, lee.jones@linaro.org, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 10:00:55 +0200, Neil Armstrong wrote:
> This Microcontroller is present on the Khadas VIM1, VIM2, VIM3 and Edge
> boards.
> 
> It has multiple boot control features like password check, power-on
> options, power-off control and system FAN control on recent boards.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  .../devicetree/bindings/mfd/khadas,mcu.yaml   | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
