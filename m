Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E76F8B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 14:21:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k1ssIdEvndm7qhaMmVrIN4VVD83Pt+ZvnBXzBPVKVtM=; b=bOaZRAsXMFJU+KCXOWuIUbhpUM
	qUXbb2CWxyE3P8aFyBAVZnUVpCnNsUYgYp/QNYGmbOsientpDWFwp/p6qiYw8nEQ/7SGUdMqEmnEf
	YE0D3N9UXI+21R67FiR5etpmfQpMTNAFz/RTJVb4ynsByYcUp08xL4K1fQYbcXhgBJM6lfEFcuveS
	+IYVb0P1XN7oAz0LNL9plt4oeIAP41FQcUID7zBTIs8R8+AmUTp2gXHzXGSDS2fehhvHNhYvgTDd8
	tAgd7mcjo4oGpq842sBffmuEEIh+Ls4xJOLNhY/EstBOhyah0p/CV0+Pcp/Bv7hoMcxrrcvS/57vS
	MRz51EkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLRlM-00037i-BJ; Tue, 30 Apr 2019 12:21:32 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLRlA-00036Q-Q8
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 12:21:22 +0000
Received: from tarshish (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 0616244028D;
 Tue, 30 Apr 2019 15:21:18 +0300 (IDT)
References: <20190430093212.28425-1-alexandre.belloni@bootlin.com>
 <20190430093212.28425-3-alexandre.belloni@bootlin.com>
User-agent: mu4e 1.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 3/4] rtc: digicolor: use .set_time
In-reply-to: <20190430093212.28425-3-alexandre.belloni@bootlin.com>
Date: Tue, 30 Apr 2019 15:21:18 +0300
Message-ID: <874l6fu1j5.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_052121_072628_DC9C2EE5 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-rtc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alexandre,

On Tue, Apr 30 2019, Alexandre Belloni wrote:
> Use .set_time instead of the deprecated .set_mmss.
>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Acked-by: Baruch Siach <baruch@tkos.co.il>

baruch

> ---
>  drivers/rtc/rtc-digicolor.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/rtc/rtc-digicolor.c b/drivers/rtc/rtc-digicolor.c
> index e6e16aaac254..ed2fc1adafd5 100644
> --- a/drivers/rtc/rtc-digicolor.c
> +++ b/drivers/rtc/rtc-digicolor.c
> @@ -106,11 +106,11 @@ static int dc_rtc_read_time(struct device *dev, struct rtc_time *tm)
>  	return 0;
>  }
>  
> -static int dc_rtc_set_mmss(struct device *dev, unsigned long secs)
> +static int dc_rtc_set_time(struct device *dev, struct rtc_time *tm)
>  {
>  	struct dc_rtc *rtc = dev_get_drvdata(dev);
>  
> -	return dc_rtc_write(rtc, secs);
> +	return dc_rtc_write(rtc, rtc_tm_to_time64(tm));
>  }
>  
>  static int dc_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
> @@ -161,7 +161,7 @@ static int dc_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
>  
>  static const struct rtc_class_ops dc_rtc_ops = {
>  	.read_time		= dc_rtc_read_time,
> -	.set_mmss		= dc_rtc_set_mmss,
> +	.set_time		= dc_rtc_set_time,
>  	.read_alarm		= dc_rtc_read_alarm,
>  	.set_alarm		= dc_rtc_set_alarm,
>  	.alarm_irq_enable	= dc_rtc_alarm_irq_enable,


-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
