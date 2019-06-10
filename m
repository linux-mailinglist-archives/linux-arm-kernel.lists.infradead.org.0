Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 744823BA01
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ImUIEVpOlbOyptR34ECedk7I72QXJcxoH8aQ7MR1Koc=; b=S3nqj53P83Dexn
	vnEJn5LmGXtkpmv1heLI5xyjFFUqwnB0QzGvGE+zNn2ZzUsrUPRiz/BTGIas746l7ArhFZn1QRw+a
	w0pR8Ws6EohmGns8NbqAl3yyfunazPU2seNW8tjRUZRcIxPmGkP9EMSDV8R3ipoN4yVgeaDyOWVsw
	ALYb6R6yBYQCQMWO5HTocudACJ1XQsYXdGQJl2cr1nzZsZvQlx0McmJ0+JE2VXSU2Wohs2J/afMxH
	bCWOIBF0QLZ+qMscoHtn9BYA3f4sd7z6XOwpe00CXb+4Z2GAp/I5e3E7PKpXJlzLERBn7TvYg52Eh
	HtZINBsYui4fqxQSMvRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNVU-0007Ec-K6; Mon, 10 Jun 2019 16:50:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNVL-0007ED-2c
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:50:44 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09DC5206C3;
 Mon, 10 Jun 2019 16:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560185442;
 bh=IfkuH4QdGGwZoDp+X7T2nRPo/51iLlSiAiiHm/+uJjo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=04Wa46m4OqMS4nMsCoL6Kl0DCTHFMtKfZA/ilxstSrLFpFhir8DuX0YitoR+URRJc
 2Cb15xkPe9D7qIYa2Q3djy+4hYS7/hrxSnxJkx5hz4phfBKDjmd7jP+lFxKTTKeorI
 kyoWZRk93z+67h6eLwfe3/4+21AiROHdtIjbr6vc=
Date: Mon, 10 Jun 2019 18:50:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "sudheer.v" <open.sudheer@gmail.com>
Subject: Re: [patch 1/5] AST2500 DMA UART driver
Message-ID: <20190610165040.GB32085@kroah.com>
References: <1559737395-28542-1-git-send-email-open.sudheer@gmail.com>
 <1559737395-28542-2-git-send-email-open.sudheer@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559737395-28542-2-git-send-email-open.sudheer@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_095043_135740_3FFFC97F 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 sudheer.veliseti@aspeedtech.com, linux-aspeed@lists.ozlabs.org,
 andrew@aj.id.au, benh@kernel.crashing.org,
 shivahshankar.shankarnarayanrao@aspeedtech.com, robh+dt@kernel.org,
 joel@jms.id.au, linux-serial@vger.kernel.org, jslaby@suse.com,
 mchehab+samsung@kernel.org, linux-arm-kernel@lists.infradead.org,
 sudheer Kumar veliseti <sudheer.open@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 05:53:11PM +0530, sudheer.v wrote:
> +
> +#define CONFIG_UART_DMA_DEBUG
> +
> +#ifdef CONFIG_UART_DMA_DEBUG
> +#define UART_DBG(fmt, args...) pr_debug("%s() " fmt, __func__, ## args)
> +#else
> +#define UART_DBG(fmt, args...)
> +#endif
> +
> +#define  CONFIG_UART_TX_DMA_DEBUG 1
> +
> +#ifdef CONFIG_UART_TX_DMA_DEBUG
> +#define UART_TX_DBG(fmt, args...) pr_debug("%s()"fmt, __func__, ## args)
> +#else
> +#define UART_TX_DBG(fmt, args...)
> +#endif

Why have you left debugging on here?

Why does your tiny driver have custom debug macros?  Please always use
the in-kernel standard ones so you can dynamically enable/disable them
as needed without having to rebuild the code.

I stopped reading here, sorry.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
