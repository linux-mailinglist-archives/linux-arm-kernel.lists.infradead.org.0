Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9592B65AA9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndqQT6q7b9oM3/PuHy/CZUBSF19ItdO7OreXG9nRp5o=; b=C7wu8B0wM1bjQE
	x0feSWscPUcquGhI+/iE5m2sYkedUdm1i3Ppz5stazeCbNw7VCF2A4nWn7aPkUKOUFSEpDBaSrND5
	8a1EYY2Yx4mmNISjYgvEUSLyZkWSSJi6xrga/oIT6s1vlyKXuVBPrdUYOPgMZU5pIrEpH8WrBJrsK
	dRCYoI+qxl6lXnl9rum5LrZSVXEysNf6CDFU5HuYZJsWsu3OvDCWD0Rd7dp5T0CozKU/zoB4CSMpq
	5ayntDzl76t3cggycN1MRRY64zjJ+S31zNErle0fE+Asjas5vG9z0UV4t9OI24EBOcWBDz7ktgxmF
	5TP3YMiJNx1AM/5OHYBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlbH4-0007IK-Nb; Thu, 11 Jul 2019 15:46:22 +0000
Received: from [179.97.35.11] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hlbGt-0007I3-B3; Thu, 11 Jul 2019 15:46:11 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id F20CD40340; Thu, 11 Jul 2019 12:46:06 -0300 (-03)
Date: Thu, 11 Jul 2019 12:46:06 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Yuehaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH v2 0/2] minor fixes for perf cs-etm
Message-ID: <20190711154606.GA10090@kernel.org>
References: <20190321023122.21332-1-yuehaibing@huawei.com>
 <b5d842f9-3475-2560-2933-9a1984c1641a@huawei.com>
 <d178fc8c-7e6c-0272-4ead-9b4ee15d1e7d@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d178fc8c-7e6c-0272-4ead-9b4ee15d1e7d@huawei.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: mathieu.poirier@linaro.org, suzuki.poulose@arm.com, peterz@infradead.org,
 arnaldo.melo@gmail.com, linux-kernel@vger.kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Thu, Jul 11, 2019 at 10:33:09PM +0800, Yuehaibing escreveu:
> 
> Arnaldo, can you pick this?
 

Thanks, and sorry for the delay, fell thru the cracks.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
