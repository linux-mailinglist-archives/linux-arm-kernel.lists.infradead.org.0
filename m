Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114211C0F0C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 09:53:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9y2WNwjzQFnYYIRnuJUyq523Z46eKdHShjOHhWquA7A=; b=mB5rLiGT/XwiX4
	hRxX6j+Ep1fAmtLWUJKsM+ZzljvFxNPBw1ll6TeriouvVnDrhNdQc4qCAtbN6gx36jfVtm3S7VVLH
	nHdPpQktkM4IN2pCIrb4N6Od+5SuSf7Fi46HSfMwxF6O7DXyaghyRY/6YdprRp0FffnzbGTlhVin/
	Ayj/UJgQ8Xy1nH005RoC0swUxImfvWKs0oqqa/nwywKsTjcqd88fmDoCc3wmHlh9HbRrlsyz4w+3G
	XmXSIpqrYQc1u3lLrDNNYgGZT9pJWohlHG6ETFdcoJPbfigt+jyutvkoLmr54kiR53ISlC/YmzJqM
	S51K7XJMgXS3iRYbaviA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUQUW-0005qB-56; Fri, 01 May 2020 07:53:48 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUQUQ-0005pJ-4z
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 07:53:43 +0000
IronPort-SDR: AouiXBa3TqYRwUMCsofnAnKxi5wTdJDkg+HV9kSxN4zcI7OoE6zFe5pYXhWoUSlR1JqNON9nBZ
 ZXsl8LuvQhFg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 00:53:39 -0700
IronPort-SDR: Dn+gD+vL4URtCzu7GeGwctS0NKW0CU9LiZfoU2j+XmeiqUwKRS6ABwm6XH5FThXlU84sEkvWFX
 R4HzDsN9zgGA==
X-IronPort-AV: E=Sophos;i="5.73,339,1583222400"; d="scan'208";a="405683121"
Received: from vivienne-mobl.ger.corp.intel.com (HELO
 dalessan-mobl1.ir.intel.com) ([10.252.13.41])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 00:53:37 -0700
Message-ID: <c6c51b93978b95cc1ca5b03909f0766bc4bc2638.camel@linux.intel.com>
Subject: Re: [PATCH 0/1] Add IMR driver for Keem Bay
From: Daniele Alessandrelli <daniele.alessandrelli@linux.intel.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Date: Fri, 01 May 2020 08:53:34 +0100
In-Reply-To: <20200501070930.GA892454@kroah.com>
References: <cover.1587485099.git.daniele.alessandrelli@intel.com>
 <d3f045b05c83d0eca1d5498587493ca485e0a1a0.camel@intel.com>
 <20200501070930.GA892454@kroah.com>
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_005342_238387_11F55CAD 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: "robh@kernel.org" <robh@kernel.org>, "Shevchenko,
 Andriy" <andriy.shevchenko@intel.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Murphy,
 Paul J" <paul.j.murphy@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-05-01 at 09:09 +0200, gregkh@linuxfoundation.org wrote:
> On Thu, Apr 30, 2020 at 07:49:36PM +0000, Alessandrelli, Daniele
> wrote:
> > This e-mail and any attachments may contain confidential material
> > for the sole
> > use of the intended recipient(s). Any review or distribution by
> > others is
> > strictly prohibited. If you are not the intended recipient, please
> > contact the
> > sender and delete all copies.
> 
> This footer means I delete all of your emails...

My bad, I replied using the wrong email address (i.e., the one that
adds the footer automatically). Sorry about that :/
I'll be more careful the next time.

The original emails (the ones with the cover letter and the patch) were
fine though (unless I did something else wrong). Any advice on how to
have the patch reviewed and eventually merged?








_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
