Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1FF17956A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 17:34:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6rIRqC/X9T1RjL2+PV/CDk6Swe/SiOmwtl+8MjlqOc=; b=E+wr5kkR5GVB4X
	qq9ttVDVrFG6HCU3nwKiLONnr90cFM3WkZb1Qs8Cqh0f/TgnUni6inc5Sm0B/RO8Q2huvmcXwSd9y
	psryC8+bm281dctltpnZeyQhNJEXaxtUOf1AeXWQf/v9MVHsp/Dx6TGWOX5t1/m/fUmyhgWhKvAwP
	3BGk5n6z/7KA70O51NR2MET850nGOaSTj/dqYXc9vpu2B78n7ZQi5obODyKPG96CxL7c7Iu7xor2m
	nKK9Tk98oGBwxPT7P8fa8kwryOk5urdqSdtYeK1fHkAmJfH/OMBdSsy/1NV5aXUae0BrLWZoiQ4QJ
	mxwjv/oGy5bgQi2rfLLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Wyf-0001rT-DG; Wed, 04 Mar 2020 16:34:33 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9WyU-0001pv-5k
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 16:34:23 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 5988F80F5;
 Wed,  4 Mar 2020 16:35:01 +0000 (UTC)
Date: Wed, 4 Mar 2020 08:34:12 -0800
From: Tony Lindgren <tony@atomide.com>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [PATCH v3] ARM: OMAP: replace setup_irq() by request_irq()
Message-ID: <20200304163412.GX37466@atomide.com>
References: <20200301121945.3604-1-afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301121945.3604-1-afzal.mohd.ma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_083422_262664_443D34F9 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>,
 Viresh Kumar <viresh.kumar@linaro.org>, Kevin Hilman <khilman@kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* afzal mohammed <afzal.mohd.ma@gmail.com> [200301 04:20]:
> request_irq() is preferred over setup_irq(). Invocations of setup_irq()
> occur after memory allocators are ready.
> 
> Per tglx[1], setup_irq() existed in olden days when allocators were not
> ready by the time early interrupts were initialized.
> 
> Hence replace setup_irq() by request_irq().
> 
> [1] https://lkml.kernel.org/r/alpine.DEB.2.20.1710191609480.1971@nanos
> 
> Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
> ---
> Hi sub-arch maintainers,
> 
> If the patch is okay, please take it thr' your tree.

Thanks applied into omap-for-v5.7/omap1.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
