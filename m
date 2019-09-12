Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 679D1B0A9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 10:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fA9Lvo0kBgozvOhJily6OIx/y5iD5QbUluIq4YIsCto=; b=ZnocDAX5TQ2uIQ
	/tAauj7wnA4f4GN9UY1ThCaR8WF69rBsgOZ8nftPaPtid+tzS+xbXeOF2ADNJ3jEB2F6F5By7ojCV
	IpOoXUja9dSg1nAkumrqxfiKkA8R7lvztj/5oop6IwKoDRIBzoaJnDdQFFISgOJ0sBQ9/Tv3UYRq+
	avBkKn0xTV8fKDj9A0zDaUbyFtobvo9/nbsjBW360ZeOCRGcjKGIhXUITEYY1SqWh9d8jbG2yJb55
	DI0JN6ht1VFvMF92CPRkRk3cTel10CjN9fVe+dMZetw0D7t4nBz6Hiz2lDTVDXPpbZc9ATe+CRn5I
	N6uvWfrz2tW+VNh3Td5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Kmm-0006BE-Ky; Thu, 12 Sep 2019 08:49:04 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([146.101.78.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Kma-0006A6-Mo
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 08:48:54 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-17-AvKfWONiOouzoUVnjrPlUA-1; Thu, 12 Sep 2019 09:48:43 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 12 Sep 2019 09:48:42 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Thu, 12 Sep 2019 09:48:42 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Yunfeng Ye' <yeyunfeng@huawei.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will@kernel.org" <will@kernel.org>
Subject: RE: [PATCH] arm64: psci: Use udelay() instead of msleep() to reduce
 waiting time
Thread-Topic: [PATCH] arm64: psci: Use udelay() instead of msleep() to reduce
 waiting time
Thread-Index: AQHVaH4AwWDpQzK54U6c4a0pGnl8oKcnvCiA
Date: Thu, 12 Sep 2019 08:48:42 +0000
Message-ID: <18c9fd22d72d4ea1a11e800e8873dd8d@AcuMS.aculab.com>
References: <e4d42bda-72f2-4002-f319-1cbe2bff74d2@huawei.com>
In-Reply-To: <e4d42bda-72f2-4002-f319-1cbe2bff74d2@huawei.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: AvKfWONiOouzoUVnjrPlUA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_014853_020312_EC05D653 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [146.101.78.151 listed in list.dnswl.org]
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "wuyun.wu@huawei.com" <wuyun.wu@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yunfeng Ye
> Sent: 11 September 2019 09:50
> We want to reduce the time of cpu_down() for saving power, found that
> cpu_psci_cpu_kill() cost 10ms after psci_ops.affinity_info() fail.
> 
> Normally the time cpu dead is very short, it is no need to wait 10ms.
> so use udelay 10us to instead msleep 10ms in every waiting loop, and add
> cond_resched() to give a chance to run a higher-priority process.
> 
> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
> ---
>  arch/arm64/kernel/psci.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
> index 85ee7d0..9e9d8a6 100644
> --- a/arch/arm64/kernel/psci.c
> +++ b/arch/arm64/kernel/psci.c
> @@ -86,15 +86,15 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
>  	 * while it is dying. So, try again a few times.
>  	 */
> 
> -	for (i = 0; i < 10; i++) {
> +	for (i = 0; i < 10000; i++) {
>  		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
>  		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
>  			pr_info("CPU%d killed.\n", cpu);
>  			return 0;
>  		}
> 
> -		msleep(10);
> -		pr_info("Retrying again to check for CPU kill\n");
> +		cond_resched();
> +		udelay(10);

You really don't want to be doing 10000 udelay(10) before giving up.

If udelay(10) is long enough for the normal case, then do that once.
After that use usleep_range().

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
