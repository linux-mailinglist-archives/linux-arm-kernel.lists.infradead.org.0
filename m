Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDB31F674F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 13:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KF4aPgKoS/7rbMZjPRJPvUP6YkCyD+6TzK/j140rVM=; b=ZaUNqmVwmv1z0d
	M8OiUFDjrW0+hgH2B0apYJwps5Ows1/WTssGiagcIkbxXXW6q8Phi6OOtTWozxvzkluBRbepIXeRM
	2aGvukG+9sZppK5WCZtg+M+C829YF/jKIPswl4J8rB25HP1RI41ApibcgRvY+QQCUTHITEcjETP7d
	vOkJRH/RyQBXHPigpn3mhl/G7PIN2P0f5A24xcfX3fF8TZofeY0cguNhOphPrlLIyPFoLrbsCzEcj
	2vATTf99ea5ufANaIhHZNBIrfSnj9lQJnpNYPre0e9qjdsu12a5v+YsbRG/B6UV+kKVHTf6etiN+h
	6OyWUbzO0JcPcOlAwjfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLrG-0007h2-Sx; Thu, 11 Jun 2020 11:58:58 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLr7-0007fx-1B
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 11:58:50 +0000
Received: by mail-wm1-x344.google.com with SMTP id c71so4715513wmd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 04:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0sNtpOa/PhRGjuV1OKVRTYfWbvM8AAbQMK//m/+CB8Y=;
 b=aQl8hp7A/JrN44Foty0jhdQAQ6zaHhp4Ec9iQuIy+6hb35sfhd5Dvo9niTT1K9Fl6p
 a/mZjwflMmDp0dgwfFRSgPDbxYlAZPatZ503QI9Sp7YvqFpsu5rzm0yoePu4yaUrjpeG
 Luy+nejClJAIU6AXcKGO2QAjU9OpjnKXHlzqE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0sNtpOa/PhRGjuV1OKVRTYfWbvM8AAbQMK//m/+CB8Y=;
 b=tIXcxK1KIDqMeSHfwJ8d4OHA9+dewZZU99rCwVcNEDWKIn/zMQKmfdbBOjFiSSUW/y
 LNsjNHk12Tb0qzE28IjvNFZAen+x1T83Ql4JR4SmQ1dsDBeNcoJ+1dnBxeA7UQvmQe/m
 b21rYNbYRMhtTsLn6OOmz+eBvm0jMhluT6kc50VUY0h2nsymbNONFyRyljXk7KdnPgTK
 g7O3hq/rPRwhcD9Qi9f4Hv6EcFlMX/5xTkvHScPAOovmXX7y/JzuK9v8aExaYu8CE7nW
 F3i13SnL0juE/4ZnVsx7TqD/+gaLQ3uhQbPyVJwFTgS8Y1iYnQTeohI0wptxzaj5L4c2
 b50Q==
X-Gm-Message-State: AOAM532tWV1f9Di6por89ty9ijaowxrO7CJ8d7bAsZZVDNi8uMMzqK8V
 pA57kQxtLzOC1wH+sfk3pO7NyQ==
X-Google-Smtp-Source: ABdhPJxxNGG1UkzGbKGGCaHnsiTH3T0JzEHtu2+2GE7i0eEz7ONUOHuoIWjLjOOtSxat5/GTwMPb8A==
X-Received: by 2002:a1c:bc0a:: with SMTP id m10mr7673668wmf.173.1591876722467; 
 Thu, 11 Jun 2020 04:58:42 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id b14sm3768382wmj.47.2020.06.11.04.58.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 04:58:41 -0700 (PDT)
Date: Thu, 11 Jun 2020 11:58:40 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH RESEND v9 04/18] media: platform: Change the fixed device
 node number to unfixed value
Message-ID: <20200611115840.GA135826@chromium.org>
References: <20200604090553.10861-1-xia.jiang@mediatek.com>
 <20200604090553.10861-6-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604090553.10861-6-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_045849_067817_C5483F0B 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: drinkcat@chromium.org, devicetree@vger.kernel.org, mojahsu@chromium.org,
 srv_heupstream@mediatek.com, Rick Chang <rick.chang@mediatek.com>,
 senozhatsky@chromium.org, linux-kernel@vger.kernel.org,
 maoguang.meng@mediatek.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xia,

On Thu, Jun 04, 2020 at 05:05:39PM +0800, Xia Jiang wrote:
> The driver can be instantiated multiple times, e.g. for a decoder and
> an encoder. Moreover, other drivers could coexist on the same system.
> This makes the static video node number assignment pointless, so switch
> to automatic assignment instead.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v9: change the commit message
> ---
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
