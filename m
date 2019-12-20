Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C85312812F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 18:14:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TeEkRRV7M5xMyq9Boxx3gWAbq7M/2i3SXMVCJPqk0Y=; b=CnEzJEo5I8Ddrk
	Z7n9jVMl3StKHjMgt8fK3wmHR36fdCV5/2MLt6guYQEe7u4m1BKZgaFZrGNOcrQADUktg12iYf0BT
	+pzwnrjIq24lva6W7IqSKmZmwSotlAzF8OCyEc1uUrSgp8BfwtShkNMvKWfeOe8LOJFI0q264fda+
	FlF1Ypy4reg82OyTj4W0/oiPNP4vpVcWcyCGuAAjByZCzc2v9Wkrxi1DciYcZgE/UkjCBRSUnFGZI
	iyBH6ZqbSnfzWWLzNFWsfPVywtpA3IZRT4SI0lMrQe9AW1jHrsA2ZNZEO+yoFClXV9RQRAAW7QSvx
	kzvJj/AsB2oo+T843zPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiLqy-0002oJ-GG; Fri, 20 Dec 2019 17:14:16 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiLqs-0002o9-1y
 for linux-arm-kernel@bombadil.infradead.org; Fri, 20 Dec 2019 17:14:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CWMLNuWoRKapPDrLtoeUFvhjshGIgztAHqDVEXQJ5Jo=; b=Sstg1BhJ2zXAUsD1rwa7Tn7xl
 kLz2zyXnk8wGdadR9f4iP8vgQl0fa6IolhNyW8VYf/HplyMFGq6tUJtylPZlXQW2K/EyE8LBuasqb
 HQuTebHGYgNpURPXu3rD1kYIKPmnkfC0FVkmrIaHGyqLp5u8AaKbRmN9DwWqLuISGTCo4V+1vrjAE
 AfSIpio1XRCq6MsX1hCB+KTw9adW7qh4RSsYTgzseYQ9af1dRHHHQ7Kh5rJEzJv5crDYSx9cYJ4pW
 hoD9jUBiyTo0h/VH4OVdBVBCEmVo/nBnQfz5TYqkeWYL4IIzNsM5Ong16GGP/N/1uA/QPQPBkuCE/
 u0RIsgRnQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiLqk-0006GU-16; Fri, 20 Dec 2019 17:14:02 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 5A96D300DB7;
 Fri, 20 Dec 2019 18:12:35 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 61419203A6F24; Fri, 20 Dec 2019 18:13:59 +0100 (CET)
Date: Fri, 20 Dec 2019 18:13:59 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
Message-ID: <20191220171359.GP2827@hirez.programming.kicks-ass.net>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
 <bf020a68-00fd-2bb7-c3b6-00f5befa293a@free.fr>
 <20191220140655.GN2827@hirez.programming.kicks-ass.net>
 <9be1d523-e92c-836b-b79d-37e880d092a0@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9be1d523-e92c-836b-b79d-37e880d092a0@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Alexey Brodkin <alexey.brodkin@synopsys.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Tejun Heo <tj@kernel.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 03:01:03PM +0000, Robin Murphy wrote:
> On 2019-12-20 2:06 pm, Peter Zijlstra wrote:

> > 	data = kmalloc(size + sizeof(struct devres), GFP_KERNEL);
> 
> At this point, you'd still need to special-case devm_kmalloc() to ensure
> size is rounded up to the next ARCH_KMALLOC_MINALIGN granule, or you'd go
> back to the original problem of the struct devres fields potentially sharing
> a cache line with the data buffer. That needs to be avoided, because if the
> devres list is modified while the buffer is mapped for noncoherent DMA
> (which could legitimately happen as they are nominally distinct allocations
> with different owners) there's liable to be data corruption one way or the
> other.

Wait up, why are you allowing non-coherent DMA at less than page size
granularity? Is that really sane? Is this really supported behaviour for
devm ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
