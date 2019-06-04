Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D353472D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0q+ecq6Pl5tWttBYmYnH6HqLUFRWZrTj5ph/YX9HaqQ=; b=e9ZnGGQVCcB/Jw
	rcHSixPAtZQACxjhiewlG05XqSQ9pmDvl9XpMosqxe4wdPiL+2W/hbTIpOuPD16VCNG5v8R9vFlXo
	H1gs2hyocfQZ7XGO4fDew/U28NpWbO+1KhT1ogzXHdddj6fvtoUC/TxNqFCIOjRiysTPO5ZRmb8IR
	qS9bshnydBgEKm9ICz4xGJAc+JpzsIG5ydY5WE0AxqrHDWrLChsVKMjSx9LGLSlERfjvrMVYGYNzf
	1Fs8zMOltFSHd3Ssw5CPdDEsIfgMRU1V6lZsV9wJE6OjpzfYcfGbc/fqLbOR6zL/v8j9Yd29gt5tG
	MeIelmWKtoRDlpJF41Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8og-0006Z5-Tf; Tue, 04 Jun 2019 12:45:27 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8oa-0006Yg-Ld
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:45:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC7B8A78;
 Tue,  4 Jun 2019 05:45:19 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 520933F690; Tue,  4 Jun 2019 05:45:18 -0700 (PDT)
Date: Tue, 4 Jun 2019 13:45:15 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH v4 1/2] drivers: base: cacheinfo: Add variable to record
 max cache line size
Message-ID: <20190604124515.GB6610@arrakis.emea.arm.com>
References: <1559009814-17004-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559009814-17004-1-git-send-email-zhangshaokun@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_054520_708376_9D5F616B 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 10:16:53AM +0800, Shaokun Zhang wrote:
> Add coherency_max_size variable to record the maximum cache line size
> for different cache levels. If it is available, we will synchronize
> it as cache line size, otherwise we will use CTR_EL0.CWG reporting
> in cache_line_size() for arm64.
> 
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Jeremy Linton <jeremy.linton@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>

Both patches queued for 5.3. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
