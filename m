Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 857BA4CE9A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:25:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZn1S8GVwmcjVuwSlxaew7tvaZde74o8c+AHmIGoIDA=; b=DRCePZ4NOQxlk/
	PFjF6idMFAzHrZ2nKMTXm9JZAo403VkHmAVeADiOpUoT41ShrQUE8MJjPDpgUsXIGG9SGRrMD2xAl
	+39KYbeAbap6bvZIVeBAYHvJQ5zANkiHw7cEcZ4Fai6h4dxlNIp5nQlsvulRE58tFh03KtGi1j8xc
	hNZIQA2Unv73rbyeKC4BLSxTfbw4W4a2aXamsZsuHYWJCh4NTKqmRVszO8txNbp8h0mM3LCFQBLOo
	RkFaQQ6CI/uOYKXjnahjfKefUe3m19NSOjncVRyjtzEkC3gr9+OB9khiCsa20env/5Gwz86OUGHKu
	uOPajGmoMT2jBn3c6CLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdx3p-0006Q7-Tn; Thu, 20 Jun 2019 13:25:06 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdx3H-0006KY-4r
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:24:35 +0000
Received: by mail-lj1-x242.google.com with SMTP id m23so2652106lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 06:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version;
 bh=HhLOhhYqBLdrOA1DogbXLLJ4Nwua7/IpCpsFyqMX/RE=;
 b=OQbS3l0nVh3zF87ojg/qhcxYenR8iup8Vtb90TVGwu7UHWK9XJmK3vl7W6Nbr/Ul7E
 UW4yi7cZY8ucWwstC0y1RilHdjcFDrJal+CFfKyI5agxLcq4eLSvt3zmIQ9K2ePEuTaq
 fNhv5CU5SDBdmy8ZRhbpkzU17kxPBq8oOP9ryIXnS2pJB/xkGSSIgK9rdPJ8Mj+NATFu
 8g38rpQtBir3QgBe9RduxuIEHM7knENHWJzpocotTrwXsbMtPsmbJLDx5JvcvgBl+tmh
 ezH0/fUvxi34Svds5r64S8+f39zxVPzD0oIODrxGozpyx5nUbb15ZEbB4JYR7DFIR7IA
 7bUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version;
 bh=HhLOhhYqBLdrOA1DogbXLLJ4Nwua7/IpCpsFyqMX/RE=;
 b=AOn3ze6mKeVc9fj7KSShGTCG1+hIAJ9ufMZknsclkR5+PIiqFTGV81GjbWQaJ23Ylh
 3Xbe1rcFW+RAybXlsPITNxyLzU+ZApxjxBD4fOxvHXl1Zmz0OhWvn0wM1sWzHfKk5o1c
 eCZBfjE0LAyMERGoIczrRM+hLSuKp3Z379pGkkpH5XhNWqlkclb6s2ma5iSkZY6w+/gp
 Tmu/Qfwncu2tvYZgiWPuMneOq/StaJts4KzOf5HjIx/EFFEpBdNO+k9Ljg8g1jhf+Kwf
 lPnug2AhlMbG1mAOGQC7ZPV70zEYMwkn8n3y8dXmNJDITW55ffPP4oFYAWeIJH3rUvNS
 M9/Q==
X-Gm-Message-State: APjAAAVyJ16puFXnz39e8JPrWo5/gOu7Vrbp8GDktzCtO6d0d8VJzaJL
 9y+yoSrEuyZg2v+0G+swhyZYTAe7
X-Google-Smtp-Source: APXvYqxLp7uwN2DyekkN7tJ03qheCXl7cZFSbRu8UAZUOK7xPINLgUChqIQltc0w/492yjLwIwE61A==
X-Received: by 2002:a2e:635d:: with SMTP id x90mr60580619ljb.140.1561037068945; 
 Thu, 20 Jun 2019 06:24:28 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id x1sm3511078ljx.61.2019.06.20.06.24.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 06:24:28 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH RFC 4/7] serial: imx: set_termios(): do not enable autoRTS
 if RTS is unset
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1560514294-29111-1-git-send-email-sorganov@gmail.com>
 <1560514294-29111-5-git-send-email-sorganov@gmail.com>
 <20190620093741.7wom6a475be2byob@pengutronix.de>
Date: Thu, 20 Jun 2019 16:24:27 +0300
In-Reply-To: <20190620093741.7wom6a475be2byob@pengutronix.de> (Sascha Hauer's
 message of "Thu, 20 Jun 2019 11:37:41 +0200")
Message-ID: <878stwjsok.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_062431_203117_A41CD7B6 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sasha,

Sascha Hauer <s.hauer@pengutronix.de> writes:

> Hi Sergey,
>
> On Fri, Jun 14, 2019 at 03:11:31PM +0300, Sergey Organov wrote:
>> set_termios() shouldn't set UCR2_CTSC bit if UCR2_CTS (=TIOCM_RTS) is
>> cleared. Added corresponding check in imx_uart_rts_auto() to fix this.
>> 
>> Signed-off-by: Sergey Organov <sorganov@gmail.com>
>> ---
>>  drivers/tty/serial/imx.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
>> index 17e2322..8ee910f 100644
>> --- a/drivers/tty/serial/imx.c
>> +++ b/drivers/tty/serial/imx.c
>> @@ -405,7 +405,8 @@ static void imx_uart_rts_inactive(struct imx_port *sport, u32 *ucr2)
>>  /* called with port.lock taken and irqs caller dependent */
>>  static void imx_uart_rts_auto(struct imx_port *sport, u32 *ucr2)
>>  {
>> -	*ucr2 |= UCR2_CTSC;
>> +	if (*ucr2 & UCR2_CTS)
>> +		*ucr2 |= UCR2_CTSC;
>>  }
>
> *ucr2 is set like this in imx_uart_set_termios():
>
> 	ucr2 = UCR2_SRST | UCR2_IRTS;
> 	if ((termios->c_cflag & CSIZE) == CS8)
> 		ucr2 |= UCR2_WS;
> 	...
> 	imx_uart_rts_auto(sport, &ucr2);
>
> So the UCR2_CTS bit is never set, hence UCR2_CTSC will never be set.
> You meant to pass in the actual register value of the UCR2 register.
>
> This is shifted around a bit in the following patches, as an end result
> we have:
>
> 	old_ucr2 = imx_uart_readl(sport, UCR2);
> 	ucr2 = old_ucr2 & (UCR2_TXEN | UCR2_RXEN | UCR2_ATEN | UCR2_CTSC);

This is rather the typo problem in my patches right here: it should have
been:

> 	ucr2 = old_ucr2 & (UCR2_TXEN | UCR2_RXEN | UCR2_ATEN | UCR2_CTS);

as we need to preserve RTS bit state USR2_CTS, not hardware handshake bit
UCR2_CCTS.

> 	...
> 	if (ucr2 & UCR2_CTS)
> 		ucr2 |= UCR2_CTSC;
>
> Again the test can never be true, it should probably be if (old_ucr2 &
> UCR2_CTS).

No, I believe it's different mistake on my part, see above.

>
> With this issue and the one Lothar has found fixed this series works for
> me.
>
> With these issues fixed I'd be happy to test this series and apply it in
> favour of my patch.

Thanks a lot for reviewing and volunteering to test! It's even more
appreciated as I can't easily test either on recent kernels and/or
without heavy patching of the kernel, and patching would diminish
applicability of my test results to mainstream kernel.

I think I'll better re-roll the series with these 2 corrections, right?

-- Sergey.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
