Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199BAEA8C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 02:27:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Ngs/Yiz1fx+DEaZnqeJP8WHHL90hwIbMsZv0Kz3rIQ=; b=XaoROTKC9RjaNH
	frKzbKVajAqgjR/sP3rq8tMYIWtJAFvrsaR/BNFBsiN6SDj+7hg1VKE11ZphauysjQEHyu1UemsaK
	YWjJ5PfLCZQXwJe1IEE/36r0UsiNBHUGXUI5ws6K9NDFtcvpmTH+im9Da82eWpUWXcdsQvN7lq9lI
	j08zwCLgud4Kzu+WkQ7IbWAsh6MQ/szBM2EF1irTDNltXKMv3IRVKxEWE497BZX7xVBH++Wui4DqP
	HAH9jFyIB2cMgIsmwdxC+ds6ZNcbl+smXUQbBdJacMvlqFdRN6oYwqNqD2/6P31LLRMeJxHvqIgfH
	1LALR7an6W2P9WCj0T9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPzF5-0000uo-2e; Thu, 31 Oct 2019 01:27:15 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPzEw-0000uQ-KV; Thu, 31 Oct 2019 01:27:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id k10so1495943pgm.5;
 Wed, 30 Oct 2019 18:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/xbLLTWwwR0cd5qQbRpTD2PP+wmSB7aXKTDZeJyUHcY=;
 b=hG/i0zjP4PIYhFBy9cjOQ+6FA5yvDVZTVwsRMIajyd3MWIPZ3T0uOJLuPyupkeskOu
 p4O7CK/20sK5+q9CvApRlPjlmDJPHRoeeJRRqBvIKsFlsCrn50Lu7mW0xapyTrgg7BtH
 LXafi0hTusVYmMZSxsrLU6nBtWCvO8pZmrcysBuy3SGK4glcRMGAPFSIYniDWCzl7Sik
 MOPhn7yFhwcd7jtrp7Fs0nCmXttm95KAlIIqTS6ossP+ZqZO5BOTXBdG80Uobdi4uShM
 0T4iRKxpc8Ed+ULYJ/X1Dg53tt6BQTcoO4bE4FrHOwUTmYF9QGdEpBR0wF24ZJeL0L27
 qufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/xbLLTWwwR0cd5qQbRpTD2PP+wmSB7aXKTDZeJyUHcY=;
 b=qXNgZFmhkP3LdcgNa/mxTc/FubcLPlyN1wAWOgk6ZAY2NStz2L5fO/1fCIhyPrZJaY
 CwlJD6mvpIH/e6KEUkMX/LB+l3mk0OKT9VBX78etwfWLPG68JN+ONWuoe5u091pW1idA
 SO/2OHYcEaMgQNmIVFfnqlYAFa8xzcByGDiKCa/SZcAepkeyC2dlj18XkDGZRWRQ175L
 gWo43F80MjpLB4EcxDZVFUd8gpyqHQKeIvF3b00Ox7lQkjy7ipxgdUtYiSF5BsyXFoUX
 7HFntPPKSlzIehW6+efUuTUEd+vcU7oQHZ0jKXv+gH/AfTOaWs4CkuFXSZ23+yESz/4r
 qD0w==
X-Gm-Message-State: APjAAAV+UDui9WNagTOJaXt1IS+12PW55WP99tFlGi09KtRulGSNnjVB
 89C4DAPuhMx1uqb8iYEN8M8=
X-Google-Smtp-Source: APXvYqxPeZ8N9bZyMSYjCKY94CTqtNjhdT7egzR2ZWKkCv1KRQ2Mfmvy5+dmaQz587G4EdWPOF72qA==
X-Received: by 2002:a63:200e:: with SMTP id g14mr2889289pgg.91.1572485225237; 
 Wed, 30 Oct 2019 18:27:05 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:200::1:e375])
 by smtp.gmail.com with ESMTPSA id n23sm1116451pff.137.2019.10.30.18.27.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 30 Oct 2019 18:27:04 -0700 (PDT)
Date: Wed, 30 Oct 2019 18:26:56 -0700
From: Tao Ren <rentao.bupt@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM: ASPEED: update default ARCH_NR_GPIO for ARCH_ASPEED
Message-ID: <20191031012655.GA5841@taoren-ubuntu-R90MNF91>
References: <20191028224909.1069-1-rentao.bupt@gmail.com>
 <CACRpkdbOPq4AYt9CLoganV_Ck9bYS9+_U3bggGKAukaQ=FHXkA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdbOPq4AYt9CLoganV_Ck9bYS9+_U3bggGKAukaQ=FHXkA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_182706_678135_77A63A27 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rentao.bupt[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Paul Burton <paulburton@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Joel Stanley <joel@jms.id.au>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, Tao Ren <taoren@fb.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 01:49:43AM +0100, Linus Walleij wrote:
> On Mon, Oct 28, 2019 at 11:49 PM <rentao.bupt@gmail.com> wrote:
> 
> > From: Tao Ren <rentao.bupt@gmail.com>
> >
> > Increase the max number of GPIOs from default 512 to 1024 for ASPEED
> > platforms, because Facebook Yamp (AST2500) BMC platform has total 594
> > GPIO pins (232 provided by ASPEED SoC, and 362 by I/O Expanders).
> >
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 
> Please send this patch to the ARM SoC and SoC maintainers:
> arm@kernel.org
> soc@kernel.org

Thanks Linus for the review. I will add ARM SoC and SoC maintaniers in
patch v2.

Somehow get_maintainer.pl doesn't list the 2 addresses in my tree; do I
need to send a patch to update MAINTAINERS accordingly?
 
> Yours,
> Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
