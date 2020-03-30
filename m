Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DB2197D10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 15:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=up0HASgHMxJKpVsCK5Cp/H5hsh0iP4X0ydSVG7/oNj4=; b=fLnpcJPHgVU1oA
	wITPxg8Q09sb5Zip+7+5FJU7xMwRT7YybbLqIJTSMJnhh1j85UooIj/XfHi7Pqm4AJJOCM9gTlx6P
	eVXm3+A69XoaXILdD65kPGau5wh7qig0ccjCgw5+qvMsJ1Y2kjqIMpQD2aw3rJM5J+i4M3bkUunEQ
	RJIqBg8j19h1fUbWIQNEoWKI3/i2Q3vw52NjA9JHQvGMX25yOF9wFW9ZFaA8hDRVpLTVrV9azN9Vc
	jwYTMxUxczHP5q4OgXSel/7SHkgGmN2Vynb57QDuRney+K4g4UvRPvOlW5D9sSnx+4sfN6rASDTql
	Qs8hen1phczZitiiwC9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIubM-0005YC-GJ; Mon, 30 Mar 2020 13:37:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIubD-0005XP-Al
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 13:37:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F31920757;
 Mon, 30 Mar 2020 13:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585575426;
 bh=ayBEhF0emKa95SIxiPEA4fE7OhgG5vRQ/2ittLcRunY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KGHMfbZXHzvQVU69kiYX6HgE+R/J/bX7CBzjc+p92oGXZg5m5xjUo7qDrj8UgO9w4
 E5sKbb1Ufj3uzcosCtLnlRmKX6Tl8cnJ02XOLM+ITto9bZlaGQdCCM1yR2QlDzWJZt
 Vzo3XO29jIjmVwuCUQZ82WbNrp2nqBK6YOKU3og4=
Date: Mon, 30 Mar 2020 14:37:02 +0100
From: Will Deacon <will@kernel.org>
To: George Spelvin <lkml@sdf.org>
Subject: Re: [RFC PATCH v1 39/50] arm: kexec_file: Avoid temp buffer for RNG
 seed
Message-ID: <20200330133701.GA10633@willie-the-truck>
References: <202003281643.02SGhMtr029198@sdf.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202003281643.02SGhMtr029198@sdf.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_063707_396453_888DF7F2 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Hsin-Yi Wang <hsinyi@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 10:45:27AM -0500, George Spelvin wrote:
> After using get_random_bytes(), you want to wipe the buffer
> afterward so the seed remains secret.
> 
> In this case, we can eliminate the temporary buffer entirely.
> fdt_setprop_placeholder returns a pointer to the property value
> buffer, allowing us to put the random data directy in there without

s/directy/directly/

> using a temporary buffer at all.  Faster and less stack all in one.
> 
> Signed-off-by: George Spelvin <lkml@sdf.org>
> Cc: Hsin-Yi Wang <hsinyi@chromium.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm64/kernel/machine_kexec_file.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Acked-by: Will Deacon <will@kernel.org>

Please let me know if you'd like this queued via the arm64 tree, as it
appears to be independent of the rest of this series.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
