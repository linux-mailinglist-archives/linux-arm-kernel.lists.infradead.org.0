Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F65C18AD20
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 08:04:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UIRjeXYIE9UJMCndSPPKz5GDyE42PZThsLhFAm8AEng=; b=ZUKCtmsWlS9ui2le4bpUalR4B
	o1i+nyhvGozLpbjnchTine3dJBFdfeaelACxa7L1nPafIwL6BdXfCX5YQQVwcDUIuSr6KFmg7Rna4
	FEGm0bNU61WMhDF4gZFBYpnDETt8E4ir3h39GG72JhObeMVCzCEzVEHzvfq/9FofZ2rWEjOSG5p6+
	AnF3qKnH1bvUYPD4P+S/Dslqbunvq72QR34lPspDmDH9aiCXBmAtMRzBgRCvSlA3Eqax/MSdmRYu8
	7mKkvOYRihD7daXvqEgCsOX7I3sQrZcPZJ6M+4Z3mO83CDVsJ0z4BvdNe8cn/x2ct8yGTAVwYK1yl
	sob6ZbTzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEpES-0006rS-Qm; Thu, 19 Mar 2020 07:04:44 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEpEK-0006qi-Jb; Thu, 19 Mar 2020 07:04:38 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48jdF71sjtz9v1Md;
 Thu, 19 Mar 2020 08:04:27 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=miVDWU3+; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id LNpYefN951gJ; Thu, 19 Mar 2020 08:04:27 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48jdF70XNZz9v1Mc;
 Thu, 19 Mar 2020 08:04:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1584601467; bh=5ZZ9JpRLP71PK+VNpemb+Gegi8ltDnpAruGHqikdnkM=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=miVDWU3+a2y0u275N9hD/wlPdJIb1qmEFxnWhWbDAcuzzhQKA62bOJRlcQS+0FgpJ
 1oDaIjZur3d9lpK8mGIRkzkhqA4W3uvhQ9x7BDYfoczEr1ShtNesHCpCKh7CmjNR3c
 w9QIjLFWO20jXxv/VZmy7eFG3M/ZUt7wHjFbPowk=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id E903D8B772;
 Thu, 19 Mar 2020 08:04:27 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id NWMcTA98PEcE; Thu, 19 Mar 2020 08:04:27 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 8F89E8B769;
 Thu, 19 Mar 2020 08:04:26 +0100 (CET)
Subject: Re: [PATCH 2/4] hugetlbfs: move hugepagesz= parsing to arch
 independent code
To: Mike Kravetz <mike.kravetz@oracle.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
 <20200318220634.32100-3-mike.kravetz@oracle.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <2ca058dc-47e6-1d08-154b-77d2cbe98e34@c-s.fr>
Date: Thu, 19 Mar 2020 08:04:21 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200318220634.32100-3-mike.kravetz@oracle.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_000436_941375_983E48A8 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Vasily Gorbik <gor@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "David S . Miller" <davem@davemloft.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Paul Mackerras <paulus@samba.org>, Andrew Morton <akpm@linux-foundation.org>,
 Longpeng <longpeng2@huawei.com>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxOC8wMy8yMDIwIMOgIDIzOjA2LCBNaWtlIEtyYXZldHogYSDDqWNyaXTCoDoKPiBOb3cg
dGhhdCBhcmNoaXRlY3R1cmVzIHByb3ZpZGUgYXJjaF9odWdldGxiX3ZhbGlkX3NpemUoKSwgcGFy
c2luZwo+IG9mICJodWdlcGFnZXN6PSIgY2FuIGJlIGRvbmUgaW4gYXJjaGl0ZWN0dXJlIGluZGVw
ZW5kZW50IGNvZGUuCj4gQ3JlYXRlIGEgc2luZ2xlIHJvdXRpbmUgdG8gaGFuZGxlIGh1Z2VwYWdl
c3o9IHBhcnNpbmcgYW5kIHJlbW92ZQo+IGFsbCBhcmNoIHNwZWNpZmljIHJvdXRpbmVzLiAgV2Ug
Y2FuIGFsc28gcmVtb3ZlIHRoZSBpbnRlcmZhY2UKPiBodWdldGxiX2JhZF9zaXplKCkgYXMgdGhp
cyBpcyBubyBsb25nZXIgdXNlZCBvdXRzaWRlIGFyY2ggaW5kZXBlbmRlbnQKPiBjb2RlLgo+IAo+
IFRoaXMgYWxzbyBwcm92aWRlcyBjb25zaXN0ZW50IGJlaGF2aW9yIG9mIGh1Z2V0bGJmcyBjb21t
YW5kIGxpbmUKPiBvcHRpb25zLiAgVGhlIGh1Z2VwYWdlc3o9IG9wdGlvbiBzaG91bGQgb25seSBi
ZSBzcGVjaWZpZWQgb25jZSBmb3IKPiBhIHNwZWNpZmljIHNpemUsIGJ1dCBzb21lIGFyY2hpdGVj
dHVyZXMgYWxsb3cgbXVsdGlwbGUgaW5zdGFuY2VzLgo+IFRoaXMgYXBwZWFycyB0byBiZSBtb3Jl
IG9mIGFuIG92ZXJzaWdodCB3aGVuIGNvZGUgd2FzIGFkZGVkIGJ5IHNvbWUKPiBhcmNoaXRlY3R1
cmVzIHRvIHNldCB1cCBBTEwgaHVnZSBwYWdlcyBzaXplcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBN
aWtlIEtyYXZldHogPG1pa2Uua3JhdmV0ekBvcmFjbGUuY29tPgo+IC0tLQo+ICAgYXJjaC9hcm02
NC9tbS9odWdldGxicGFnZS5jICAgfCAxNSAtLS0tLS0tLS0tLS0tLS0KPiAgIGFyY2gvcG93ZXJw
Yy9tbS9odWdldGxicGFnZS5jIHwgMTUgLS0tLS0tLS0tLS0tLS0tCj4gICBhcmNoL3Jpc2N2L21t
L2h1Z2V0bGJwYWdlLmMgICB8IDE2IC0tLS0tLS0tLS0tLS0tLS0KPiAgIGFyY2gvczM5MC9tbS9o
dWdldGxicGFnZS5jICAgIHwgMTggLS0tLS0tLS0tLS0tLS0tLS0tCj4gICBhcmNoL3NwYXJjL21t
L2luaXRfNjQuYyAgICAgICB8IDIyIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgIGFyY2gveDg2
L21tL2h1Z2V0bGJwYWdlLmMgICAgIHwgMTYgLS0tLS0tLS0tLS0tLS0tLQo+ICAgaW5jbHVkZS9s
aW51eC9odWdldGxiLmggICAgICAgfCAgMSAtCj4gICBtbS9odWdldGxiLmMgICAgICAgICAgICAg
ICAgICB8IDI0ICsrKysrKysrKysrKysrKysrKy0tLS0tLQo+ICAgOCBmaWxlcyBjaGFuZ2VkLCAx
OCBpbnNlcnRpb25zKCspLCAxMDkgZGVsZXRpb25zKC0pCj4gCgpbc25pcF0KCj4gZGlmZiAtLWdp
dCBhL21tL2h1Z2V0bGIuYyBiL21tL2h1Z2V0bGIuYwo+IGluZGV4IDJmOTkzNTliOTNhZi4uY2Q0
ZWMwNzA4MGZiIDEwMDY0NAo+IC0tLSBhL21tL2h1Z2V0bGIuYwo+ICsrKyBiL21tL2h1Z2V0bGIu
Ywo+IEBAIC0zMTQ5LDEyICszMTQ5LDYgQEAgc3RhdGljIGludCBfX2luaXQgaHVnZXRsYl9pbml0
KHZvaWQpCj4gICB9Cj4gICBzdWJzeXNfaW5pdGNhbGwoaHVnZXRsYl9pbml0KTsKPiAgIAo+IC0v
KiBTaG91bGQgYmUgY2FsbGVkIG9uIHByb2Nlc3NpbmcgYSBodWdlcGFnZXN6PS4uLiBvcHRpb24g
Ki8KPiAtdm9pZCBfX2luaXQgaHVnZXRsYl9iYWRfc2l6ZSh2b2lkKQo+IC17Cj4gLQlwYXJzZWRf
dmFsaWRfaHVnZXBhZ2VzeiA9IGZhbHNlOwo+IC19Cj4gLQo+ICAgdm9pZCBfX2luaXQgaHVnZXRs
Yl9hZGRfaHN0YXRlKHVuc2lnbmVkIGludCBvcmRlcikKPiAgIHsKPiAgIAlzdHJ1Y3QgaHN0YXRl
ICpoOwo+IEBAIC0zMjI0LDYgKzMyMTgsMjQgQEAgc3RhdGljIGludCBfX2luaXQgaHVnZXRsYl9u
cnBhZ2VzX3NldHVwKGNoYXIgKnMpCj4gICB9Cj4gICBfX3NldHVwKCJodWdlcGFnZXM9IiwgaHVn
ZXRsYl9ucnBhZ2VzX3NldHVwKTsKPiAgIAo+ICtzdGF0aWMgaW50IF9faW5pdCBodWdlcGFnZXN6
X3NldHVwKGNoYXIgKnMpCj4gK3sKPiArCXVuc2lnbmVkIGxvbmcgbG9uZyBzaXplOwo+ICsJY2hh
ciAqc2F2ZWRfcyA9IHM7Cj4gKwo+ICsJc2l6ZSA9IG1lbXBhcnNlKHMsICZzKTsKCllvdSBkb24n
dCB1c2UgcyBhZnRlciB0aGF0LCBzbyB5b3UgY2FuIHBhc3MgTlVMTCBpbnN0ZWFkIG9mICZzIGFu
ZCBhdm9pZCAKdGhlIHNhdmVkX3MKCj4gKwo+ICsJaWYgKCFhcmNoX2h1Z2V0bGJfdmFsaWRfc2l6
ZShzaXplKSkgewo+ICsJCXBhcnNlZF92YWxpZF9odWdlcGFnZXN6ID0gZmFsc2U7Cj4gKwkJcHJf
ZXJyKCJIdWdlVExCOiB1bnN1cHBvcnRlZCBodWdlcGFnZXN6ICVzXG4iLCBzYXZlZF9zKTsKPiAr
CQlyZXR1cm4gMDsKPiArCX0KPiArCj4gKwlodWdldGxiX2FkZF9oc3RhdGUoaWxvZzIoc2l6ZSkg
LSBQQUdFX1NISUZUKTsKPiArCXJldHVybiAxOwo+ICt9Cj4gK19fc2V0dXAoImh1Z2VwYWdlc3o9
IiwgaHVnZXBhZ2Vzel9zZXR1cCk7Cj4gKwo+ICAgc3RhdGljIGludCBfX2luaXQgZGVmYXVsdF9o
dWdlcGFnZXN6X3NldHVwKGNoYXIgKnMpCj4gICB7Cj4gICAJdW5zaWduZWQgbG9uZyBsb25nIHNp
emU7Cj4gCgpDaHJpc3RvcGhlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
