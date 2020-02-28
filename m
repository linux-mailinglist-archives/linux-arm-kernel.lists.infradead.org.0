Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF6D1733B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 10:20:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SfldyvXyo5PTtwsWZ0tYeVRwI4YCIrlARjYWpf+hjQ=; b=X3igfnoX+LW/k8
	l4STHIL4ZLUMgOZY/TxBUKOa8yuzJn02zpWmT7pVNT5/anA0JG+NFjY09IdTBlhoeegLr9IIYEef1
	WwahAAY7zmz6A4Rc23d/tGHpbi4gBXejL2kVNguXp1YgZitALpwz1tiJRNKg5DfDa3PRU6J+OVa/C
	Qwk5i6l9YpBsNisZA/MuDTyUruzd/3YqlI5YWZpLE4+oxP+bd2T8axJ8spwA6Ju3H6g72nHmFEHp9
	h3L6fB9lSiuZj7GOwh8DLX+31wkRZol9+WsA/MEqc9xWg2bpcjeylQ+IszBKLsPUCoEc3WcX2bMDp
	2fviOMkQJhD3blwFG/+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7bp2-0002Pw-6I; Fri, 28 Feb 2020 09:20:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7bom-0002I2-JJ; Fri, 28 Feb 2020 09:20:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E2C8E1FB;
 Fri, 28 Feb 2020 01:20:19 -0800 (PST)
Received: from [10.163.1.119] (unknown [10.163.1.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E52C03F7B4;
 Fri, 28 Feb 2020 01:20:10 -0800 (PST)
Subject: Re: [PATCH] mm/debug: Add tests validating arch page table helpers
 for core features
To: Christophe Leroy <christophe.leroy@c-s.fr>, linux-mm@kvack.org
References: <1582799637-11786-1-git-send-email-anshuman.khandual@arm.com>
 <51421bb3-9075-d7e9-1750-0553a1ebe64a@c-s.fr>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <f99692be-5d38-fdb7-46f1-205c7cc7481c@arm.com>
Date: Fri, 28 Feb 2020 14:50:09 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <51421bb3-9075-d7e9-1750-0553a1ebe64a@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_012024_696067_761E8A50 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwMi8yNy8yMDIwIDA0OjEyIFBNLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgo+IAo+IAo+
IExlIDI3LzAyLzIwMjAgw6AgMTE6MzMsIEFuc2h1bWFuIEtoYW5kdWFsIGEgw6ljcml0wqA6Cj4+
IFRoaXMgYWRkcyBuZXcgdGVzdHMgdmFsaWRhdGluZyBhcmNoIHBhZ2UgdGFibGUgaGVscGVycyBm
b3IgdGhlc2UgZm9sbG93aW5nCj4+IGNvcmUgbWVtb3J5IGZlYXR1cmVzLiBUaGVzZSB0ZXN0cyBj
cmVhdGUgYW5kIHRlc3Qgc3BlY2lmaWMgbWFwcGluZyB0eXBlcyBhdAo+PiB2YXJpb3VzIHBhZ2Ug
dGFibGUgbGV2ZWxzLgo+Pgo+PiAqIFNQRUNJQUwgbWFwcGluZwo+PiAqIFBST1ROT05FIG1hcHBp
bmcKPj4gKiBERVZNQVAgbWFwcGluZwo+PiAqIFNPRlRESVJUWSBtYXBwaW5nCj4+ICogU1dBUCBt
YXBwaW5nCj4+ICogTUlHUkFUSU9OIG1hcHBpbmcKPj4gKiBIVUdFVExCIG1hcHBpbmcKPiAKPiBG
b3IgdGVzdGluZyBIVUdFVExCIG1hcHBpbmdzLCB5b3UgYWxzbyBoYXZlIHRvIGluY2x1ZGUgdGVz
dHMgb2YgaHVnZXBkIGZ1bmN0aW9ucy9oZWxwZXJzLiBOb3QgYWxsIGFyY2hpY3R1cmVzIGhhdmUg
aHVnZXBhZ2Ugc2l6ZSB3aGljaCBtYXRjaGVzIHdpdGggcGFnZSB0YWJsZXMgbGV2ZWxzIChlLmcu
IHBvd2VycGMpLiBUaG9zZSBhcmNoaXRlY3R1cmVzIHVzZSBodWdlcGRfdC4KCkRvbnQgc2VlIG11
Y2ggaHVnZXBkX3QgaW4gZ2VuZXJpYyBIdWdlVExCLiBKdXN0IHdvbmRlcmluZyB3aGljaCBnZW5l
cmljCmh1Z2VwZCBoZWxwZXJzIGNhbiBiZSB0ZXN0ZWQgaGVyZS4gQ291bGQgeW91IHBsZWFzZSBi
ZSBiaXQgbW9yZSBzcGVjaWZpYy4KQXMgd2UgaGF2ZSBub3QgeWV0IHN0YXJ0ZWQgbG9va2luZyBm
b3IgYXJjaCBzcGVjaWZpYyBwYWdlIHRhYmxlIGhlbHBlcnMKdGVzdCByZXF1aXJlbWVudHMsIGFs
bCB0aGUgdGVzdCBzY2VuYXJpb3MgaGVyZSBuZWVkIHRvIGJlIGdlbmVyaWMuCgo+IAo+IENocmlz
dG9waGUKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
