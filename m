Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B82C7145118
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 10:52:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eO6BdWprhsGJC4y5VRmhA1eXa6ejUmUpks4Pj2yQZFM=; b=iVOVrizICvZWfc
	FtbGq6Fzo2wrdSMQ99bSXg/sOLELCTBR9oJAts4ew73FWKFJEUQF7ztorLj132zvwGOMjqkOr5Yrf
	Gcuh52cJaHttbXfyNxjcsUA2dJ2E8gPPn+dro2T/qzRCzY9Bm/Z1jrlf3ZwtRgBaFVJy/IXk6ABOU
	STz4avaXLs2j/QpXRVCn05L+iE/1Zo0owC0w/h0Ovq9bICFtXAUUuvg6cirK1DOXZ7MDmXn5LSrBs
	SodWqwhXEd3YhO4RuUpR+2DlSGd4PIHJqFd639W2TAGNgjoSGqW7xFU/m6Ix5mU99lxZP/hDjwGzY
	W9rZs9na1sI95iEkyGxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuCfv-0008KQ-OC; Wed, 22 Jan 2020 09:51:51 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuCfl-0008Jx-AJ
 for linux-arm-kernel@bombadil.infradead.org; Wed, 22 Jan 2020 09:51:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5abJ1QnasX2RGu56JYvUsjvfRt1I9ljUh2ZesPKbuT0=; b=p8YLls2HIIhVbHUeXOH91k+ND
 OvNM0vHGgLEU4LoIC4sR30p/ug+nv96bSBCBWjq8l93N+i9prze9knLA4/p35cqdr3nJQVBUSp+o/
 oUb4PFxfkOIi69TOwLODpt8DvaMCrmoHePkSZYiGnOT4b5TFC6j6SvtAyJND2jVQVASGGJNtJCk8H
 gzTGEqoI1YWFAoID4SKv/vHa+Yh53KIJBrWIJ3QAChO4kVLOyCCHkhHMCI5F4q6HBoFWvKKAE7KwI
 8ItWBXpUMuC6Py0PqUk4h0mY62cq7XZWizzuJ2415jg0iVSKoh6kc9brledLrHGOTx5Fu1UCakadr
 mCdZZvQsQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuCfb-0003jg-MM; Wed, 22 Jan 2020 09:51:31 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 25F9A3079DF;
 Wed, 22 Jan 2020 10:49:48 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 9B47B20983E31; Wed, 22 Jan 2020 10:51:27 +0100 (CET)
Date: Wed, 22 Jan 2020 10:51:27 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v7 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <20200122095127.GC14946@hirez.programming.kicks-ass.net>
References: <20191125210709.10293-1-alex.kogan@oracle.com>
 <20191125210709.10293-4-alex.kogan@oracle.com>
 <20200121202919.GM11457@worktop.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121202919.GM11457@worktop.programming.kicks-ass.net>
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

On Tue, Jan 21, 2020 at 09:29:19PM +0100, Peter Zijlstra wrote:
> 
> various notes and changes in the below.

Also, sorry for replying to v7 and v8, I forgot to refresh email on the
laptop and had spotty cell service last night and only found v7 in that
mailbox.

Afaict none of the things I commented on were fundamentally changed
though.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
