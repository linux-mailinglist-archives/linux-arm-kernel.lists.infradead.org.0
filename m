Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 285081704B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:46:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kR9sCS+yh/dARlwjTmVZO7tiKEyPRhzQx5C0FhIbKQU=; b=bmWVUMrbclokOi
	kExAPkq1OzLQRXyrdDSIgQutR3/ZjTHdp1imf8Rr6uA9MGy0OnAsPV6bIXGj0Q5N6r4f0q2czWVMo
	jHQh/iijSn2e7tOfCWt+KWDAG+xYcObedRKjKj2x4ubocdaGKIjRiD4vYt0LBCZv3y90BLhLkss/K
	LBiJ7j39ax9niJICdd/nBQ7ya2G6Q1SUtCoVG+3Be8Oh07chqIDNLcU5F1mZ8QAeuuTXxR52Kyb/P
	zbM0OIPnLd/28QRAItMMUdBJaRQihW+Ikhn5EMV9RqjTRmTLgGjvIaviu8idBr3g0fF/Dca196818
	z10ZNeFaTOMREVzQTlsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6zor-0006rp-49; Wed, 26 Feb 2020 16:45:57 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6zoe-0006rB-Iu
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 16:45:45 +0000
Received: by mail-ot1-f65.google.com with SMTP id 59so3516737otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 08:45:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+jpf9V7GJci9zFA7xE/ne4mBwHPRwJxrYPbYAK7KP8s=;
 b=QsMMxef1DgtzcP7fAWZ8fTjaaQL+scltsSJFp0TRCHaBYZGqnObxcvUIu5ptactZsc
 6YTjOCpuiI+Uk4PSj82BdGJ2qENeDy2vG/Dbnh/tM+AePzfyMAYYN6TGCaqxaD9lRAKH
 WYJAdJ4/mMH521YAK5kqYOOGXURGDGVUo0yDu4Mrn2+FlDnz3P0Vr3+QVYLA9QP3Xp6J
 nk6iQqTUFBZ10W2lqoVbv8TkmZmiIuiwrLSE4PBLsha0MrRx+tjRW9A2kJJma/8nT+km
 MWOtTyeR55Q67q94w3tFWM3RPcSpbYii/6fga1xUQT4JjYb/8jPt7eqXYytTO98K1U/I
 uMGA==
X-Gm-Message-State: APjAAAXb6N4GBqDCFLX23MC+ltD18oYf+sSj5lDzTwi4Rl2V6mwsp7ne
 5PYKkzxO94bnnA+TVQi9pQ==
X-Google-Smtp-Source: APXvYqyTEDvRxEo9nOKGqg12BjH4WR+4WGsY68JsuPWIkt4Xfv+GYGW8LItBxGawTREHNUpS0RlOhA==
X-Received: by 2002:a9d:7f11:: with SMTP id j17mr4120984otq.281.1582735543458; 
 Wed, 26 Feb 2020 08:45:43 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 60sm957984otu.45.2020.02.26.08.45.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 08:45:42 -0800 (PST)
Received: (nullmailer pid 15869 invoked by uid 1000);
 Wed, 26 Feb 2020 16:45:42 -0000
Date: Wed, 26 Feb 2020 10:45:42 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] dt-bindings: serial: Convert UniPhier UART to json-schema
Message-ID: <20200226164541.GA15714@bogus>
References: <20200221021137.19443-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221021137.19443-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_084544_624645_3EE34DB4 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-serial@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Feb 2020 11:11:36 +0900, Masahiro Yamada wrote:
> Convert the UniPhier UART binding to DT schema format.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  .../serial/socionext,uniphier-uart.yaml       | 46 +++++++++++++++++++
>  .../bindings/serial/uniphier-uart.txt         | 22 ---------
>  2 files changed, 46 insertions(+), 22 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/serial/socionext,uniphier-uart.yaml
>  delete mode 100644 Documentation/devicetree/bindings/serial/uniphier-uart.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
