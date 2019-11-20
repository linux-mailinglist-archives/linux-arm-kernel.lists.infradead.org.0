Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD40103B9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 14:35:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UVWB3nOW++At5tjheiHp/MkuV/zwDTLYmFYPsSNtFY=; b=Hb6umaWPivcWeP
	l7t8bIsgcBJInF+ncHiz1Sro2kmiwOSK1zDg6W5BQl+F3BPI/Gb7OLfTeK5P77Kgp+ebjoUbpTlMj
	55yPCHIr2nynHFIDZRJzz675i9H6c4M+qCWzqjI031jsuDS7nTAyrcB9gXMdXeDrCZt+HUaDXG7Sg
	mI0itu5zxxI9YIHeXTILzzTfu/wFKTnSiSOFOlmm5fqE0K8HuKY4DEqYg7iQe4ojQcQwRlrPSmnsX
	ygzxYyhH3g7XVxE54pvZqRPE6pnjpJSpaKRE1tqf3gP5mjhIgW1jc7AmH8iqAxLLE2EG681ZwlzwL
	3T1F7dHyRYg1anDIo7ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQ8K-0000Bb-UC; Wed, 20 Nov 2019 13:35:00 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQ89-0000AG-BJ; Wed, 20 Nov 2019 13:34:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 50BBAB00A;
 Wed, 20 Nov 2019 13:34:46 +0000 (UTC)
Subject: Re: [PATCH v4 2/8] irqchip: Add Realtek RTD1295 mux driver
To: Marc Zyngier <maz@kernel.org>
References: <20191119021917.15917-1-afaerber@suse.de>
 <20191119021917.15917-3-afaerber@suse.de>
 <a34e00cac16899b53d0b6445f0e81f4c@www.loen.fr>
 <e98364c5-a859-7981-8ccf-f8e5b5069379@suse.de> <20191119222956.23665e5d@why>
 <d7416bdb-e20a-42e1-daff-c61369f359fa@suse.de>
 <e4d30ff2485c3f9ffd2b934f1f757d19@www.loen.fr>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <18c09fc4-fe7b-7ba0-7cd3-ae0c650ca4a8@suse.de>
Date: Wed, 20 Nov 2019 14:34:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <e4d30ff2485c3f9ffd2b934f1f757d19@www.loen.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_053449_674041_6F5A038D 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: James Tai <james.tai@realtek.com>,
 Aleix Roca Nonell <kernelrocks@gmail.com>,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjAuMTEuMTkgdW0gMTE6MjAgc2NocmllYiBNYXJjIFp5bmdpZXI6Cj4gT24gMjAxOS0xMS0x
OSAyMzozMywgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+PiBBbSAxOS4xMS4xOSB1bSAyMzoyOSBz
Y2hyaWViIE1hcmMgWnluZ2llcjoKPj4+IE9uIFR1ZSwgMTkgTm92IDIwMTkgMjE6NTY6NDggKzAx
MDAKPj4+IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4gd3JvdGU6Cj4+Pj4gQW0g
MTkuMTEuMTkgdW0gMTM6MDEgc2NocmllYiBNYXJjIFp5bmdpZXI6Cj4+Pj4+IE9uIDIwMTktMTEt
MTkgMDI6MTksIEFuZHJlYXMgRsOkcmJlciB3cm90ZToKPj4+Pj4+ICtzdGF0aWMgdm9pZCBydGQx
MTk1X211eF9lbmFibGVfaXJxKHN0cnVjdCBpcnFfZGF0YSAqZGF0YSkKPj4+Pj4+ICt7Cj4+Pj4+
PiArwqDCoMKgIHN0cnVjdCBydGQxMTk1X2lycV9tdXhfZGF0YSAqbXV4X2RhdGEgPQo+Pj4+Pj4g
aXJxX2RhdGFfZ2V0X2lycV9jaGlwX2RhdGEoZGF0YSk7Cj4+Pj4+PiArwqDCoMKgIHVuc2lnbmVk
IGxvbmcgZmxhZ3M7Cj4+Pj4+PiArwqDCoMKgIHUzMiBtYXNrOwo+Pj4+Pj4gKwo+Pj4+Pj4gK8Kg
wqDCoCBtYXNrID0gbXV4X2RhdGEtPmluZm8tPmlzcl90b19pbnRfZW5fbWFza1tkYXRhLT5od2ly
cV07Cj4+Pj4+PiArwqDCoMKgIGlmICghbWFzaykKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1
cm47Cj4+Pj4+Cj4+Pj4+IEhvdyBjYW4gdGhpcyBoYXBwZW4/IFlvdSd2ZSBtYXBwZWQgdGhlIGlu
dGVycnVwdCwgc28gaXQgZXhpc3RzLgo+Pj4+PiBJIGNhbid0IHNlZSBob3cgeW91IGNhbiBkZWNp
ZGUgdG8gZmFpbCBzdWNoIGVuYWJsZS4KPj4+Pgo+Pj4+IFRoZSBbVU1TS19dSVNSIGJpdHMgYW5k
IHRoZSBTQ1BVX0lOVF9FTiBiaXRzIGFyZSBub3QgKGFsbCkgdGhlIHNhbWUuCj4+Pj4KPj4+PiBN
eSAuLi5faXNyX3RvX3NjcHVfaW50X2VuW10gYXJyYXlzIGhhdmUgMzIgZW50cmllcyBmb3IgTygx
KSBsb29rdXAsIGJ1dAo+Pj4+IGFyZSBzcGFyc2VseSBwb3B1bGF0ZWQuIFNvIHRoZXJlIGFyZSBj
aXJjdW1zdGFuY2VzIHN1Y2ggYXMgV0RPR19OTUkgYXMKPj4+PiB3ZWxsIGFzIHJlc2VydmVkIGJp
dHMgdGhhdCB3ZSBjYW5ub3QgZW5hYmxlLgo+Pj4KPj4+IEJ1dCB0aGUgeW91IHNob3VsZCBoYXZl
IGZhaWxlZCB0aGUgbWFwLiBUaGUgbW9tZW50IHlvdSBhbGxvdyB0aGUKPj4+IG1hcHBpbmcgdG8g
b2NjdXIsIHlvdSBoYXZlIGFjY2VwdGVkIHRoZSBjb250cmFjdCB0aGF0IHRoaXMgaW50ZXJydXB0
IGlzCj4+PiB1c2FibGUuCj4+Pgo+Pj4+IFRoaXMgY2hlY2sgc2hvdWxkIGJlCj4+Pj4gaWRlbnRp
Y2FsIHRvIHYzOyB0aGUgZXF1aXZhbGVudCBtYXNrIGNoZWNrIGluc2lkZSB0aGUgaW50ZXJydXB0
IGhhbmRsZXIKPj4+PiB3YXMgZXh0ZW5kZWQgd2l0aCAibWFzayAmJiIgdG8gZG8gdGhlIHNhbWUg
aW4gdGhpcyB2NC4KPj4+Cj4+PiBTcHVyaW91cyBpbnRlcnJ1cHRzIGFyZSBhIGRpZmZlcmVudCBt
YXR0ZXIuIFdoYXQgSSdtIG9iamVjdGluZyB0byBoZXJlCj4+PiBpcyBhIHNpbXBsZSBxdWVzdGlv
biBvZiBsb2dpYywgd2hldGhlciBvciBub3QgeW91IGFyZSBhbGxvd2VkIHRvIGZhaWwKPj4+IGVu
YWJsaW5nIGFuIGludGVycnVwdCB0aGF0IHlvdSd2ZSBvdGhlcndpc2UgYWxsb3dlZCB0byBiZSBw
b3B1bGF0ZWQuCj4+Cj4+IFRoZW4gd2hhdCBhcmUgeW91IHN1Z2dlc3RpbmcgaW5zdGVhZD8gSSBk
b24ndCBzZWUgaG93IG15IGFycmF5IG1hcAo+PiBsb29rdXAgY291bGQgZmFpbCBvdGhlciB0aGFu
IHJldHVybmluZyBhIHplcm8gdmFsdWUsIGdpdmVuIGl0cyBzdGF0aWMKPj4gaW5pdGlhbGl6YXRp
b24uIENoZWNrIGZvciBhIHplcm8gbWFzayBpbiBydGQxMTk1X211eF9pcnFfZG9tYWluX21hcCgp
Pwo+PiBUaGVuIHdlIHdvdWxkbid0IGJlIGFibGUgdG8gdXNlIHRoZSBtZW50aW9uZWQgV0RPR19O
TUkuIEFkZCBhbm90aGVyCj4+IHBlci1tdXggaW5mbyBmaWVsZCBmb3Igd2hpY2ggaW50ZXJydXB0
cyBhcmUgdmFsaWQgdG8gbWFwPwo+IAo+IEknbSBzdWdnZXN0aW5nIHRoYXQgeW91IGZhaWwgdGhl
IG1hcCBpZiB5b3UncmUgdW5hYmxlIHRvIGFsbG93IHRoZQo+IGludGVycnVwdCB0byBiZSBlbmFi
bGVkLgoKVGhlIE5NSSB3aWxsIGFsd2F5cyBiZSBlbmFibGVkLCBpdCBqdXN0IGNhbid0IGJlIGRp
c2FibGVkLgoKSSBoYXZlIGFkZGVkIGEgY2hlY2sgdG8gc3VwcHJlc3MgYSB6ZXJvIGh3aXJxLiBT
dXBwcmVzc2luZyByZXNlcnZlZCBJUlEKYml0cyB3aWxsIHRha2Ugc29tZSBtb3JlIGVmZm9ydCB0
byBkaXN0aW5ndWlzaCBmcm9tIE5NSXMuIEluIHBhcnRpY3VsYXIKaWYgd2UgZmxhZyB0aGlzIGlu
IHRoZSAuLi5faXNyX3RvX3NjcHVfaW50X2VuIGFycmF5IGJ5IHNvbWUgbWFnaWMgbWFzawp2YWx1
ZSBsaWtlIDB4ZmZmZmZmZmYgdGhlbiBhbGwgdXNlcnMgbmVlZCB0byBjaGVjayBmb3IgdHdvIHJh
dGhlciB0aGFuCm9uZSB2YWx1ZSAtIGJ1dCBpZiB3ZSByZWR1Y2UgdGhlIHVzZXJzLCBpdCBzaG91
bGRuJ3QgbWF0dGVyIHRvbyBtdWNoLgoKV2l0aCBjb250cmFjdCBJIGFzc3VtZSB5b3UncmUgcmVm
ZXJyaW5nIHRvIHRoZXNlIGNhbGxiYWNrcyBoYXZpbmcgYSB2b2lkCnJldHVybiB0eXBlLCB1bmFi
bGUgdG8gcmV0dXJuIGFuIGVycm9yIHRvIHRoZSBjYWxsZXIsIGFuZCB0aGVyZSBiZWluZyBubwpp
c19lbmFibGVkL2lzX21hc2tlZCBjYWxsYmFja3MgZm9yIGFueW9uZSB0byBkaXNjb3ZlciB0aGlz
LgoKVW5mb3J0dW5hdGVseSBOTUkgaGFuZGxpbmcgYXBwZWFycyB0byBiZSBvbmx5IHVzZWQgaW4g
R0lDdjMgYW5kIGlzIG5vdAp2ZXJ5IGludHVpdGl2ZSBmb3IgbWU6IEFwcGFyZW50bHkgSSBjYW4g
b25seSBmbGFnIHRoZSB3aG9sZSBpcnFfY2hpcCBhcwpiZWluZyBOTUkgYnV0IG5vdCBpbmRpdmlk
dWFsIElSUXM/IFdvdWxkIHRoYXQgbWVhbiB0aGF0IHRoaXMgZHJpdmVyCndvdWxkIG5lZWQgdG8g
aW5zdGFudGlhdGUgYSBzZWNvbmQgaXJxX2NoaXAgZm9yIHRoYXQgb25lIElSUT8gSG93IHdvdWxk
CnRoYXQgd29yayBmb3IgbWFwcGluZyBmcm9tIERUPyBHaXZlbiB0aGF0IHRoaXMgbXV4IHJlbGll
cyBvbiBhIG1hc2thYmxlCkdJQ3YyIElSUSwgaXQncyBub3QgYSAidHJ1ZSIgTk1JIGluIHRoZSBM
aW51eCBzZW5zZSBhbnl3YXksIG90aGVyIHRoYW4KdGhlIC5pcnFfbWFzayBjYWxsYmFjayBub3Qg
YmVpbmcgYXBwbGljYWJsZS4gV2hpbGUgSSBkb24ndCBuZWVkIHRoYXQgTk1JCmltbWVkaWF0ZWx5
LCBJIHdvdWxkIHByZWZlciBub3QgdG8gbWVyZ2UgYSBkcml2ZXIgdGhhdCBieSBkZXNpZ24gY2Fu
J3QKY29wZSB3aXRoIGl0IGxhdGVyLgoKSSdsbCB0cnkgdG8gcG9zdCBhIHY1IHdpdGggcnN2IGFu
ZCBubWkgYmxvY2tlZCBpbiBtYXAgZm9yIGZ1cnRoZXIKZGlzY3Vzc2lvbiB0b25pZ2h0LgoKUmVn
YXJkcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApN
YXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7Zy
ZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
