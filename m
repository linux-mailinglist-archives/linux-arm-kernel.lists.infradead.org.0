Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C646C181607
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 11:44:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jT2QcrooqjFTbN6kqz4urmlBTJK6pcSdHT7k3vuN+b8=; b=pRJKnwg+GqZTIx
	JA9Nyv8zdHtauvKDDjC2ntsfyMAxUA6ULx9N111hGl7xADe+gpdR58VlZ/lSxiJqJAVmcUPJ5SCRE
	Cwg59uGa0v+c+BMLZoz3INpU667FwzoJt2dgNcZTMV91pH2UfY7EbS38jqeTQAKRLh8RUDhOLaXoK
	8nniemOcYUNY24X7bRetoMBld93CKlGE2Mib9qyVOQz7Qdf2JN4MYD6zxv1bFrxbLzWm1VBRH4/iq
	0Emj02WLQGzTyFIxEup4JnwCy7IAHZGPs0Vb2k7nYSZ8KGSQ3f7Y9/jULWKdDH+gajWCLCur399UF
	xMXos9mnZwPAZJBZxsCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jByqM-0003os-21; Wed, 11 Mar 2020 10:44:06 +0000
Received: from elvis.franken.de ([193.175.24.41])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jByqD-0003o3-NR
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 10:43:59 +0000
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1jByq3-0008R7-00; Wed, 11 Mar 2020 11:43:47 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
 id 9B343C0FE2; Wed, 11 Mar 2020 11:42:17 +0100 (CET)
Date: Wed, 11 Mar 2020 11:42:17 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [PATCH v4] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200311104217.GA10615@alpha.franken.de>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
 <20200311053126.GA48442@ubuntu-m2-xlarge-x86>
 <20200311090308.GA5060@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311090308.GA5060@afzalpc>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_034357_912701_7F78652D 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [193.175.24.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Keguang Zhang <keguang.zhang@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 02:33:08PM +0530, afzal mohammed wrote:
> diff --git a/arch/mips/kernel/cevt-r4k.c b/arch/mips/kernel/cevt-r4k.c
> index 64e917dfe6b2..d24e4f2985c3 100644
> --- a/arch/mips/kernel/cevt-r4k.c
> +++ b/arch/mips/kernel/cevt-r4k.c
> @@ -252,7 +252,7 @@ unsigned int __weak get_c0_compare_int(void)
>  
>  int r4k_clockevent_init(void)
>  {
> -	unsigned long flags = IRQF_PERCPU | IRQF_TIMER | IRQF_SHARED;
> +	unsigned long flags = IRQF_PERCPU | IRQF_TIMER;
>  	unsigned int cpu = smp_processor_id();
>  	struct clock_event_device *cd;
>  	unsigned int irq, min_delta;

I don't see why this should help. In my tree only sgi-ip30 removes
IRQF_SHARED from flags, but then it uses setup_percpu_irq().
What do I miss ?

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
