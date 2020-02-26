Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDE9170176
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 15:44:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=laJSpqZ/QFn37gpmZLDMw0wFqkj3jc6PDJGtReWokPw=; b=Vv/hPKPwxHELii2L65B2qprM4
	m4r/ul1hv1L5si+glnQNiP/TTuMgy7jjJwqzeo21WAWokK0ETk/vOUZJMjQSFk1ESJdYkAeJvE+8T
	fVFMrhZiw/HxoczGPS+1fKjOpEWFOulUe8SQb8D2yUMKU0wMI318EK/QQ90reZsYZpdDjQSI6Drsn
	otTKtORyVPNumSsXhxsq5K1YGCTujbZBHu112hw5PrTv4E2nhysm3X20GHaiBcULqWn9vx7JXrl9n
	cJFbUGyV2qyQrBNkBOUaR7rnrB5emjOUtZZmOlfh0HzMNuobHyDC/AnAPQMjKNsjpaJL63jjRDzb/
	HJ+v+XUbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6xva-0001Ya-JJ; Wed, 26 Feb 2020 14:44:46 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6xvR-0001XQ-JE; Wed, 26 Feb 2020 14:44:39 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48SJV63yfQz9tyg0;
 Wed, 26 Feb 2020 15:44:30 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=F43a6Y7B; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id YgDcVuTElqgx; Wed, 26 Feb 2020 15:44:30 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48SJV62fxZz9tyfy;
 Wed, 26 Feb 2020 15:44:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1582728270; bh=eO3lF+ZJhQsxeyroK19gjLYfnwGpenLTxOUpnfp6wIk=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=F43a6Y7Bxj1cRpGgJ7No4+FNv3wTeZbfoxyElYJ0hEHpoYieZmf8wLqib3772js/j
 V7r+2th2c39Iqgq6QxqRNoWCuCyEV5w4Ghrc4DhY5VHlRD+vD7FF2/hwfv7xQkX5JV
 +qPa3ePbwcE1RNrdMbzmCHIISGg1CoUMAAXeaTgU=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id C9FD18B857;
 Wed, 26 Feb 2020 15:44:31 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id ES6wKYHYICe8; Wed, 26 Feb 2020 15:44:31 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id D97098B776;
 Wed, 26 Feb 2020 15:44:29 +0100 (CET)
Subject: Re: [PATCH V14] mm/debug: Add tests validating architecture page
 table helpers
To: Qian Cai <cai@lca.pw>, Anshuman Khandual <anshuman.khandual@arm.com>,
 linux-mm@kvack.org
References: <1581909460-19148-1-git-send-email-anshuman.khandual@arm.com>
 <1582726182.7365.123.camel@lca.pw> <1582726340.7365.124.camel@lca.pw>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <eb154054-68ab-a659-065b-f4f7dcbb8671@c-s.fr>
Date: Wed, 26 Feb 2020 15:44:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1582726340.7365.124.camel@lca.pw>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_064437_929771_0CA03292 
X-CRM114-Status: GOOD (  10.13  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
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

CgpMZSAyNi8wMi8yMDIwIMOgIDE1OjEyLCBRaWFuIENhaSBhIMOpY3JpdMKgOgo+IE9uIFdlZCwg
MjAyMC0wMi0yNiBhdCAwOTowOSAtMDUwMCwgUWlhbiBDYWkgd3JvdGU6Cj4+IE9uIE1vbiwgMjAy
MC0wMi0xNyBhdCAwODo0NyArMDUzMCwgQW5zaHVtYW4gS2hhbmR1YWwgd3JvdGU6Cj4+Cj4+IEhv
dyB1c2VmdWwgaXMgdGhpcyB0aGF0IHN0cmFpZ2h0bHkgY3Jhc2ggdGhlIHBvd2VycGM/Cj4gCj4g
QW5kIHRoZW4gZ2VuZXJhdGUgd2FybmluZ3Mgb24gYXJtNjQsCj4gCj4gW8KgwqAxNDYuNjM0NjI2
XVvCoMKgwqDCoFQxXSBkZWJ1Z192bV9wZ3RhYmxlOiBkZWJ1Z192bV9wZ3RhYmxlOiBWYWxpZGF0
aW5nCj4gYXJjaGl0ZWN0dXJlIHBhZ2UgdGFibGUgaGVscGVycwo+IFvCoMKgMTQ2LjY0Mzk5NV1b
wqDCoMKgwqBUMV0gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4gW8KgwqAx
NDYuNjQ5MzUwXVvCoMKgwqDCoFQxXSB2aXJ0X3RvX3BoeXMgdXNlZCBmb3Igbm9uLWxpbmVhciBh
ZGRyZXNzOgo+IChfX19fcHRydmFsX19fXykgKHN0YXJ0X2tlcm5lbCsweDAvMHg1ODApCgpNdXN0
IGJlIHNvbWV0aGluZyB3cm9uZyB3aXRoIHRoZSBmb2xsb3dpbmcgaW4gZGVidWdfdm1fcGd0YWJs
ZSgpCgoJcGFkZHIgPSBfX3BhKCZzdGFydF9rZXJuZWwpOwoKSXMgdGhlcmUgYW55IGV4cGxhaW5h
dGlvbiB3aHkgc3RhcnRfa2VybmVsKCkgaXMgbm90IGluIGxpbmVhciBtZW1vcnkgb24gCkFSTTY0
ID8KCkNocmlzdG9waGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
