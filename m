Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ED1AE8A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 12:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IC/j3/Ai39B36tD9Hz+DCxDShnqV6HH8vWQChGqSkRM=; b=rP3Qu/qrX8U4Be
	wpGWmwiFvlNhHSRq0u08u1xiPB5uyz1/4asg/md78ieGWSsZZnCliuxJzSmj6PPxN/KUkpJnX3+jp
	mZfJNo2rRIEfRUxM3/Ng6hBVYJsdwbd/9UaIiEnJNMspICv6ior6qU1bSvLCCNOFgsQYMWH8T1enC
	OYvIDzWCNt0OlHc3XypWTiDJ0xRURQVnv9rPe2xOb6pfFLf9XRhw3qFVSMlnTMv2lEaVxi7mumexf
	XTjJTq0+jnjIdhOllvze8LkRswf0ubSg7wWQKcRAb/czwTNmq+CYjaT9IA1a8UsmGd9tBLnCAUz6l
	bnD7umEKFUXzFaNamWTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7djY-0002BO-04; Tue, 10 Sep 2019 10:50:52 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7djO-0002A6-QM; Tue, 10 Sep 2019 10:50:45 +0000
Received: from [172.16.25.5] by relay.sw.ru with esmtp (Exim 4.92)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1i7djC-0007sY-TJ; Tue, 10 Sep 2019 13:50:31 +0300
Subject: Re: [PATCH v2 0/2] mm/kasan: dump alloc/free stack for page allocator
To: Vlastimil Babka <vbabka@suse.cz>, walter-zh.wu@mediatek.com,
 Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>, Will Deacon <will@kernel.org>,
 Andrey Konovalov <andreyknvl@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Thomas Gleixner <tglx@linutronix.de>, Michal Hocko <mhocko@kernel.org>,
 Qian Cai <cai@lca.pw>
References: <20190909082412.24356-1-walter-zh.wu@mediatek.com>
 <d53d88df-d9a4-c126-32a8-4baeb0645a2c@suse.cz>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <a7863965-90ab-5dae-65e7-8f68f4b4beb5@virtuozzo.com>
Date: Tue, 10 Sep 2019 13:50:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d53d88df-d9a4-c126-32a8-4baeb0645a2c@suse.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_035042_853795_7614C81B 
X-CRM114-Status: GOOD (  13.65  )
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA5LzkvMTkgNDowNyBQTSwgVmxhc3RpbWlsIEJhYmthIHdyb3RlOgo+IE9uIDkvOS8xOSAx
MDoyNCBBTSwgd2FsdGVyLXpoLnd1QG1lZGlhdGVrLmNvbSB3cm90ZToKPj4gRnJvbTogV2FsdGVy
IFd1IDx3YWx0ZXItemgud3VAbWVkaWF0ZWsuY29tPgo+Pgo+PiBUaGlzIHBhdGNoIGlzIEtBU0FO
IHJlcG9ydCBhZGRzIHRoZSBhbGxvYy9mcmVlIHN0YWNrcyBmb3IgcGFnZSBhbGxvY2F0b3IKPj4g
aW4gb3JkZXIgdG8gaGVscCBwcm9ncmFtbWVyIHRvIHNlZSBtZW1vcnkgY29ycnVwdGlvbiBjYXVz
ZWQgYnkgcGFnZS4KPj4KPj4gQnkgZGVmYXVsdCwgS0FTQU4gZG9lc24ndCByZWNvcmQgYWxsb2Mg
YW5kIGZyZWUgc3RhY2sgZm9yIHBhZ2UgYWxsb2NhdG9yLgo+PiBJdCBpcyBkaWZmaWN1bHQgdG8g
Zml4IHVwIHBhZ2UgdXNlLWFmdGVyLWZyZWUgb3IgZG9idWxlLWZyZWUgaXNzdWUuCj4+Cj4+IE91
ciBwYXRjaHNldHMgd2lsbCByZWNvcmQgdGhlIGxhc3Qgc3RhY2sgb2YgcGFnZXMuCj4+IEl0IGlz
IHZlcnkgaGVscGZ1bCBmb3Igc29sdmluZyB0aGUgcGFnZSB1c2UtYWZ0ZXItZnJlZSBvciBkb3Vi
bGUtZnJlZS4KPj4KPj4gS0FTQU4gcmVwb3J0IHdpbGwgc2hvdyB0aGUgbGFzdCBzdGFjayBvZiBw
YWdlLCBpdCBtYXkgYmU6Cj4+IGEpIElmIHBhZ2UgaXMgaW4tdXNlIHN0YXRlLCB0aGVuIGl0IHBy
aW50cyBhbGxvYyBzdGFjay4KPj4gwqDCoMKgIEl0IGlzIHVzZWZ1bCB0byBmaXggdXAgcGFnZSBv
dXQtb2YtYm91bmQgaXNzdWUuCj4gCj4gSSBzdGlsbCBkaXNhZ3JlZSB3aXRoIGR1cGxpY2F0aW5n
IG1vc3Qgb2YgcGFnZV9vd25lciBmdW5jdGlvbmFsaXR5IGZvciB0aGUgc2FrZSBvZiB1c2luZyBh
IHNpbmdsZSBzdGFjayBoYW5kbGUgZm9yIGJvdGggYWxsb2MgYW5kIGZyZWUgKHdoaWxlIHBhZ2Vf
b3duZXIgKyBkZWJ1Z19wYWdlYWxsb2Mgd2l0aCBwYXRjaGVzIGluIG1tb3RtIHVzZXMgdHdvIGhh
bmRsZXMpLiBJdCByZWR1Y2VzIHRoZSBhbW91bnQgb2YgcG90ZW50aWFsbHkgaW1wb3J0YW50IGRl
YnVnZ2luZyBpbmZvcm1hdGlvbiwgYW5kIEkgcmVhbGx5IGRvdWJ0IHRoZSB1MzItcGVyLXBhZ2Ug
c2F2aW5ncyBhcmUgc2lnbmlmaWNhbnQsIGdpdmVuIHRoZSByZXN0IG9mIEtBU0FOIG92ZXJoZWFk
Lgo+IAo+PiBCVUc6IEtBU0FOOiBzbGFiLW91dC1vZi1ib3VuZHMgaW4ga21hbGxvY19wYWdlYWxs
b2Nfb29iX3JpZ2h0KzB4ODgvMHg5MAo+PiBXcml0ZSBvZiBzaXplIDEgYXQgYWRkciBmZmZmZmZj
MGQ2NGVhMDBhIGJ5IHRhc2sgY2F0LzExNQo+PiAuLi4KPj4gQWxsb2NhdGlvbiBzdGFjayBvZiBw
YWdlOgo+PiDCoCBzZXRfcGFnZV9zdGFjay5jb25zdHByb3AuMSsweDMwLzB4YzgKPj4gwqAga2Fz
YW5fYWxsb2NfcGFnZXMrMHgxOC8weDM4Cj4+IMKgIHByZXBfbmV3X3BhZ2UrMHg1Yy8weDE1MAo+
PiDCoCBnZXRfcGFnZV9mcm9tX2ZyZWVsaXN0KzB4YjhjLzB4MTdjOAo+PiDCoCBfX2FsbG9jX3Bh
Z2VzX25vZGVtYXNrKzB4MWEwLzB4MTFiMAo+PiDCoCBrbWFsbG9jX29yZGVyKzB4MjgvMHg1OAo+
PiDCoCBrbWFsbG9jX29yZGVyX3RyYWNlKzB4MjgvMHhlMAo+PiDCoCBrbWFsbG9jX3BhZ2VhbGxv
Y19vb2JfcmlnaHQrMHgyYy8weDY4Cj4+Cj4+IGIpIElmIHBhZ2UgaXMgZnJlZWQgc3RhdGUsIHRo
ZW4gaXQgcHJpbnRzIGZyZWUgc3RhY2suCj4+IMKgwqDCoCBJdCBpcyB1c2VmdWwgdG8gZml4IHVw
IHBhZ2UgdXNlLWFmdGVyLWZyZWUgb3IgZG91YmxlLWZyZWUgaXNzdWUuCj4+Cj4+IEJVRzogS0FT
QU46IHVzZS1hZnRlci1mcmVlIGluIGttYWxsb2NfcGFnZWFsbG9jX3VhZisweDcwLzB4ODAKPj4g
V3JpdGUgb2Ygc2l6ZSAxIGF0IGFkZHIgZmZmZmZmYzBkNjUxYzAwMCBieSB0YXNrIGNhdC8xMTUK
Pj4gLi4uCj4+IEZyZWUgc3RhY2sgb2YgcGFnZToKPj4gwqAga2FzYW5fZnJlZV9wYWdlcysweDY4
LzB4NzAKPj4gwqAgX19mcmVlX3BhZ2VzX29rKzB4M2MwLzB4MTMyOAo+PiDCoCBfX2ZyZWVfcGFn
ZXMrMHg1MC8weDc4Cj4+IMKgIGtmcmVlKzB4MWM0LzB4MjUwCj4+IMKgIGttYWxsb2NfcGFnZWFs
bG9jX3VhZisweDM4LzB4ODAKPj4KPj4gVGhpcyBoYXMgYmVlbiBkaXNjdXNzZWQsIHBsZWFzZSBy
ZWZlciBiZWxvdyBsaW5rLgo+PiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcu
Y2dpP2lkPTIwMzk2Nwo+IAo+IFRoYXQncyBub3QgYSBkaXNjdXNzaW9uLCBidXQgYSBzaW5nbGUg
Y29tbWVudCBmcm9tIERtaXRyeSwgd2hpY2ggYnR3IGNvbnRhaW5zICJwcm92aWRlIGFsbG9jICph
bmQqIGZyZWUgc3RhY2tzIGZvciBpdCIgKCJpdCIgcmVmZXJzIHRvIHBhZ2UsIGVtcGhhc2lzIG1p
bmUpLiBJdCB3b3VsZCBiZSBuaWNlIGlmIGhlIG9yIG90aGVyIEtBU0FOIGd1eXMgY291bGQgY2xh
cmlmeS4KPiAKCkZvciBzbGFiIG9iamVjdHMgd2UgbWVtb3JpemUgYm90aCBhbGxvYyBhbmQgZnJl
ZSBzdGFja3MuIFlvdSdsbCBuZXZlciBrbm93IGluIGFkdmFuY2Ugd2hhdCBpbmZvcm1hdGlvbiB3
aWxsIGJlIHVzZWZ1bGwKdG8gZml4IGFuIGlzc3VlLCBzbyBpdCB1c3VhbGx5IGJldHRlciB0byBw
cm92aWRlIG1vcmUgaW5mb3JtYXRpb24uIEkgZG9uJ3QgdGhpbmsgd2Ugc2hvdWxkIGRvIGFueXRo
aW5nIGRpZmZlcmVudCBmb3IgcGFnZXMuCgpHaXZlbiB0aGF0IHdlIGFscmVhZHkgaGF2ZSB0aGUg
cGFnZV9vd25lciByZXNwb25zaWJsZSBmb3IgcHJvdmlkaW5nIGFsbG9jL2ZyZWUgc3RhY2tzIGZv
ciBwYWdlcywgYWxsIHRoYXQgd2Ugc2hvdWxkIGluIEtBU0FOIGRvIGlzIHRvCmVuYWJsZSB0aGUg
ZmVhdHVyZSBieSBkZWZhdWx0LiBGcmVlIHN0YWNrIHNhdmluZyBzaG91bGQgYmUgZGVjb3VwbGVk
IGZyb20gZGVidWdfcGFnZWFsbG9jIGludG8gc2VwYXJhdGUgb3B0aW9uIHNvIHRoYXQgaXQgY2Fu
IGJlIGVuYWJsZWQgCmJ5IEtBU0FOIGFuZC9vciBkZWJ1Z19wYWdlYWxsb2MuCgogCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
