Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC791237B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 22:37:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erZp3aOt6+OpzMQmZYpY48vKxUt6MczY1KwE1AXC3MA=; b=pzFiTAle15+Twx
	r1/Nm/2OP2siXZetznlpILJXUHye/rsz//9igJripRR/3VRrGhxD8icFc1cFZmlZP1csyM9s7Ugon
	mqN8OMBDlLhRhwmWupkA3Il1AfhZoDBSwjF+eKi8Y5XoftUKnh9tpmGW23E1WQbEFC6b+x+wgPK9A
	b4XOj6hxmZSbyJQ8fW1N7g4xIHQicarmKySH6qDLwtXuuT0mC6qCuVKvcKuEWdDCMaKA8aCWU6dS5
	WUH37wd6OEKe1Fyut5m+MJ2O2cZmITp44Ty2oflijyzXi1qQOQ0jFjoKMZ4hlOrdmo7mXzZu5YTgd
	M1uV71u5BO01ZOzu5HjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMISp-0000e4-NU; Thu, 02 May 2019 20:37:55 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMISi-0000dj-L7
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 20:37:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id e6so1590168pgc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 13:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lB3153gephrYxcmT3quKYHaWZwBf38K9on4i1nocN3I=;
 b=P/oDQ3iEA/WOc26RXS4X8SvBiZHJkrh3wOZtPeSx9JOaFTbHSzlx3Q4fA3Aqty4B+Z
 o8Nq5Ek5szN47A/z8rMtj8W2YG/qZ/TTNaDDgH8PNsNz8BvBnOl38+COU0QNhG1xipdK
 A1ryhanmxQqYgYhvezsfFmV8egmqmA2MVeMs/u/FNHgk3tze5GxfB1LXbd8mghd1DJnR
 hR/WTm2WxlhZ8Xo4wu/VLgJqYK/CSzomKQEq6FTVxoHJqDAINH5e8WpmpN9ZyE9LUaiy
 WsGV1DpnNlMrb+IpCsdtj3IsYIMYLIdlmWAQEi5ZwE5Y43w9dZzfWzl4rZ3X8IwyUQl8
 DpVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=lB3153gephrYxcmT3quKYHaWZwBf38K9on4i1nocN3I=;
 b=HqHUlI1GBLBY0wFrijTQ68zIwG3E9fk39NcEePBf6uf4VvUlv+OQYwNrxUu2ssFcqd
 2vnMdaaCnzRlPy2Dp3OXszeGzeJN2veHvXV2/R9+ZZUXE0/1UIMmpFLv/67EwBmsi0PK
 vjEhw0naGUM+ycmXgTSE4GXBezifZ9753k5uwjdP4rg5QB11ROSoWRsaPv1JdcH+SPep
 gyaghVtEkRlfttORi6wnO1veDrR5+iiZaRNbEJ0WESMFQi94EPgASPnSzBGsQ1KJmoVS
 JiwU0I2//R1z84z6KiroTOvhECg53m4lBLGAFDip/178GJeilEZg5Kthky+EMQMdC3rS
 cX/g==
X-Gm-Message-State: APjAAAXoIItcE2hGA5Yg3hJBAia0IUBbAvbuSi6FgnpoFqB1UF3sqhpb
 0iOFgQKJl8plggvlku0fiAs=
X-Google-Smtp-Source: APXvYqyilhmEsuIDyLQfBiy9K3iHNs3WdUCcQSY2UIJxnpVVDV+IilDatLb+uAr77L+IHncIvscboA==
X-Received: by 2002:a63:1d09:: with SMTP id d9mr6061374pgd.289.1556829468009; 
 Thu, 02 May 2019 13:37:48 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id e23sm31531pfi.159.2019.05.02.13.37.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 13:37:47 -0700 (PDT)
Date: Thu, 2 May 2019 13:37:46 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ludovic Barre <ludovic.Barre@st.com>
Subject: Re: [PATCH V2 0/3] watchdog: stm32: add dynamic prescaler support
Message-ID: <20190502203746.GB29063@roeck-us.net>
References: <1556806126-15890-1-git-send-email-ludovic.Barre@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556806126-15890-1-git-send-email-ludovic.Barre@st.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_133748_690161_2052EB4D 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 04:08:43PM +0200, Ludovic Barre wrote:
> From: Ludovic Barre <ludovic.barre@st.com>
> 
> This patch series updates stm32 watchdog driver on:
> -use devm_watchdog_register_device
> -Guenter's recommendation about return value:
> set_timeout return 0 on succes, -EINVAL for "parameter out of range"
> and -EIO for "could not write value to the watchdog".

No, sorry, that is not what I meant.

set_timeout() should set ->timeout either to the requested value
if equal to or larger than the maximum timeout supported by the
hardware, and to the actually selected timeout otherwise.

Guenter

> Set of reload and prescaler registers are stay in start function,
> because the stm32 watchdog must be enabled to write these registers.
> -adds dynamic prescaler support
> 
> Ludovic Barre (3):
>   watchdog: stm32: update to devm_watchdog_register_device
>   watchdog: stm32: update return values recommended by watchdog kernel
>     api
>   watchdog: stm32: add dynamic prescaler support
> 
>  drivers/watchdog/stm32_iwdg.c | 96 ++++++++++++++++++++++++-------------------
>  1 file changed, 54 insertions(+), 42 deletions(-)
> 
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
