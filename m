Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF401AC4A3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 16:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWq41o/RZWX2QdDyqYPUBKGzMEHcgM80VAe1C764ElA=; b=o25zm+2PLkW3N6
	5qcD4+l/RfHveA0PHxEU/BZKJJD8txhOtX2VtkSPcQEbb9eCEr8YQMv0O9TLqZtdSlpKaDCJ7O1TI
	l9nh/5jonW0qQCyrnjHh9D+beH3xQC4qv6E2TQD/Nusn9OczPG1OE9s0KSlOmoyNstxUcNGT3keTo
	8WIP9HGAAJh+uREEYM9MJ/B80RBd0lipLyR0ECV0I9pBlg2zEZyCGfBe78KYzRm+RIr6Na7CT3GMQ
	H4yKUqWKd0OSlEhdzIxPTBOEP8WEkjKQgJU2cn8ctKBH6zN+Kma4O/Q7gda8Q7J32jGj/NpEGXI91
	DCSztdtgMH1mAiu0IB6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP56p-0000lm-SH; Thu, 16 Apr 2020 14:03:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP56T-0000eA-EO
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 14:02:54 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E4CA22247;
 Thu, 16 Apr 2020 14:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587045772;
 bh=lERJmzbwc5ScyG8KTnuTzGkoZ1Fds8erwGnk4BHFhws=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ntKugfcpsklKuYMeG5MOV6czGfk8XQoFoBzDuOP0gdFmtDAT/0/cd7WdooVN+Mfqj
 HZ3W+QJIADrTLeTCtREHWt5DOKAq/G3y1jeSjuBnV6t2l8MN3tCJmgY1A+KrScYZw6
 TFXvZDdoY7pmzFrTWkh48CI8SJiB7mNk4TLHEgQU=
Date: Thu, 16 Apr 2020 15:56:18 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Hyunki Koo <hyunki00.koo@gmail.com>
Subject: Re: [PATCH v7 2/2] Support 32-bit access for the TX/RX hold
 registers UTXH and URXH.
Message-ID: <20200416135618.GA1295013@kroah.com>
References: <20200411123325.30501-1-hyunki00.koo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200411123325.30501-1-hyunki00.koo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_070253_528332_45A09B24 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Kukjin Kim <kgene@kernel.org>, krzk@kernel.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Hyunki Koo <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 11, 2020 at 09:33:24PM +0900, Hyunki Koo wrote:
> From: Hyunki Koo <hyunki00.koo@samsung.com>
> 
> This is required for some newer SoCs.
> 
> Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> Tested on Odroid HC1 (Exynos5422):
> Tested-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
> v2: 
> line 954 : change rd_regl to rd_reg in for backward compatibility.
> line 2031: Add init value for ourport->port.iotype  to UPIO_MEM 
> v3:
> line 2031: remove redundant init value  for ourport->port.iotype 
> v4:
> correct variable types and change misleading function name
> v5:
> add dt-binding and go as first patch in this series.
> v6:
> no change in this patch, only chaged in [PATCH v6 1/2]
> v7:
> add reviewed by and tested by
> ---

Your subject line changed for this and patch 2 :(

Also, I asked you to split this patch up better in the past, you seem to
have ignored that :(

First patch would be to create the new functions and use them, with no
functional change to the code as-is.  A second patch would add the new
binding, and a third patch would be to add the new functionality.

And you need to describe all of this very well in your changelog, the
one sentence here is not sufficient at all.

Please fix this all up and resend.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
