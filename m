Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C184AF4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 03:05:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kOPARL2oZHjfMWziPxGHOyhXwLPFLqLFfM4qZ4tni0=; b=m/P3KBTnk83UkD
	Gg8LLdCL/at7VLV+zzk5vaqzib10ReioRuPieZPQgAskMzwAn3n12QSxcgnaaoSDjHLoeTynJo9na
	v829dHxWvlVpcISPIvA+yXubRJBH3WnmoqJgAUE/hLR8ya1p4X/NXmFMcBcC3zfOqQ/xDVOaeeWf4
	QOn65zqTf/TmB1+/iOjjEOUPDeaZMUaNrC8iJYesdUhot17uR0frCKCUVSh2bsCOn3LMnaizfvrEa
	lNIgYbSmDmqYWiLVkicCvaeN4ZkIrJo61UofLcd5wwHcECjjeeoDJG/yyQb3IeE9oqUV7x5gmnut8
	iny3Aa0E9YX2lol+V6yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdP27-0007gh-IU; Wed, 19 Jun 2019 01:05:03 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdP1v-0007fz-OK
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 01:04:52 +0000
Received: from localhost (unknown [8.46.76.24])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 3F42914B8D0C6;
 Tue, 18 Jun 2019 18:04:34 -0700 (PDT)
Date: Tue, 18 Jun 2019 21:04:30 -0400 (EDT)
Message-Id: <20190618.210430.1199248693691754077.davem@davemloft.net>
To: colin.king@canonical.com
Subject: Re: [PATCH] net: stmmac: add sanity check to
 device_property_read_u32_array call
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190617165836.4673-1-colin.king@canonical.com>
References: <20190617165836.4673-1-colin.king@canonical.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 18 Jun 2019 18:04:47 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_180451_793467_4127A749 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin King <colin.king@canonical.com>
Date: Mon, 17 Jun 2019 17:58:36 +0100

> From: Colin Ian King <colin.king@canonical.com>
> 
> Currently the call to device_property_read_u32_array is not error checked
> leading to potential garbage values in the delays array that are then used
> in msleep delays.  Add a sanity check to the property fetching.
> 
> Addresses-Coverity: ("Uninitialized scalar variable")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Applied to net-next, thanks Colin.

Please make the destination tree explicit in the future by putting
something like "[PATCH net-next]" in the Subject line.

Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
