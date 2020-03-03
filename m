Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E32B177C44
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 17:48:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Toczb6Rq/VgTSe5LwbeN9NL2TR1M3us0cLPZ9CRnqUs=; b=kl9hmvXIfM9Ipv
	gmqlO7jjXDzJ8lHZnkTxtzzjd+i40io/xwAY/WvKNrGHZnjsdv4Z+u8U93i8BkXNrvM1Guvb1c98A
	ac7PkzcMmkzNw3JzgqKuNOvzq3zKE2ml6B/uvVXFMqzMqyZqo801BTr5lJt1PU4Gvkx96U1Kck1HG
	2mtnab+J7mRDoIbNompI9Jm3IF2ytBCueRpZvSMI2NS11ocyWXoHeKkkS+4hlUW7SftCy3oOCx9ef
	6L7GAosqU0Lb9c9vD34o+wSLGsTi1KzTqlGnmLPhV4uP0SWachiMEsFxsESwp6tbJfDPQmYk2hevm
	sip54fh1ITAWhczKrkaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Ai7-0002jO-Re; Tue, 03 Mar 2020 16:47:59 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Ahz-0002iI-T1
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 16:47:53 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48X2xb47B8z1qr4B;
 Tue,  3 Mar 2020 17:47:47 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48X2xb3qF5z1qyDq;
 Tue,  3 Mar 2020 17:47:47 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id gJ6ObDzFqih3; Tue,  3 Mar 2020 17:47:46 +0100 (CET)
X-Auth-Info: YGkGBh9cN+7KQy6H8DKTCYEMI7SF9ey/+puti7n2C+g=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue,  3 Mar 2020 17:47:46 +0100 (CET)
Subject: Re: [PATCH] ARM: dts: imx6sx-softing-vining-2000: Enable PCI support
To: Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
References: <20200219130712.28108-1-festevam@gmail.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <e11f66a1-b8d6-f478-6a8d-b680ac9fb60f@denx.de>
Date: Tue, 3 Mar 2020 14:07:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200219130712.28108-1-festevam@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_084752_091561_5DEBF6C5 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/19/20 2:07 PM, Fabio Estevam wrote:
> Add PCI support.
> 
> Since this board has an active high PCI reset line, pass the
> 'reset-gpio-active-high' property.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Reviewed-by: Marek Vasut <marex@denx.de>
Tested-by: Marek Vasut <marex@denx.de>

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
