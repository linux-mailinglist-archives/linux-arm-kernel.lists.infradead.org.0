Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 186941CD5F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 12:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFdJafz1FYNHKrfwJ2qhm/hHVDQOih2Fe6dBwWQvkc0=; b=NXUTWzL1ikijV2
	zpmOo5dJHJMAiPzHw6n0doZ4rW9k/oryoKWNtKm4bumSF6z4Bh/p6+uKh41440NxQeE1yTv1Wt6sG
	i12+U0DCmre93VUaWgh3UabCIoqAXd/q2lYKArawtvl0YLFryK+4UWbWR9c3SZ1CpPVoez3ZSAdls
	KXd2XW9Ot3w37SHNupb/2ZYIClWL6O2gzSrh8D86UYG7qSwVsRi4mGB8CU5sTKBHpZuSm0JHrXhme
	0PnUe9Tnyml3NSs9Zu4/09XrNz2XUIr6U3ysEfLxbZFhYhJeJGuBJ1q3fwgaXD1Gi23Kj00KiYr8t
	l3HrTOxKPwYxlJQa5RvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5Mf-0003Jq-Eo; Mon, 11 May 2020 10:08:49 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5MX-0003JV-LH
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 10:08:42 +0000
Received: by mail-ed1-f68.google.com with SMTP id g16so7440628eds.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 03:08:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ADM8r+B0dzyP5A/vqyNmonnjvaPcrODBmZPyMqMMxIs=;
 b=N4I2RtizfT9fFpQ7hS+PtKvaO2BisfUQzfD/+IuDB4oSwuoFFG99xRvbnoWQBrVL0H
 KHcTivdcjjVLfdpqJmcij51yju0R54d6hxLXYbGp67Pxqtg0MppGTLRYwDZI/bmgmLCY
 eCruEDDx/MKzt2RjYqTlZOe5oxM9sbWHrUUbl5aEMK/2GZOKwppjwcjhu50JXqMVVH3R
 O9RNS2tYHvkwCnuNNpOGht5X/3Ah/Dd6oz7UftVbfkjJk09GjfZheMDn1QsI1L/cyr2x
 JFCdglvvgexq3OmNKwfbntGTt8yTh+V/v5uzSdq8wKF4gIQstHTsEYD+8D5HlhOu7z7Q
 zNnA==
X-Gm-Message-State: AGi0Pubh5mbqLB2fxMU8ZDqP7wI2vufkJxf8uOYwPnDb6MKbx8pZa6NO
 g2ADMaol/g38IdvpGGe2OfE=
X-Google-Smtp-Source: APiQypIIjKKjypDAYbOFH4MiQWndpu/est9zg63nnHoe6ueUE/9p66tdn9yO2ilqbrvMJLoHMfCWHw==
X-Received: by 2002:a05:6402:28e:: with SMTP id
 l14mr12321849edv.184.1589191719680; 
 Mon, 11 May 2020 03:08:39 -0700 (PDT)
Received: from kozik-lap ([194.230.155.237])
 by smtp.googlemail.com with ESMTPSA id ga1sm1242231ejb.65.2020.05.11.03.08.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 11 May 2020 03:08:39 -0700 (PDT)
Date: Mon, 11 May 2020 12:08:36 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH] tty: serial: samsung: Correct clock selection logic
Message-ID: <20200511100836.GA16828@kozik-lap>
References: <BN6PR04MB06604E63833EA41837EBF77BA3A30@BN6PR04MB0660.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN6PR04MB06604E63833EA41837EBF77BA3A30@BN6PR04MB0660.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_030841_695915_ECFE77DC 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, kgene@kernel.org, linux-serial@vger.kernel.org,
 jslaby@suse.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 08, 2020 at 06:34:33PM -0700, Jonathan Bakker wrote:
> Some variants of the samsung tty driver can pick which clock
> to use for their baud rate generation.  In the DT conversion,
> a default clock was selected to be used if a specific one wasn't
> assigned and then a comparison of which clock rate worked better
> was done.  Unfortunately, the comparison was implemented in such
> a way that only the default clock was ever actually compared.
> Fix this by iterating through all possible clocks, except when a
> specific clock has already been picked via clk_sel (which is
> only possible via board files).
> 
> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
> ---
>  drivers/tty/serial/samsung_tty.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
> index 73f951d65b93..9d2b4be44209 100644
> --- a/drivers/tty/serial/samsung_tty.c
> +++ b/drivers/tty/serial/samsung_tty.c
> @@ -1281,14 +1281,14 @@ static unsigned int s3c24xx_serial_getclk(struct s3c24xx_uart_port *ourport,
>  	struct s3c24xx_uart_info *info = ourport->info;
>  	struct clk *clk;
>  	unsigned long rate;
> -	unsigned int cnt, baud, quot, clk_sel, best_quot = 0;
> +	unsigned int cnt, baud, quot, best_quot = 0;
>  	char clkname[MAX_CLK_NAME_LENGTH];
>  	int calc_deviation, deviation = (1 << 30) - 1;
>  
> -	clk_sel = (ourport->cfg->clk_sel) ? ourport->cfg->clk_sel :
> -			ourport->info->def_clk_sel;
>  	for (cnt = 0; cnt < info->num_clks; cnt++) {
> -		if (!(clk_sel & (1 << cnt)))
> +		/* Keep selected clock if provided */

Makes sense and good catch.

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

I wonder about the s3c24xx_serial_enable_baudclk() which has similar
pattern - is there
testing only def_clk_sel on purpose?

Best regards,
Krzysztof

> +		if (ourport->cfg->clk_sel &&
> +			!(ourport->cfg->clk_sel & (1 << cnt)))
>  			continue;
>  
>  		sprintf(clkname, "clk_uart_baud%d", cnt);
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
