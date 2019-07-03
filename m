Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A178F5EF7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 01:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7HR6s921LKPsJS5Pk5S6YHBFlqTMcqbs+eHhl9LSR0=; b=SgEHEc+VQFxDr+
	1ao2qjKAsMfAQ2tjZ+7ccJoEZt80YTCUnkBn6G6ZV+ovjCYFAU6IQU3StjuKf/Rkhs90NPpteo/4q
	ksiVPbxbsWw0SV4B4jy4aZCq+uvkJloO5mdF9sdfiSQxmbE5+YSzZ5unIo6MdYKODpqN63hz2L9H5
	ldiZyCV02ArvtWztOzKSg91wOKlfaX7rkNoCssYmDgyBDBt471Vf3RqECBcHZGXbKVfHCsQAWjij2
	Ch6kFrYK8tSASC6dNfgULGJbRTzdKMYQhmY+kkj10esfZCXmDdJrPh9fYuMxHVo/PPG+NT9bmtgqU
	Lfe2ZVzzXHrE95hpNjAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hioJf-0002Zk-Pi; Wed, 03 Jul 2019 23:05:32 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hioJA-0001Ff-16; Wed, 03 Jul 2019 23:05:00 +0000
Date: Wed, 3 Jul 2019 16:04:59 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v3 0/2] Hugetlbfs support for riscv
Message-ID: <20190703230459.GA26830@infradead.org>
References: <20190701175900.4034-1-alex@ghiti.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701175900.4034-1-alex@ghiti.fr>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, "H . Peter Anvin" <hpa@zytor.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Hanjun Guo <guohanjun@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdWwgMDEsIDIwMTkgYXQgMDE6NTg6NThQTSAtMDQwMCwgQWxleGFuZHJlIEdoaXRp
IHdyb3RlOgo+ICAgLSBpY2FjaGUtaHlnaWVuZSBzdWNjZWVkcyBhZnRlciBwYXRjaCAjMyBvZiB0
aGlzIHNlcmllcyB3aGljaCBsb3dlcnMgICAgICAgICAgIAo+ICAgICB0aGUgYmFzZSBhZGRyZXNz
IG9mIG1tYXAuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIAoKSSB0aGluayDRlmNhY2hlLWh5Z2llbmUgd2lsbCBhbHNvIG5lZWQgYSBjYWxsIHRvIHJp
c2N2X2ZsdXNoX2ljYWNoZSBpbgpjYWNoZWZsdXNoKCkuCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
