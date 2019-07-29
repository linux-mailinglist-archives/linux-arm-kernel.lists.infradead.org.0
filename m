Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A7379A2B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 22:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MT56VKL6XUmRQQBhtUPx/XY0AG71T5RZXKFRC0gYdv4=; b=sKZr9Kg+qipist
	dM7TnKeXK4Hun1Tqx0XhFO7Q/swIK4EDHicG6dwED9QBTNwMC8FVzikm6qL309kNPM+Yh9SLDL4mW
	ICaOlTsdTUmMmE0qQkSZQgq6FfTc31PkGzFfVkc4v+/HQ2VScZnuthSfwGg/eKdtIZHuy2b2DrIVV
	FAIzCuFu8Zqnozep0frDqZxWHmEYxVQgjXZvcI7OYgh+b3AvsdU0u/sUBMb+MDAWQ1Ev9ztl+qL3d
	uCApMD2oOaVM1HOXxnGh9ELgvsU90OQbdq73pYofzzHZVPWal6eFPXa03HW4hWLdZNoyf+qtlaLbp
	AbxTc9pic3pcp5vOw6Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsCVO-00025C-1y; Mon, 29 Jul 2019 20:44:26 +0000
Received: from atlmailgw1.ami.com ([63.147.10.40])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsCV7-00024R-OZ
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 20:44:11 +0000
X-AuditID: ac1060b2-413ff70000003a7d-87-5d3f5a99b31b
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw1.ami.com (Symantec Messaging Gateway) with SMTP id
 08.6A.14973.99A5F3D5; Mon, 29 Jul 2019 16:44:09 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 29 Jul 2019 16:44:08 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Linus Walleij <linus.walleij@linaro.org>, Andrew Jeffery <andrew@aj.id.au>
Subject: [v6 2/2] gpio: aspeed: Add SGPIO driver
Date: Mon, 29 Jul 2019 16:43:46 -0400
Message-ID: <1564433026-32163-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563564291-9692-3-git-send-email-hongweiz@ami.com>
References: <1563564291-9692-3-git-send-email-hongweiz@ami.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFLMWRmVeSWpSXmKPExsWyRiBhgu7MKPtYg7/nZCx2Xeaw+DL3FIvF
 /CPnWC1+n//LbDHlz3Imi02Pr7FaNK8+x2xxedccNgcOj6vtu9g93t9oZfe4+PEYs8eda3vY
 PDYvqfc4P2Mho8fnTXIB7FFcNimpOZllqUX6dglcGb9ubmUr2MhdcXvrOcYGxk7OLkYODgkB
 E4kXp6y6GDk5hAR2MUkcmSPfxcgFZB9mlHjSeJ0RJMEmoCaxd/McJhBbRMBP4vqtt6wgRcwC
 jUwSP18fYAZJCAsYSPxc/JQdZCiLgKpEyxFdkDCvgINE25ubrCC2hICcxM1znWDlnEDxXz0t
 TBCL7SWe79rLBFEvKHFy5hMWEJtZQELi4IsXzBA1shK3Dj1mgpijIPG87zHLBEaBWUhaZiFp
 WcDItIpRKLEkJzcxMye93FAvMTdTLzk/dxMjJLw37WBsuWh+iJGJg/EQowQHs5II72Jx+1gh
 3pTEyqrUovz4otKc1OJDjNIcLErivCvXfIsREkhPLEnNTk0tSC2CyTJxcEo1MKqw5PhOPML+
 45zOW5bG/e6NZSeF7t9n+RXpUnLgg8oE4YOT3yxL8u6avbZT4bvOfQ3bBwy3fzZuaUm61mDz
 /O2bpa98Z65etvz3doNYzTWsVje6HzYonRANbo/4eERixrYTW+wqNhiECU/o1GnRLe28UsaS
 9Z1Ba1uKwqlkxe7rCTbH6wST7JVYijMSDbWYi4oTASmAHMldAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_134409_862267_375EF1D2 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.147.10.40 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Joel Stanley <joel@jms.id.au>, Hongwei Zhang <hongweiz@ami.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Linus,

Thanks for your detailed comments.

We just submitted a v6 of sgpio-aspeed.c, it includes the updates based on
your initial feedback:

1. fix a bug in aspeed_sgpio_dir_out()
2. some comments clean up.

Regards,
--Hongwei 

> From:	Linus Walleij <linus.walleij@linaro.org>
> Sent:	Sunday, July 28, 2019 7:38 PM
> To:	Hongwei Zhang
> Cc:	Andrew Jeffery; linux-gpio; Joel Stanley; linux-aspeed; Bartosz Golaszewski; linux-kernel; linux-
> arm-kernel
> Subject:	Re: [v5 2/2] gpio: aspeed: Add SGPIO driver
> 
> On Mon, Jul 22, 2019 at 10:37 PM Hongwei Zhang <hongweiz@ami.com> wrote:
> 
> > As you suspected it correctly, AST2500 utilizes all the 32 bits of the 
> > registers (data value, interrupt, etc...), such that using 8-bit bands 
> > [7:0]/[15:8]/23:16]/[31:24] of GPIO_200H for SGPIO_A/B/C/D .
> > so registering 10 gpiochip drivers separately will make code more 
> > complicated, for example gpio_200 register (data_value reg) has to be 
> > shared by 4 gpiochip instances, and the same is true for gpio204 
> > (interrupt reg), and other more registers.
> > So we would prefer to keeping current implementation.
> 
> OK this is a pretty good argument. My review assumed one 32-bit register was not shared between 
> banks but it is, I see.
> 
> The above situation can be managed by regmap, but that will just a different complexity so go with this 
> approach then.
> 
> Yours,
> Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
