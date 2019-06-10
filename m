Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9453B9FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZjRordsYdSxQ8mhlCI544IF2/hnD2LJLmo6GfeAOB5A=; b=lyXXLmJIUEkxRW
	qLF1xUxvxY1QMEuOy4NXgs4HWGHsHI+/eufAwS2Q1e/QxASgl18EoAvVrKVQZknOrV0L7rvH36fYp
	3Lts75JKtn79gCe2ZPvZC4X6QCeq9nCf9LWR3wfiWytMm0OfnGLTbS7H1b33XwUtU1FoY128V+YlE
	0S8wIBTaSlrN/HOAU+XUV8ARYKIGyfhEpUVA8RHagMgw4B9sScbIvOEiiPn/DLfuWR6hrulVWrgV0
	E9XLBVr/y1UAvzcKkkmHLdV2RIKPGGGGdGJxAqV6iTri0a6Wa5FkqOH6HkmphET6Vxu5h2iLh0Hck
	geq/wtGlyFvwUi8TV3pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNUN-0005kE-OO; Mon, 10 Jun 2019 16:49:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNUD-0005jr-1B
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:49:34 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C0BC206C3;
 Mon, 10 Jun 2019 16:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560185372;
 bh=DJWzh4M4XAj7HnA5+HP6vbhzYDiXG0edcx1jVTCzodk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TN35St+LWALMFOUIbNZCi+b2AKvJT7luQr7HO7i0ZYDPGVHb/uaL6ku9c+pEHrNV9
 aItkt+n3O5qsGddEuzo286gMrtLAE6RNGenXK2AfCNAOJ0wbArn700Fjx6zWdNeFlU
 DP/D7Zm8gFmoa04wmmEJU8O0ce8DdSFxMXwc52Ro=
Date: Mon, 10 Jun 2019 18:49:30 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "sudheer.v" <open.sudheer@gmail.com>
Subject: Re: [patch 1/5] AST2500 DMA UART driver
Message-ID: <20190610164930.GA32085@kroah.com>
References: <1559737395-28542-1-git-send-email-open.sudheer@gmail.com>
 <1559737395-28542-2-git-send-email-open.sudheer@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559737395-28542-2-git-send-email-open.sudheer@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_094933_090042_66C2E9CD 
X-CRM114-Status: UNSURE (   7.77  )
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
> From: sudheer Kumar veliseti <sudheer.open@gmail.com>
> 
> Signed-off-by: sudheer veliseti <sudheer.open@gmail.com>
> ---

I can not take a patch without any changelog text at all, especially for
one that is 1928 lines long :(

Please provide a proper changelog and I will be glad to review it.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
