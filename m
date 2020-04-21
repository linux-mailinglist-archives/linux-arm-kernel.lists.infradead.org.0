Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 997961B22FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 11:38:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZVy2pIxP7H+9LUu58VyWx1TlEaK+nAaQ1T1kjd93vs=; b=grWLlOmgDlO2OY
	ktZ+TQzZSM+0cq/2V/bXjYA7Q2rLUrqiMlHUprzCjN4qpBpVJQfgK+4rBUjKymspWSzPT/liuQU1U
	D/erQfY1j1EQ3zgau7tgpvZImkSDp4cyGDUIob7sy+PRjip08lrgRNgqE0SuZqF8u1waTuc3Swcyc
	uuLXeu7SwxAGAhRJ6atD3t53naePRIjqvUo03M7P2+fY5UbQvRTfQztvyEMStRkPmqMnVjqcmHES7
	RYD2ebLz7TvL6xnGhyQ1Rhhq0zj+kQXpn/C3D7O3PuA2Lqy1RlJk1Fknl7ujVTMXXjW3duqF/34q+
	LjbEzk+Blf1yv+SzkQYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQpMG-0002ez-NX; Tue, 21 Apr 2020 09:38:24 +0000
Received: from mail-ej1-f65.google.com ([209.85.218.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQpM7-0002e6-LG
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 09:38:17 +0000
Received: by mail-ej1-f65.google.com with SMTP id n4so10475684ejs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 02:38:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hGBcI73VU2JONip5DkkM7BykwieGTB1otFveN1pvYmE=;
 b=g0AmwYW8JoctuhAQc1yFdj2t1/8fJbBWLU84zUr90iMqabIGmXDCo38i9OUDmFR8QH
 O/3iBHwYHdF4IdmlC9wWm+3z58UD11+NnTvVAFLfGYN5OhdHWCYBkQu5gu0dZPzchlyF
 hjtqEWFtrFjbdp5CewzjS3LB80CKm0QWW6wtJE4myHt4wty+u0niCRje7ZuGP/oMTyr0
 V/cIjwEz+vRlbsWsdSshi3I/qEEEf387dEy+U5Clm91d7jk7LuNbZJBZ/GvYy55Lojmz
 4GDxyIY5AfBXQD1YsOAph7Dht/f4rE53d7qsurJew44qwDD/3vQaEcskRGc9JBeHmC17
 1V/g==
X-Gm-Message-State: AGi0Pualklgj+Lz4q8CXE9AUGYIauU5nF0GFDwl+gCYvNVs4eNG0UNDz
 ZAu/r+3Tm1k8m+19hn5PA3E=
X-Google-Smtp-Source: APiQypIvWtysc4ninhQola2RZmSLC9gKOAScPv8GH1q630D+x/ENlDK5A4qXDOXskHD8rD8D2axIVw==
X-Received: by 2002:a17:906:14c:: with SMTP id
 12mr20545531ejh.125.1587461894089; 
 Tue, 21 Apr 2020 02:38:14 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id sb17sm414298ejb.75.2020.04.21.02.38.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 Apr 2020 02:38:13 -0700 (PDT)
Date: Tue, 21 Apr 2020 11:38:10 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] ARM: samsung: Omit superfluous error message in
 s3c_adc_probe()
Message-ID: <20200421093810.GB30127@kozik-lap>
References: <20200419070541.14820-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419070541.14820-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_023815_693054_FC6C1ADB 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.65 listed in list.dnswl.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?209.85.218.65>]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Sun, Apr 19, 2020 at 03:05:41PM +0800, Tang Bin wrote:
> In the function s3c_adc_probe(), when get irq failed,
> the function platform_get_irq() logs an error message,
> so remove redundant message here.
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
