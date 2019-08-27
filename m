Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121769DAD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 02:57:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zS8g+Itye2WCSoUgxyJyixwWVbFDxMcg038WOUBzzv4=; b=m0aoil64CoUjgf
	4QNC3JsE3gLnJkMJgyRfPZj3Zf19WQPWlrTLC3zmhSTvJOnjtZ77Cilu4p3UWoZPPgDBo5x8AVFbR
	/lwI90p724QbVnz70BsEEfxnDFzdfSPWl2RM0YWYfXnbNkIs/t65eKZAUZl/09PPa2TWPGxFk/eym
	Q4TMGHzYJU8fUqZ1WZ97mJZUahasPdKykXuWD2sEMrjIoIjwmnUdHcp9DFanElvX3YizFAyN6oAqc
	n0qXvNRSr7r6vZ12cPbbJ2nJzOB2ZPuzohUTpkPXModGxU0d/tqTOtvIHxSPomofpj243yT9dKNcp
	6TQ9UWTCt4H+wk611mvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Pns-0005jD-Ps; Tue, 27 Aug 2019 00:57:44 +0000
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Png-0005is-6h
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 00:57:33 +0000
X-IronPort-AV: E=Sophos;i="5.64,435,1559512800"; d="scan'208";a="398956385"
Received: from unknown (HELO hadrien) ([183.173.92.181])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 02:47:08 +0200
Date: Tue, 27 Aug 2019 08:47:04 +0800 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH -next] mmc: aspeed: Fix return value check in
 aspeed_sdc_probe()
In-Reply-To: <629128e7-cc91-412f-8946-668fac2eb3b9@www.fastmail.com>
Message-ID: <alpine.DEB.2.21.1908270845410.2537@hadrien>
References: <20190826120013.183435-1-weiyongjun1@huawei.com>
 <20190826130343.GA23584@kadam>
 <629128e7-cc91-412f-8946-668fac2eb3b9@www.fastmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_175732_521964_6701A8DD 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -4.3 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.83 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: linux-arm-kernel@lists.infradead.org, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-aspeed@lists.ozlabs.org, kernel-janitors@vger.kernel.org,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Wei Yongjun <weiyongjun1@huawei.com>, Joel Stanley <joel@jms.id.au>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 27 Aug 2019, Andrew Jeffery wrote:

>
>
> On Mon, 26 Aug 2019, at 22:34, Dan Carpenter wrote:
> > > Fixes: 09eed7fffd33 ("mmc: Add support for the ASPEED SD controller")
> >                         ^^^^
> > When we're adding new files, could we use the prefix for the new driver
> > instead of just the subsystem?  "mmc: aspeed: Add new driver"?
> > Otherwise it's tricky to know what people want for the driver.
>
> I don't have any issue with the request, but I don't understand this last
> bit. What do you mean by "it's tricky to know what people want for the
> driver"?

There is no obvious algorithm that tells how to go from a file name to an
appropriate subject line prefix.

julia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
