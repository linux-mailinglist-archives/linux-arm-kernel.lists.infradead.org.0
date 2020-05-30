Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 473631E9110
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 14:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=igNGMz7S0iksb9V9DHpRJoGCEv/QgoPe8jTfcjXbdD0=; b=I+zRLf0AKVxRl0
	MLbXI4uehqUZyJwobzJaLlrqFxfPSVq1xnn3uWlAkgS0kcuWD12AR5D+yzj6zs4WK928W/XkWL2/g
	RatNob0Lgaf8awCryx2YqPUPqPHhPB3Y35jjx6sSXiu2LoZK0wvAtNnqq/ohoSJa0WRQE2HBV1PxZ
	o2RaCpFjvnbxXCQCc1RyE2gM0IRgTeKxrJZHVU2Ran1BLaVDX8IHujUS797UaXZvAV1VsB58DZu0W
	iW6QA6CaIOGIrHxiMoklmH6f/4yEcttumpz/eZ9ULAJIYOxBmfvtBIORaEL1DEMdFPApkWitmJYli
	0p1yx/p5g0kLoNQLAftw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf0G7-0007lz-D1; Sat, 30 May 2020 12:06:39 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf0Fz-0007ky-GJ
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 12:06:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1590840377;
 bh=O54HY8u6kNk5jzvThHN0FKrxm2RMGAbqXT/OzMCH9To=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=QRVfqUHgCSK4CjB0+eLJWIIMYp5yPiB9/aW3G4Xtn6zeIykR+HkdECe/HA/jPAFqc
 8fpf9BB9V95LslWLm9ANZYkFKHVzEHnfL1IvQHAjQzN1MrXPw4LQWJFxbl0VSHMccK
 rihrdc40rdiKQ2+YiPzVIqMGn+rVSZbO98ihldkQ=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.10] ([95.157.53.180]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MrOhx-1jBDbC1ewJ-00oYQ8; Sat, 30
 May 2020 14:06:17 +0200
Subject: Re: [PATCH v2] tty: xilinx_uartps: Fix missing id assignment to the
 console
To: Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, git@xilinx.com, stable@vger.kernel.org
References: <ed3111533ef5bd342ee5ec504812240b870f0853.1588602446.git.michal.simek@xilinx.com>
From: Jan Kiszka <jan.kiszka@web.de>
Message-ID: <170a896f-42d3-345b-7b93-c964d33fe71c@web.de>
Date: Sat, 30 May 2020 14:06:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <ed3111533ef5bd342ee5ec504812240b870f0853.1588602446.git.michal.simek@xilinx.com>
Content-Language: en-US
X-Provags-ID: V03:K1:U0QUvgsTl6Chv5EeNmrI3y6j41DKwUycjVjsajxQR0cn6vZ4VYV
 O3Bus/0oG4R1KPBaXO6E4gRYlQwQOvmNeD22qSmMzgzBPSQeU7vIPG13jiXr9P8QwFbFyIU
 BlgLZgEAxiz7tOauz1ergidaOxeQd0R1ZUS7OsnefA8JJ5FE9HoPvB+Kwlou6ZB/PIpqbfa
 QOFtw0PfWB4Fv/LT77byg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Cu+g8gK14Wo=:4ISwZaVZBBFaMu8VHtE91z
 W1LQfA40u27nUxFQRbbUnhk/yY6iBby3ZKIpN9nY7A0lu+8V6c4xMjH18WTNwdafKVvGWVNaw
 aT8zpqdGhLTQl/cTDcFrRdMVf1NNGQsq8voK6LlsWYexcDEf//3EZZsvyMn+s/sUSEUtqNodF
 3QrbeJ3IbYzh1x7jqSwsbwOnP6HMLQ+mflgGsuDSNen7Hu0/14uL/tG0nwy2D3UpWR6xSVWCT
 EX9Z13Vsaz/T0kGxXo2F889TY7nFaRhxgSigJsXCmKbHaYirv28vCrOKyQ4K9vWduz+FEDKJi
 4AgrYb01h2DlmatngI7fjzmRvAsX05Fpy3kYwQvosiUW351w1JCJCkqKAEgLUbrAsqXjsQHKF
 AYkY8v2anHN098SoSSoZheis+EVNlzUFKu4zZFBpgRisjsfEeMMqgNSVNU9+HfwZYJIgSSFZs
 hH4yID0CygT3vmEZlDC3WD32y62rhfJcgZVfEjmr0uUEglFiSEJ+aCNTm2OtqC1hLGavLRyyE
 T/mK9WirExSrMrGDTUJ7bVgQ8c1oT8SNMF3tupCFnb9nCs/5+puI6ii6lCZ86I4oU5mjH4jXZ
 HFzMsjTVgPAN095ch1qsKgBC+wGvIkyxyrNsuRj2AcC9Ohp8apbW1DoYsEtpADnW5yuMemL8k
 A2Z8DmtirZ10ppCWuolQcuGqh1v+673bT1+5NHO2dFKBkpCEXOv6blI0X/8OfP3UedrnSkwDp
 smp93XTmIKiia3AyCAGE0v2IVq2y810L3BRrdaAuIQx4scqW9nrZCyhqpppJddlwIrLT7XwjZ
 bp4SIeAYvFdX2E10WeFvHKRn1KRAKqUNJSrmPJCWWlLN0TGg8zGOIODOfsMDaIrrai0KfvFsv
 ptA84RdbKalg8bdR+JXYCx6Ad6jVZ5oZW080Zv2LQVQIdarE0yeIW5s+NpOhK/PDIpDumifcH
 pScf9A9ZBnvd1GlqnbLqn5ylEXJdtqqI9NHEyJ7e8EfvwygkWxMs06G+N7mpd9argkQ2egEqZ
 aHF4gYJOSdAJjLOASkCQyfLdCCl5yIllkSzjtICG6In0P/eGHkmSKwCBUFhkey+BotY86tAlC
 9tk4veAB9ueUq/4bCskS/wNPG0kZE+7X9kc52aWKFwBOLCGGp4iBrLcG5RHQPgUSY+5K76J2i
 e26uH5Z+BQBjNpkiCb93lv+AetYLCCCyBG2eVoY6xgzsn3wUW8KpJKxW3jBx12chXFsI3JJRP
 GkEa9dcG7tzJtm33z
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_050631_843827_520215BC 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jan.kiszka[at]web.de]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.72.192.78 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04.05.20 16:27, Michal Simek wrote:
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
>
> When serial console has been assigned to ttyPS1 (which is serial1 alias)
> console index is not updated property and pointing to index -1 (statically
> initialized) which ends up in situation where nothing has been printed on
> the port.
>
> The commit 18cc7ac8a28e ("Revert "serial: uartps: Register own uart console
> and driver structures"") didn't contain this line which was removed by
> accident.
>
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> Cc: stable <stable@vger.kernel.org>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>
> Changes in v2:
> - Do better commit description
> - Origin subject was "tty: xilinx_uartps: Add the id to the console"
>
> Greg: Would be good if you can take this patch to 5.7 and also to stable
> trees.
>
> ---
>  drivers/tty/serial/xilinx_uartps.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
> index 672cfa075e28..b9d672af8b65 100644
> --- a/drivers/tty/serial/xilinx_uartps.c
> +++ b/drivers/tty/serial/xilinx_uartps.c
> @@ -1465,6 +1465,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
>  		cdns_uart_uart_driver.nr = CDNS_UART_NR_PORTS;
>  #ifdef CONFIG_SERIAL_XILINX_PS_UART_CONSOLE
>  		cdns_uart_uart_driver.cons = &cdns_uart_console;
> +		cdns_uart_console.index = id;
>  #endif
>
>  		rc = uart_register_driver(&cdns_uart_uart_driver);
>

This breaks the ultra96-rev1 which uses uart1 as serial0 (and
stdout-path = "serial0:115200n8"). Reverting this commit gives

[    0.024344] Serial: AMBA PL011 UART driver
[    0.028010] ff000000.serial: ttyPS1 at MMIO 0xff000000 (irq = 19, base_baud = 6250000) is a xuartps
[    0.028172] serial serial0: tty port ttyPS1 registered
[    0.028579] ff010000.serial: ttyPS0 at MMIO 0xff010000 (irq = 20, base_baud = 6250000) is a xuartps
[    0.557477] printk: console [ttyPS0] enabled

again. Affects stable as well (seen first in 5.4).

Jan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
