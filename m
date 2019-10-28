Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7C7E7BDD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 22:58:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O0yE2iDGh55zWA6aYlxkbm7RltIsTmVojXBMxpwH/bY=; b=cieJP6rSKYJVzR
	GJwelQiokwQBu/eVQOME1O+wGD5UtaJC1VKj8Kw3rowPl5Mp/IFH8e33DpNaoYVJBjkdH37E2iP76
	dxiVtx1e3jH0IAY5VzjgofT2m5sKxFYP6DRxxbRgE1YfTG7HXOGSDL7FieHnDut0EftCOKzSEvuW9
	QIOi860JA4/0amlieclBAy/fP4U3Pkk2hBj4Dl4C1q9mQycpqFx79e2bdhlZuRLGyPosr5BRnK+FU
	M5CyI0p0CaxVANIkrPslNrfCxUBkPP4aQsyZzmmFcwg4yaJvvx0XacEEiHehtFCDTCTGX3gM1qSOv
	OrbrmrtSU3C/LXLD+WOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPD1Q-0003zi-Em; Mon, 28 Oct 2019 21:57:56 +0000
Received: from smtp09.smtpout.orange.fr ([80.12.242.131]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPD1F-0003yn-Pg
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 21:57:47 +0000
Received: from belgarion ([90.55.204.252]) by mwinf5d17 with ME
 id K9xj210025TFNlm039xje7; Mon, 28 Oct 2019 22:57:43 +0100
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Mon, 28 Oct 2019 22:57:43 +0100
X-ME-IP: 90.55.204.252
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 33/46] ARM: pxa: pcmcia: move smemc configuration back to
 arch
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-33-arnd@arndb.de>
X-URL: http://belgarath.falguerolles.org/
Date: Mon, 28 Oct 2019 22:57:43 +0100
In-Reply-To: <20191018154201.1276638-33-arnd@arndb.de> (Arnd Bergmann's
 message of "Fri, 18 Oct 2019 17:41:48 +0200")
Message-ID: <87d0egjzxk.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_145746_110415_6D4B6558 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.131 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.131 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Dominik Brodowski <linux@dominikbrodowski.net>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:

> Rather than poking at the smemc registers directly from the
> pcmcia/pxa2xx_base driver, move those bits into machine file
> to have a cleaner interface.
>
> Cc: Dominik Brodowski <linux@dominikbrodowski.net>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> -static int pxa2xx_pcmcia_set_mcxx(struct soc_pcmcia_socket *skt, unsigned int clk)
> +static int pxa2xx_pcmcia_set_timing(struct soc_pcmcia_socket *skt)
>  {
> +	unsigned long clk = clk_get_rate(skt->clk) / 1000;
>  	struct soc_pcmcia_timing timing;
>  	int sock = skt->nr;
>  
>  	soc_common_pcmcia_get_timing(skt, &timing);
>  
> -	pxa2xx_pcmcia_set_mcmem(sock, timing.mem, clk);
> -	pxa2xx_pcmcia_set_mcatt(sock, timing.attr, clk);
> -	pxa2xx_pcmcia_set_mcio(sock, timing.io, clk);
> +	pxa_smemc_set_pcmcia_timing(sock,
> +		pxa2xx_pcmcia_mcmem(sock, timing.mem, clk),
> +		pxa2xx_pcmcia_mcatt(sock, timing.attr, clk),
> +		pxa2xx_pcmcia_mcio(sock, timing.io, clk));
>  
>  	return 0;
>  }
>  
> -static int pxa2xx_pcmcia_set_timing(struct soc_pcmcia_socket *skt)
> -{
> -	unsigned long clk = clk_get_rate(skt->clk);
> -	return pxa2xx_pcmcia_set_mcxx(skt, clk / 10000);
That curious, because you divide here by 10^4, while in the old
pxa2xx_pcmcia_set_mcxx() that was 10^3 ... is that a fix I don't see ?

Cheers.

--
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
