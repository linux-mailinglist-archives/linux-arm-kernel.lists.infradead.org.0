Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476B41D32A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:23:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvvQjWB+WKjBEK+ZVQegnhpYOiTb9GGvpwR4L05229I=; b=RXUd7nDxTVcb6i
	e0PeqUXsTG8thr4bJO5cGw//lcxniFK1AvSLHBlLvZSzi99XGUihSv+TSfF6HO+8ShlZmebQzkI+V
	8fU7rCnWOyITrSJnlRpyProig3HFFvzmMUD0dq7vniR6sgOWgMkuI5PhY1dQbKy5GqA96ntDC3fVH
	AG9RTuDD2gu4c3MxEwVJlCjKmsN0aCOKOn6MZf12wZLsR0S9KSkYrATw0NcYmOnY7lUScTG7579CC
	+K0TGfbkYVgKMgT7Z427RuT8Y6ABWJDHbdcShjGfjTanDtKhNZa72toX5cOWu7PXzssQa1lc7EluI
	OyFM+jAXnkaVJFH12vqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZElB-0007Sx-Bo; Thu, 14 May 2020 14:22:53 +0000
Received: from netrider.rowland.org ([192.131.102.5])
 by bombadil.infradead.org with smtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEl2-0007Rf-11
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:22:45 +0000
Received: (qmail 14203 invoked by uid 500); 14 May 2020 10:22:37 -0400
Date: Thu, 14 May 2020 10:22:37 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH] usb: gadget: u_serial: fix coverity warning: negative
 index at array
Message-ID: <20200514142237.GB12181@rowland.harvard.edu>
References: <1589443500-3990-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589443500-3990-1-git-send-email-macpaul.lin@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_072244_218781_3163FDF2 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.131.102.5 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Stan Lu <stan.lu@mediatek.com>, Felipe Balbi <balbi@kernel.org>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 Sergey Organov <sorganov@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Macpaul Lin <macpaul.lin@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 04:05:00PM +0800, Macpaul Lin wrote:
> This issue has been reported by coverity scanner.
> Replace "int portnum" by "unsigned int", this void negative index at
> array.

Can you please explain this more fully?  Why does coverity think the 
code might use a negative array index?  Is there some possibility that 
the portnum value might actually be negative?

It's noticeable that your patch doesn't actually change any values, only 
the type.  This means that if the code was buggy before, it's still 
buggy.  Alternatively, if the code wasn't buggy before then coverity got 
a false positive, so no change should be needed.

Alan Stern

> Signed-off-by: Stan Lu <stan.lu@mediatek.com>
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>  drivers/usb/gadget/function/u_serial.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/gadget/function/u_serial.c b/drivers/usb/gadget/function/u_serial.c
> index 8167d37..53951f2 100644
> --- a/drivers/usb/gadget/function/u_serial.c
> +++ b/drivers/usb/gadget/function/u_serial.c
> @@ -587,7 +587,7 @@ static int gs_start_io(struct gs_port *port)
>   */
>  static int gs_open(struct tty_struct *tty, struct file *file)
>  {
> -	int		port_num = tty->index;
> +	unsigned int	port_num = tty->index;
>  	struct gs_port	*port;
>  	int		status = 0;
>  
> @@ -1211,7 +1211,7 @@ int gserial_alloc_line_no_console(unsigned char *line_num)
>  	struct gs_port			*port;
>  	struct device			*tty_dev;
>  	int				ret;
> -	int				port_num;
> +	unsigned int			port_num;
>  
>  	coding.dwDTERate = cpu_to_le32(9600);
>  	coding.bCharFormat = 8;
> -- 
> 1.7.9.5

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
