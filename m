Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3014F19D53E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 12:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uWnnJga4ONGnMNtmr96m0dhVi6gfcWKT2DNRM/yHXU=; b=Eurnodyy3RsSts
	ngFViUcH4bEulrwkH4zjZp089enphQjC2SDZp30mBSU0NiSJAHWV2X2z1hwERpKIXGL5Wz+15w8TD
	pv1F2+fFH8+MAZWBxdlP5XJUEETXvM5XYCETTltx5NPsdwY8m5kHtV1fKc1oFHYdQCr1hP4JbPd8e
	0SDLsoVFFPUrOZwrvzlWfCLxWKRqcTZq+jnV1kjswuUyRFUgxf8fPLWyAvePcgOb3UBcfDHNf3o62
	W1F6DIFeDmYGopUmgadAnafDO3jN7XMuVXn/QIMMLTC2ZtF7mNy22fxAIny75eywwiLtVFI/IosDg
	pJ2+PLv+oc7sNhLryuag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJrh-0005jw-FB; Fri, 03 Apr 2020 10:47:57 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKJrY-0005jJ-WA
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 10:47:51 +0000
Received: by mail-ed1-f65.google.com with SMTP id e5so8746001edq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 03:47:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/qsV5G+EWb+7XocHOBXyq0rD3eTdN0wEIFWjn6eqrw0=;
 b=a4+4gL0YdnSdEnuDKfJla2h4ObUAOP8J5uqPEuidRgtHIcQrymC6uRBzSwKPCNDqPX
 JdDuoPiF2wZbAJgxbBG4DOI7Ybdzm/zt3fI4/TyQeApVgL+ulWjkMHMUk4pXZT4q2aGr
 by9838NdCP6jibjRIbB8uZtjYku1t7VjtAwBe7yWTEDkb/A34J3erdNo4PxrEX10qCJ6
 kjaRarsohnezvXoymeLiVsL8fHhSIzTt6BlsvZR78/ngaXolhOoMKleueOD7VAdyaBDP
 2863jWWPcpkyjq9jYLIkUJlfja5bYxW5tZXETpDkUewho7uRZj7vvAODnmsicI22UPOw
 otHg==
X-Gm-Message-State: AGi0PuZEHyZXpvnqs4P7dT1l2gni/GVJzrEfiIMMIdG23ru2dgpv40Bm
 zM6l7y5ZwXqdPxaXPcVQn7FgH3Ni
X-Google-Smtp-Source: APiQypL5vPUUwU2gK8AJePkOzrdpT7tRJ1mK4h7pF9JSf1Aki52IK/rhR4C/SGne9w6Yo0UNm1UZHA==
X-Received: by 2002:a17:906:cc2:: with SMTP id
 l2mr7897646ejh.115.1585910866860; 
 Fri, 03 Apr 2020 03:47:46 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id gs12sm1565340ejb.86.2020.04.03.03.47.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 03:47:46 -0700 (PDT)
Date: Fri, 3 Apr 2020 12:47:44 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hyunki Koo <hyunki00.koo@samsung.com>
Subject: Re: [PATCH v3] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Message-ID: <20200403104744.GA29385@kozik-lap>
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200403102049epcas2p1d1fe95160b7f37609a8b1710c196cdd8@epcas2p1.samsung.com>
 <20200403102041.22015-1-hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403102041.22015-1-hyunki00.koo@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_034749_037033_4F02A443 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 07:20:41PM +0900, Hyunki Koo wrote:
> Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> 
> This is required for some newer SoCs.
> 
> Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> ---
> v3: change rd_regl to rd_reg in line 954 for backward compatibility.

I cannot find this change against v2.

> ---
> 
>  drivers/tty/serial/samsung_tty.c | 76 +++++++++++++++++++++++++++++++++-------
>  1 file changed, 64 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
> index 73f951d65b93..a674a80163ed 100644
> --- a/drivers/tty/serial/samsung_tty.c
> +++ b/drivers/tty/serial/samsung_tty.c
> @@ -154,12 +154,47 @@ struct s3c24xx_uart_port {
>  #define portaddrl(port, reg) \
>  	((unsigned long *)(unsigned long)((port)->membase + (reg)))
>  
> -#define rd_regb(port, reg) (readb_relaxed(portaddr(port, reg)))
> +static unsigned int rd_reg(struct uart_port *port, int reg)

You should return here u32 to be consistent with readl_relaxed.

> +{
> +	switch (port->iotype) {
> +	case UPIO_MEM:
> +		return readb_relaxed(portaddr(port, reg));
> +	case UPIO_MEM32:
> +		return readl_relaxed(portaddr(port, reg));
> +	default:
> +		return 0;
> +	}
> +	return 0;
> +}
> +
>  #define rd_regl(port, reg) (readl_relaxed(portaddr(port, reg)))
>  
> -#define wr_regb(port, reg, val) writeb_relaxed(val, portaddr(port, reg))
> +static void wr_reg(struct uart_port *port, int reg, int val)

val should be u32.

> +{
> +	switch (port->iotype) {
> +	case UPIO_MEM:
> +		writeb_relaxed(val, portaddr(port, reg));
> +		break;
> +	case UPIO_MEM32:
> +		writel_relaxed(val, portaddr(port, reg));
> +		break;
> +	}
> +}
> +
>  #define wr_regl(port, reg, val) writel_relaxed(val, portaddr(port, reg))
>  
> +static void write_buf(struct uart_port *port, int reg, int val)

buf is misleading, you do not write here any buffer. Maybe
"wr_reg_barrier()" or "wr_reg_order()"?

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
