Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7002BF5CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 13:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=coZA6w1d3QCUPT8Zf7LtJ3UM/h1YTPOOKEbqiZtFCic=; b=LsmmV5V1bw8qM1oE9boy13UdOi
	2qzAXj7hEqwlb0cAxy+DmM60JycYLv0M3bvladBsw7NSJpIUt8h+nZMn3af2+yglt8f+WmtBfmwkM
	ANP4WWMg1vUVOWJJEqOMG6rBqSV/otHdc4dQQHNxJOSs/vz5aOXAbjF2ZB+EQlOT0IbxYfkWVBLM9
	SxysBjLnjeM0+rQUyqW3UYc17hh6HZ9+l/ac+o1QdwUP0wwd1ajMQJV6PLEX4hrYBlPeeHNQE8WJr
	QQmJGUxyXFyFVhiJ/JA4UtaJj32Ikxsam/EEmKtCPxqAk4bqVzLN19clLJOoQIS7xQZScsk9cg1Ms
	Yaq+LzvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLR3u-0008PO-Il; Tue, 30 Apr 2019 11:36:38 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLR3j-0008OU-UP
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 11:36:31 +0000
Received: from tarshish (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 3EEC444028D;
 Tue, 30 Apr 2019 14:36:25 +0300 (IDT)
References: <20190430093212.28425-1-alexandre.belloni@bootlin.com>
 <20190430093212.28425-2-alexandre.belloni@bootlin.com>
User-agent: mu4e 1.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 2/4] rtc: digicolor: set range
In-reply-to: <20190430093212.28425-2-alexandre.belloni@bootlin.com>
Date: Tue, 30 Apr 2019 14:36:24 +0300
Message-ID: <877ebbu3lz.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_043629_683542_AA6CC90C 
X-CRM114-Status: GOOD (  14.83  )
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

> While the range of REFERENCE + TIME is actually 33 bits, the counter
> itself (TIME) is a 32-bits seconds counter.
>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
>  drivers/rtc/rtc-digicolor.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/rtc/rtc-digicolor.c b/drivers/rtc/rtc-digicolor.c
> index 5bb14c56bc9a..e6e16aaac254 100644
> --- a/drivers/rtc/rtc-digicolor.c
> +++ b/drivers/rtc/rtc-digicolor.c
> @@ -206,6 +206,7 @@ static int __init dc_rtc_probe(struct platform_device *pdev)
>  	platform_set_drvdata(pdev, rtc);
>  
>  	rtc->rtc_dev->ops = &dc_rtc_ops;
> +	rtc->rtc_dev->range_max = U32_MAX;

Where can I find documentation on the meaning and usage of the range_max
value? I could not find anything in the kernel source.

baruch

>  
>  	return rtc_register_device(rtc->rtc_dev);
>  }


-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
