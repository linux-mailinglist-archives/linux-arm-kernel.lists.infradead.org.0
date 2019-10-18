Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3081DCE55
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5CCa5wkhbc3lsq+8Q7TGLPZf18cC+mHLOGwLaX5aWE=; b=EfC7RCku9KQsC+
	kEIaWlJfPTIoKEb+i5GZPfdcStcG+D3TqtDQ3iTd6i1pqpC0dpJ5TLKlnd1ywfCDsEl3iM2iRUItT
	+ZtCJ0XsepKBuK/xXBL3GcvTqMukMnmQgQltmawYUR3aHL7+PuRSyjZLMdhODp06J6LLSuc+eox9W
	irkiil/MVSmEWhhvsUYbZxS+PsXWU7//bOrU4SnSxejeTklvvSNoPfXpzYjfGJTU1B0dWDdAI1i2g
	y9lRF37ua1+D1UbFknhkrq6XIHhbjDTL/WiIe4sj2huxwtFvv1HDUh6juDNPc5zmrVyW9pG/VKVX0
	7aAPwNb+PuIrFpyd6YQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLXAI-0002rJ-FU; Fri, 18 Oct 2019 18:39:54 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLXA8-0002qI-7z
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:39:45 +0000
Received: by mail-pg1-x543.google.com with SMTP id r1so3810444pgj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 11:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NNlXxl/DrRRMXAZJXRt6LTbwngxwuuZui4B951pX1Wk=;
 b=X8BR9oW7d21Zevs2Srs2fuq3NnjuvCjuAzNFngBvN7cSgDtmTxCmiVyWvfN3uitpFu
 a6FUoeu29Ejrkdo/DsBjcYoKQ+invmgsOHeC16jTiurWhiAv0blf7bQetRYnIPnEAeyU
 Cb7eOLBPNuololZcbxiLqNaZwx+uOO6bhalw+aJNg2YEY8NGlZv390EPjHuLWYRlbEeW
 XRsXycQCseUyR4glJQdl9yrVX/htKTkVESi0wAKa8+OThZnaou/Y6l7qhPeRgqTRQb50
 fC92HjwOaiGiapgyCWfqulAJqCeMfEEJ2Q+OiUwu5DbKv2Q07ViF5XXzqsdphp4EMSgs
 LZNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NNlXxl/DrRRMXAZJXRt6LTbwngxwuuZui4B951pX1Wk=;
 b=j1ZZhAzZVziJNHz5lIEH+u1msVM5VY5EMBO5XykmtPdZz9lX9bupMUj6mz3ra9oiLh
 r93JCWq1lYW4mvu8ud5sCYB3B1C8OZhVP86eymRnP/QFDceqdMoJPxHhwJP+0YC9Vg+h
 3MqH43mVjriwEp8Y2JjLfJy3UHR5vs5H+ra0vTPdXw9r8jC+DBDMUGNTjhs8xTGC3OW0
 8cHigfmdwRMT4vlx2XEbgkSD1335HbXHLLCVKUw+3PnFZTWZ5m0EGt50DD4Q9rVnP98+
 yC9vNzZKMtxnQDj+w19is6I4Nt2x89xHhUx7NIu3xB1pW0YwchxUPCbdrj1AJaLKuhRH
 bQfA==
X-Gm-Message-State: APjAAAU25vbRmGytUCn+F9DEVE3od0DwwSVoW8VZstnm9orsc1CrxD+0
 YHZBRYqsnCn4D3nxIC/Sj/Y=
X-Google-Smtp-Source: APXvYqyEbZiaLs72fryFE2CLF+ABwj3lfjmQQm9VaNEuZFxiOVaqlo65cSjcLF+36HYyGG2zSnPrXg==
X-Received: by 2002:a62:e90d:: with SMTP id j13mr8390525pfh.86.1571423983449; 
 Fri, 18 Oct 2019 11:39:43 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id v9sm6874172pfe.109.2019.10.18.11.39.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 11:39:42 -0700 (PDT)
Date: Fri, 18 Oct 2019 11:39:40 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 25/46] ARM: pxa: mainstone-wm97xx: use gpio lookup table
Message-ID: <20191018183940.GM35946@dtor-ws>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-25-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018154201.1276638-25-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_113944_288465_DD5BF88F 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Marek Vasut <marek.vasut@gmail.com>,
 Daniel Mack <daniel@zonque.org>, linux-input@vger.kernel.org,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 05:41:40PM +0200, Arnd Bergmann wrote:
> This driver hardcodes gpio numbers without a header file.
> Use lookup tables instead.
> 
> Cc: Marek Vasut <marek.vasut@gmail.com>
> Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> Cc: linux-input@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>


Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Arnd, do you have these devices by chance? I had stached patches
converting wm97xx core to use threaded ISR and it would be great if
someone could test them...

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
