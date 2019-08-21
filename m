Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 714FC985F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 22:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNbbNOFh4hXB0RLYFkKWTgzZNM95H9rDNvm9m9HHgpI=; b=HfXi15Wmw354v5
	IgD47kxDCvXF2wHbq7AxgM0Idbu16mW1e5Z09Rm2mCTyO3QHBsdQBPYx4NM9RbX23Qm9D8GqMYz69
	Xl/hdlmht8k9kjVuFhVacbP7zd/I/Y8jnvyMHcuxLN6EHuSp5/W+eR9wOqkKim5c+tM595Tr7C9Ch
	khKc+ukTcA2Y4MdYZmJDlxUK9tMCn6uX4P9gXzkvo5VKDMvEuV7neUH6sXGkiZ4ruVGWE/CtWqfAD
	WOqPsFC7W/PV87kf7gC4oJPbBhl51E5qdOy1MGsgSdS1+5d0CMvd66l3nXoHZn/9+Ght1sszH65b8
	uJzqfg5oM82nyFjxf2Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Xcl-000462-1J; Wed, 21 Aug 2019 20:54:31 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0XcE-0003bs-VJ
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 20:54:00 +0000
Received: by mail-oi1-f194.google.com with SMTP id n1so2698463oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 13:53:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iN2Cyapy/c+udG8GVjOneUf6PsDSAtIb74EbQ1qpId0=;
 b=eNSRhsytrKdBfKvAkLcShISw4sx7zdGJGMfxnGfO4mT9Fq+PZh6Muyw+MI8LkVuNSQ
 CFnOIui+mwHJiY6Xxduj2Yc2X7nH5dVgpGcU4dfz0+fDmWBMJOwkyKJOD6HlSn4pvLer
 P0vRlH9RapjR4kXAIBmsDrUCuW3QcoJO0rQ1pS7MwBVfQNLprT5QHC59BYAfPXXjG25G
 C8pWSRgMfTutBYeSnnW+Pjr0NkaPISfiZGQiRi+xUNs1q7BSrUkgpWgSN0TYMe5PdLHG
 wfdUA6Bam+Rk3EQfl8RbroQ+32C47rYOcXm2/31cyYledfgeneKDKV4qFIsSxPcz+wBU
 OThg==
X-Gm-Message-State: APjAAAVoEDvJxXHikHY4udjQ+2ZHj0x+lJAfrqg42n1fInjr2b0rjMbB
 1uywbZ/gIVQMRJ7k+dWHUw==
X-Google-Smtp-Source: APXvYqyF7OdLJMF4z4ZxUcRUJPQqxFX+w2EQg50WBPyrjB+YPmYit8gOvuo6+I7+ymbPoLac9h5cgA==
X-Received: by 2002:aca:f256:: with SMTP id q83mr1290528oih.99.1566420837625; 
 Wed, 21 Aug 2019 13:53:57 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p2sm7799009otl.59.2019.08.21.13.53.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 13:53:57 -0700 (PDT)
Date: Wed, 21 Aug 2019 15:53:56 -0500
From: Rob Herring <robh@kernel.org>
To: Hui Song <hui.song_1@nxp.com>
Subject: Re: [PATCH v1 1/3] gpio: mpc8xxx: add ls1088a platform gpio node DT
 binding description
Message-ID: <20190821205356.GA14637@bogus>
References: <20190808101628.36782-1-hui.song_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808101628.36782-1-hui.song_1@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_135359_017436_A9E76354 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Song Hui <hui.song_1@nxp.com>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  8 Aug 2019 18:16:26 +0800, Hui Song wrote:
> From: Song Hui <hui.song_1@nxp.com>
> 
> ls1088a and ls1028a platform share common gpio node.
> 
> Signed-off-by: Song Hui <hui.song_1@nxp.com>
> ---
>  Documentation/devicetree/bindings/gpio/gpio-mpc8xxx.txt | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
