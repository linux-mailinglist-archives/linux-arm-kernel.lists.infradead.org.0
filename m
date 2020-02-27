Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 032A1171549
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 11:44:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZeKTPvJh0Jp3fosuOEv0gxBe2CMYZQYPaTaGY8mfIlQ=; b=uYBlqRlFx/1M+qdIuDhNDWt5V
	W2U0dJc8WQbZLjSyQkSae6y8yi/DXrbN3MMxt5FyUsjjTtXgKky1d8/S0AExhEjh6Ag9M/kVxLQs2
	Q9gJEONVY6BGJPIC8JLchE3SRLxcRxBTDB3o6iDJebzXOo5RauxoeBx8rtt6kksWhO+T48bQGFazw
	MTvufVTVwfEws4Tn8V2+xJ/ALUmExoXSkhWr9KuB+oCyVrIR5YhWPTwBONaO3VmRQGWV4BGR7rAhI
	x0LN3KlYT+NqoqWp7GYmRJl9o3d+O2jd1Fwm9FimPZmb2bfqmwb2ZkbmczH5/VOgYB/Mf/T5fEV1l
	T3oVxapSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Ge0-0002rV-Lo; Thu, 27 Feb 2020 10:43:52 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7GdD-0002Cr-IR; Thu, 27 Feb 2020 10:43:05 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48Sq4p6C5jz9tyhj;
 Thu, 27 Feb 2020 11:42:50 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=S2lr/JhY; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id RBUcz2GDDss6; Thu, 27 Feb 2020 11:42:50 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48Sq4p546Vz9tyhl;
 Thu, 27 Feb 2020 11:42:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1582800170; bh=5jVgSlMtkWu6tY2vWvxiJHRV/VXhxhn9Ff1N2fIt2UU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=S2lr/JhYZ+BGylLoddvoIQ9iQhySwoByCGIjiV2jJ0PeIWGuHFGwJKoDCDBlMX134
 i5DDDsfMVW33gpJWXfhaNVZkRAjliFDf2imHM3gIFbd6vhCt20XFgykuEBdbkrcViD
 lQGvXfjqGVwxK9iazQgdwBp51saPHe4oEmbNBr5A=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id BCB398B875;
 Thu, 27 Feb 2020 11:42:51 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id FEU3XPlFNEyZ; Thu, 27 Feb 2020 11:42:51 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 20C4A8B879;
 Thu, 27 Feb 2020 11:42:48 +0100 (CET)
Subject: Re: [PATCH] mm/debug: Add tests validating arch page table helpers
 for core features
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1582799637-11786-1-git-send-email-anshuman.khandual@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <51421bb3-9075-d7e9-1750-0553a1ebe64a@c-s.fr>
Date: Thu, 27 Feb 2020 11:42:33 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1582799637-11786-1-git-send-email-anshuman.khandual@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_024303_767572_027D9425 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 linux-snps-arc@lists.infradead.org, Vasily Gorbik <gor@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyNy8wMi8yMDIwIMOgIDExOjMzLCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3JpdMKgOgo+
IFRoaXMgYWRkcyBuZXcgdGVzdHMgdmFsaWRhdGluZyBhcmNoIHBhZ2UgdGFibGUgaGVscGVycyBm
b3IgdGhlc2UgZm9sbG93aW5nCj4gY29yZSBtZW1vcnkgZmVhdHVyZXMuIFRoZXNlIHRlc3RzIGNy
ZWF0ZSBhbmQgdGVzdCBzcGVjaWZpYyBtYXBwaW5nIHR5cGVzIGF0Cj4gdmFyaW91cyBwYWdlIHRh
YmxlIGxldmVscy4KPiAKPiAqIFNQRUNJQUwgbWFwcGluZwo+ICogUFJPVE5PTkUgbWFwcGluZwo+
ICogREVWTUFQIG1hcHBpbmcKPiAqIFNPRlRESVJUWSBtYXBwaW5nCj4gKiBTV0FQIG1hcHBpbmcK
PiAqIE1JR1JBVElPTiBtYXBwaW5nCj4gKiBIVUdFVExCIG1hcHBpbmcKCkZvciB0ZXN0aW5nIEhV
R0VUTEIgbWFwcGluZ3MsIHlvdSBhbHNvIGhhdmUgdG8gaW5jbHVkZSB0ZXN0cyBvZiBodWdlcGQg
CmZ1bmN0aW9ucy9oZWxwZXJzLiBOb3QgYWxsIGFyY2hpY3R1cmVzIGhhdmUgaHVnZXBhZ2Ugc2l6
ZSB3aGljaCBtYXRjaGVzIAp3aXRoIHBhZ2UgdGFibGVzIGxldmVscyAoZS5nLiBwb3dlcnBjKS4g
VGhvc2UgYXJjaGl0ZWN0dXJlcyB1c2UgaHVnZXBkX3QuCgpDaHJpc3RvcGhlCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
