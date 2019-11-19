Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F374E102F4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 23:30:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsHVC0ZJWkiaBvt9NxtM9H7VwuD+1NJI7A0zOXf7t6A=; b=aKsSuzKjR/lR0z
	zTGH5sqmjof2ZUQy4UZ6HbSQklf6qzbhh3OMYpX32JxuWI4N3r5kG/O4U5qN+QE7zRsJSosk2kB4r
	V2OxsE71YxXsnxIBHOkX8uVRpLAgDrGB9X081ndBNYFpW1aphofXb9IzTHu2rLfSn/laFf6H6hRjM
	lSmNsFPaVG0mggP9CReURunLOTm0AKKkikm7/0gKY71mwXUHb2bA7f1n9O1GUgvA3d9KcRniGp/aa
	s4h44KEWXhA0Z+qd1BZDZSF7yFCinh/zVg27UGt29eHq5BWoSao6ZHJcwdVveQnipQs0Tbd4KOdwj
	NOEGGuTrqNwLQjNF7gzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXC0l-00071N-FU; Tue, 19 Nov 2019 22:30:15 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXC0W-0006qI-9O; Tue, 19 Nov 2019 22:30:01 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iXC0T-0002Ng-JU; Tue, 19 Nov 2019 23:29:57 +0100
Date: Tue, 19 Nov 2019 22:29:56 +0000
From: Marc Zyngier <maz@kernel.org>
To: Andreas =?UTF-8?Q?F=C3=A4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v4 2/8] irqchip: Add Realtek RTD1295 mux driver
Message-ID: <20191119222956.23665e5d@why>
In-Reply-To: <e98364c5-a859-7981-8ccf-f8e5b5069379@suse.de>
References: <20191119021917.15917-1-afaerber@suse.de>
 <20191119021917.15917-3-afaerber@suse.de>
 <a34e00cac16899b53d0b6445f0e81f4c@www.loen.fr>
 <e98364c5-a859-7981-8ccf-f8e5b5069379@suse.de>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: afaerber@suse.de, linux-realtek-soc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernelrocks@gmail.com, james.tai@realtek.com, tglx@linutronix.de,
 jason@lakedaemon.net
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_143000_471224_694E6ECC 
X-CRM114-Status: GOOD (  12.80  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxOSBOb3YgMjAxOSAyMTo1Njo0OCArMDEwMApBbmRyZWFzIEbDpHJiZXIgPGFmYWVy
YmVyQHN1c2UuZGU+IHdyb3RlOgoKPiBBbSAxOS4xMS4xOSB1bSAxMzowMSBzY2hyaWViIE1hcmMg
WnluZ2llcjoKPiA+IE9uIDIwMTktMTEtMTkgMDI6MTksIEFuZHJlYXMgRsOkcmJlciB3cm90ZTog
IAo+ID4+ICtzdGF0aWMgdm9pZCBydGQxMTk1X211eF9lbmFibGVfaXJxKHN0cnVjdCBpcnFfZGF0
YSAqZGF0YSkKPiA+PiArewo+ID4+ICvCoMKgwqAgc3RydWN0IHJ0ZDExOTVfaXJxX211eF9kYXRh
ICptdXhfZGF0YSA9Cj4gPj4gaXJxX2RhdGFfZ2V0X2lycV9jaGlwX2RhdGEoZGF0YSk7Cj4gPj4g
K8KgwqDCoCB1bnNpZ25lZCBsb25nIGZsYWdzOwo+ID4+ICvCoMKgwqAgdTMyIG1hc2s7Cj4gPj4g
Kwo+ID4+ICvCoMKgwqAgbWFzayA9IG11eF9kYXRhLT5pbmZvLT5pc3JfdG9faW50X2VuX21hc2tb
ZGF0YS0+aHdpcnFdOwo+ID4+ICvCoMKgwqAgaWYgKCFtYXNrKQo+ID4+ICvCoMKgwqDCoMKgwqDC
oCByZXR1cm47ICAKPiA+IAo+ID4gSG93IGNhbiB0aGlzIGhhcHBlbj8gWW91J3ZlIG1hcHBlZCB0
aGUgaW50ZXJydXB0LCBzbyBpdCBleGlzdHMuCj4gPiBJIGNhbid0IHNlZSBob3cgeW91IGNhbiBk
ZWNpZGUgdG8gZmFpbCBzdWNoIGVuYWJsZS4gIAo+IAo+IFRoZSBbVU1TS19dSVNSIGJpdHMgYW5k
IHRoZSBTQ1BVX0lOVF9FTiBiaXRzIGFyZSBub3QgKGFsbCkgdGhlIHNhbWUuCj4gCj4gTXkgLi4u
X2lzcl90b19zY3B1X2ludF9lbltdIGFycmF5cyBoYXZlIDMyIGVudHJpZXMgZm9yIE8oMSkgbG9v
a3VwLCBidXQKPiBhcmUgc3BhcnNlbHkgcG9wdWxhdGVkLiBTbyB0aGVyZSBhcmUgY2lyY3Vtc3Rh
bmNlcyBzdWNoIGFzIFdET0dfTk1JIGFzCj4gd2VsbCBhcyByZXNlcnZlZCBiaXRzIHRoYXQgd2Ug
Y2Fubm90IGVuYWJsZS4KCkJ1dCB0aGUgeW91IHNob3VsZCBoYXZlIGZhaWxlZCB0aGUgbWFwLiBU
aGUgbW9tZW50IHlvdSBhbGxvdyB0aGUKbWFwcGluZyB0byBvY2N1ciwgeW91IGhhdmUgYWNjZXB0
ZWQgdGhlIGNvbnRyYWN0IHRoYXQgdGhpcyBpbnRlcnJ1cHQgaXMKdXNhYmxlLgoKPiBUaGlzIGNo
ZWNrIHNob3VsZCBiZQo+IGlkZW50aWNhbCB0byB2MzsgdGhlIGVxdWl2YWxlbnQgbWFzayBjaGVj
ayBpbnNpZGUgdGhlIGludGVycnVwdCBoYW5kbGVyCj4gd2FzIGV4dGVuZGVkIHdpdGggIm1hc2sg
JiYiIHRvIGRvIHRoZSBzYW1lIGluIHRoaXMgdjQuCgpTcHVyaW91cyBpbnRlcnJ1cHRzIGFyZSBh
IGRpZmZlcmVudCBtYXR0ZXIuIFdoYXQgSSdtIG9iamVjdGluZyB0byBoZXJlCmlzIGEgc2ltcGxl
IHF1ZXN0aW9uIG9mIGxvZ2ljLCB3aGV0aGVyIG9yIG5vdCB5b3UgYXJlIGFsbG93ZWQgdG8gZmFp
bAplbmFibGluZyBhbiBpbnRlcnJ1cHQgdGhhdCB5b3UndmUgb3RoZXJ3aXNlIGFsbG93ZWQgdG8g
YmUgcG9wdWxhdGVkLgogCglNLgotLSAKSmF6eiBpcyBub3QgZGVhZC4gSXQganVzdCBzbWVsbHMg
ZnVubnkuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
