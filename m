Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FC01A2650
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 17:51:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LeTmTE3dqDYcgF/uSMo7dDtcH6Gn7bP3wk8/Fdl3XsM=; b=D+r8bVVJd0XJjZC+0pcce/gyP
	Z1XoeaNqcJ2jztZQ3DptuCBJnNMBZODKh/h5ilsJCOwSv4ST0KmHbLwOImcJYuK04i1XEwJlNMcAe
	npJLgiLRNaNeWeOCpl8CUnDu2eWf2nUPhqG4CIAizQ6at4c+uHhMB3kknHnV+inN3oZ4sGPu4Mfcf
	OXJ6vPVwCz2RoRRMthy91IqDU0pqxKKdp8rxhiSR3OaWt4842vLhD2OqWbiFB+hmIawFh5HNlY92u
	HGpLK9SmAPfRq5xy7bKjL95KQFx8kh4wiizfepvy5vc/b/cYCO3503vLzi0XC1HK5Sq3nyAkeqnmS
	hwLo8nvKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMCyl-0002xd-3T; Wed, 08 Apr 2020 15:51:03 +0000
Received: from fieber.vanmierlo.com ([84.243.197.177]
 helo=kerio9.vanmierlo.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCyb-0002wt-G0
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 15:50:55 +0000
X-Footer: dmFubWllcmxvLmNvbQ==
Received: from roundcube.vanmierlo.com ([192.168.37.37])
 (authenticated user m.brock@vanmierlo.com)
 by kerio9.vanmierlo.com (Kerio Connect 9.2.11 beta 1) with ESMTPA;
 Wed, 8 Apr 2020 17:50:32 +0200
MIME-Version: 1.0
Date: Wed, 08 Apr 2020 17:50:32 +0200
From: Maarten Brock <m.brock@vanmierlo.com>
To: Raviteja Narayanam <raviteja.narayanam@xilinx.com>
Subject: Re: [PATCH] serial: uartps: Wait for tx_empty in console setup
In-Reply-To: <1586278391-9061-1-git-send-email-raviteja.narayanam@xilinx.com>
References: <1586278391-9061-1-git-send-email-raviteja.narayanam@xilinx.com>
Message-ID: <396bcf8a0068fc05e70cc439a4843b61@vanmierlo.com>
X-Sender: m.brock@vanmierlo.com
User-Agent: Roundcube Webmail/1.3.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_085053_677420_F9841472 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-serial-owner@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, michal.simek@xilinx.com, git@xilinx.com,
 linux-serial@vger.kernel.org, jslaby@suse.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-07 18:53, Raviteja Narayanam wrote:
> On some platforms, the log is corrupted while console is being
> registered. It is observed that when set_termios is called, there
> are still some bytes in the FIFO to be transmitted.
> 
> So, wait for tx_empty inside cdns_uart_console_setup before
> calling set_termios.
> 
> Signed-off-by: Raviteja Narayanam <raviteja.narayanam@xilinx.com>
> ---
>  drivers/tty/serial/xilinx_uartps.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/tty/serial/xilinx_uartps.c
> b/drivers/tty/serial/xilinx_uartps.c
> index 6b26f76..23468ff 100644
> --- a/drivers/tty/serial/xilinx_uartps.c
> +++ b/drivers/tty/serial/xilinx_uartps.c
> @@ -1260,6 +1260,8 @@ static int cdns_uart_console_setup(struct
> console *co, char *options)
>  	int bits = 8;
>  	int parity = 'n';
>  	int flow = 'n';
> +	unsigned long time_out = jiffies + usecs_to_jiffies(TX_TIMEOUT);
> +	int status;
> 
>  	if (!port->membase) {
>  		pr_debug("console on " CDNS_UART_TTY_NAME "%i not present\n",
> @@ -1270,6 +1272,14 @@ static int cdns_uart_console_setup(struct
> console *co, char *options)
>  	if (options)
>  		uart_parse_options(options, &baud, &parity, &bits, &flow);
> 
> +	/* Wait for tx_empty before setting up the console */
> +	while (time_before(jiffies, time_out)) {
> +		status = cdns_uart_tx_empty(port);
> +		if (status == TIOCSER_TEMT)
> +			break;
> +		cpu_relax();
> +	}
> +
>  	return uart_set_options(port, co, baud, parity, bits, flow);
>  }
>  #endif /* CONFIG_SERIAL_XILINX_PS_UART_CONSOLE */

You could do without the status variable. You could even combine the
while and if conditions.

And while you're at it, you might as well also rewrite the lines
1236-1238 to also use cdns_uart_tx_empty() for clarity.

Maarten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
