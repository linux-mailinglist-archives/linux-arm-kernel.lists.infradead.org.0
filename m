Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FD219F244
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5DVPN4KMzvQ6VvJEsS2ZNvrWFBNYRgou4+/5HMPLxA=; b=cbqfHLutmDuTCb
	XPDsOG8VLLf3PMv2AU+2xUb4RXWkkjEUvYuCj+ynSJ+A0AvTy5RMbczfwxFcEKu6YblpY1B845n70
	P4drdRmMGrKyisFG4F2lObytAEOH4BQoWWd2mjbnmG9iwZ2a3iG32+l9zKrZLGL+D7WBJ2kdf1lsI
	QWSeBZlTBiWlzJXtctEMx6/ppzkkQijbeIgZ6RvM++eQvNx0S5/3wV3Tx67Ht0tuHZKJEyDxloDKs
	YoCD1FuM9gqUVZ+E/O9pLISmcc9VS5qx7gIhvJZqq4R970IqoRV9oDU3HSnIbzh0UmVjV/4Jz3dHk
	uBawu9DvP5/iAHmIv98g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLNrS-00023a-Aa; Mon, 06 Apr 2020 09:16:06 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLNrM-00023M-Hj
 for linux-arm-kernel@bombadil.infradead.org; Mon, 06 Apr 2020 09:16:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=pozUv80YoSRHHvx9sVkpMZ7CBAgwyFGYde+t9E6Fl08=; b=a3AzdDdzO/gg8dpEwGMPQCN9wH
 Ud3ROlUqDiusUwrXUeDg9X7pdmbTCnVf60Dl5wrm5WfGx49mekafeM2aT33NabLWpZisI6LbXWPrv
 Vq+9tSpLzJPEE3xetdYp08N9BU0iJ0NJR8nU4Z+jDrV1tazi1RSLKTF0RogSgxD3Dbqd+hdPQ34+g
 u54c/1tSUYMg8e31V0VXkviN6ZnDJQDVLw5YzdWBOK6wbcsGyNyDGTuC1wT4A0OrX52/KG3/ZTUOr
 8pTAMkjI4hMakJ+niz+ekYs0hoSgjCa15wq13xCI/Ufbv9u/xbiMWT5GbsCsiJis9gwUF+7rFIu5W
 89t15qxw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLNrG-00085S-6Z; Mon, 06 Apr 2020 09:15:54 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 6F5D23011DD;
 Mon,  6 Apr 2020 11:15:51 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 3E3382BAC6A65; Mon,  6 Apr 2020 11:15:51 +0200 (CEST)
Date: Mon, 6 Apr 2020 11:15:51 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "chengjian (D)" <cj.chengjian@huawei.com>
Subject: Re: Why is text_mutex used in jump_label_transform for x86_64
Message-ID: <20200406091551.GG20730@hirez.programming.kicks-ass.net>
References: <f7f686f2-4f28-1763-dd19-43eff6a5a8f2@huawei.com>
 <20200320102709.GC20696@hirez.programming.kicks-ass.net>
 <28edc3d5-83a3-43cb-3e64-7d0525d430f3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <28edc3d5-83a3-43cb-3e64-7d0525d430f3@huawei.com>
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
Cc: jakub.kicinski@netronome.com, Kees Cook <keescook@chromium.org>,
 "Xiexiuqi \(Xie XiuQi\)" <xiexiuqi@huawei.com>, Will Deacon <will@kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 bobo.shaobowang@huawei.com, Li Bin <huawei.libin@huawei.com>,
 andrew.murray@arm.com, bristot@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBcHIgMDYsIDIwMjAgYXQgMDQ6Mzk6MTFQTSArMDgwMCwgY2hlbmdqaWFuIChEKSB3
cm90ZToKPiAKPiBPbiAyMDIwLzMvMjAgMTg6MjcsIFBldGVyIFppamxzdHJhIHdyb3RlOgo+ID4g
SXQgZGVwZW5kcyBvbiB0aGUgYXJjaGl0ZWN0dXJlIGRldGFpbHMgb2YgaG93IHNlbGYtbW9kaWZ5
aW5nIGNvZGUgd29ya3MuCj4gPiBJbiBwYXJ0aWN1bGFyLCB4ODYgaXMgYSB2YXJpYWJsZSBpbnN0
cnVjdGlvbiBsZW5ndGggYXJjaGl0ZWN0dXJlIGFuZAo+ID4gbmVlZHMgZXh0cmVtZSBjYXJlIC0t
IGl0J3MgaW1wbGVtZW50YXRpb24gcmVxdWlyZXMgdGhlcmUgb25seSBiZSBhCj4gPiBzaW5nbGUg
dGV4dCBtb2RpZmllciBhdCBhbnkgb25lIHRpbWUsIGhlbmNlIHRoZSB1c2Ugb2YgdGV4dF9tdXRl
eC4KPiA+IAo+ID4gQVJNNjQgT1RPSCBpcywgbGlrZSBtb3N0IFJJU0MgYmFzZWQgYXJjaGl0ZWN0
dXJlcywgYSBmaXhlZCB3aWR0aAo+ID4gaW5zdHJ1Y3Rpb24gYXJjaGl0ZWN0dXJlLiBBbmQgaW4g
cGFydGljdWxhciBpdCBjYW4gcmUtd3JpdGUgY2VydGFpbgo+ID4gKGJyYW5jaCkgaW5zdHJ1Y3Rp
b25zIHdpdGggaW1wdW5pdHkgKHNlZSB0aGVpcgo+ID4gYWFyY2g2NF9pbnNuX3BhdGNoX3RleHRf
bm9zeW5jKCkpLiBXaGljaCBpcyB3aHkgdGhleSBkb24ndCBuZWVkCj4gPiBhZGRpdGlvbmFsIHNl
cmlhbGl6YXRpb24uCj4gCj4gSGksIFBldGVyCj4gCj4gVGhhbmsgeW91IHZlcnkgbXVjaCBmb3Ig
eW91ciByZXBseS4KPiAKPiBYODYgaXMgYSB2YXJpYWJsZS1sZW5ndGggaW5zdHJ1Y3Rpb24sIG9u
bHkgb25lIGJ5dGUgbW9kaWZpY2F0aW9uIG9mIHRoZQo+IGluc3RydWN0aW9uCj4gY2FuIGJlIHJl
Z2FyZGVkIGFzIGF0b21pYy4gc28gd2UgbXVzdCBiZSB2ZXJ5IGNhcmVmdWwgd2hlbiBtb2RpZnlp
bmcKPiBpbnN0cnVjdGlvbnMKPiBjb25jdXJyZW50bHkuCgpDbG9zZSBlbm91Z2guCgo+IEZvciBv
dGhlciBhcmNoaXRlY3R1cmVzIHN1Y2ggYXMgQVJNNjQsIHRoZSBtb2RpZmljYXRpb24gb2Ygc29t
ZSBpbnN0cnVjdGlvbnMKPiBjYW4gYmUKPiBjb25zaWRlcmVkIGF0b21pYywgKEVnLiBub3AgLT4g
am1wL2IpLiBUaGUgc2V0IG9mIGluc3RydWN0aW9ucyB0aGF0IGNhbiBiZQo+IGV4ZWN1dGVkCj4g
Ynkgb25lIHRocmVhZCBvZiBleGVjdXRpb24gYXMgdGhleSBhcmUgYmVpbmcgbW9kaWZpZWQgYnkg
YW5vdGhlciB0aHJlYWQgb2YKPiBleGVjdXRpb24KPiB3aXRob3V0IHJlcXVpcmluZyBleHBsaWNp
dCBzeW5jaHJvbml6YXRpb24uCj4gCj4gSW4gQVJNNjQgQXJjaGl0ZWN0dXJlIFJlZmVyZW5jZSBN
YW51YWwsIEkgZmluZCB0aGF0Ogo+IMKgwqDCoCBDb25jdXJyZW50IG1vZGlmaWNhdGlvbiBhbmQg
ZXhlY3V0aW9uIG9mIGluc3RydWN0aW9ucyBjYW4gbGVhZCB0byB0aGUKPiByZXN1bHRpbmcgaW5z
dHJ1Y3Rpb24gcGVyZm9ybWluZyBhbnkgYmVoYXZpb3IKPiDCoMKgwqAgdGhhdCBjYW4gYmUgYWNo
aWV2ZWQgYnkgZXhlY3V0aW5nIGFueSBzZXF1ZW5jZSBvZiBpbnN0cnVjdGlvbnMgdGhhdCBjYW4K
PiBiZSBleGVjdXRlZCBmcm9tIHRoZSBzYW1lIEV4Y2VwdGlvbiBsZXZlbCwKPiDCoMKgwqAgZXhj
ZXB0IHdoZXJlIGVhY2ggb2YgdGhlIGluc3RydWN0aW9uIGJlZm9yZSBtb2RpZmljYXRpb24gYW5k
IHRoZQo+IGluc3RydWN0aW9uIGFmdGVyIG1vZGlmaWNhdGlvbiBpcyBvbmUgb2YgYSBCLCBCTCwg
QlJLLAo+IMKgwqDCoCBIVkMsIElTQiwgTk9QLCBTTUMsIG9yIFNWQyBpbnN0cnVjdGlvbi4KPiDC
oMKgwqAgRm9yIHRoZSBCLCBCTCwgQlJLLCBIVkMsIElTQiwgTk9QLCBTTUMsIGFuZCBTVkMgaW5z
dHJ1Y3Rpb25zIHRoZQo+IGFyY2hpdGVjdHVyZSBndWFyYW50ZWVzIHRoYXQsIGFmdGVyIG1vZGlm
aWNhdGlvbiBvZiB0aGUKPiDCoMKgwqAgaW5zdHJ1Y3Rpb24sIGJlaGF2aW9yIGlzIGNvbnNpc3Rl
bnQgd2l0aCBleGVjdXRpb24gb2YgZWl0aGVyOgo+IMKgwqDCoCDigKIgVGhlIGluc3RydWN0aW9u
IG9yaWdpbmFsbHkgZmV0Y2hlZC4KPiDCoMKgwqAg4oCiIEEgZmV0Y2ggb2YgdGhlIG1vZGlmaWVk
IGluc3RydWN0aW9uCj4gCj4gU28gd2UgY2FuIHNhZmVseSBtb2RpZnkganVtcF9sYWJlbCBmb3Ig
QVJNNjQoZnJvbSBOT1AgdG8gYiBvciBmb3JtIGIgdG8KPiBOT1ApLgo+IAo+IElzIG15IHVuZGVy
c3RhbmRpbmcgY29ycmVjdD8KCkkgdGhpbmsgc287IGJ1dCBJJ20gcmVhbGx5IG5vdCBtdWNoIG9m
IGFuIEFSTTY0IHBlcnNvbi4gRldJVyBJIHRoaW5rIEkKcmVtZW1iZXIgV2lsbCBzYXlpbmcgdGhl
IHNhbWUgaXMgdHJ1ZSBvZiBBUk0gKDMyYml0KSBhbmQgdGhleSBjb3VsZAppbXBsZW1lbnQgdGhl
IHNhbWUgb3B0aW1pemF0aW9uLCBidXQgc28gZmFyIG5vYm9keSBoYXMgYm90aGVyZWQgZG9pbmcK
c28uIEJ1dCBwbGVhc2UsIGFzayBhbiBBUk02NCBtYWludGFpbmVyIGFuZCBkb24ndCB0YWtlIG15
IHdvcmQgZm9yIHRoaXMuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
