Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 311F5E55ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 23:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P//j1npyMUgzs4pxUr/NO8uRptljCiGrybO5aHritnk=; b=DCSkPTZNk1j3vL
	B9I+KVc8r+mIzwUGDYenglokq9XmgmIfwbQ8oxtYj0uOPvc4GxcIDvW+F/CkoT7ptEKJzFKY4vMC0
	T7tdLwg0pLcKaHNqqGMG+bFT8SU27EHShX4g73MmqQDDKXmNjZAgqdBY5quYeeKERCsp5fgYF1USu
	oKf+HeeaFtvSPDRBu7alOnihZoKdGETPtuJPlm+CitP/t7phrUF4tY88t83VqOsUM64XwzzKB5Rxd
	rL4r4gG6Gc+VmNT5b5He94lBnek688B4U3GgkThD67rYVB5unrtKB5EUkzHe5kS9lun7abQewQT7l
	hCxkR9uX60ma/5ZdMY1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO7DW-0002QJ-E0; Fri, 25 Oct 2019 21:33:54 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO7DE-0002LO-33
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 21:33:40 +0000
Received: by mail-oi1-f195.google.com with SMTP id i185so2544965oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 14:33:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:content-language
 :user-agent;
 bh=YVOI5BksXqXVDYjh4ZHfhwaKBf7oo5QOi6Ea1fnvZZA=;
 b=Ydmk1BpFDrSGu8CndtxEGaST0QafEiaBUPLD6UnuvWBeHDoCLVZHExLCkaRyMZSMc1
 UIsXMp7pKD5yGnVf4pVG+g3XKCA8/OMQAbx6QiJ99mPpj9ZT6mbnPdKdmAFWgGo/q5v7
 1Efw0ig0IFJy8/E4Y2A/7qbL0C+oZ/AnZZDIwf18aflVLJKsWH3JPAHZVZ6NOAzur0Zs
 TWxnAS4dmP7inPzHFALkg6Nzw6G8T1BWcZDp6qNx+5cxeC5WtWXJmS4muEyXEbAM4/lZ
 mYGp2vZOJV+NWKa6ITFAlrnd+usxzsLCMLw87Wm08uQ+5IiLQkK2zAQ0HNz7iHJO9J/R
 APsw==
X-Gm-Message-State: APjAAAWWZHfS7PSTag8AdeMLOn/lcEMK5J+gosRHSVNjSCulXsDGSJou
 TlyhMlhcnhdtrw+iWGX7dw==
X-Google-Smtp-Source: APXvYqxYjwJxn6QbHvgIuZeN2Tf1vqbH+R6KZFoYsxBwWvCaHLGlk2Yy19NAAb3evbHiPlC//+mPmQ==
X-Received: by 2002:aca:c457:: with SMTP id u84mr4804204oif.35.1572039215372; 
 Fri, 25 Oct 2019 14:33:35 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t12sm1116390otq.61.2019.10.25.14.33.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 14:33:34 -0700 (PDT)
Date: Fri, 25 Oct 2019 16:33:34 -0500
From: Rob Herring <robh@kernel.org>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: sama5d4_wdt: add
 microchip,sam9x60-wdt compatible
Message-ID: <20191025213334.GA23280@bogus>
References: <1571648890-15140-1-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571648890-15140-1-git-send-email-eugen.hristev@microchip.com>
Content-Language: en-US
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_143336_163170_FEEFD54E 
X-CRM114-Status: GOOD (  10.66  )
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 Eugen.Hristev@microchip.com, wim@linux-watchdog.org, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 09:14:05 +0000, <Eugen.Hristev@microchip.com> wrote:
> 
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> The Atmel sama5d4_wdt needs to be compatible with microchip,sam9x60-wdt
> The sama5d4_wdt driver is updated to work with both hardware blocks
> (sama5d4/sama5d2 and sam9x60 based blocks)
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
