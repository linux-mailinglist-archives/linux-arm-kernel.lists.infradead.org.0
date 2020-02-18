Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3AB162D7E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6t3EVDewTXAX278fRAHW6n+qIzHWUAGOwZoQrohqOs=; b=WAVi4v9i/EPBgR
	JSwhhpopVeDk6uRb0XtF7LjXakLLrn1vzkEjE6paYzamO+0yScDZYy1fwuvS/RQVLCUzSiQhUFNS4
	qTLXox2WzWqKKZM7To2nsvyh5A2SBD6jeKg2915bjIrauGzqgduamT4VltaRHhAfY4dEFVQl7hl+a
	1ILKLxa0hC16fUlusfiXAiRclOb6pQDledKldNuSmq55reqHZzR3X8ViekZ1I06d6ILLwYJeQrP2D
	zwdtrDZg6qlO3NoT5BJj6WLjX9hZxPwVrOwhMRq3RiklRPu+fa3kzQvpxM+q6dPjoMvA8R6NpOgCy
	iznmuZELxeLl/VkWcXTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j474H-0006XV-VY; Tue, 18 Feb 2020 17:53:57 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4746-0006Ws-13
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:53:47 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48MT4745rYz1tkV3;
 Tue, 18 Feb 2020 18:53:43 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48MT473JkQz1qqkc;
 Tue, 18 Feb 2020 18:53:43 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id zGwf49Nk38y1; Tue, 18 Feb 2020 18:53:42 +0100 (CET)
X-Auth-Info: kI5+ZVBQrKn1XDWzCWtpIyppsFJcjKvR4tUcuV6jlt4=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 18 Feb 2020 18:53:42 +0100 (CET)
Subject: Re: [PATCH v2 1/2] irqchip/stm32: Add irq retrigger support
To: Alexandre Torgue <alexandre.torgue@st.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
 <20200218131218.10789-2-alexandre.torgue@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <e4d2f2b5-088e-a6aa-c9b5-75443b02896f@denx.de>
Date: Tue, 18 Feb 2020 18:51:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200218131218.10789-2-alexandre.torgue@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_095346_217119_D5401B10 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/18/20 2:12 PM, Alexandre Torgue wrote:
> This commit introduces retrigger support for stm32_ext_h chip.
> It consists to rise the GIC interrupt mapped to an EXTI line.
> 
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

Reviewed-by: Marek Vasut <marex@denx.de>
(and I tested the previous version on STM32MP1)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
