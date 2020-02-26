Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE001704C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:47:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7rGMS+D9ETW2zhYvjtCcjyKViwlKJs1rOf0xquPsnM=; b=ceYMvvYUsEv1DR
	WtsxSZw7hP4eM/uN2TA01nWsR7X/HtDVAUMjK9TKs1yZs205qT7XyeuDCznCgpyigEWZtU2QWiG4O
	xG+RBfQ6II+s/euY61ov5sis77KwfeTQb5sajwjK802EL5kCGULCxBRNNTpXWMBg0ieqyeEI8GTFx
	l4KF1nfIcwjxO2Pi5I+1BOMlZBo5M0pI74cXteap6f4c3DUnBtebRtOFCbC39F6yI1J0xC7btUEQG
	5cB2NLPDTbZ7ewrQk2ufKhnbknvBfSZkKKpm8oYppm4nFaA5ZnpTgOHhR6VfBm7QvFs5y4ocwK3VH
	Gd4oebb78sxjDpvx3Xsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6zq4-0007ig-GU; Wed, 26 Feb 2020 16:47:12 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6zpl-0007c3-El
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 16:46:54 +0000
Received: by mail-ot1-f65.google.com with SMTP id p8so1788oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 08:46:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bPkNgrD0XTEQh+3xIosJggjfUocBUIxTPyEHiivVmyY=;
 b=GTdIoZx+MbhSur+xCs3PrBFJ4JUrEm8SvjAI9oko5fBdW3NXJBzYSZ8BNZhPVrwEK6
 qUvwjg95G2sqWNf1Cm3Qn4maL5OrthvikVrugfUEGT+ua6OsZVtz1eUDNod8lwXemrQ2
 iAiJvi1pjdItNNLuHxj2wsUQ3h+ybQVh8glWdsfLRT7HrOc7ZjgEyIedmX6XckA1q9o9
 c4C9D410gGbLHmYob5vy+KPh+wFg/iQSlZ8Ych5B4dfjIe2L2SfYuTsgUfQnQ6ZYJSPM
 JoJf2wEkHk9ZaDyAsEYyhhF/1VtmsSlvC7QK+el9ITBwbYb62rJVdIS65V2kROxmEX7x
 ui7g==
X-Gm-Message-State: APjAAAWMjIsktqDGOJlamhBlLh9I99Lal/VIbRA/e4UAz4P/sM9VkDo8
 5z6tdDeYKAsa+4KRyXJfxw==
X-Google-Smtp-Source: APXvYqyOCcGsXxIhYjcUqRhhtA1NArKYIhwPJu9E5shGzCoArkou36oa+gAYqrwlQK0Yxez0Y7uH/w==
X-Received: by 2002:a05:6830:134c:: with SMTP id
 r12mr3794075otq.126.1582735612311; 
 Wed, 26 Feb 2020 08:46:52 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g5sm948027otp.10.2020.02.26.08.46.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 08:46:51 -0800 (PST)
Received: (nullmailer pid 17801 invoked by uid 1000);
 Wed, 26 Feb 2020 16:46:51 -0000
Date: Wed, 26 Feb 2020 10:46:51 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH 2/2] dt-bindings: i2c: Convert UniPhier FI2C controller
 to  json-schema
Message-ID: <20200226164651.GA17752@bogus>
References: <20200221025535.30311-1-yamada.masahiro@socionext.com>
 <20200221025535.30311-2-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221025535.30311-2-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_084653_501762_6221FD2C 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-i2c@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Feb 2020 11:55:34 +0900, Masahiro Yamada wrote:
> Convert the UniPhier FIFO-builtin I2C (a.k.a. FIFO) controller binding
> to DT schema format.
> 
> There are two types of I2C controllers used on the UniPhier platform.
> This is the new one with FIFO support, which is used on the Pro4 SoC
> or newer.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  .../bindings/i2c/i2c-uniphier-f.txt           | 25 ----------
>  .../bindings/i2c/socionext,uniphier-fi2c.yaml | 50 +++++++++++++++++++
>  2 files changed, 50 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-uniphier-f.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/socionext,uniphier-fi2c.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
