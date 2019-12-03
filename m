Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8BF110565
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 20:43:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVM0ZlCu8wCJFWvGoLp8Vvw8RyDmEm4ZaQfr89244oE=; b=Bx8XtEFTwNnwzg
	k+p3oqgrMMtPSTs1JpSgHAyrYPlE4KRywHeBYAl0pxCfC4adlFvB1e2l65JQS/oXd2Pm9dqClP1Ao
	2ZQaRUpFGGEb9/U/3hn8vS1bk3MQ7YlinXy5X9O7c0xrAipgYfpYWgRZlGByyPu69gehbh0mNZEHl
	E9KZ5MmvZa2A8qzfGMPv0Bms8091RZHFIDMBHW8uZT5wwH4nE+jyNg9WjJhSVtmR1BOi+0m+wYs8K
	m//BtGV0wocyq2uT1lNCxPcM9AQaIcwA7l5M1Vq/56w/hb2hnhy20rWtRXN+nW7MXVi9o/i05Tw9Y
	aQ7iXV9EZmxUQnsJvjKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icE5H-0007I8-6R; Tue, 03 Dec 2019 19:43:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icE57-0007He-Qo
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 19:43:35 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 969AC206EC;
 Tue,  3 Dec 2019 19:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575402213;
 bh=SM0rYSykbk7tf2FAMkHp85Q+Xwfmlf1KnW/8RwZfe5c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lA3ApHnaIe4TfRVp1tYFqtZxuNftBqD6Ls3dtM2j3Hf3vCKnnDuiLAUT15EGJV551
 GJ1iJzz7CW0GF2Qm+z3ZjCuwHPLn/1rW+c1Uh1G3PxsrKM0tDWogSG3nGeSJElfia2
 Z2728TFQbUxqcqxvmZXmm+4fpxdPWqa/K4RImHx0=
Date: Tue, 3 Dec 2019 20:43:30 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [stable 4.19][PATCH 06/17] remoteproc: fix rproc_da_to_va in
 case of unallocated carveout
Message-ID: <20191203194330.GA2847072@kroah.com>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
 <20191128165002.6234-7-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128165002.6234-7-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_114333_930364_47832E69 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 09:49:51AM -0700, Mathieu Poirier wrote:
> From: Loic Pallardy <loic.pallardy@st.com>
> 
> commit 74457c40f97a98142bb13153395d304ad3c85cdd upstream
> 
> With introduction of rproc_alloc_registered_carveouts() which
> delays carveout allocation just before the start of the remote
> processor, rproc_da_to_va() could be called before all carveouts
> are allocated.
> This patch adds a check in rproc_da_to_va() to return NULL if
> carveout is not allocated.
> 
> Fixes: d7c51706d095 ("remoteproc: add alloc ops in rproc_mem_entry struct")

This commit only shows up in 4.20, not 4.19, so why is this patch
relevant for 4.19?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
