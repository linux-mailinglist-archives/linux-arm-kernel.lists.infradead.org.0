Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AC91252D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 21:11:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/RfimsjdOKSlHGCo9jh3MjNkrV29peaEd1diTxZbR8E=; b=Zrk5w9ErhEjfQS
	abrItUkYNUL8FHmA06OwOnWoIGRoUsJQifnfWUeI+IxmeKwcEAyDNAf/ImEuFV5CjxUM0gSU5+lUA
	WMNLe3KRagXtaj8zjWX6YQugFP27YF/4dpPTRgrEoAubNZ71e/ocJwYWEtY9ZKbbVkm1AAvJ92d7N
	gobluiQV16wTNriNRXmaBSUsoDml30Zh7OqUZqr2fPPnZ9fUs6sxAg8WgBvu3v9jVsEdYz6sKAiu6
	XEyLfIiubj7HPjviLw0LhPG4KJ0em5WXLnbNv2mGb3c5EfmkIjPPNIJjDbzMd9Dz8cT0kjGZGUT+l
	spwLS7BUNayqsJ6HU8hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihffS-0000e0-OI; Wed, 18 Dec 2019 20:11:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihffJ-0000dP-VJ
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 20:11:27 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6CFC6227BF;
 Wed, 18 Dec 2019 20:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576699884;
 bh=QpeOzRz6bwwMW6VIx6Zh9uQFUXPxaZohhZIYXPEQGp4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gSXW8mEL9R3/ObNja+neR8rkkKv7VO3S4Z7LVADRuXpqNZDD3Kv8Y1BiXTugUQ1mm
 x5XiHzfxiG85vTL1pkd82vUTC/IRSxjDmV8CwQngpnbuNaPWs3u7zzaxx+3L4Oofp1
 K3V1p3+vcG3Z9lEaTocdsXs9WYSnnPB6cZ8iYsn4=
Date: Wed, 18 Dec 2019 21:11:22 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH AUTOSEL 4.19 031/219] arm64: preempt: Fix big-endian when
 checking preempt count in assembly
Message-ID: <20191218201122.GB913802@kroah.com>
References: <20191122054911.1750-1-sashal@kernel.org>
 <20191122054911.1750-24-sashal@kernel.org>
 <20191214021403.GA1357@home.goodmis.org>
 <20191216094523.GA9938@willie-the-truck>
 <20191218103830.3f396a6f@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218103830.3f396a6f@gandalf.local.home>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_121126_027533_574EE0EC 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sasha Levin <sashal@kernel.org>, "kernelci.org bot" <bot@kernelci.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 10:38:30AM -0500, Steven Rostedt wrote:
> On Mon, 16 Dec 2019 09:45:24 +0000
> Will Deacon <will@kernel.org> wrote:
> 
> > Yup, without 396244692232 this commit makes no sense. That's why I didn't CC
> > stable or add a Fixes tag :(
> 
> Yes, please have stable revert this change.

Now reverted, thanks.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
