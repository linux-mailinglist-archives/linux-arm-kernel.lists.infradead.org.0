Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEF655601
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 19:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Fcz6WQFTHmnWNqLn4Amc0fK18OvlNiHDqNgqIH5BeU=; b=mNCOMQSt5xIoXc
	KQEPVWy59uUoJcOt6Jmz9hKMqth/6hfrmds9y/fpb98zFYoA0l91wusb7NeaL3svzdXfvLaJgPAmr
	Tk6sBgxoIVU0fnptrNoJXMH0rOHrUq5n8ubEooY6Db2B85sdLo2eXZpxT957lSxogQztfKxncMvtW
	Tp7psl0l8PU7RmKtJS+zds1acazdXZSGia/6QWkm7sOPoxSIFzKfAO3QoAfoTiOclrvyuP8SPapG1
	DVT3017hpZ12i5FmeGMCkq2id7cD29emuuk1bFN38GE8iSTzeqDBZlqeV1T1fWWUQapFwAX3QKYZT
	nAxgnLPpqeV0voMqsPdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfpK0-00029G-2L; Tue, 25 Jun 2019 17:33:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfpJn-00028e-8H
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 17:33:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 00E94360;
 Tue, 25 Jun 2019 10:33:18 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F042D3F718;
 Tue, 25 Jun 2019 10:33:16 -0700 (PDT)
Subject: Re: "arm64: vdso: Substitute gettimeofday() with C implementation"
 breaks clang build
To: Qian Cai <cai@lca.pw>, Nick Desaulniers <ndesaulniers@google.com>
References: <1561464964.5154.63.camel@lca.pw>
 <e86774e4-7470-5cb2-fc3e-b7c1f529d253@arm.com>
 <1561467369.5154.67.camel@lca.pw>
 <00a78980-6b9c-5d5b-ed01-b28bb34be022@arm.com>
 <1561470705.5154.68.camel@lca.pw>
 <5113362e-1256-6712-6ce8-9599b1806cf1@arm.com>
 <1561472887.5154.72.camel@lca.pw>
 <668bbe72-b32b-8cee-ccad-d1f6110c6728@arm.com>
 <CAKwvOdmCFjunXRbninTdqoDGPNJ6b7npgXLAPYGqFZas5ofNjw@mail.gmail.com>
 <193c179e-16ca-4b4e-2584-75e8f6c1819f@arm.com>
 <1561483888.5154.78.camel@lca.pw>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <b25d3952-abe5-def5-fe42-0300f0b4c73c@arm.com>
Date: Tue, 25 Jun 2019 18:33:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1561483888.5154.78.camel@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_103319_348884_2A94DD3F 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUWlhbiwKCk9uIDI1LzA2LzIwMTkgMTg6MzEsIFFpYW4gQ2FpIHdyb3RlOgo+IE9uIFR1ZSwg
MjAxOS0wNi0yNSBhdCAxODowMCArMDEwMCwgVmluY2Vuem8gRnJhc2Npbm8gd3JvdGU6Cj4+IEhp
IE5pY2ssCj4+Cj4+IE9uIDI1LzA2LzIwMTkgMTc6MjYsIE5pY2sgRGVzYXVsbmllcnMgd3JvdGU6
Cj4+PiBPbiBUdWUsIEp1biAyNSwgMjAxOSBhdCA3OjU0IEFNIFZpbmNlbnpvIEZyYXNjaW5vCj4+
PiA8dmluY2Vuem8uZnJhc2Npbm9AYXJtLmNvbT4gd3JvdGU6Cj4+Pj4KPj4+PiBIaSBRaWFuLAo+
Pj4+Cj4+Pj4gLi4uCj4+Pj4KPj4+Pj4KPj4+Pj4gYnV0IGNsYW5nIDcuMCBpcyBzdGlsbCB1c2Ug
aW4gbWFueSBkaXN0cm9zIGJ5IGRlZmF1bHQsIHNvIG1heWJlIHRoaXMKPj4+Pj4gY29tbWl0IGNh
bgo+Pj4+PiBiZSBmaXhlZCBieSBhZGRpbmcgYSBjb25kaXRpb25hbCBjaGVjayB0byB1c2UgInNt
YWxsIiBpZiBjbGFuZyB2ZXJzaW9uIDwKPj4+Pj4gOC4wLgo+Pj4+Pgo+Pj4+Cj4+Pj4gQ291bGQg
eW91IHBsZWFzZSB2ZXJpZnkgdGhhdCB0aGUgcGF0Y2ggYmVsb3cgd29ya3MgZm9yIHlvdT8KPj4+
Cj4+PiBTaG91bGQgaXQgYmUgY2hlY2tpbmcgYWdhaW5zdCBDT05GSUdfQ0xBTkdfVkVSU0lPTiwg
b3IgYmV0dGVyIHlldCBiZQo+Pj4gdXNpbmcgY2Mtb3B0aW9uIG1hY3JvPwo+Pj4KPj4KPj4gVGhp
cyBpcyB3aGF0IEkgZGlkIGluIG15IHByb3Bvc2VkIHBhdGNoLCBidXQgSSB3YXMgc3VycHJpc2Vk
IHRoYXQgY2xhbmctNwo+PiBnZW5lcmF0ZXMgcmVsb2NhdGlvbnMgdGhhdCBjbGFuZy04IGRvZXMg
bm90Lgo+Pgo+PiDCoCBMRMKgwqDCoMKgwqDCoGFyY2gvYXJtNjQva2VybmVsL3Zkc28vdmRzby5z
by5kYmcKPj4gwqAgVkRTT0NISyBhcmNoL2FybTY0L2tlcm5lbC92ZHNvL3Zkc28uc28uZGJnCj4+
IDAwMDAwMDAwMDAwMDA5ZDAgUl9BQVJDSDY0X0pVTVBfU0xPVMKgwqBfbWNvdW50Cj4+Cj4+IGFy
Y2gvYXJtNjQva2VybmVsL3Zkc28vdmRzby5zby5kYmc6IGR5bmFtaWMgcmVsb2NhdGlvbnMgYXJl
IG5vdCBzdXBwb3J0ZWQKPj4gbWFrZVsxXTogKioqIFthcmNoL2FybTY0L2tlcm5lbC92ZHNvL01h
a2VmaWxlOjU5Ogo+PiBhcmNoL2FybTY0L2tlcm5lbC92ZHNvL3Zkc28uc28uZGJnXSBFcnJvciAx
Cj4+IG1ha2U6ICoqKiBbYXJjaC9hcm02NC9NYWtlZmlsZToxODA6IHZkc29fcHJlcGFyZV0gRXJy
b3IgMgo+Pgo+PiBUaGlzIGlzIHRoZSB0aGUgcmVzdWx0IG9mIHRoZSBtYWNybyBJIGludHJvZHVj
ZWQgaW4gbGliL3Zkc28vTWFrZWZpbGUuCj4+Cj4+IEFuZCBJIGp1c3QgZm91bmQgb3V0IHdoeS4g
SSBmb3Jnb3QgdG8gYWRkIGEgIisiIGluIHRoZSBwYXRjaCBwcm92aWRlZCA6KQo+Pgo+PiBAUWlh
bjogQ291bGQgeW91IHBsZWFzZSByZXRyeSB3aXRoIHRoZSBvbmUgcHJvdmlkZWQgYmVsb3c/Cj4+
Cj4gCj4gSXQgd29ya3MgZmluZS4KPiAKClRoYW5rcyBmb3IgdGhlIGNvbmZpcm1hdGlvbiwgSSB3
aWxsIHB1c2ggdGhlIHBhdGNoIGluIGEgc2hvcnQgd2hpbGUuCgotLSAKUmVnYXJkcywKVmluY2Vu
em8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
