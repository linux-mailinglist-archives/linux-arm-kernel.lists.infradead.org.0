Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9770146402
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 10:01:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VemuqkBQcQqnpefI/9OY9/MyNgP6WDS0K3QrytunJMo=; b=ZDXzP6JpWUKBGp
	Hl2ur5+RpKP/qhuYff+++hTnaqoCVMfsx4CZ+eWLu9+36gwf9vJXneX6bfScGtGyNZJ3I18XT3PVN
	pP0chKO4/vqcXWp8yzYHsFeTDo41nXX2LqB+IAbOE/pMkXJiOVwCA7SYRI3QbrJIkOwgsRgqFpBsC
	1fWDK3365IJQl3ET7TQHHcVJGeI//veA8dEEAaqIM4Bp5z11mJWw2Mj4fNW7ynIvIMCPUra+bwlS5
	Mxijq6viOfcQQ3toa4r7HOQefpbHWuEKTn9m+OYyRksD86dVwLPmMSzKR7qJLA3M0gJGDYN+kFQYy
	ApYolM7s8HgqPxkgbe/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuYMF-0006ex-8C; Thu, 23 Jan 2020 09:00:59 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuYM8-0006ep-KY
 for linux-arm-kernel@bombadil.infradead.org; Thu, 23 Jan 2020 09:00:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZO2+biof4EL4C/JTzti+vPwupIT1oX/9/8bYDrArCwQ=; b=NOiIWQWR4GnTdEVaJdQR3fftc
 2cjR9yhlWoh9F+xe7DPXmdBijCqW1eXE8n5Fvs/tpQU5tjazIKyXL7ozieETUP8D7R2Dr52zTYZxr
 P/gUBWd02yvOYvrmHlHZAQBDFPQHdNFALsPqjjJj346oGnEuLC8ye6YplJxt91+stCTMCRXavRPnA
 HDLYjxi9LLgx4ck9ovojPNc9iu6QmqJDymrRomPMUDquZklmJPPX0yYRZRvACzenYgm41Rx1LaLgA
 PUF1NFgWuRJPJdX25fpYDxfHwEcyY85OTcn6+gGC1zLeO88BR9EM2Lhck1X3rsq9cPaXXeJRgd1XY
 0j/R7gpyg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuYLx-0002NM-GD; Thu, 23 Jan 2020 09:00:41 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 52282304121;
 Thu, 23 Jan 2020 09:58:58 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 3D19D20983FC2; Thu, 23 Jan 2020 10:00:38 +0100 (CET)
Date: Thu, 23 Jan 2020 10:00:38 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v7 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <20200123090038.GD14946@hirez.programming.kicks-ass.net>
References: <20191125210709.10293-1-alex.kogan@oracle.com>
 <20191125210709.10293-4-alex.kogan@oracle.com>
 <20200121202919.GM11457@worktop.programming.kicks-ass.net>
 <20200122095127.GC14946@hirez.programming.kicks-ass.net>
 <20200122170456.GY14879@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200122170456.GY14879@hirez.programming.kicks-ass.net>
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, steven.sistare@oracle.com,
 linux-kernel@vger.kernel.org, rahul.x.yadav@oracle.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, longman@redhat.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 22, 2020 at 06:04:56PM +0100, Peter Zijlstra wrote:
> +/*
> + * cna_splice_head -- splice the entire secondary queue onto the head of the
> + * primary queue.
> + */
> +static cna_splice_head(struct qspinlock *lock, u32 val,
> +		       struct mcs_spinlock *node, struct mcs_spinlock *next)
> +{
> +	struct mcs_spinlock *head_2nd, *tail_2nd;
> +
> +	tail_2nd = decode_tail(node->locked);
> +	head_2nd = tail_2nd->next;
> +
> +	if (lock) {

That should be: if (!next) {

> +		u32 new = ((struct cna_node *)tail_2nd)->encoded_tail | _Q_LOCKED_VAL;
> +		if (!atomic_try_cmpxchg_relaxed(&lock->val, &val, new))
> +			return NULL;
> +
> +		/*
> +		 * The moment we've linked the primary tail we can race with
> +		 * the WRITE_ONCE(prev->next, node) store from new waiters.
> +		 * That store must win.
> +		 */

And that still is a shit comment; I'll go try again.

> +		cmpxchg_relaxed(&tail_2nd->next, head_2nd, next);
> +	} else {
> +		tail_2nd->next = next;
> +	}
> +
> +	return head_2nd;
> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
