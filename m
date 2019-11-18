Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C102100A5F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 18:37:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y0kjw6ks/FOyRYOkuXFonfb4p+dtciw1QrRvJlW+iOE=; b=ohS7nFRoH6FBwg
	n4CwKbo2jy058nGRb36tZSczPrMdlqnMmfxJcyj4XYLBBD7dl7xk+dGoGIhUZHE1SubKSbKTy+aO6
	MDjRFDePdy1wrgLyNf+niaqY29mPI3jxmi0Z+vwloFaJ4A19qChO6jUtBc9expRmLNNBdy4/Kjls6
	AXahCholL/dqNSXr3BvnvxWkOqe0kprM+glPGmkWI+Dv0h1IN1FhSi+IQ7nXsUtSGW3mF66UTD9xE
	lTfEJ0zNTlpOnDju0XOv4PhY4+vESMZjoa/BIFutzYf/xB5xm2Q5yrdczRMnT9IR38kA3szYIv21n
	j2RUzWA/Aw7OKnPd8DUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWkxw-00068D-FU; Mon, 18 Nov 2019 17:37:32 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWkxl-00067N-Bq
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 17:37:22 +0000
Received: by mail-oi1-f195.google.com with SMTP id j7so16089568oib.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 09:37:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7HpWwOCq3UdIb5uimd0JWpieddKu80NlKxRl7WWt83U=;
 b=mVDTZXNzu80Zl8OV6e6CJuZOd8k9tkN41FoLWwvr8Ns4+jMFZxqp4VnOCPY+bw3VAX
 7P0rlnEJA3bVk7eYn5kvLILDI0fOJjlEqdobjrdAneFDefgM2rERAt3a3eWSoQbkTHin
 /TqN5SVmdS2fwgP3i8stu9IT+y/HqfW0ZMi5eUrXohM/06t+bd/hoVEXgpxzUS8sCEPq
 YqTnRcDO6ppyAGAclHxpR92KIhnRyU8HAvZYQgBlJ8Sefi5M6xQy0KdzDTpKoiFjgt8s
 wXKtLEDcTpt01kAC8lUEif48Lox4vrI6IXDwlhTLLT3JzQ/agJWPfPxjkSSueWcigcY9
 5B4A==
X-Gm-Message-State: APjAAAUjuWabm3xmaje65w7sQjEs0G0E/xDwUdXzf/e1x20LmHKdHFtY
 3GNTHkUZHVvsUdKule00RTdQyB8=
X-Google-Smtp-Source: APXvYqyM7rx557IcbgsK98dh+RZAHj+ExW+QfMyvmSTGA9rZh5JbIiE2mELex8cLotexulqUiN28Lw==
X-Received: by 2002:a05:6808:48:: with SMTP id v8mr83549oic.71.1574098639960; 
 Mon, 18 Nov 2019 09:37:19 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t10sm3696220otc.65.2019.11.18.09.37.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 09:37:19 -0800 (PST)
Date: Mon, 18 Nov 2019 11:37:18 -0600
From: Rob Herring <robh@kernel.org>
To: Benoit Parrot <bparrot@ti.com>
Subject: Re: [Patch v4 1/3] clk: ti: dra7: add vpe clkctrl data
Message-ID: <20191118173718.GA2603@bogus>
References: <20191112142657.22898-1-bparrot@ti.com>
 <20191112142657.22898-2-bparrot@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112142657.22898-2-bparrot@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_093721_403362_CD937ACC 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: Benoit Parrot <bparrot@ti.com>, devicetree@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 Nov 2019 08:26:55 -0600, Benoit Parrot wrote:
> Add clkctrl data for VPE.
> 
> Signed-off-by: Benoit Parrot <bparrot@ti.com>
> ---
>  drivers/clk/ti/clk-7xx.c         |  6 ++++++
>  include/dt-bindings/clock/dra7.h | 10 ++++++++++
>  2 files changed, 16 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
