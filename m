Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB46142E61
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 16:07:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FK3c5/3zHvHVlW4ICyG39nNwGn7uDP51dPqlG73GTQ4=; b=db1B/OPAt6nEWg
	M2CLV7ZGNJDrEM5SCi31DvfIh0i7aQt939yr8vIsxUKoUO12fVmrZqdvJJ23DPOFsdX6QZmK2WPwp
	KidLvZsvzc7Sejpk7SxFhtPayqRNRvcG4BhYIXkRl3P/fns0QwYvR0/wcAqbOFLcPkgOCUiJNYQHp
	vUrh6vAxdHDoqSKbqCBBNCNG5CMH5AorW7RtjOt0Vzkoe6EzvWBySSU3+rt3P9By/++f/OSsRUFeP
	k/sjGaFlWMDw9vgLRLrAqnQhCyoEZ1hmzXstVIi06CdkdQeRsS+q/C9RDFbXcixCCgAyKp2afU95x
	u6CVb9Vcck7FHShDOpVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itYeK-0004wE-J0; Mon, 20 Jan 2020 15:07:32 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYe4-0004vH-U0
 for linux-arm-kernel@bombadil.infradead.org; Mon, 20 Jan 2020 15:07:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T/cpQD/zbDsi8Y9ri+v+0mcbKKUYlsn8Knn3mtIwVJ0=; b=DckzPWGitgftKtAtwS4LlmEX9
 ZuSZtfcESSP5zj74FXV4O78Www2YVMKhgNuohr1R2RE/Y7iPH7ayAC2Fl508famKqyvGK/BJUKHNt
 Y3XCF0d/NZdbCdMgfQl5Y29seEbvGfk+lbnTU3diovjI0ADbjwYNMzvcwOzpQJFqvJ5i43wvI1O9h
 Y6cNWJYLUHPLAkhd84utU3mAQ/NZzthmP7d+GRAY9r6po6NNVXBHzo2Xu1iPs2Xv8kWJHvbGPEUIA
 BwTLqvCAEcu6d1TGvb1BpEx+8vjjdLkFHilmS1PT1PRn4JP34Q5xnnA7xmM9VsM4JaUfxkOXTL9tA
 s5xErLGjA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYe1-0007LW-8o; Mon, 20 Jan 2020 15:07:13 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id D7426305E4E;
 Mon, 20 Jan 2020 16:05:32 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 6580C28B86E62; Mon, 20 Jan 2020 16:07:11 +0100 (CET)
Date: Mon, 20 Jan 2020 16:07:11 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Julien Thierry <jthierry@redhat.com>
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
Message-ID: <20200120150711.GD14897@hirez.programming.kicks-ass.net>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 raphael.gault@arm.com, jpoimboe@redhat.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 04:02:03PM +0000, Julien Thierry wrote:
> In the mean time, any feedback on the current state is appreciated.
> 
> * Patches 1 to 18 adapts the current objtool code to make it easier to
>   support new architectures.

In the interrest of moving things along; I've looked through these
and 1-14,16 look good to me, 17,18 hurt my brain.

Josh, what say you?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
