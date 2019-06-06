Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1083787E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqEzckmNKXAZARlcF+2yjtEqm0F4x6lMN4Rf5Y1Q4/c=; b=F1Kimaj6MZyijs
	iWG+H0fOn+iY9YyLFpBstut1uGZdc4K5f+2r901hojByKNXhZb9wCJgvdRPW+5DT+aPUa5CW0YtPp
	Fb7JHGmyFTNa4aVhfWszpThgeEzoSo94fzjuwFprD79txgUz4Qikuz1Wh/Dj59GoroYDTLOnEJQoP
	S+O6ofOiTZq9ou/CJ+3LawVvlnpWq31CAQ1VsJ/7tZ8CBTS9ha7+q8EE7hGFUYmoUU9OS8MGFLagH
	RxOpbtgzpoQ/U/lnR6S+9KOPFaUgqERiS/D4iJ4njAfRKLHMNg6poUFMR1+au1aGkIsavVNc3ruRw
	zqHTs+999ugMzl84zgTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYucm-0003Aa-Mx; Thu, 06 Jun 2019 15:48:20 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYuce-00039O-L3
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 15:48:14 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x56FkhkV020575; Thu, 6 Jun 2019 17:48:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=gGCf28774irLLSKFXYWcYkPoYMFVE7Vt0PR7IMC2LZY=;
 b=fiBqVAL0EjZRJKzxblB62imKyCV/3cHFrVj4nR7fLs+a/s3NvoQw7ufiFo+9e11zwXEP
 u6e+P4AuuRwKzycKkiEs1eRtvV2hvnDVLIjFjmlLeN7lp3wPaNbh14hKEJpJsF4627sB
 XyDc6XL1YvPfTrxEfNpPPLlAS42B2MLCGdT5xuX91wA12Yh8HpnJTKOtk6H32aD2tlrh
 TjxuKeQUbGbUi0N3fAiNYbu0rjZmiMb8ITYZohDjGcc6ro1VlR4gRGGd21uV+pxj+7qX
 WW6n3WuKH84RFDTMDti12vRtU3vZf8YSObvVg6v82gm9spc07XTRLfh4zWYfwEPbozhO vQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sxqxmv5ws-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 06 Jun 2019 17:48:07 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B7A9B31;
 Thu,  6 Jun 2019 15:48:06 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8E6812B23;
 Thu,  6 Jun 2019 15:48:06 +0000 (GMT)
Received: from SFHDAG3NODE1.st.com (10.75.127.7) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 6 Jun
 2019 17:48:06 +0200
Received: from SFHDAG3NODE1.st.com ([fe80::1166:1abb:aad4:5f86]) by
 SFHDAG3NODE1.st.com ([fe80::1166:1abb:aad4:5f86%20]) with mapi id
 15.00.1347.000; Thu, 6 Jun 2019 17:48:06 +0200
From: Erwan LE RAY <erwan.leray@st.com>
To: Borut Seljak <borut.seljak@t-2.net>
Subject: Re: [PATCH v3] serial: stm32: fix a recursive locking in
 stm32_config_rs485
Thread-Topic: [PATCH v3] serial: stm32: fix a recursive locking in
 stm32_config_rs485
Thread-Index: AQHVHFHrSWlGRhgeoU6uFgV0pT5nv6aOpEqA
Date: Thu, 6 Jun 2019 15:48:06 +0000
Message-ID: <e0f8d4b2-a622-3758-473b-b78bd8949323@st.com>
References: <erwan.leray@st.com> <20190606101901.31151-1-borut.seljak@t-2.net>
In-Reply-To: <20190606101901.31151-1-borut.seljak@t-2.net>
Accept-Language: en-US, fr-FR
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <E7F0DC97BDB15B4E944187432787DEC1@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-06_11:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_084812_988227_EA3167E3 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre
 TORGUE <alexandre.torgue@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 6/6/19 12:19 PM, Borut Seljak wrote:
> Remove spin_lock_irqsave in stm32_config_rs485, it cause recursive locking.
> Already locked in uart_set_rs485_config.
>
> fixes: 1bcda09d291081 ("serial: stm32: add support for RS485 hardware control mode")
>
> Signed-off-by: Borut Seljak <borut.seljak@t-2.net>

Hi Borut,

Thanks for your patch.

Acked-by: Erwan Le Ray <erwan.leray@st.com>

Please correct a typo in commit message: "Fixes" instead "fixes"

Erwan.

> ---
>   drivers/tty/serial/stm32-usart.c | 3 ---
>   1 file changed, 3 deletions(-)
>
> diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
> index e8d7a7bb4339..5d072ec61071 100644
> --- a/drivers/tty/serial/stm32-usart.c
> +++ b/drivers/tty/serial/stm32-usart.c
> @@ -105,9 +105,7 @@ static int stm32_config_rs485(struct uart_port *port,
>   	struct stm32_usart_config *cfg = &stm32_port->info->cfg;
>   	u32 usartdiv, baud, cr1, cr3;
>   	bool over8;
> -	unsigned long flags;
>   
> -	spin_lock_irqsave(&port->lock, flags);
>   	stm32_clr_bits(port, ofs->cr1, BIT(cfg->uart_enable_bit));
>   
>   	port->rs485 = *rs485conf;
> @@ -147,7 +145,6 @@ static int stm32_config_rs485(struct uart_port *port,
>   	}
>   
>   	stm32_set_bits(port, ofs->cr1, BIT(cfg->uart_enable_bit));
> -	spin_unlock_irqrestore(&port->lock, flags);
>   
>   	return 0;
>   }
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
