Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC14217FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 14:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dUJAuOfYiNCE1zO5WLe1jVpmJ/CJya1dY+467ndEbIQ=; b=dRkv6tfxNU+DxD
	anBDJ+dc7P4hGnH8LL//DopHcpSlIxc2pebnGZ6bS3iNPdP12NHjoRkTq9S6xwDYEkKWNn9Qduyg6
	FTcEoYYRb5NbKlvfjO772u2njaIlvQpzO+KzcLFbijNzk1eNhCZWKIp+I6/D7ONEtpINgI6D6PZtS
	gSSNv+6Bvauo3aYTviPCKaYvuiY72ycB2I69NVLSQcKm7rTsoL3pdCMnp04lhHANBP6XzB9uUrzeI
	gu/FvvZGkGAT4bA9yZbMcF2E70Hhsv6ELzaADqrbrIOvtGQHSL2zW0Ei32IKp69cexYgPnJTOJs7V
	qrLQKbC2AOymLX5Gpn9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRbcC-0007IV-Ol; Fri, 17 May 2019 12:05:32 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRbc7-0007IN-SV
 for linux-arm-kernel@bombadil.infradead.org; Fri, 17 May 2019 12:05:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EFCSJq8vlxPoitFCx1mMn7ZxvTMIP9gAEo3VYdoVseQ=; b=o5xy2JoRwPg6ftbMoDg05lIIf
 ZdgCFebixA82HlsxSSe32qwaHa5oIPf1uOXiUhEv2JCY/2+2ghBN+SgjKOQSrCgM3L48JAyr+k8Jv
 uxlKDDTRETodyACeHJpRLzEi/QGBr16OU+ymBgtcRaGMo1BLNXCmwV5c5RxaqSjG9IeYlgoMKbMdf
 RixA++0FsFSUllHz6YmrLgKkfeBQYE4WDoWILFFQMlfXJy1QA2fFTctWZhnCDMn3K3o/VihrqZkSX
 ALb2iyETY5AkkkkOWNmFe4RCucISowB+DtXmneQtE7B4pmNlzA1bHlp8NFLYFOM4bKCdiK1JNs5JJ
 QkmByNrAA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRbc3-00019P-Pn; Fri, 17 May 2019 12:05:23 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 94FDA20281C32; Fri, 17 May 2019 14:05:22 +0200 (CEST)
Date: Fri, 17 May 2019 14:05:22 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v1 0/5] arm64: avoid out-of-line ll/sc atomics
Message-ID: <20190517120522.GM2623@hirez.programming.kicks-ass.net>
References: <20190516155344.24060-1-andrew.murray@arm.com>
 <20190517072401.GI2623@hirez.programming.kicks-ass.net>
 <20190517100802.GS8268@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517100802.GS8268@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Boqun Feng <boqun.feng@gmail.com>, Will Deacon <will.deacon@arm.com>,
 linux-arm-kernel@lists.infradead.org, Ard.Biesheuvel@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 11:08:03AM +0100, Andrew Murray wrote:

> I think the alternative solution (excuse the pun) that you are suggesting
> is to put the body of the ll/sc or LSE code in the ALTERNATIVE oldinstr/newinstr
> blocks (i.e. drop the fallback branches). However this still gives us some
> bloat (but less than my current solution) because we're still now inlining the
> larger fallback ll/sc whereas previously they were non-inline'd functions. We
> still end up with potentially unnecessary clobbers for LSE code with this
> Approach prior to this series:

> Approach using alternative without braces:
> 
>    LSE
>    LSE
>    NOP
>    NOP
> 
> or
> 
>    LL/SC <- inlined LL/SC and thus duplicated
>    LL/SC
>    LL/SC
>    LL/SC

Yes that. And if you worry about the extra clobber for LL/SC, you could
always stuck a few PUSH/POPs around the LL/SC block. Although I'm not
exactly sure where the x16,x17,x30 clobbers come from; then I look at
the LL/SC code, there aren't any hard-coded regs in there.

Also, the safe approach is to emit LL/SC as the default and only patch
in LSE when you know the machine supports them.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
