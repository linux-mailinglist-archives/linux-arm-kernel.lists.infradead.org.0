Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B299A103756
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 11:20:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qLI6WSKP0PzEjx733Pv7dcabqAOlDCZNwLMJG7S3bl4=; b=BDi6TAey2pnCEgMnVj3ZN+tC+
	lp5d0D/F7ixWJJAemXmjSUb7dETdvGKrYFm3F2X4XwhcYsedPW+AmSfViwRxK822V+1t5260pV3Zw
	ypBTvF6xNnARmuQIWpWKJAdSchIL3aR1Cgo/XbSc90j+2GKc7iBWxlpy99wI6YtyNrFkLV2O4p59b
	LuoZ4zCAFLRb9GetEfO+DqWVUJYFal0VDW5TyvPL+LmQNjUcbj0+MHBEbvkNuWof6fNOY654Tny6e
	/PpTllHZAXSMXliWyRooWRrNfPQYKy5EHdzmQxvuaRZYxanSH8eSMxKn++OiCPeSTehkxeVIF0qbM
	5uHHMwKWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXN67-0004DF-TA; Wed, 20 Nov 2019 10:20:31 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXN5y-0004Bb-1M; Wed, 20 Nov 2019 10:20:23 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXN5w-0001Hp-MP; Wed, 20 Nov 2019 11:20:20 +0100
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v4 2/8] irqchip: Add Realtek RTD1295 mux driver
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 20 Nov 2019 10:20:20 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <d7416bdb-e20a-42e1-daff-c61369f359fa@suse.de>
References: <20191119021917.15917-1-afaerber@suse.de>
 <20191119021917.15917-3-afaerber@suse.de>
 <a34e00cac16899b53d0b6445f0e81f4c@www.loen.fr>
 <e98364c5-a859-7981-8ccf-f8e5b5069379@suse.de> <20191119222956.23665e5d@why>
 <d7416bdb-e20a-42e1-daff-c61369f359fa@suse.de>
Message-ID: <e4d30ff2485c3f9ffd2b934f1f757d19@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: afaerber@suse.de, linux-realtek-soc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernelrocks@gmail.com, james.tai@realtek.com, tglx@linutronix.de,
 jason@lakedaemon.net
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_022022_224171_34D81E4D 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMS0xOSAyMzozMywgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+IEFtIDE5LjExLjE5
IHVtIDIzOjI5IHNjaHJpZWIgTWFyYyBaeW5naWVyOgo+PiBPbiBUdWUsIDE5IE5vdiAyMDE5IDIx
OjU2OjQ4ICswMTAwCj4+IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4gd3JvdGU6
Cj4+PiBBbSAxOS4xMS4xOSB1bSAxMzowMSBzY2hyaWViIE1hcmMgWnluZ2llcjoKPj4+PiBPbiAy
MDE5LTExLTE5IDAyOjE5LCBBbmRyZWFzIEbDpHJiZXIgd3JvdGU6Cj4+Pj4+ICtzdGF0aWMgdm9p
ZCBydGQxMTk1X211eF9lbmFibGVfaXJxKHN0cnVjdCBpcnFfZGF0YSAqZGF0YSkKPj4+Pj4gK3sK
Pj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgcnRkMTE5NV9pcnFfbXV4X2RhdGEgKm11eF9kYXRhID0KPj4+
Pj4gaXJxX2RhdGFfZ2V0X2lycV9jaGlwX2RhdGEoZGF0YSk7Cj4+Pj4+ICvCoMKgwqAgdW5zaWdu
ZWQgbG9uZyBmbGFnczsKPj4+Pj4gK8KgwqDCoCB1MzIgbWFzazsKPj4+Pj4gKwo+Pj4+PiArwqDC
oMKgIG1hc2sgPSBtdXhfZGF0YS0+aW5mby0+aXNyX3RvX2ludF9lbl9tYXNrW2RhdGEtPmh3aXJx
XTsKPj4+Pj4gK8KgwqDCoCBpZiAoIW1hc2spCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm47
Cj4+Pj4KPj4+PiBIb3cgY2FuIHRoaXMgaGFwcGVuPyBZb3UndmUgbWFwcGVkIHRoZSBpbnRlcnJ1
cHQsIHNvIGl0IGV4aXN0cy4KPj4+PiBJIGNhbid0IHNlZSBob3cgeW91IGNhbiBkZWNpZGUgdG8g
ZmFpbCBzdWNoIGVuYWJsZS4KPj4+Cj4+PiBUaGUgW1VNU0tfXUlTUiBiaXRzIGFuZCB0aGUgU0NQ
VV9JTlRfRU4gYml0cyBhcmUgbm90IChhbGwpIHRoZSAKPj4+IHNhbWUuCj4+Pgo+Pj4gTXkgLi4u
X2lzcl90b19zY3B1X2ludF9lbltdIGFycmF5cyBoYXZlIDMyIGVudHJpZXMgZm9yIE8oMSkgbG9v
a3VwLCAKPj4+IGJ1dAo+Pj4gYXJlIHNwYXJzZWx5IHBvcHVsYXRlZC4gU28gdGhlcmUgYXJlIGNp
cmN1bXN0YW5jZXMgc3VjaCBhcyBXRE9HX05NSSAKPj4+IGFzCj4+PiB3ZWxsIGFzIHJlc2VydmVk
IGJpdHMgdGhhdCB3ZSBjYW5ub3QgZW5hYmxlLgo+Pgo+PiBCdXQgdGhlIHlvdSBzaG91bGQgaGF2
ZSBmYWlsZWQgdGhlIG1hcC4gVGhlIG1vbWVudCB5b3UgYWxsb3cgdGhlCj4+IG1hcHBpbmcgdG8g
b2NjdXIsIHlvdSBoYXZlIGFjY2VwdGVkIHRoZSBjb250cmFjdCB0aGF0IHRoaXMgaW50ZXJydXB0
IAo+PiBpcwo+PiB1c2FibGUuCj4+Cj4+PiBUaGlzIGNoZWNrIHNob3VsZCBiZQo+Pj4gaWRlbnRp
Y2FsIHRvIHYzOyB0aGUgZXF1aXZhbGVudCBtYXNrIGNoZWNrIGluc2lkZSB0aGUgaW50ZXJydXB0
IAo+Pj4gaGFuZGxlcgo+Pj4gd2FzIGV4dGVuZGVkIHdpdGggIm1hc2sgJiYiIHRvIGRvIHRoZSBz
YW1lIGluIHRoaXMgdjQuCj4+Cj4+IFNwdXJpb3VzIGludGVycnVwdHMgYXJlIGEgZGlmZmVyZW50
IG1hdHRlci4gV2hhdCBJJ20gb2JqZWN0aW5nIHRvIAo+PiBoZXJlCj4+IGlzIGEgc2ltcGxlIHF1
ZXN0aW9uIG9mIGxvZ2ljLCB3aGV0aGVyIG9yIG5vdCB5b3UgYXJlIGFsbG93ZWQgdG8gCj4+IGZh
aWwKPj4gZW5hYmxpbmcgYW4gaW50ZXJydXB0IHRoYXQgeW91J3ZlIG90aGVyd2lzZSBhbGxvd2Vk
IHRvIGJlIHBvcHVsYXRlZC4KPgo+IFRoZW4gd2hhdCBhcmUgeW91IHN1Z2dlc3RpbmcgaW5zdGVh
ZD8gSSBkb24ndCBzZWUgaG93IG15IGFycmF5IG1hcAo+IGxvb2t1cCBjb3VsZCBmYWlsIG90aGVy
IHRoYW4gcmV0dXJuaW5nIGEgemVybyB2YWx1ZSwgZ2l2ZW4gaXRzIHN0YXRpYwo+IGluaXRpYWxp
emF0aW9uLiBDaGVjayBmb3IgYSB6ZXJvIG1hc2sgaW4gCj4gcnRkMTE5NV9tdXhfaXJxX2RvbWFp
bl9tYXAoKT8KPiBUaGVuIHdlIHdvdWxkbid0IGJlIGFibGUgdG8gdXNlIHRoZSBtZW50aW9uZWQg
V0RPR19OTUkuIEFkZCBhbm90aGVyCj4gcGVyLW11eCBpbmZvIGZpZWxkIGZvciB3aGljaCBpbnRl
cnJ1cHRzIGFyZSB2YWxpZCB0byBtYXA/CgpJJ20gc3VnZ2VzdGluZyB0aGF0IHlvdSBmYWlsIHRo
ZSBtYXAgaWYgeW91J3JlIHVuYWJsZSB0byBhbGxvdyB0aGUKaW50ZXJydXB0IHRvIGJlIGVuYWJs
ZWQuCgogICAgICAgICBNLgotLSAKSmF6eiBpcyBub3QgZGVhZC4gSXQganVzdCBzbWVsbHMgZnVu
bnkuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
