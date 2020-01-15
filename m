Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC52113CD7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 20:52:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZ0KJMCKPJVb70sm/nS98DeVaxNSR5a50d54fbTvgDc=; b=SFHhyYOqcZajO/
	YvaoCeq9bbF9wFY5F2l/nr2a0z1vgQGYdQLn6KKIw3uD3wiPGbyywt+mQrCMpMg+Wkodc63Lze1MW
	XVl4QoXh3aJT4VCghMO0FB74ino7P5o3ur9vcdoK1VRr49UVY/54MkG4wqRep1QcCYOMzoKae7UA5
	6UL+2A7yHDb4nL1SheRI6csxgc/IgV4XBZNbXGQstW9NJYTy2vY72V83EGXlonTbBeQ7RXOrwobms
	yZcW8Ob338phRTNFno3nNZEW50BjyycmfLSEvQG1lYY4gxR/jfB8oxZTlJiAQKk+DtdXJ/bNTi2nG
	BI0Pmo+8T3PE50FJ4pYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iroi9-0001i7-AI; Wed, 15 Jan 2020 19:52:17 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irohv-0001hI-0O
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 19:52:08 +0000
Received: by mail-ed1-f67.google.com with SMTP id i16so16683322edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 11:52:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aHd50RCmkVU/ZS/HxtfzC0g4zmJOst7WpqvtTeB8dwQ=;
 b=QeoKE9z42cmdtedH8UmkPBFxxyb810N9QrXptT3Vqmp+XlliFsfchuoGVRaPtcZU6Z
 0YmqYy5jspOgierEv+LfxFbZ+sgX/VC8BEvK4KJYVfnoY/zV/1UIz8QyzWeygIoN5mLd
 X2p0NhZhze4GIeF4pWFNKxAWaefy50Xxo46QNvqcMmOdx+m+9mGSB/AWJxbwstp0pvjZ
 +IUOsDFN2UYuRm6S92ZOBokJ/v8C9iQlYy3jWe6AOcs3NCTk/IiUGsjaBla7E9xja4rO
 F5ajrty8d0n18q7aZTA13U+qZyVM/r12ippn6T85FQIlGE4Vl7GThs/wwuGOL6SjZSdA
 9T8w==
X-Gm-Message-State: APjAAAVKCXU+UjiNFsoh3xBBwIKaZdmf9M6RI9WQIIu4eiCtrXAmZoTA
 M38M171bnHxbqBrJOrDfuBdv4T5X5Tw=
X-Google-Smtp-Source: APXvYqwe+/d6KcpGCa37Qjgf5sHzR3xo/URPMNvfsudTgB/tmaCyZ/Ctbk+unVAtHKq+h/sEPaRNag==
X-Received: by 2002:a05:6402:298:: with SMTP id
 l24mr32222230edv.70.1579117919881; 
 Wed, 15 Jan 2020 11:51:59 -0800 (PST)
Received: from kozik-lap ([194.230.155.229])
 by smtp.googlemail.com with ESMTPSA id j63sm756813edd.81.2020.01.15.11.51.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 Jan 2020 11:51:59 -0800 (PST)
Date: Wed, 15 Jan 2020 20:51:57 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH v2 1/4] i2c: pmcmsp: Use proper printk format for
 resource_size_t
Message-ID: <20200115195157.GA8661@kozik-lap>
References: <1578992765-1418-1-git-send-email-krzk@kernel.org>
 <20200115174553.GI1239@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115174553.GI1239@ninjato>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_115203_051089_C75180B7 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Jean Delvare <jdelvare@suse.de>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, linux-i2c@vger.kernel.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 06:45:53PM +0100, Wolfram Sang wrote:
> 
> > +			"Unable to get memory/io address region %pap\n",
> > +			&(res->start));
> 
> My first thought was "parens not needed"; not because I like being picky
> but because it doesn't look more readable to me.
> 
> checkpatch agrees:
> 
> CHECK: Unnecessary parentheses around res->start
> #30: FILE: drivers/i2c/busses/i2c-pmcmsp.c:278:
> +			&(res->start));

Indeed... let me send v3.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
