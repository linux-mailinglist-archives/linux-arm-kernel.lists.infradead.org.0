Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 903806B770
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 09:45:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZWBOR6CbsScstmFVB4wLt6LCzWyI4fFrktzDU8sZRw=; b=nkh/BOhaFsuQCa
	kR7hUnJsyjj+XqzgoXgnunNXs9HrvshOttykdFVx5pjB8FuejhNmHUl3jaEIM83qdPGL2bhRo45kh
	StAaC1/P73Ahb+utuho/Hyp+OQ/Tebz7H6tPDKKZOWUx6nQIaLTybuzd1dqLy8t6CnyCu+F05dxcV
	oizn7R3bdnUjZZXxQYyaTIIwaoxmcYmVbbX4RUqr03DYX32qamNpLkKL61qUsbf7Rg0t26CaoPXXh
	B/QkD67xEKfRU6mvRv/QzrYriOT3X5KEpCJwqH9cFq0MSMxtrJ0q/pk/VUo9YY++rqvDPXjXXuSqK
	oNe3WG3OJnfVTvqSD/NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnecT-00035z-PR; Wed, 17 Jul 2019 07:44:58 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnecG-00035i-TO
 for linux-arm-kernel@bombadil.infradead.org; Wed, 17 Jul 2019 07:44:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a+w5j6eHYvJzioLr+1nRU4VPj/HkjhXiSU4Y9J8b7R8=; b=YbNCb/0gjQZL0XpBqEiPAwf+A9
 3CgD9+vHlITW3ap2VMwt3sgVkwTzhRuRP/kgyZkGXM4XSu0z6A6ofUZh7f//Sux0TTeqwycROgOyW
 mLxn1uh9uXpCSJnqhfhbJdGj+v0bNg1lHzvz/yqDdsRlq+uKC9Ugrjw8MjS6FdMQsWpzu6XKr18uv
 WaT+N+4woH/KJYWFG573iBJIz5dq7RZjKNF11vp/WY7jPjvztxxaroPXOZPOogzOFYZazsr/lMDfq
 Cr6oTbCR8umH6TQpwxREIHsW/uUlzeCDHYQiMnCyPBHR0Af3bvNHEZk/DterF+Yju8ZMnXLDyTUoc
 J3NLOz9A==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hnec8-0008Nx-I5; Wed, 17 Jul 2019 07:44:36 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 148B02059DEA3; Wed, 17 Jul 2019 09:44:35 +0200 (CEST)
Date: Wed, 17 Jul 2019 09:44:35 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <20190717074435.GU3419@hirez.programming.kicks-ass.net>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-4-alex.kogan@oracle.com>
 <9fa54e98-0b9b-0931-db32-c6bd6ccfe75b@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9fa54e98-0b9b-0931-db32-c6bd6ccfe75b@redhat.com>
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
 will.deacon@arm.com, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 rahul.x.yadav@oracle.com, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 Alex Kogan <alex.kogan@oracle.com>, steven.sistare@oracle.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 10:16:29PM -0400, Waiman Long wrote:
>  A simple graphic to illustrate those queues will help too, for example

Very much yes!

> /*
> =A0* MCS lock holder
> =A0* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =A0*=A0=A0=A0 mcs_node
> =A0*=A0=A0 +--------+=A0=A0=A0=A0=A0 +----+=A0=A0=A0=A0=A0=A0=A0=A0 +----+
> =A0*=A0=A0 | next=A0=A0 | ---> |next| -> ...=A0 |next| -> NULL=A0 [Main q=
ueue]
> =A0*=A0=A0 | locked | -+=A0=A0 +----+=A0=A0=A0=A0=A0=A0=A0=A0 +----+
> =A0*=A0=A0 +--------+=A0 |
> =A0*=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 +----+=A0=A0=A0=A0=
=A0=A0=A0=A0 +----+
> =A0*=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 +-> |next| -> ...=A0 |next=
| -> X=A0=A0=A0=A0 [Secondary queue]
> =A0*=A0=A0=A0 cna_node=A0=A0=A0=A0=A0=A0 +----+=A0=A0=A0=A0=A0=A0=A0=A0 +=
----+
> =A0*=A0=A0 +--------*=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 ^
> =A0*=A0=A0 | tail=A0=A0 | ----------------------+
> =A0*=A0=A0 +--------*=A0=A0=A0

Almost; IIUC that cna_node is the same as the one from locked, so you
end up with something like:

> =A0*=A0=A0=A0 mcs_node
> =A0*=A0=A0 +--------+=A0=A0=A0=A0=A0 +----+=A0=A0=A0=A0=A0=A0=A0=A0 +----+
> =A0*=A0=A0 | next=A0=A0 | ---> |next| -> ...=A0 |next| -> NULL=A0 [Main q=
ueue]
> =A0*=A0=A0 | locked | -+=A0=A0 +----+=A0=A0=A0=A0=A0=A0=A0=A0 +----+
> =A0*=A0=A0 +--------+=A0 |
> =A0*=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 +---------+=A0=A0=
=A0=A0=A0=A0=A0=A0 +----+
> =A0*=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 +-> |mcs::next| -> ...=A0 =
|next| -> NULL=A0=A0=A0=A0 [Secondary queue]
>  *                   |cna::tail| -+      +----+
> =A0*=A0=A0=A0          =A0=A0=A0=A0=A0 +---------+  |        ^
>  *                                +--------+
> =A0*
> =A0* N.B. locked =3D 1 if secondary queue is absent.
> =A0*/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
