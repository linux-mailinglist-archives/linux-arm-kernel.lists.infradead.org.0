Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7686CA5DD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 00:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2m71fIHkK3pZIMyvBAFAECbkT4bWsVWOG7BlXE86fk=; b=KSCzGPZ4jSzbBl
	MHs64xY1tB5pQMGYS0YQH43usCABvDgTd7PIRAlMsXKBvh5KWXtq8Crb3faGhlDL1twpRxbM/55sT
	xtfhtg12mPern8wzqeDs6VHbLXON8o8KMC2wI70+C5PoPYJcDSv6JjK+qna2rcCul3S4+SHEDhMwb
	xFZ5FMK+/PxeGtYff3/1AtFSMG+qy/CAyYU+YMr7Zhi7LRVtbFV2Jrqg9MO62YjNn6O2PiUAZ9S5s
	b5Y/BR+ViwO/8nhAoFeCXNksB2vAcUFjqrUGGr4CkC75RF+9TVTDItlXLap+bodbVXjyjm8A8Ukld
	PNINabqihSHkiU79fpiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4uwh-0005Hf-7Z; Mon, 02 Sep 2019 22:37:11 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4uwV-0005Gt-Ao
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 22:37:01 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id A57DF1BF207;
 Mon,  2 Sep 2019 22:36:50 +0000 (UTC)
Date: Tue, 3 Sep 2019 00:36:50 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Yizhuo <yzhai003@ucr.edu>
Subject: Re: [PATCH] clocksource: atmel-st: Variable sr in
 at91rm9200_timer_interrupt() could be uninitialized
Message-ID: <20190902223650.GJ21922@piout.net>
References: <20190902222946.20548-1-yzhai003@ucr.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902222946.20548-1-yzhai003@ucr.edu>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_153659_524926_6DF81819 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: csong@cs.ucr.edu, Daniel Lezcano <daniel.lezcano@linaro.org>,
 zhiyunq@cs.ucr.edu, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/09/2019 15:29:46-0700, Yizhuo wrote:
> Inside function at91rm9200_timer_interrupt(), variable sr could
> be uninitialized if regmap_read() fails. However, sr is used

Could you elaborate on how this could fail?

> to decide the control flow later in the if statement, which is
> potentially unsafe. We could check the return value of
> regmap_read() and print an error here.
> 
> Signed-off-by: Yizhuo <yzhai003@ucr.edu>
> ---
>  drivers/clocksource/timer-atmel-st.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clocksource/timer-atmel-st.c b/drivers/clocksource/timer-atmel-st.c
> index ab0aabfae5f0..061a3f27847e 100644
> --- a/drivers/clocksource/timer-atmel-st.c
> +++ b/drivers/clocksource/timer-atmel-st.c
> @@ -48,8 +48,14 @@ static inline unsigned long read_CRTR(void)
>  static irqreturn_t at91rm9200_timer_interrupt(int irq, void *dev_id)
>  {
>  	u32 sr;
> +	int ret;
> +
> +	ret = regmap_read(regmap_st, AT91_ST_SR, &sr);
> +	if (ret) {
> +		pr_err("Fail to read AT91_ST_SR.\n");
> +		return ret;
> +	}
>  
> -	regmap_read(regmap_st, AT91_ST_SR, &sr);
>  	sr &= irqmask;
>  
>  	/*
> -- 
> 2.17.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
