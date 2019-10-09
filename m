Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6063D1714
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RrhdgEpb4PuKSuFjXrZ+tEggrJgsKA8sy+tgIE2CXpU=; b=k0/oddOrJLiRL3
	0cqTYXfqi1DuxZph6kOKkY0ujqqohyDDFXWzuP4YIL+5/x9z9kOX9uFDOS6APtgK+O1JSLMyEyui7
	CJIENONRJJr6Xei/26j2ei6umKo5AGEY3lofAv2pzF+vCxInOEtNmpaFPtthoHbq31fVQWOpmtQbt
	DPTio7H3LiTJde5CjCEIRZMQdXskujiGbLc0zNT892nlxovEUkLdsrAVMnWljPYAhO45Q/Sdv7zUA
	PxbhBoMvs6cN2r+UFwO7vfQ1wVGR9R+969QJoD4ZT0IDwxNSn75TSBHqaElmKyKtpsTvSD4lIJf+C
	SwvcxApAd4F3y2rMRMAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIG7y-0000JT-7s; Wed, 09 Oct 2019 17:51:58 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iIG7p-0000JD-TI; Wed, 09 Oct 2019 17:51:49 +0000
Date: Wed, 9 Oct 2019 10:51:49 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Ben Dooks <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] proc: centralise declaration of cpuinfo_op
Message-ID: <20191009175149.GA28540@infradead.org>
References: <20191009113930.13236-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009113930.13236-1-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: linux-kernel@lists.codethink.co.uk, linux-s390@vger.kernel.org,
 Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-sh@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 x86@kernel.org, Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 linux-arm-kernel@lists.infradead.org, Mark Salter <msalter@redhat.com>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 12:39:30PM +0100, Ben Dooks wrote:
> When building for arm, cpuinfo_op generates a warning due
> to no declaration. Since this is used in fs/proc/cpuinfo.c
> and inconsitently declared across archiectures move the
> declaration info <linux/seq_file.h>. This means that the
> cpuinfo_op will have a declaration any place it is used.
> 
> Removes the following sparse warning:
> 
> arch/arm/kernel/setup.c:1320:29: warning: symbol 'cpuinfo_op' was not declared. Should it be static?

I like the consolidation, but I don't think seq_file.h is the right
place.  A procfs or cpu topology related header seems like the better
choice.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
