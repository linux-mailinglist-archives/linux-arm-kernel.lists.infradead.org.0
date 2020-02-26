Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475BE170B62
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 23:20:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dr2JgU0eybNGlwksPOX0J31v1+F6fOGQiYAGrAFWb1A=; b=YLG2IFvRbHjK0O
	Mk+vdIxYblzI7lwB/XRXblKsTq5BE9TEjUfuJ9Lj8+/LBOX6FZHBu0myPqCFIqEVxDoeMjhwz7UEr
	1QJ9Oid/uivJCPldMmp21ETKbplZw0y44mwRzQARbIDq/DuL3a/dV0U1DBnZwsWTGO/3WvXNGNCN+
	YTL5vUZUYsx6Cj5xZMm0lJwEyoKfbhrWo+Miv8caV2XrRX/psr/3zmvQQyVqNC0kxeZoBOBWbqy9+
	HUFQrymja9S8wH3yAwAwoheKzqvHl2ih85PHjxeRuFKJusUZ5tZUhL4yYDIyB72JDRQF5ZwY7Ws5x
	3MT98mlTZnrSDBJK4Ahw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7524-0001p7-0M; Wed, 26 Feb 2020 22:19:56 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j751s-0001oI-P3
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 22:19:46 +0000
Received: by mail-ot1-f67.google.com with SMTP id r16so1042651otd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 14:19:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sWyxiAEzeSmcElmr0LNMnTgSazdAG9/ZOCElmokQbC0=;
 b=QrHS5uVXpkXQ51M3Vz1QTcYNexBxhtvbotSIMHXreSQaKloc3lTqoOe5VbJYcAD18n
 6iJ1qcRUQy38K9PztgZ0BsLpWvcBLgrsh8ZnxtF2MsmxbdISASDzRFp1mdjUvv1jH+HD
 jX5KY+D3lcW1V/ZbQNHXUG4nZUHy3onaxiyRWv6TJNtTxrKM2j55oKhuX22ZUhKtj13g
 YRB6kydkWgLcVZZsYC1Ud5EbOEQvByE6u4XJBnfmLcnJPIXMbsxHPQEWrszjKprP0ZYG
 nFVFtkMrjwPYeOFR/T7B+lRf2QByLoNksB5wWik/C5IsWPea11guUW/CXoH/gbFUkHX6
 sveQ==
X-Gm-Message-State: APjAAAXEjSHF3+mWTt4G7cbnzDnnAvn63tfRI8zkRfziwmeIPPPwS/11
 4dmJwBiuSWMFRXu/XoJNKA==
X-Google-Smtp-Source: APXvYqxcI1f7yAERZ6QtTzOxTYytk6rNbUmt2uL+TovzB/3tIvg04EuFZo6tZhS82ySexTPuu7HfIA==
X-Received: by 2002:a9d:4d96:: with SMTP id u22mr690140otk.271.1582755580501; 
 Wed, 26 Feb 2020 14:19:40 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h1sm1230129otm.34.2020.02.26.14.19.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 14:19:39 -0800 (PST)
Received: (nullmailer pid 3500 invoked by uid 1000);
 Wed, 26 Feb 2020 22:19:39 -0000
Date: Wed, 26 Feb 2020 16:19:39 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] dt-bindings: mmc: Convert UniPhier SD controller to
 json-schema
Message-ID: <20200226221939.GA3373@bogus>
References: <20200222112541.573-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222112541.573-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_141944_814722_F9EC2704 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Ulf Hansson <ulf.hansson@linaro.org>, masahiroy@kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 22 Feb 2020 20:25:41 +0900, Masahiro Yamada wrote:
> Convert the UniPhier SD controller binding to DT schema format.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
> If there is a better way to describe reset-names,
> please let me know.
> 
> 
>  .../bindings/mmc/socionext,uniphier-sd.yaml   | 99 +++++++++++++++++++
>  .../devicetree/bindings/mmc/uniphier-sd.txt   | 55 -----------
>  2 files changed, 99 insertions(+), 55 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mmc/socionext,uniphier-sd.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mmc/uniphier-sd.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
