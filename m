Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B68D7D6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vUKNOItFV/UYvFCBp1WqgHsj9kvdYJ3B6R/2edwS44A=; b=sz6vuuo2YeqxRd
	GWj8NRLhMZysZEZ4EBe1VeE2qEINbn6EQsMNteYqVwkQ8KkSnhmD0Pi0UAPb11FTwGAKHXZVuxwcj
	eFjYXhQO4Byfth/E4xBqsdq6kKiSjsWGpI+21isw1EXAH3Ujola0x9/+FW2gM1zGcy//8t3ZfdcBe
	wxtN7pBH0geIvGJF0Xb50PV45fS2xU+iY1Zn693AsTv8zjdIPN20z8y9/O7B7Qipp5I2bRmCEoUyg
	RGK62jWbKC9z2XBKjWsjiSbxN3r6Br4iQ6V9LJFUkJr8zkyTYsOmCNaRXqPSQJ9VEVhLEXAUy3Sfd
	taKoBbCZTq6BiMVZgWmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQWE-0000PX-MC; Tue, 15 Oct 2019 17:21:58 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQW6-0000Ow-6O
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:21:51 +0000
Received: by mail-oi1-f195.google.com with SMTP id a15so17535427oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:21:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wMQYKbyhFA0J53uXBrOY3g9qc7SUK0PL+5SCKX00VUU=;
 b=tDaV2mbqGd9h0d0Q7D3MlTsk74SgLemeaLGvGM2cJXEco3oA0nyJveUXkIO5Q1IMh/
 1MgoyQSdmCxNW4Ou9h4GCW//p1RqUYTCwJdCCIsSXggJQadNtpaijT47U5VlEW1Z6DJa
 fJ5W9py65sIECWzKjXMrOINk9kya046783ZwcWlU7nznpM29v8yHqCY5BdtkDz7Zl5ga
 f4qy/WZxynH2klDqOl1OAXQkuXIsIQk1nbjF+Q26dVtMnU3ECRDI0sePxfvEMJo4tXKC
 j+oqAsF8T+ETE/cxmvHZUy4ZaqL48PwdJlI/XemoXfX2pEj8vQ952LI9iSDn7Z0KxVao
 4Iww==
X-Gm-Message-State: APjAAAXnpbFIpqKAYho2w1vYy84UEw2mcgGSIJmsZ3Hwg7E12zH+7XuR
 WvvlWUaRZjwfG47Va1qR/A==
X-Google-Smtp-Source: APXvYqzqnTfEgidDenSlUfa7aOPOWYsLH7H0GHitbZ8rXyoGFRnAK2iUj2pxxTyIJqKthdjAV1LKQQ==
X-Received: by 2002:aca:dec4:: with SMTP id v187mr30817920oig.46.1571160108888; 
 Tue, 15 Oct 2019 10:21:48 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d95sm7245526otb.25.2019.10.15.10.21.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:21:47 -0700 (PDT)
Date: Tue, 15 Oct 2019 12:21:47 -0500
From: Rob Herring <robh@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: stm32: Add missing STM32 boards
Message-ID: <20191015172147.GA29624@bogus>
References: <20191007134410.10337-1-alexandre.torgue@st.com>
 <20191007134410.10337-2-alexandre.torgue@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007134410.10337-2-alexandre.torgue@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_102150_238046_5C6B6E56 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019 15:44:08 +0200, Alexandre Torgue wrote:
> This commit documents missing STM32 boards:
> 
> -STM32MCU: F429 disco/eval, F469-disco, F746 disco/eval, F769 disco,
> H743 disco/eval.
> 
> -STM32MPU: MP157 dk1/dk2/ed1/ev1.
> 
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
