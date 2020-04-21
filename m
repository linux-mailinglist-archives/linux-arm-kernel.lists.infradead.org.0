Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B65D1B22FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 11:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGDBxDrpusMmHsRNDS3vku9ePU3GAJi7dRHzZIeXhug=; b=q9yzgY1T0ndqHk
	kbwR41LG+LsoTaTy5ULj/srelAE7qG8J9QiiAytRBzCN3Q4/i8dpk0RwnCGGiCijTbhnUN9oOIXpM
	QJPfbtP0mJZwxBoszaLcNxO12duDXUlbLu2loS6b+xpQ6IffVLQIYMosUk4NXkxM4UU02PMmx3gis
	o7XA+zMPI567cX+jp3L8r3igwvZuvDV2jbVqbq2QdW4ey6VWcKP6vWd8gR5mlRXhbMigoT2JSobw5
	Ey1+eAJKdcJkoHQo/bJZBTbLoiC4efZl7+Y60nZKEo4cy3m94LjtfBF5Ebw2iYGlRg1VYt1KgBZab
	1hRLDHThUWYXS4z0U2qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQpLx-0002Q5-AL; Tue, 21 Apr 2020 09:38:05 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQpLn-0002PF-1z
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 09:37:56 +0000
Received: by mail-ed1-f65.google.com with SMTP id j20so9764724edj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 02:37:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pUIbDFhJqr/9wTzVT1i+Z8HZyJJH5JjwfcGGQ9Cylwo=;
 b=jds2SCKab//LhRn7yzJpxheR90UsB/JowcArbQw3UuAUP/zxe/lC6VOPJYh85HtgUk
 gnMRpbLiWLPSxZt/gmMpeNShtsgYelFJdPGd+DRl8xHmQLwQgCQGj9EgY+RcgDYyJQp0
 EwJqr3AF39dZB+cb6IPAU+3DuIHsKZ701Qdt7QL8VpNtsYJcPvpRtYnusrFKqvqJ+6Le
 /LiLj1dTppd310TiblYV7GT6oD4E87bc1cmy5pv7Or5+jieUzHRQmlOUurwF6F8oy0+j
 aZl4/IAejeBJf7YakMx+YvHvGlMimGEzka/8X3AT0yGOIJYW3U0wpzIVJmX1mVmT9+Pp
 cJ8A==
X-Gm-Message-State: AGi0PubnCeuvo+spNI7IrPUiOW8r2DZ1yP3t2MYA6I4JNeZ3P3eKOHcM
 hzSo6lFgWOyjKGrH8oc5T5A=
X-Google-Smtp-Source: APiQypLey0EZfhN+xSWm9hifQNy4VwGD3CtpJ8LAoBR+n0J7QuYWrrulY3K53UdHJhYaiDQtDSTYug==
X-Received: by 2002:a05:6402:b03:: with SMTP id
 bm3mr17363469edb.299.1587461872371; 
 Tue, 21 Apr 2020 02:37:52 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id k33sm279519edc.18.2020.04.21.02.37.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 Apr 2020 02:37:51 -0700 (PDT)
Date: Tue, 21 Apr 2020 11:37:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] ARM: samsung: Use devm_platform_ioremap_resource() to
 simplify code
Message-ID: <20200421093749.GA30127@kozik-lap>
References: <20200419070607.15488-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419070607.15488-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_023755_098726_710BEF68 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, kgene@kernel.org,
 Shengju Zhang <zhangshengju@cmss.chinamobile.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 03:06:07PM +0800, Tang Bin wrote:
> Use devm_platform_ioremap_resource() instead of
> platform_get_resource()+ devm_ioremap_resource().
> 
> Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> ---
>  arch/arm/plat-samsung/adc.c | 4 +---

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
