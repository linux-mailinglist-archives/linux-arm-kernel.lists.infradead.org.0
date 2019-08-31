Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4857A44D2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 16:53:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=afBxpJg9M5T4QW5OoSlzUh5Ms4wIIAIgjA3Py7TfJ38=; b=j86BADwySuMOz9
	eDTGdiibieEEH18KOlkJooqyB/m4HPDyAVIpYVicZJZQEkepk0HdzNaGDMYsz5BkoWbRGwAPafVmL
	nn9O1Y9KqOQGxlDnX9ofUxrw45iwCQmFde8mmZVRE+8sPXdN+FITDErZzVkb45AlkvivJ1Kw0t5uj
	7fZ3JIMWhOp33bzLKQ+tDa7CcZBygXitZ5E5zLQW0uWID7gkcqPEeCkEXgbuJg901tSmzTIvFK073
	VMSawM5Vdw89Jb4p0aEdyNXBlzpzIyDlUSeRA6qFu5YUvtDg20csHbyV1o062BsNRMqRRg7GfFk+R
	BZTq7OWcjz2XX3uoQnPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i44kU-00082d-MJ; Sat, 31 Aug 2019 14:53:06 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i44kK-00082B-Td
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 14:52:58 +0000
Received: by mail-pf1-x442.google.com with SMTP id y9so6423836pfl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 31 Aug 2019 07:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9BDuDRjmF116OgtDaHNeOzO00s8uzxNdezpyBuRSAeQ=;
 b=kC6LfR9kBk1TZjb1CVjCLOPJJm+I4pY1IDqTkD2ktfZ9E6LJl3xMN5KYJdrLrjVZDH
 Zx6eEptthNTXQtoISm9+zgEkF/uDSn/GP8LXPZAfLjVtSvRiRPpEeIAaEtUqiy64UQ7J
 T7ortflVdD9g1ZRmTwvR1TDWIUokzUPmvrQ/8RbRGwG+vM82HogHrtycaXCYMMGusGjD
 M3Iy3Z79Q4ugJbkD1tmXDBFj2+D4woKp7DjCAR7ReyePDNQJGpzTzQ21vVB99wT76sau
 ebX5VH80r39qQGEXKM3i8SSudG+p42fpvLyvyZC5xO38X+ZfjDAiK2pSn6zQFydkWthv
 r1/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=9BDuDRjmF116OgtDaHNeOzO00s8uzxNdezpyBuRSAeQ=;
 b=pf1LIpSGM4wHFhxtu/A1z+dwoWEllwCQMwLCx9EhwrQNjm/h+6tf9oTwtba0BVa+3+
 9U2QX8yCNI2ZrBsyEejszFMxPLAHpWM5iOu4sTwWD3aoXMxZRIjOEpyRCpBqNwpFkgOs
 VykQV64BhJZw2X9MlsmdUyP2+6mEyWvoTLktc2Zcu8wy9Li4Ef7W3qcGx0tjGIsdHhYy
 QdxvbzxyLWGmvpUL7mR971OKXBgEOYiWoQa7jg5tmy4jy1RwmK6XJNAbDRHfovvg+TP0
 xNOdyb8pLxy2U7ut0vR+97J1947di5KjssCj1KSZcnilukBkMBvupYDPUoDRiu/O80dI
 3yYQ==
X-Gm-Message-State: APjAAAVGsq2UT+RSHZY8z6FLpmJ4nbYJ3xYHk2MTlCOVAXHmYQsue9Yk
 KM/S+xFhJWr14wdLp4jpOaE=
X-Google-Smtp-Source: APXvYqz8+XI6fkaN065GcPbaUGwdNg8Rs/XLz0t7x/vxuFhL+XJ63s6WVe7ccozksx2DwOh7IAdxKQ==
X-Received: by 2002:a65:4c4d:: with SMTP id l13mr17260595pgr.156.1567263175393; 
 Sat, 31 Aug 2019 07:52:55 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id e21sm10121157pfi.13.2019.08.31.07.52.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 31 Aug 2019 07:52:54 -0700 (PDT)
Date: Sat, 31 Aug 2019 07:52:53 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: Add ast2600 compatible
Message-ID: <20190831145252.GA6062@roeck-us.net>
References: <20190819051738.17370-1-joel@jms.id.au>
 <20190819051738.17370-2-joel@jms.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819051738.17370-2-joel@jms.id.au>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_075256_984341_E67C84A6 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 02:47:37PM +0930, Joel Stanley wrote:
> This adds a compatible for the ast2600, a new ASPEED SoC.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> v2:
>  - Add Andrew's r-b
> ---
>  Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> index c5077a1f5cb3..d78d4a8fb868 100644
> --- a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> +++ b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> @@ -4,6 +4,7 @@ Required properties:
>   - compatible: must be one of:
>  	- "aspeed,ast2400-wdt"
>  	- "aspeed,ast2500-wdt"
> +	- "aspeed,ast2600-wdt"
>  
>   - reg: physical base address of the controller and length of memory mapped
>     region

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
