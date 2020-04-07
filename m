Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA541A082F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 09:22:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KO/I3OBk2SIXwj6OVqHL8VSh6b6dUNBp0QY2zzOjRNM=; b=T+JX/Fa1xSOUYF
	ZSotI7NfFohL0hB70oJ9h5kfEJD+lYlT8oop+P+eJMZNAXXX7j3kQMUYlKBMtTefjxcyTUQrqkg3M
	XdBSM6ApHCJa++xIQB9yhkZkJ6O3T/osEMmTPHR/LXOJCDLV5lpg10le7xGyZaFQipTE/MOnQC4Da
	EBejBF2Ie+N67DCt4zyuFMSkPu6U+LRGWFwo1buA8DRwWZ8g386HNtJ+G3rpYz8dRU/+p86AGE8gL
	8ZVOmEZu87ee12Ru16pOVz+YkmFCjhXvX6uRcwMk3OqPBk+Htvqt7piD1Tn+Oxu5IMY/ehN7F73uG
	YZzQDEdIW/IKLVfRLbWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLiZE-00008g-8Y; Tue, 07 Apr 2020 07:22:40 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLiZ0-00007J-Lk
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 07:22:32 +0000
Received: by mail-ed1-f65.google.com with SMTP id i16so2726508edy.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 00:22:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2R+3gjNy0SnBLUw5qWy9RI2DQvlFhSy+vrS7w50bWE4=;
 b=kLxd1J9GyE9leJIuOcBzsFZ8QouJnVXzd6QW1V/Q/4uKoiyPCRpb2KzQ/Q67YxpTB0
 jFckIi2US0e33cTe6QeesEl6WeZP5rTUsa21BcQDtK0TTQHyItBExtGoQwycoWpFMnxZ
 IOucBjcUSST+pJTmxKetXsU+jBeOT1Ap+HXjyLQBq8lcD3Ngi+FD67Wi/N80X3i6U4cK
 7NdVROAbed5whYDgIbH09nD16uRwLt6PrXN/Dx9bFT2J4m/m/r/x9FQaL9UwIPamBVY/
 uLVR4HRIzv/gNIhGnCxE1jbc9DSNJxt8Z2Zf7KgbUkdQ8WryvJlThitfZjeMnHdDgXKf
 neCA==
X-Gm-Message-State: AGi0PuajC5meuPvi3I5DHF0OvLlzB90Rn4xhFrakeGROx/balMz8alaH
 yBqmxgc6FlkzkU20rTB6wdM=
X-Google-Smtp-Source: APiQypIAGwgfjaRfHihsJeJ737ZyX6DGCobU8BkZcdk7Gc5hUQmvmBkfIOK6sewJ+lnv4/IXbMKBwg==
X-Received: by 2002:a50:9b58:: with SMTP id a24mr759017edj.353.1586244144485; 
 Tue, 07 Apr 2020 00:22:24 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id qu11sm230130ejb.12.2020.04.07.00.22.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Apr 2020 00:22:23 -0700 (PDT)
Date: Tue, 7 Apr 2020 09:22:21 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jiri Slaby <jslaby@suse.cz>
Subject: Re: [PATCH v6 2/2] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Message-ID: <20200407072221.GA18236@kozik-lap>
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200406230902epcas2p19a8df6805dac59968d664efb9bc9419b@epcas2p1.samsung.com>
 <20200406230855.13772-1-hyunki00.koo@samsung.com>
 <62a918df-b3ba-21f4-b3ad-9f638ad104ad@suse.com>
 <20200407062439.GA21995@kozik-lap>
 <257f278b-ce96-4cfb-85ff-53e123a076f5@suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <257f278b-ce96-4cfb-85ff-53e123a076f5@suse.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_002230_449712_9E0DB7FC 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-serial@vger.kernel.org,
 Hyunki Koo <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 08:32:56AM +0200, Jiri Slaby wrote:
> On 07. 04. 20, 8:24, Krzysztof Kozlowski wrote:
> > On Tue, Apr 07, 2020 at 06:49:29AM +0200, Jiri Slaby wrote:
> >> On 07. 04. 20, 1:08, Hyunki Koo wrote:
> >>> Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> >>>
> >>> This is required for some newer SoCs.
> >>>
> >>> Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> >> ...
> >>> ---
> >>>  drivers/tty/serial/samsung_tty.c | 76 +++++++++++++++++++++++++++++++++-------
> >>>  1 file changed, 64 insertions(+), 12 deletions(-)
> >>>
> >>> diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
> >>> index 73f951d65b93..bdf1d4d12cb1 100644
> >>> --- a/drivers/tty/serial/samsung_tty.c
> >>> +++ b/drivers/tty/serial/samsung_tty.c
> >>> @@ -154,12 +154,47 @@ struct s3c24xx_uart_port {
> >> ...
> >>> -#define wr_regb(port, reg, val) writeb_relaxed(val, portaddr(port, reg))
> >>> +static void wr_reg(struct uart_port *port, u32 reg, u32 val)
> >>> +{
> >>> +	switch (port->iotype) {
> >>> +	case UPIO_MEM:
> >>> +		writeb_relaxed(val, portaddr(port, reg));
> >>> +		break;
> >>> +	case UPIO_MEM32:
> >>> +		writel_relaxed(val, portaddr(port, reg));
> >>> +		break;
> >>> +	}
> >>> +}
> >>> +
> >>>  #define wr_regl(port, reg, val) writel_relaxed(val, portaddr(port, reg))
> >>>  
> >>> +static void wr_reg_barrier(struct uart_port *port, u32 reg, u32 val)
> >>
> >> You need to explain, why you need this _barrier variant now. This change
> >> should be done in a separate patch too.
> > 
> > There is no functional change in regard of barrier.  The ordered IO was
> > used there before.
> 
> The patch changes one wr_reg to wr_reg_barrier without any explanation.
> This will hardly be accepted.

I cannot find such change... I see only:

@@ -2612,7 +2664,7 @@ static void samsung_early_putc(struct uart_port *port, int c)
-       writeb(c, port->membase + S3C2410_UTXH);
+       wr_reg_barrier(port, S3C2410_UTXH, c);

which is the same except 'b' -> 'b/l'.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
