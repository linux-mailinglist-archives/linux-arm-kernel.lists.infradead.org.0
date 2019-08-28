Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5030A0B48
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 22:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3XLFAJ0kpPh6O7+SDzyaIFK6ZCdYlFCRpON474QnDo=; b=UDBdux4O8k6mRw
	yFgrukI/dW+ad+n2FK1Jm0lW1etMSmcA8hgj+H6WMnF1FR5hj5Ae0JzrqSyWGbYWrDKGbR/QWwurS
	5mBv/FUOa3zFoIZT+huHTfWw/cbcwmkhDoSwbDO1PZMf81Jkn7+D3e5+9EntRG66oKZgSuLcqXrEc
	dBapCAbyybst9G/bvRqfxldF7RPlqsCabRM3wqRTQkCSs2/WvAzP5wDcF/C+VAxjB7wHX9d5BCVWk
	uh83aMjMCaLVWE5x0Q6TeFuQcfKY+oMS25G4A2OYrQGbfgp5pmsYoP2rS5WXXNfMcykyoloORNkrB
	vqA6rPx/7hvaVx6X1QgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i34UI-0006yE-2U; Wed, 28 Aug 2019 20:24:14 +0000
Received: from venus.catern.com ([68.183.49.163])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i34U7-0006xn-9K
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 20:24:04 +0000
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=34.206.19.101;
 helo=localhost; envelope-from=sbaugh@catern.com; receiver=<UNKNOWN> 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=catern.com; s=mail;
 t=1567023434; bh=0ywMFKjMwE/uBXqaIPb34y8Q/aLLCmGU3C97TLkQvwo=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date;
 b=REuwdRN9P9zoh6DHSLiK1nqu3i2wNZqBJCILEt+4b0yiKxgb0XYUJwKX2wRNDyDWc
 JukKo1pvC54OaIX4CqMGz3OuGJLGPRfZ0csrkVnGcnxMd6oby8HYrRP9EeNU+sPgW7
 McVdUazYCiNEMo/74xDeTcyWeiOv6iN9cpLaK4n8=
Received: from localhost (ec2-34-206-19-101.compute-1.amazonaws.com
 [34.206.19.101])
 by venus.catern.com (Postfix) with ESMTPSA id 0564E2C2971;
 Wed, 28 Aug 2019 20:17:13 +0000 (UTC)
From: Spencer Baugh <sbaugh@catern.com>
To: Jeff Layton <jlayton@kernel.org>, linux-fsdevel@vger.kernel.org
Subject: Re: [PATCH RESEND v11 7/8] open: openat2(2) syscall
In-Reply-To: <4da231cd52880991d8a038adb8fbb2ef3d724db9.camel@kernel.org>
References: <20190820033406.29796-1-cyphar@cyphar.com>
 <20190820033406.29796-8-cyphar@cyphar.com> <854l2366zp.fsf@catern.com>
 <4da231cd52880991d8a038adb8fbb2ef3d724db9.camel@kernel.org>
Date: Wed, 28 Aug 2019 20:17:07 +0000
Message-ID: <85y2zd3v0c.fsf@catern.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_132403_388470_1E1BFABE 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-parisc@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-api@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linuxppc-dev@ozlabs.org,
 linux-alpha@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jeff Layton <jlayton@kernel.org> writes:
> On Mon, 2019-08-26 at 19:50 +0000, sbaugh@catern.com wrote:
>> Aleksa Sarai <cyphar@cyphar.com> writes:
>> > To this end, we introduce the openat2(2) syscall. It provides all of the
>> > features of openat(2) through the @how->flags argument, but also
>> > also provides a new @how->resolve argument which exposes RESOLVE_* flags
>> > that map to our new LOOKUP_* flags. It also eliminates the long-standing
>> > ugliness of variadic-open(2) by embedding it in a struct.
>> 
>> I don't like this usage of a structure in memory to pass arguments that
>> would fit in registers. This would be quite inconvenient for me as a
>> userspace developer.
>> 
>> Others have brought up issues with this: the issue of seccomp, and the
>> issue of mismatch between the userspace interface and the kernel
>> interface, are the most important for me. I want to add another,
>> admittedly somewhat niche, concern.
>> 
>> This interfaces requires a program to allocate memory (even on the
>> stack) just to pass arguments to the kernel which could be passed
>> without allocating that memory. That makes it more difficult and less
>> efficient to use this syscall in any case where memory is not so easily
>> allocatable: such as early program startup or assembly, where the stack
>> may be limited in size or not even available yet, or when injecting a
>> syscall while ptracing.
>> 
>> A struct-passing interface was needed for clone, since we ran out of
>> registers; but we have not run out of registers yet for openat, so it
>> would be nice to avoid this if we can. We can always expand later...
>> 
>
> We can't really expand later like you suggest.
>
> Suppose in a couple of years that we need to add some new argument to
> openat2 that isn't just a new flag. If all these values are passed by
> individual arguments, you can't add one later without adding yet another
> syscall.

Sure we can. This new syscall doesn't need to use all 6 available
arguments. It can enforce that the unused ones are 0. Then if we
eventually run out of flags and need to switch to pass arguments via
struct, we can just use one of the unused arguments for that purpose.

Even if we used all 6 arguments, in the worst-case scenario, the last
flag we add could change the interpretation of some other argument so it
can be used to pass a pointer to a struct.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
