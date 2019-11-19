Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8934101274
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 05:31:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=St2gowc6IxazVtfoSEjtYr8ZSh0wheZ5ANc7Igs+zvk=; b=tYIMuABLVs8Hp2
	vdd+C4m61zBMNtzZKFn+sBItsezqF98nITBheohMOKHNIN7FpYjBwu8F9jUYOFAWz+hxDc4S4bhcD
	5I+TPT2J70IMc73AsR0H+19vlbanPbjNsqnsb79Z4eJCdHDBqyo7ZYMXvroW0AWUudv3g+1zg73tg
	0haxeq5QvlRRMJkIuFhppveW9iSPKstO0+8nqDkXB1Rd9Xe0o3GaOSR8IhvzNgF7BQC/pUZYP3qTf
	3TKc9mHaJYI5DC+bp3djRhP6vJfDH23HkldgyXDudfyNUrWJoLr5pDjQKoj+iEMJntsFE5REQjORy
	g4F78g58HRUNmfyzxMqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWvAI-00016o-QV; Tue, 19 Nov 2019 04:30:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWvA8-000165-Hm
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 04:30:52 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2CB6922316;
 Tue, 19 Nov 2019 04:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574137846;
 bh=T37bxWVhJKKhbkDEGYOqyIok1+0lbyLc5krYCRyZ/rQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lWq0fdyNOB73+P+FwU+ZXEW0zXXHJHTf+oJe0KRum+B/NFZ+zcVHeXDFUEXoOQ6mN
 AJpegyTyXrHPmLxUV2c7NgN3Dp195roY3XdCr4d6d4kKJimLcMw09RlgfmFdDyRImC
 T5w1vNN0wPXniGL0ttZZqRoUpbWuuNl1eO8fCvyQ=
Date: Tue, 19 Nov 2019 05:30:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 1/2] coresight: funnel: Fix missing spin_lock_init()
Message-ID: <20191119043044.GB1446085@kroah.com>
References: <20191118185207.30441-1-mathieu.poirier@linaro.org>
 <20191118185207.30441-2-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118185207.30441-2-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_203048_610038_24B80017 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 11:52:06AM -0700, Mathieu Poirier wrote:
> From: Wei Yongjun <weiyongjun1@huawei.com>
> 
> The driver allocates the spinlock but not initialize it.
> Use spin_lock_init() on it to initialize it correctly.
> 
> This is detected by Coccinelle semantic patch.
> 
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> Tested-by: Yabin Cui <yabinc@google.com>
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  drivers/hwtracing/coresight/coresight-funnel.c | 1 +
>  1 file changed, 1 insertion(+)

Is this, and the 2/2 patch here, needed for stable releases?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
