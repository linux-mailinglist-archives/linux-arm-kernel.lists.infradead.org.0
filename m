Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A11103046
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 00:33:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvzTmtLKmYEkrAsYqNuypWjqPCk23eDUHI8LDTYtDjw=; b=C0kp5LsEJuN6OL
	IWBV/YWoTDb/xmEKwA6nYWtjvKgivUkDdCMRD60sf6LZFQmZcirdfksW2F7rUDImDj5KENZmwKJ6t
	cETgIw4om5oqqxn70u5piN6PqpbKVQR0sGQLPzPXnBFk1EuO8gUhW7tXR+wK3rG75Izca/KyA0rn0
	D9aJ7DoN1DWnsvpHOwxv83z5xT74i0O3E5MjGaz2IQk0VfikfeNnOrF2U4Oa6V9pmkfUv6N2LYh/4
	BWlzABoCx8kF8tk2oHMGkr6upi2seY4w0t9gm9nej/Tjsg5QydK3kuIk0tERNbRANcCOUkBaWxNjr
	qoB18l+6SHB1M2peRe7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXD08-0007yJ-N6; Tue, 19 Nov 2019 23:33:40 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXCzz-0007xs-2H; Tue, 19 Nov 2019 23:33:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 84DA0B1F5;
 Tue, 19 Nov 2019 23:33:29 +0000 (UTC)
Subject: Re: [PATCH v4 2/8] irqchip: Add Realtek RTD1295 mux driver
To: Marc Zyngier <maz@kernel.org>
References: <20191119021917.15917-1-afaerber@suse.de>
 <20191119021917.15917-3-afaerber@suse.de>
 <a34e00cac16899b53d0b6445f0e81f4c@www.loen.fr>
 <e98364c5-a859-7981-8ccf-f8e5b5069379@suse.de> <20191119222956.23665e5d@why>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <d7416bdb-e20a-42e1-daff-c61369f359fa@suse.de>
Date: Wed, 20 Nov 2019 00:33:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191119222956.23665e5d@why>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_153331_253906_B9AC80EC 
X-CRM114-Status: GOOD (  14.96  )
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

QW0gMTkuMTEuMTkgdW0gMjM6Mjkgc2NocmllYiBNYXJjIFp5bmdpZXI6Cj4gT24gVHVlLCAxOSBO
b3YgMjAxOSAyMTo1Njo0OCArMDEwMAo+IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5k
ZT4gd3JvdGU6Cj4+IEFtIDE5LjExLjE5IHVtIDEzOjAxIHNjaHJpZWIgTWFyYyBaeW5naWVyOgo+
Pj4gT24gMjAxOS0xMS0xOSAwMjoxOSwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOiAgCj4+Pj4gK3N0
YXRpYyB2b2lkIHJ0ZDExOTVfbXV4X2VuYWJsZV9pcnEoc3RydWN0IGlycV9kYXRhICpkYXRhKQo+
Pj4+ICt7Cj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgcnRkMTE5NV9pcnFfbXV4X2RhdGEgKm11eF9kYXRh
ID0KPj4+PiBpcnFfZGF0YV9nZXRfaXJxX2NoaXBfZGF0YShkYXRhKTsKPj4+PiArwqDCoMKgIHVu
c2lnbmVkIGxvbmcgZmxhZ3M7Cj4+Pj4gK8KgwqDCoCB1MzIgbWFzazsKPj4+PiArCj4+Pj4gK8Kg
wqDCoCBtYXNrID0gbXV4X2RhdGEtPmluZm8tPmlzcl90b19pbnRfZW5fbWFza1tkYXRhLT5od2ly
cV07Cj4+Pj4gK8KgwqDCoCBpZiAoIW1hc2spCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybjsg
IAo+Pj4KPj4+IEhvdyBjYW4gdGhpcyBoYXBwZW4/IFlvdSd2ZSBtYXBwZWQgdGhlIGludGVycnVw
dCwgc28gaXQgZXhpc3RzLgo+Pj4gSSBjYW4ndCBzZWUgaG93IHlvdSBjYW4gZGVjaWRlIHRvIGZh
aWwgc3VjaCBlbmFibGUuICAKPj4KPj4gVGhlIFtVTVNLX11JU1IgYml0cyBhbmQgdGhlIFNDUFVf
SU5UX0VOIGJpdHMgYXJlIG5vdCAoYWxsKSB0aGUgc2FtZS4KPj4KPj4gTXkgLi4uX2lzcl90b19z
Y3B1X2ludF9lbltdIGFycmF5cyBoYXZlIDMyIGVudHJpZXMgZm9yIE8oMSkgbG9va3VwLCBidXQK
Pj4gYXJlIHNwYXJzZWx5IHBvcHVsYXRlZC4gU28gdGhlcmUgYXJlIGNpcmN1bXN0YW5jZXMgc3Vj
aCBhcyBXRE9HX05NSSBhcwo+PiB3ZWxsIGFzIHJlc2VydmVkIGJpdHMgdGhhdCB3ZSBjYW5ub3Qg
ZW5hYmxlLgo+IAo+IEJ1dCB0aGUgeW91IHNob3VsZCBoYXZlIGZhaWxlZCB0aGUgbWFwLiBUaGUg
bW9tZW50IHlvdSBhbGxvdyB0aGUKPiBtYXBwaW5nIHRvIG9jY3VyLCB5b3UgaGF2ZSBhY2NlcHRl
ZCB0aGUgY29udHJhY3QgdGhhdCB0aGlzIGludGVycnVwdCBpcwo+IHVzYWJsZS4KPiAKPj4gVGhp
cyBjaGVjayBzaG91bGQgYmUKPj4gaWRlbnRpY2FsIHRvIHYzOyB0aGUgZXF1aXZhbGVudCBtYXNr
IGNoZWNrIGluc2lkZSB0aGUgaW50ZXJydXB0IGhhbmRsZXIKPj4gd2FzIGV4dGVuZGVkIHdpdGgg
Im1hc2sgJiYiIHRvIGRvIHRoZSBzYW1lIGluIHRoaXMgdjQuCj4gCj4gU3B1cmlvdXMgaW50ZXJy
dXB0cyBhcmUgYSBkaWZmZXJlbnQgbWF0dGVyLiBXaGF0IEknbSBvYmplY3RpbmcgdG8gaGVyZQo+
IGlzIGEgc2ltcGxlIHF1ZXN0aW9uIG9mIGxvZ2ljLCB3aGV0aGVyIG9yIG5vdCB5b3UgYXJlIGFs
bG93ZWQgdG8gZmFpbAo+IGVuYWJsaW5nIGFuIGludGVycnVwdCB0aGF0IHlvdSd2ZSBvdGhlcndp
c2UgYWxsb3dlZCB0byBiZSBwb3B1bGF0ZWQuCgpUaGVuIHdoYXQgYXJlIHlvdSBzdWdnZXN0aW5n
IGluc3RlYWQ/IEkgZG9uJ3Qgc2VlIGhvdyBteSBhcnJheSBtYXAKbG9va3VwIGNvdWxkIGZhaWwg
b3RoZXIgdGhhbiByZXR1cm5pbmcgYSB6ZXJvIHZhbHVlLCBnaXZlbiBpdHMgc3RhdGljCmluaXRp
YWxpemF0aW9uLiBDaGVjayBmb3IgYSB6ZXJvIG1hc2sgaW4gcnRkMTE5NV9tdXhfaXJxX2RvbWFp
bl9tYXAoKT8KVGhlbiB3ZSB3b3VsZG4ndCBiZSBhYmxlIHRvIHVzZSB0aGUgbWVudGlvbmVkIFdE
T0dfTk1JLiBBZGQgYW5vdGhlcgpwZXItbXV4IGluZm8gZmllbGQgZm9yIHdoaWNoIGludGVycnVw
dHMgYXJlIHZhbGlkIHRvIG1hcD8KClRoYW5rcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUg
U29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdl
cm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
