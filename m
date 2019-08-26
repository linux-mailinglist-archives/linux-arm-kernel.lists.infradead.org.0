Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D37ED9D773
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 22:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:Message-ID:Date
	:Subject:From:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=4f7c4v9yoemCfAUaGViLwgc6i1PmcTcV0sjOb4bAev8=; b=iLGOMZLmzHFWny
	PeBb7m/YpZ6P0uepY1jQtbxkNtqQjVGSCCmkP9HpNJstzOmznCTzZ56dVrQNMBv3Va1d8tIPR/ZKZ
	JjTPqrrbkN8alj7rL4+nrcDyjhMJSXwJ7gvVvpEQJZ9qpi951QWD9oZPlMaeX5P1+DTFsW8MVx/NW
	Z2fcAEOMzOrI6YFX04tDDq3msK++nDkvu0kSZLCwwzWxMFJR7G1lnZuv8wZji6J2oDiqgK4Lmmb50
	+IAK9ar/bUSZySgxDWA3x7ZZDlXtLJQbvhZWNtI2AAa4Z5nCj2UtmL7uL6i1KIvpYx5ya0Mht6F9y
	I0rzgwPY6ROt0c5bh9EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Li7-0007nf-RO; Mon, 26 Aug 2019 20:35:31 +0000
Received: from 195-159-176-226.customer.powertech.no ([195.159.176.226]
 helo=blaine.gmane.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Lhp-0007lp-Fn
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 20:35:14 +0000
Received: from list by blaine.gmane.org with local (Exim 4.89)
 (envelope-from <linux-arm-kernel@m.gmane.org>) id 1i2Lhd-0014RC-UF
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 22:35:01 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: linux-arm-kernel@lists.infradead.org
From: sbaugh@catern.com
Subject: Re: [PATCH RESEND v11 7/8] open: openat2(2) syscall
Date: Mon, 26 Aug 2019 19:50:50 +0000
Message-ID: <854l2366zp.fsf@catern.com>
References: <20190820033406.29796-1-cyphar@cyphar.com>
 <20190820033406.29796-8-cyphar@cyphar.com>
Mime-Version: 1.0
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
Cancel-Lock: sha1:ym8TD2+JE56rxevrCvTf9T8Ptcg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_133513_710383_0EB4923A 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: linux-arch@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-api@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linuxppc-dev@ozlabs.org, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Aleksa Sarai <cyphar@cyphar.com> writes:
> To this end, we introduce the openat2(2) syscall. It provides all of the
> features of openat(2) through the @how->flags argument, but also
> also provides a new @how->resolve argument which exposes RESOLVE_* flags
> that map to our new LOOKUP_* flags. It also eliminates the long-standing
> ugliness of variadic-open(2) by embedding it in a struct.

I don't like this usage of a structure in memory to pass arguments that
would fit in registers. This would be quite inconvenient for me as a
userspace developer.

Others have brought up issues with this: the issue of seccomp, and the
issue of mismatch between the userspace interface and the kernel
interface, are the most important for me. I want to add another,
admittedly somewhat niche, concern.

This interfaces requires a program to allocate memory (even on the
stack) just to pass arguments to the kernel which could be passed
without allocating that memory. That makes it more difficult and less
efficient to use this syscall in any case where memory is not so easily
allocatable: such as early program startup or assembly, where the stack
may be limited in size or not even available yet, or when injecting a
syscall while ptracing.

A struct-passing interface was needed for clone, since we ran out of
registers; but we have not run out of registers yet for openat, so it
would be nice to avoid this if we can. We can always expand later...


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
