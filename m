Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 754E47BBFE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLdDb6XUAEesCx04SWMyJhj/S3HcnYSgnl3kxLLddm4=; b=NZiX5SY+Cec0u9
	NeA3TFmsbnOeJN6oh50yQyvjrl4fSOQCldXIQawgIaDgH9Wj1NEX8DCwd4PWiu2rH4seNUJOENr1m
	R5VtTa8yw6WxCOfDzqGB0VnfpKpxipe8lgkKqKS6dFSExyuBOqRtg7BlFzZReEWrTjCDlMIcd0On/
	P1TK04uwRGvSlv1QCeB3/E/xjv2Y00wN8chXx5qVzqXvncBIBG0J0W93OdWMO6a36S+Sbd/PsYtn0
	JWtDXS0/z2HVMpmpsJl80MpheyVA/YQGVwB4ZC4DjbDIjYUQoGsJ8Ybqf3AAvS7snCtzGhXIpn+eW
	BSFrnh8uBwW7Lktg5EFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskBr-0007Zm-1s; Wed, 31 Jul 2019 08:42:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskAQ-0006Wl-64
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:41:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7EE10206A3;
 Wed, 31 Jul 2019 08:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564562461;
 bh=2AMJKQAIYqySJFCOFXeanD8LAYVz2PapeYUAn5OrGkI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NDE0y2eOIYjWbDWePVfwitFojS9MPeBsJm25h/c3+zwl0eA1qD9r6COZ051ELCiVY
 zyx36m+6yoaFMLQWdHYxsyt8ggEIGfSjsd7nXVvNbTBgOOoubxg/SysOp5ppQ5pBtt
 dy7bffEyvEb8Ir2h05tMbUiE70X2y7jd8Ii58IsA=
Date: Wed, 31 Jul 2019 09:40:57 +0100
From: Will Deacon <will@kernel.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v6 32/57] perf: Remove dev_err() usage after
 platform_get_irq()
Message-ID: <20190731084056.jd7p5lrvyun6ynlf@willie-the-truck>
References: <20190730181557.90391-1-swboyd@chromium.org>
 <20190730181557.90391-33-swboyd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730181557.90391-33-swboyd@chromium.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_014102_405046_9031D720 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 11:15:32AM -0700, Stephen Boyd wrote:
> We don't need dev_err() messages when platform_get_irq() fails now that
> platform_get_irq() prints an error message itself when something goes
> wrong. Let's remove these prints with a simple semantic patch.
> 
> // <smpl>
> @@
> expression ret;
> struct platform_device *E;
> @@
> 
> ret =
> (
> platform_get_irq(E, ...)
> |
> platform_get_irq_byname(E, ...)
> );
> 
> if ( \( ret < 0 \| ret <= 0 \) )
> {
> (
> -if (ret != -EPROBE_DEFER)
> -{ ...
> -dev_err(...);
> -... }
> |
> ...
> -dev_err(...);
> )
> ...
> }
> // </smpl>
> 
> While we're here, remove braces on if statements that only have one
> statement (manually).
> 
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>

Acked-by: Will Deacon <will@kernel.org>

Please let me know if you'd rather I route this via the arm-perf tree.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
