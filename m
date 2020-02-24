Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC50169F8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 08:53:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QDObFDS1I5uWavUpxuZgtpSD5qcAnk7oVX2263QHTh8=; b=eKie03jCw0TblcJcdjmA2po+u
	UJ7TER2afZlkdEg/Y57tphy7bk2v3CpLuz4j/TaQwhOxOu+/eGOvyP7kqeAJjKECZZZXPzUQ/x5Rg
	Dxi0dAXQa/SYt7lnA02kK3qfHUa0dA9XbVbvOuW8Rf7JjakV68MCtts2pEciG9qu0G5rAscdUgtrz
	irJNBNVaac/4w1QoJyuITRCDBO5fKRk4Smf3Vob0RZRiZVvU2VsV8tfsniU6nDZEVHI+vB8knUPjc
	A9OrMWx0ebbHtXx5/jEo6ECmBd2MZSyD9n2QuI0HqliaL+PhxnEyeYRWR4GPquQYnmMpeaxzilO67
	3AlvR2hvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j68Xz-0002J8-0h; Mon, 24 Feb 2020 07:52:59 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j68Xn-0002He-Qk
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 07:52:49 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 975662305A;
 Mon, 24 Feb 2020 08:52:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582530759;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xBxlnsiSNn4IX2ytnABMPUzdL3xMEAvDHZtEeRFmG94=;
 b=TgxEEuOOX2NQW0xSnlCCubFfdMs868+Mu+uyGOlDyWzMFhoT8PGDwgoJnWGTwPZBdcMtB/
 cpZ+J+O2fOrzeGoWpoavutSwiW9RL3neWAD1MkQvs9AHS4TpAf6QV55O/k/J1X0etziHd/
 rn+acdcNfpQ65nRlFndPz78IjYnTboM=
MIME-Version: 1.0
Date: Mon, 24 Feb 2020 08:52:38 +0100
From: Michael Walle <michael@walle.cc>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/7] Revert "tty: serial: fsl_lpuart: drop
 EARLYCON_DECLARE"
In-Reply-To: <AM0PR04MB4481B36B83A67E32EA816A5988EC0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20200220174334.23322-1-michael@walle.cc>
 <AM0PR04MB44817308EA80EBEDC0338E6D88120@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <51db0e6ba10b4b32dab207e0df8ef0d8@walle.cc>
 <AM0PR04MB4481B36B83A67E32EA816A5988EC0@AM0PR04MB4481.eurprd04.prod.outlook.com>
Message-ID: <d549c0ec7d39d38492a9680fc66fe86f@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 975662305A
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_TWELVE(0.00)[13];
 NEURAL_HAM(-0.00)[-0.594]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_235248_323753_4F10C809 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vabhav Sharma <vabhav.sharma@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Yuan Yao <yao.yuan@nxp.com>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,


Am 2020-02-24 02:12, schrieb Peng Fan:
>> Subject: Re: [PATCH 1/7] Revert "tty: serial: fsl_lpuart: drop
>> EARLYCON_DECLARE"
>> 
>> Hi,
>> 
>> Am 2020-02-21 02:30, schrieb Peng Fan:
>> >> Subject: [PATCH 1/7] Revert "tty: serial: fsl_lpuart: drop
>> >> EARLYCON_DECLARE"
>> >>
>> >> This reverts commit a659652f6169240a5818cb244b280c5a362ef5a4.
>> >>
>> >> This broke the earlycon on LS1021A processors because the order of
>> >> the
>> >> earlycon_setup() functions were changed. Before the commit the normal
>> >> lpuart32_early_console_setup() was called. After the commit the
>> >> lpuart32_imx_early_console_setup() is called instead.
>> >
>> > How do you pass earlycon args to kernel?
>> 
>> earlycon=lpuart32,mmio32be,0x2950000,115200
>> 
>> please note that there are two possible declarations: (1) an OF/ACPI 
>> based
>> earlycon, eg just "earlycon" on the bootargs and (2) an elaborate one 
>> where
>> you can give the offset and access method yourself, eg. the one from 
>> above.
>> 
>> (1) will still work even with the EARLYCON_DECLARE() removed. But (2) 
>> will
>> search through all possible
>>    OF_DELARE_EARLYCON(lpuart32,..)
>>    EARLYCON_DECLARE(lpuart32,..)
>> 
>> and doesn't take the compatible into account. So which setup function 
>> is
>> actually called depends on (a) the order of the OF_DECLARE_EARLYCON() 
>> and
>> EARLYCON_DECLARE() statements and (b) on the compiler (thats just a 
>> guess!).
>> For me, the order in which it will actually end up in the 
>> __earlycon_table is
>> reversed, eg. the last one is called. So now that you've removed the
>> EARLYCON_DECLARE() the last one is the imx setup function which will 
>> add
>> the reg offset and doesn't work on LS1021A.
> 
> You mean the OF_DECLARD_EARLYCON for i.MX7ULP will be put before 
> LS1021A
> in Image? I am not sure about this. If this is true, you could try
> below diff, to see

well, you could have a look at the disassembly; so no need for real 
hardware,
if thats what you're missing.


> whether it works. i.MX always use little endian.
> 
> diff --git a/drivers/tty/serial/fsl_lpuart.c 
> b/drivers/tty/serial/fsl_lpuart.c
> index 91e2805e6441..1b0aa3b836c5 100644
> --- a/drivers/tty/serial/fsl_lpuart.c
> +++ b/drivers/tty/serial/fsl_lpuart.c
> @@ -2381,8 +2381,10 @@ static int __init
> lpuart32_imx_early_console_setup(struct earlycon_device *devic
>         if (!device->port.membase)
>                 return -ENODEV;
> 
> -       device->port.iotype = UPIO_MEM32;
> -       device->port.membase += IMX_REG_OFF;
> +       if (device->port.iotype != UPIO_MEM32BE) {
> +               device->port.iotype = UPIO_MEM32;
> +               device->port.membase += IMX_REG_OFF;
> +       }
>         device->con->write = lpuart32_early_write;
> 
>         return 0;

while that would also fix the problem (I guess; I'm too lazy to try), it 
is
really bad because:
  (A) it doesn't fix the underlying problem that there are multiple setup
      functions for lpuart32 (and this is not only a problem for 
lpuart32)
  (B) it would've broken the lpuart32 for IMX in the form (2), if it had 
ever
      been working.
  (C) it will break if some developer adds a new setup function to the 
end of
      the list
  (D) you basically make every setup() function behave like the ls1021a 
setup()
      if its called in form (2)

Please, lets try to find a more generic solution for this, like my 
proposed
patch [1].

-michael

[1] 
https://lore.kernel.org/linux-serial/20200220174607.24285-1-michael@walle.cc

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
