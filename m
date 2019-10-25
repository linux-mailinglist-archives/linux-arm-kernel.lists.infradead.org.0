Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111AFE5205
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 19:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tja5YpqR+52R3Xqvl6KcJSvigeXOZG4lOoafpHnxkGs=; b=upsie1YQEcQtLw
	4+ESEJYEVKKpyukdhScovlCYzmx1Z4oBew7IWCrYYWOelaVYCY1rMKwnjkQls33GWwvJa3oY6xRfZ
	amEcJPfiMDMK4Frf7XmOX6BcSrySJQS2RfHmJER5CE1HaNYGZbd1HkWhx0/tywnRw5TfgIn7MIyB1
	yXfk7kqSGt6oDEfVoFlGTEVYKXHrXtD31URv830Qk7H1JNBA8xWukStFXT0Pj59+IBSo6OGAvnW/7
	xHML3s8IJXbyjFTyANlP/j4akZK1V+uYddwOjDlurjVqXH0hsqyA5OhUl8+kzsIlmfLDR3e2lxNwB
	MejumiclDu9g7VUUNryQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO34f-00015l-4O; Fri, 25 Oct 2019 17:08:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO34I-00014a-Lf; Fri, 25 Oct 2019 17:08:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 16A6A328;
 Fri, 25 Oct 2019 10:08:05 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D79FC3F71A;
 Fri, 25 Oct 2019 10:08:02 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH V4 0/2] Add support for arm64 to carry ima measurement
To: Mimi Zohar <zohar@linux.ibm.com>
References: <20191011003600.22090-1-prsriva@linux.microsoft.com>
 <87d92514-e5e4-a79f-467f-f24a4ed279b6@arm.com>
 <b35b239c-990c-0d5b-0298-8f9e35064e2b@linux.microsoft.com>
 <0053eb68-0905-4679-c97a-00c5cb6f1abb@arm.com>
 <1571190256.5250.200.camel@linux.ibm.com>
Message-ID: <3879883b-8c27-df25-ce20-97ed7274dc80@arm.com>
Date: Fri, 25 Oct 2019 18:07:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1571190256.5250.200.camel@linux.ibm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_100806_798138_2DB945B5 
X-CRM114-Status: GOOD (  19.84  )
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 yamada.masahiro@socionext.com, sboyd@kernel.org, catalin.marinas@arm.com,
 ard.biesheuvel@linaro.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, prsriva <prsriva@linux.microsoft.com>,
 takahiro.akashi@linaro.org, duwe@lst.de,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>, allison@lohutok.net,
 linux-integrity@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWltaSwKCk9uIDE2LzEwLzIwMTkgMDI6NDQsIE1pbWkgWm9oYXIgd3JvdGU6Cj4gT24gVHVl
LCAyMDE5LTEwLTE1IGF0IDE4OjM5ICswMTAwLCBKYW1lcyBNb3JzZSB3cm90ZToKPj4gSWYgU2Vj
dXJlQm9vdCBpc24ndCByZWxldmFudCwgSSdtIGNvbmZ1c2VkIGFzIHRvIHdoeSBrZXhlY19maWxl
X2xvYWQoKSBpcy4KPj4KPj4gSSB0aG91Z2h0IGtleGVjX2ZpbGVfbG9hZCgpIG9ubHkgZXhpc3Rl
ZCBiZWNhdXNlIFNlY3VyZUJvb3Qgc3lzdGVtcyBuZWVkIHRvIHZhbGlkYXRlIHRoZQo+PiBuZXcg
T1MgaW1hZ2VzJ3Mgc2lnbmF0dXJlIGJlZm9yZSBsb2FkaW5nIGl0LCBhbmQgd2UgY2FuJ3QgdHJ1
c3QgdXNlci1zcGFjZSBjYWxsaW5nIEtleGVjCj4+IHRvIGRvIHRoaXMuCj4+Cj4+IElmIHRoZXJl
IGlzIG5vIHNlY3VyZSBib290LCB3aHkgZG9lcyB0aGlzIHRoaW5nIG9ubHkgd29yayB3aXRoIGtl
eGVjX2ZpbGVfbG9hZCgpPwo+PiAoZ29vZCBuZXdzISBXaXRoIHRoZSBVRUZJIG1lbXJlc2V2ZSB0
YWJsZSwgaXQgc2hvdWxkIHdvcmsgdHJhbnNwYXJlbnRseSB3aXRoIHJlZ3VsYXIga2V4ZWMKPj4g
dG9vKQoKPiBJJ20gc28gc29ycnkgZm9yIHRoZSBjb25mdXNpb24uIMKgSU1BIHdhcyBvcmlnaW5h
bGx5IGxpbWl0ZWQgdG8KPiBleHRlbmRpbmcgdHJ1c3RlZCBib290IGNvbmNlcHRzIHRvIHRoZSBP
Uy4gwqBBcyBvZiBMaW51eCAzLjEwLCBJTUEKPiBhZGRlZCBzdXBwb3J0IGZvciBleHRlbmRpbmcg
c2VjdXJlIGJvb3QgY29uY2VwdHMgYW5kIGF1ZGl0aW5nIGZpbGUKPiBoYXNoZXMgKGNvbW1pdCBl
N2M1NjhlMGZkMGNmKS4KPiAKPiBUcnVlLCBrZXhlY19maWxlX2xvYWQgaXMgcmVxdWlyZWQgZm9y
IHZlcmlmeWluZyB0aGUga2V4ZWMga2VybmVsCj4gaW1hZ2UsIGJ1dCBpdCBpcyBhbHNvIHJlcXVp
cmVkIGZvciBtZWFzdXJpbmcgdGhlIGtleGVjIGtlcm5lbCBpbWFnZSBhcwo+IHdlbGwuCj4gCj4g
QWZ0ZXIgcmVhZGluZyB0aGUga2VybmVsIGltYWdlIGludG8gbWVtb3J5IChrZXJuZWxfcmVhZF9m
aWxlX2Zyb21fZmQpLAo+IHRoZSBoYXNoIGlzIGNhbGN1bGF0ZWQgYW5kIHRoZW4gYWRkZWQgdG8g
dGhlIElNQSBtZWFzdXJlbWVudCBsaXN0IGFuZAo+IHVzZWQgdG8gZXh0ZW5kIHRoZSBUUE0uIMKg
QWxsIG9mIHRoaXMgaXMgYmFzZWQgb24gdGhlIElNQSBwb2xpY3ksCj4gaW5jbHVkaW5nIHRoZSBU
UE0gUENSLgoKRG9uJ3Qgd2UgZ2V0IGEgc2V0IG9mIHNlZ21lbnRzIHdpdGggdGhlIHJlZ3VsYXIg
a2V4ZWMgc3lzY2FsbD8gVGhlc2UgY291bGQgZXF1YWxseSBiZQpoYXNoZWQgYW5kIG1lYXN1cmVk
LCBhbmQgbG9nZ2VkIHZpYSBJTUEgYW5kL29yIGV4dGVuZGluZyB0aGUgVFBNcyBtZWFzdXJlbWVu
dHMuCgoob2J2aW91c2x5IHRoaXMgd291bGQgaW5jbHVkZSB0aGUgY29tbWFuZC1saW5lIGFuZCBt
YXliZSBwdXJnYXRvcnksIHdoaWNoIG1ha2VzIGl0IGxlc3MKcHJlZGljdGFibGUsIGJ1dCB0aGVz
ZSBhcmUgc3RpbGwgdGhlIGJpbmFyeSBibG9icyB0aGF0IHdlcmUgZ2l2ZW4gcHJpdmlsZWdlZCBh
Y2Nlc3MgdG8gdGhlCnN5c3RlbSkuCgoKPj4+IEkgYW0gbm90IHN1cmUgaWYgaSBhZGRyZXNzZWQg
YWxsIHlvdXIgY29uY2VybnMsIHBsZWFzZSBsZXQgbWUga25vdwo+Pj4gaWYgaSBtaXNzZWQgYW55
dGhpbmcuIFRvIG1lIG1vc3QgY29uY2VybnMgbG9vayB0byBiZSB0b3dhcmRzIHRoZSBrZXhlYyBj
YXNlIGFuZCBkZXBlbmRlbmN5Cj4+PiBvbiBoYXJkd2FyZShBQ1BJL1RQTSkgZHVyaW5nIGJvb3Qg
YW5kIGVhcmx5IGJvb3Qgc2VydmljZXMsIHdoZXJlIGFzIGNhcnJ5aW5nIHRoZSBsb2dzIGlzCj4+
PiBvbmx5IGR1cmluZyB0aGUga2V4ZWNfZmlsZV9sb2FkIHN5cyBjYWxsIGFuZCBkb2VzIG5vdCBp
bnRlcmZlcmUgd2l0aCB0aGF0IGNvZGUgcGF0aC4KPj4+IElNQSBkb2N1bWVudGF0aW9uOiBodHRw
czovL3NvdXJjZWZvcmdlLm5ldC9wL2xpbnV4LWltYS93aWtpL0hvbWUvCj4+Cj4+IFN1cHBvcnRp
bmcgQUNQSSBpbiB0aGUgc2FtZSB3YXkgaXMgc29tZXRoaW5nIHdlIG5lZWQgdG8gZG8gZnJvbSBk
YXkgb25lLiBrZXhlY19maWxlX2xvYWQoKQo+PiBhbHJlYWR5IGRvZXMgdGhpcy4gSSdtIG5vdCBz
dXJlICJvbmx5IGtleGVjX2ZpbGVfbG9hZCgpIiBpcyBhIGp1c3RpZmlhYmxlIHJlc3RyaWN0aW9u
Li4uCgo+IFRoZSBUUE0gUENScyBhcmUgbm90IHJlc2V0IG9uIGEgc29mdCByZWJvb3QuIMKgQXMg
YSByZXN1bHQsIGluIG9yZGVyIHRvCj4gdmFsaWRhdGUgdGhlIElNQSBtZWFzdXJlbWVudCBsaXN0
IGFnYWluc3QgdGhlIFRQTSBQQ1JzLCB0aGUgSU1BCj4gbWVhc3VyZW1lbnQgbGlzdCBpcyBzYXZl
ZCBvbiBrZXhlYyBsb2FkLCByZXN0b3JlZCBvbiBib290LCBhbmQgdGhlbgo+IHRoZSBtZW1vcnkg
YWxsb2NhdGVkIGZvciBjYXJyeWluZyB0aGUgbWVhc3VyZW1lbnQgbGlzdCBhY3Jvc3Mga2V4ZWMg
aXMKPiBmcmVlZC4KCkhtbSwgdGhpcyBpcyB3aHkgdGhlIHJlc2VydmVkIG1lbW9yeSBnZXRzIGZy
ZWVkLgoKV2hhdCBoYXBwZW5zIHRvIHN0dWZmIHRoYXQgaGFwcGVucyBiZXR3ZWVuIGtleGVjLWxv
YWQgYW5kIGJvb3Q/ClRoZXJlIGlzIGEgY29tbWVudDoKfCAvKiBzZWdtZW50IHNpemUgY2FuJ3Qg
Y2hhbmdlIGJldHdlZW4ga2V4ZWMgbG9hZCBhbmQgZXhlY3V0ZSAqLwoKQnV0IEkgY2FuJ3Qgc2Vl
IGFueXdoZXJlIHRoYXQgZW5mb3JjZXMgdGhhdC4gSSBndWVzcyB0aG9zZSBtZWFzdXJlbWVudHMg
d2lsbCBnbyBtaXNzaW5nLAphbmQgdGhlIFRQTSB2YWx1ZSB3aWxsIG5vdCBtYXRjaCBhZnRlciBr
ZXhlYy4KCgoKVGhhbmtzLAoKSmFtZXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
