Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0461A0733
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 08:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYQoTqn7C6iSaKQh3TWwYRVqVWpwRXhnk3NLNyCKO30=; b=QJamLweJBoPzJh
	4d5MXcOJZVyROqSQpXoGN/tOGs5MlMhvQiq2xX44ecHI/rATwd5ZgK2JlMOxoFoTDotD/969PJtFJ
	dKkXu+vug1pSvKcTfDRtYGy48lyBXiZJ6Fs9xWQd9Y6K4Kq1SXyIvCr2U/JJ3Bxmv/y23ogJhjrIz
	G7ELmWF6N1v+nWdOmiTyXX2QiioxmYy6vAc/XyI7QbAmmSxAwL56MJ1sL5n+F3h8WD2dn/C1fcPJJ
	qxqAohwvQqTEtRRn7XCjFABzAKXIyjPSGX4OFtnOwx6NC0fk7SRWnCHU/2UpoGFqhX7psQM7bAZ8Z
	XRj8Bcc6XhEDJCyyu+3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLhfI-0003x2-0C; Tue, 07 Apr 2020 06:24:52 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLhfA-0003wR-MH
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 06:24:45 +0000
Received: by mail-ed1-f66.google.com with SMTP id z65so2652512ede.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 23:24:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XMcoO/jmJQX0wn0jevzXywHIyf04521+JgmN8nTeS/A=;
 b=Qx2KCGVW9orEwUtM/rRGXPCgOtmfu4QOKSZd+9dfI6liAXnbooo3M0I21w4dBRM2A+
 7k0ti2E47nOJdwVmesQPpU6aKeS1KnVaV/K63Tjuc2pC0pzIJ55QIJhdq5MJzbdHc3f9
 09KlyYlufy0KjR4yUFz1giyKvIl8TI6KwTeM+QU9jzy5UfsOS2hp48KeRc+sP/sOuhe7
 qzGlHf86eegq4E0vECsilJeYSTR+S5XOrfVuob0pL5ISAFhUyYZnNbpb1ZGhW5mkl/qM
 tnbek+HT5Y7TDYFZ2kKNeVhlWV8nYhHJaCCtmq6lVLqx+vvsqlcJ7gnNcHsL3hplUcEy
 fqEA==
X-Gm-Message-State: AGi0PubmCucWCsj6uKxe8YENJMQ7mzhJanwSFjm/5NUi+Euas13JCn8Y
 +iqCpjjaei489K0I6hWCqHY=
X-Google-Smtp-Source: APiQypInt6ClyApEfxnhSeElIxNVGVy6nRZPT0xhcqJw0iu1DrDdSZA1qPzNvKgca/CJflqT0TIPMQ==
X-Received: by 2002:a50:e007:: with SMTP id e7mr585733edl.361.1586240682039;
 Mon, 06 Apr 2020 23:24:42 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id u6sm1243905ejb.68.2020.04.06.23.24.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Apr 2020 23:24:41 -0700 (PDT)
Date: Tue, 7 Apr 2020 08:24:39 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jiri Slaby <jslaby@suse.com>
Subject: Re: [PATCH v6 2/2] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Message-ID: <20200407062439.GA21995@kozik-lap>
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200406230902epcas2p19a8df6805dac59968d664efb9bc9419b@epcas2p1.samsung.com>
 <20200406230855.13772-1-hyunki00.koo@samsung.com>
 <62a918df-b3ba-21f4-b3ad-9f638ad104ad@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62a918df-b3ba-21f4-b3ad-9f638ad104ad@suse.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_232444_723900_C2EAEB23 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-serial@vger.kernel.org,
 Hyunki Koo <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 06:49:29AM +0200, Jiri Slaby wrote:
> On 07. 04. 20, 1:08, Hyunki Koo wrote:
> > Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> > 
> > This is required for some newer SoCs.
> > 
> > Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> ...
> > ---
> >  drivers/tty/serial/samsung_tty.c | 76 +++++++++++++++++++++++++++++++++-------
> >  1 file changed, 64 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
> > index 73f951d65b93..bdf1d4d12cb1 100644
> > --- a/drivers/tty/serial/samsung_tty.c
> > +++ b/drivers/tty/serial/samsung_tty.c
> > @@ -154,12 +154,47 @@ struct s3c24xx_uart_port {
> ...
> > -#define wr_regb(port, reg, val) writeb_relaxed(val, portaddr(port, reg))
> > +static void wr_reg(struct uart_port *port, u32 reg, u32 val)
> > +{
> > +	switch (port->iotype) {
> > +	case UPIO_MEM:
> > +		writeb_relaxed(val, portaddr(port, reg));
> > +		break;
> > +	case UPIO_MEM32:
> > +		writel_relaxed(val, portaddr(port, reg));
> > +		break;
> > +	}
> > +}
> > +
> >  #define wr_regl(port, reg, val) writel_relaxed(val, portaddr(port, reg))
> >  
> > +static void wr_reg_barrier(struct uart_port *port, u32 reg, u32 val)
> 
> You need to explain, why you need this _barrier variant now. This change
> should be done in a separate patch too.

There is no functional change in regard of barrier.  The ordered IO was
used there before.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
