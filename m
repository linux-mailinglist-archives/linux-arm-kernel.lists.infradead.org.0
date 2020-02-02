Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE2614FEE0
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 20:29:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iWMER66sE704uCYj6Iy9H9HwzDzpOInFehDpdbiaJ8=; b=qNZOdqDPVOlE41
	9rHLdqsMEN8ZnCgWLezf7MgSjwYP/vZi/0N8P/lCfeN7T9YPd4ZFXXDny5Z5mDa12liQbcoU2cOk1
	zsmBDCSFIcKgJ1PHw8T3YqF0CldjtTns/5NDSrhsxU1srNPb6Py9vpClIIesg8QFedTOeWW9boQWv
	0Ay0vxbItV+uM7xo97/mWcT03bjjAbO8ekiiAMJhXM/nNPf77ZNWfWfRfq7OnuUdoqpB/PSM4GsbP
	GU+nmXgjSZSqQ36IMl3Ffy1ATZknm7kDpPq8xqOYwHwySWByimkxLvTjKYXsJ8eNXBmSeaZM3K3dC
	JMhSxVbeN1y7jqG0hD0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyKvt-0002WU-HJ; Sun, 02 Feb 2020 19:29:25 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyKvl-0002Vj-58; Sun, 02 Feb 2020 19:29:18 +0000
Received: by mail-pg1-x541.google.com with SMTP id k25so6592257pgt.7;
 Sun, 02 Feb 2020 11:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=83XBXAdF60qQhjfbLi9bwa5VGB/pa56aRpXZec7GZUQ=;
 b=phTQ09+j8Vr2PTCfUXpoYipZuNKH07aPv2Zc4kKmqWltkBWIFf9lbdsKaJi04tqGKB
 89O9EaYkOjA51Y7sM+LHx35FD96pzQrI8ycxQF5cEY/yC1ssICLlZEQUycHoZWIVUWt2
 q16FVK+zhYaWdLk8XAHU1LN0lvwpKUL99e4YsRBtm7+KfvKJwYQvUyk+CtcydCMaq+ET
 221+uh0dgiGXI2gstojGhDXQ1o8QOETUOOtvRTfRA68FI1vzrH0FMON1RKItRVa6CRuq
 g8b3vyU06z53cNAR6K9+60lftqNVoGeOuyjvd2bJRGZh6EoIfJa1jV/TIfNInWanSkyq
 RaVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=83XBXAdF60qQhjfbLi9bwa5VGB/pa56aRpXZec7GZUQ=;
 b=rVQbUp20sDTMB70rHfrA4MtR18H5wW8Qsqx48BolSLXLTjsUlt6DaS0CohY6YKo74j
 b50zEpMS144XVKJunTeobKX+of7k4L2BsEV+8ze6fljUhU3klNaTiPOEp9Dk2ThMxSLO
 XImHBHJ/uZBMnnNMKz657HX7oVofpInFnd+Tllo/iQ+PGR17/k+QAGaZ6Zbv8WTo+nDy
 g/wOM4PR9r1J3HrybovM1DP3utxXmJkQgBOVxAhpCJ6NUV8hCkXP5a1F89Khr4vch9YE
 pBfI5u11EVBxnpadkKK2Y++4FGLzRXXmOopN36aG2f3oooRoAPe9zACmmJumdUwYroBq
 4NWw==
X-Gm-Message-State: APjAAAU2v7R+ApCv7w8Uh205AHqCqj7NP0WB1+U6BSbd5GgP+JQ7SjIS
 oBKxlqhgtWhSWYxelQcl1Bs=
X-Google-Smtp-Source: APXvYqzJztCs5B5fO2HsKuk9KrOTKzLnJc/BQ7QWxXvbl/crt2aXnI7p1PJyFU1wfbUJKbCsn2dMEA==
X-Received: by 2002:a63:8dc4:: with SMTP id z187mr5569042pgd.68.1580671754231; 
 Sun, 02 Feb 2020 11:29:14 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id b4sm17987390pfd.18.2020.02.02.11.29.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 02 Feb 2020 11:29:13 -0800 (PST)
Date: Sun, 2 Feb 2020 11:29:12 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH] xhci-mtk: Fix NULL pointer dereference with xhci_irq()
 for shared_hcd
Message-ID: <20200202192912.GA20763@roeck-us.net>
References: <1579246910-22736-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579246910-22736-1-git-send-email-macpaul.lin@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_112917_220755_6F5BE4E4 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Sriharsha Allenki <sallenki@codeaurora.org>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 03:41:50PM +0800, Macpaul Lin wrote:
> According to NULL pointer fix: https://tinyurl.com/uqft5ra
> xhci: Fix NULL pointer dereference with xhci_irq() for shared_hcd
> The similar issue has also been found in QC activities in Mediatek.
> 
> Here quote the description from the referenced patch as follows.
> "Commit ("f068090426ea xhci: Fix leaking USB3 shared_hcd
> at xhci removal") sets xhci_shared_hcd to NULL without
> stopping xhci host. This results into a race condition
> where shared_hcd (super speed roothub) related interrupts
> are being handled with xhci_irq happens when the
> xhci_plat_remove is called and shared_hcd is set to NULL.
> Fix this by setting the shared_hcd to NULL only after the
> controller is halted and no interrupts are generated."
> 
> Signed-off-by: Sriharsha Allenki <sallenki@codeaurora.org>
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>  drivers/usb/host/xhci-mtk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> index b18a6baef204..c227c67f5dc5 100644
> --- a/drivers/usb/host/xhci-mtk.c
> +++ b/drivers/usb/host/xhci-mtk.c
> @@ -593,11 +593,11 @@ static int xhci_mtk_remove(struct platform_device *dev)
>  	struct usb_hcd  *shared_hcd = xhci->shared_hcd;
>  
>  	usb_remove_hcd(shared_hcd);
> -	xhci->shared_hcd = NULL;
>  	device_init_wakeup(&dev->dev, false);
>  
>  	usb_remove_hcd(hcd);
>  	usb_put_hcd(shared_hcd);
> +	xhci->shared_hcd = NULL;

I may be wrong, but I have some concerns that this replaces
the NULL pointer access with a UAF.

Guenter

>  	usb_put_hcd(hcd);
>  	xhci_mtk_sch_exit(mtk);
>  	xhci_mtk_clks_disable(mtk);
> -- 
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
