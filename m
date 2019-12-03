Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C6010FBBE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 11:29:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RdZTCnjgv4Zfv5YXFMZ16jb3479Ry+/Q2PHgfEiK9w=; b=NwX/TL0ZGPZJUc
	dgmmNr7Vnd7SF/FgbrD/wW0IFrdJNmEOT+W9gBfZy0vW/dZWwhwNr2wE9zdqPZRQbMC+/C3dJ/eYY
	WBa8ORvR7DzydeHAtAFQx7WrRNWAaklnUYMzgEze9iII9yvV1WJeiQCcBmIH7RcGbPrn8t0o6DxIZ
	x3NH+aTU7C1mWkv7K+KOt99odkN6Ut1sA4NV4artFixCyYPoiwyfkkYAZ9RSN+e8ipdC6RFiECN6A
	m6br2UPJe0cUcqppoSbpL5PErB51gSaPEtl3QNeQp2SKeCPvpCLz+n+522w84ZsOO0iUv6KnniyiR
	hm1Jetv/wo+tSQ+ZmXjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic5Qx-0004jX-6t; Tue, 03 Dec 2019 10:29:31 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic5Qp-0004iw-W7
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 10:29:25 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB3ARHDg017607; Tue, 3 Dec 2019 11:29:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=bM3pWSeqkB5UkxAbD3228fZVFkK6OfNc9gF3Gi65CVw=;
 b=G1OOjciXP9KiviJUFCAZxsXwXh36wmMOGLYwq4FXtqGmaQ9svtqwZr0sUXX33xn450wF
 DOjeC9fxgDochVQXjOuHpGv7vzzbVKZ97/mAkGlaJUfJmflbfz0JzKs2p8kyAuwLbIks
 VlFr/wZyaGX4BQqlS7EKC1GQwJGPN7iE6ROBoCD4jiMYSEDJL1xnD4kvg1TXkJ4Yegrd
 xv0dXTS3S1F6XqAw736j/NNtiaKN6agD7HAdjHxM8GlX/FtKWqq93MGooh+XSG5NkQW4
 lMhyu/EXL5LgBSng1HbUUp1kav23948sMj6bL4+IX/jZCURNsAugkOSDA3ZIHR+yKIHV FQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wkee9xybr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 03 Dec 2019 11:29:15 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E559510003A;
 Tue,  3 Dec 2019 11:29:14 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B24E02AFD24;
 Tue,  3 Dec 2019 11:29:14 +0100 (CET)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 3 Dec
 2019 11:29:14 +0100
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Tue, 3 Dec 2019 11:29:14 +0100
From: Fabien DESSENNE <fabien.dessenne@st.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, 
 Marc Zyngier <marc.zyngier@arm.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] irqchip/stm32-exti: Use the
 hwspin_lock_timeout_in_atomic() API
Thread-Topic: [PATCH] irqchip/stm32-exti: Use the
 hwspin_lock_timeout_in_atomic() API
Thread-Index: AQHVb8Qw0weioX7Mt0ih3xTUpVlZr6eomLeA
Date: Tue, 3 Dec 2019 10:29:14 +0000
Message-ID: <c279603f-7ba6-6e47-5f1f-43e95a0b2fea@st.com>
References: <1568991643-7549-1-git-send-email-fabien.dessenne@st.com>
In-Reply-To: <1568991643-7549-1-git-send-email-fabien.dessenne@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <DB6069AC1532F74CBDB0DBE0646F9FA7@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-03_02:2019-11-29,2019-12-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_022924_401718_46D94A33 
X-CRM114-Status: GOOD (  23.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi


It looks like this patch got lost. Can anyone have a look at it?

BR

Fabien


On 20/09/2019 5:00 PM, Fabien Dessenne wrote:
> Now that the hwspin_lock_timeout_in_atomic() API is available use it.
>
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> ---
>   drivers/irqchip/irq-stm32-exti.c | 65 +++++++++++++---------------------------
>   1 file changed, 20 insertions(+), 45 deletions(-)
>
> diff --git a/drivers/irqchip/irq-stm32-exti.c b/drivers/irqchip/irq-stm32-exti.c
> index e00f2fa..7fc0d1f 100644
> --- a/drivers/irqchip/irq-stm32-exti.c
> +++ b/drivers/irqchip/irq-stm32-exti.c
> @@ -25,7 +25,6 @@
>   #define IRQS_PER_BANK 32
>   
>   #define HWSPNLCK_TIMEOUT	1000 /* usec */
> -#define HWSPNLCK_RETRY_DELAY	100  /* usec */
>   
>   struct stm32_exti_bank {
>   	u32 imr_ofst;
> @@ -277,55 +276,24 @@ static int stm32_exti_set_type(struct irq_data *d,
>   	return 0;
>   }
>   
> -static int stm32_exti_hwspin_lock(struct stm32_exti_chip_data *chip_data)
> -{
> -	int ret, timeout = 0;
> -
> -	if (!chip_data->host_data->hwlock)
> -		return 0;
> -
> -	/*
> -	 * Use the x_raw API since we are under spin_lock protection.
> -	 * Do not use the x_timeout API because we are under irq_disable
> -	 * mode (see __setup_irq())
> -	 */
> -	do {
> -		ret = hwspin_trylock_raw(chip_data->host_data->hwlock);
> -		if (!ret)
> -			return 0;
> -
> -		udelay(HWSPNLCK_RETRY_DELAY);
> -		timeout += HWSPNLCK_RETRY_DELAY;
> -	} while (timeout < HWSPNLCK_TIMEOUT);
> -
> -	if (ret == -EBUSY)
> -		ret = -ETIMEDOUT;
> -
> -	if (ret)
> -		pr_err("%s can't get hwspinlock (%d)\n", __func__, ret);
> -
> -	return ret;
> -}
> -
> -static void stm32_exti_hwspin_unlock(struct stm32_exti_chip_data *chip_data)
> -{
> -	if (chip_data->host_data->hwlock)
> -		hwspin_unlock_raw(chip_data->host_data->hwlock);
> -}
> -
>   static int stm32_irq_set_type(struct irq_data *d, unsigned int type)
>   {
>   	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
>   	struct stm32_exti_chip_data *chip_data = gc->private;
>   	const struct stm32_exti_bank *stm32_bank = chip_data->reg_bank;
> +	struct hwspinlock *hwlock = chip_data->host_data->hwlock;
>   	u32 rtsr, ftsr;
>   	int err;
>   
>   	irq_gc_lock(gc);
>   
> -	err = stm32_exti_hwspin_lock(chip_data);
> -	if (err)
> -		goto unlock;
> +	if (hwlock) {
> +		err = hwspin_lock_timeout_in_atomic(hwlock, HWSPNLCK_TIMEOUT);
> +		if (err) {
> +			pr_err("%s can't get hwspinlock (%d)\n", __func__, err);
> +			goto unlock;
> +		}
> +	}
>   
>   	rtsr = irq_reg_readl(gc, stm32_bank->rtsr_ofst);
>   	ftsr = irq_reg_readl(gc, stm32_bank->ftsr_ofst);
> @@ -338,7 +306,8 @@ static int stm32_irq_set_type(struct irq_data *d, unsigned int type)
>   	irq_reg_writel(gc, ftsr, stm32_bank->ftsr_ofst);
>   
>   unspinlock:
> -	stm32_exti_hwspin_unlock(chip_data);
> +	if (hwlock)
> +		hwspin_unlock_in_atomic(hwlock);
>   unlock:
>   	irq_gc_unlock(gc);
>   
> @@ -504,15 +473,20 @@ static int stm32_exti_h_set_type(struct irq_data *d, unsigned int type)
>   {
>   	struct stm32_exti_chip_data *chip_data = irq_data_get_irq_chip_data(d);
>   	const struct stm32_exti_bank *stm32_bank = chip_data->reg_bank;
> +	struct hwspinlock *hwlock = chip_data->host_data->hwlock;
>   	void __iomem *base = chip_data->host_data->base;
>   	u32 rtsr, ftsr;
>   	int err;
>   
>   	raw_spin_lock(&chip_data->rlock);
>   
> -	err = stm32_exti_hwspin_lock(chip_data);
> -	if (err)
> -		goto unlock;
> +	if (hwlock) {
> +		err = hwspin_lock_timeout_in_atomic(hwlock, HWSPNLCK_TIMEOUT);
> +		if (err) {
> +			pr_err("%s can't get hwspinlock (%d)\n", __func__, err);
> +			goto unlock;
> +		}
> +	}
>   
>   	rtsr = readl_relaxed(base + stm32_bank->rtsr_ofst);
>   	ftsr = readl_relaxed(base + stm32_bank->ftsr_ofst);
> @@ -525,7 +499,8 @@ static int stm32_exti_h_set_type(struct irq_data *d, unsigned int type)
>   	writel_relaxed(ftsr, base + stm32_bank->ftsr_ofst);
>   
>   unspinlock:
> -	stm32_exti_hwspin_unlock(chip_data);
> +	if (hwlock)
> +		hwspin_unlock_in_atomic(hwlock);
>   unlock:
>   	raw_spin_unlock(&chip_data->rlock);
>   
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
