Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B100B8D40
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 10:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNqvDRQKu7g7JMLmpD+x74uqnv/nWpqPnsbzOSy6/bU=; b=du8B+Kla9ujDVg
	Jg0EmuIStz9itV8AFL9yc25S43uPKCQhUiY1xH7by7k6iNUfpH4a1kDrX6OAAouHQVKQui5q+RDY5
	1IkmZrOBR6tqB47LFWaz4jaz5HZzw4yJmWPo+dk5iEEfmBwMeOEm5zrn4zWABsmwaqKUdtHSQfuPw
	AI10LtFnp/mzRBeMLSolbblYeQ2eaIBK6yLxbbGmM5FyMa9uBV9tfXmz/9By8T9cM4HsOOf1bcxtz
	rmpnOTWQNmbX9mDF8HOhuZsyglaiutorDgYT7wwPM+mrSIETmBJOgDz8tYmDhbMro1s8M5OmgwwRC
	jcvxJIVJWjjDsnY6N1CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBEfu-00060K-Q7; Fri, 20 Sep 2019 08:53:58 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBEfj-0005zy-ES
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 08:53:50 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id B8BB2602BA;
 Fri, 20 Sep 2019 10:53:44 +0200 (CEST)
Subject: Re: [PATCH v4 2/3] dmaengine: imx-sdma: fix dma freezes
To: =?UTF-8?Q?Jan_L=c3=bcbbe?= <jlu@pengutronix.de>,
 linux-kernel@vger.kernel.org
References: <20190919142942.12469-1-philipp.puschmann@emlix.com>
 <20190919142942.12469-3-philipp.puschmann@emlix.com>
 <ad87f175496358adb825240f1de609318ed8204c.camel@pengutronix.de>
From: Philipp Puschmann <philipp.puschmann@emlix.com>
Openpgp: preference=signencrypt
Message-ID: <9305e5ff-f555-3c6e-9e99-36d88edcae0a@emlix.com>
Date: Fri, 20 Sep 2019 10:53:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ad87f175496358adb825240f1de609318ed8204c.camel@pengutronix.de>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_015348_379344_4CC7F72E 
X-CRM114-Status: GOOD (  25.77  )
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
Cc: fugang.duan@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 vkoul@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dan.j.williams@intel.com, yibin.gong@nxp.com, festevam@gmail.com,
 dmaengine@vger.kernel.or, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFuLAoKQW0gMTkuMDkuMTkgdW0gMTc6MTkgc2NocmllYiBKYW4gTMO8YmJlOgo+IEhpIFBo
aWxpcHAsCj4gCj4gc2VlIGJlbG93Li4uCj4gCj4gT24gVGh1LCAyMDE5LTA5LTE5IGF0IDE2OjI5
ICswMjAwLCBQaGlsaXBwIFB1c2NobWFubiB3cm90ZToKPj4gRm9yIHNvbWUgeWVhcnMgYW5kIHNp
bmNlIG1hbnkga2VybmVsIHZlcnNpb25zIHRoZXJlIGFyZSByZXBvcnRzIHRoYXQgdGhlCj4+IFJY
IFVBUlQgU0RNQSBjaGFubmVsIHN0b3BzIHdvcmtpbmcgYXQgc29tZSBwb2ludC4gVGhlIHdvcmth
cm91bmQgd2FzIHRvCj4+IGRpc2FibGUgRE1BIGZvciBSWC4gVGhpcyBjb21taXQgdHJpZXMgdG8g
Zml4IHRoZSBwcm9ibGVtIGl0c2VsZi4KPj4KPj4gRHVlIHRvIGl0cyBsaWNlbnNlIGkgd2Fzbid0
IGFibGUgdG8gZGVidWcgdGhlIHNkbWEgc2NyaXB0IGl0c2VsZiBidXQgaXQKPj4gc29tZWhvdyBs
ZWFkcyB0byBibG9ja2luZyB0aGUgc2NoZWR1bGluZyBvZiB0aGUgY2hhbm5lbCBzY3JpcHQgd2hl
biBhCj4+IHJ1bm5pbmcgc2RtYSBzY3JpcHQgZG9lcyBub3QgZmluZCBhbnkgZnJlZSBkZXNjcmlw
dG9yIGluIHRoZSByaW5nIHRvIHB1dAo+PiBpdHMgZGF0YSBpbnRvLgo+Pgo+PiBJZiB3ZSBkZXRl
Y3Qgc3VjaCBhIHBvdGVudGlhbCBjYXNlIHdlIG1hbnVhbGx5IHJlc3RhcnQgdGhlIGNoYW5uZWwu
Cj4+Cj4+IEFzIHNkbWFjLT5kZXNjIGlzIGNvbnN0YW50IHdlIGNhbiBtb3ZlIGRlc2Mgb3V0IG9m
IHRoZSBsb29wLgo+Pgo+PiBGaXhlczogMWVjMWU4MmYyNTEwICgiZG1hZW5naW5lOiBBZGQgRnJl
ZXNjYWxlIGkuTVggU0RNQSBzdXBwb3J0IikKPj4gU2lnbmVkLW9mZi1ieTogUGhpbGlwcCBQdXNj
aG1hbm4gPHBoaWxpcHAucHVzY2htYW5uQGVtbGl4LmNvbT4KPj4gUmV2aWV3ZWQtYnk6IEx1Y2Fz
IFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+PiAtLS0KPj4KPj4gQ2hhbmdlbG9nIHY0
Ogo+PiAgLSBmaXhlZCB0aGUgZml4ZXMgdGFnCj4+ICAKPj4gQ2hhbmdlbG9nIHYzOgo+PiAgLSB1
c2UgY29ycmVjdCBkbWFfd21iKCkgaW5zdGVhZCBvZiBkbWFfd2IoKQo+PiAgLSBhZGQgZml4ZXMg
dGFnCj4+ICAKPj4gQ2hhbmdlbG9nIHYyOgo+PiAgLSBjbGFyaWZ5IGNvbW1lbnQgYW5kIGNvbW1p
dCBkZXNjcmlwdGlvbgo+Pgo+PiAgZHJpdmVycy9kbWEvaW14LXNkbWEuYyB8IDIxICsrKysrKysr
KysrKysrKysrLS0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS9pbXgtc2RtYS5jIGIvZHJp
dmVycy9kbWEvaW14LXNkbWEuYwo+PiBpbmRleCBlMDI5YTI0NDNjZmMuLmEzMmI1OTYyNjMwZSAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9kbWEvaW14LXNkbWEuYwo+PiArKysgYi9kcml2ZXJzL2Rt
YS9pbXgtc2RtYS5jCj4+IEBAIC03NzUsMjEgKzc3NSwyMyBAQCBzdGF0aWMgdm9pZCBzZG1hX3N0
YXJ0X2Rlc2Moc3RydWN0IHNkbWFfY2hhbm5lbCAqc2RtYWMpCj4+ICBzdGF0aWMgdm9pZCBzZG1h
X3VwZGF0ZV9jaGFubmVsX2xvb3Aoc3RydWN0IHNkbWFfY2hhbm5lbCAqc2RtYWMpCj4+ICB7Cj4+
ICAJc3RydWN0IHNkbWFfYnVmZmVyX2Rlc2NyaXB0b3IgKmJkOwo+PiAtCWludCBlcnJvciA9IDA7
Cj4+IC0JZW51bSBkbWFfc3RhdHVzCW9sZF9zdGF0dXMgPSBzZG1hYy0+c3RhdHVzOwo+PiArCXN0
cnVjdCBzZG1hX2Rlc2MgKmRlc2MgPSBzZG1hYy0+ZGVzYzsKPj4gKwlpbnQgZXJyb3IgPSAwLCBj
bnQgPSAwOwo+PiArCWVudW0gZG1hX3N0YXR1cyBvbGRfc3RhdHVzID0gc2RtYWMtPnN0YXR1czsK
Pj4gIAo+PiAgCS8qCj4+ICAJICogbG9vcCBtb2RlLiBJdGVyYXRlIG92ZXIgZGVzY3JpcHRvcnMs
IHJlLXNldHVwIHRoZW0gYW5kCj4+ICAJICogY2FsbCBjYWxsYmFjayBmdW5jdGlvbi4KPj4gIAkg
Ki8KPj4gLQl3aGlsZSAoc2RtYWMtPmRlc2MpIHsKPj4gLQkJc3RydWN0IHNkbWFfZGVzYyAqZGVz
YyA9IHNkbWFjLT5kZXNjOwo+PiArCXdoaWxlIChkZXNjKSB7Cj4+ICAKPj4gIAkJYmQgPSAmZGVz
Yy0+YmRbZGVzYy0+YnVmX3RhaWxdOwo+PiAgCj4+ICAJCWlmIChiZC0+bW9kZS5zdGF0dXMgJiBC
RF9ET05FKQo+PiAgCQkJYnJlYWs7Cj4+ICAKPj4gKwkJY250Kys7Cj4+ICsKPj4gIAkJaWYgKGJk
LT5tb2RlLnN0YXR1cyAmIEJEX1JST1IpIHsKPj4gIAkJCWJkLT5tb2RlLnN0YXR1cyAmPSB+QkRf
UlJPUjsKPj4gIAkJCXNkbWFjLT5zdGF0dXMgPSBETUFfRVJST1I7Cj4+IEBAIC04MjIsNiArODI0
LDE3IEBAIHN0YXRpYyB2b2lkIHNkbWFfdXBkYXRlX2NoYW5uZWxfbG9vcChzdHJ1Y3Qgc2RtYV9j
aGFubmVsICpzZG1hYykKPj4gIAkJaWYgKGVycm9yKQo+PiAgCQkJc2RtYWMtPnN0YXR1cyA9IG9s
ZF9zdGF0dXM7Cj4+ICAJfQo+PiArCj4+ICsJLyogSW4gc29tZSBzaXR1YXRpb25zIGl0IG1heSBo
YXBwZW4gdGhhdCB0aGUgc2RtYSBkb2VzIG5vdCBmb3VuZCBhbnkKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXiBoYXNuJ3QKPj4gKwkg
KiB1c2FibGUgZGVzY3JpcHRvciBpbiB0aGUgcmluZyB0byBwdXQgZGF0YSBpbnRvLiBUaGUgY2hh
bm5lbCBpcwo+PiArCSAqIHN0b3BwZWQgdGhlbi4gV2hpbGUgdGhlcmUgaXMgbm8gc3BlY2lmaWMg
ZXJyb3IgY29uZGl0aW9uIHdlIGNhbgo+PiArCSAqIGNoZWNrIGZvciwgYSBuZWNlc3NhcnkgY29u
ZGl0aW9uIGlzIHRoYXQgYWxsIGF2YWlsYWJsZSBidWZmZXJzIGZvcgo+PiArCSAqIHRoZSBjdXJy
ZW50IGNoYW5uZWwgaGF2ZSBiZWVuIHdyaXR0ZW4gdG8gYnkgdGhlIHNkbWEgc2NyaXB0LiBJbgo+
PiArCSAqIHRoaXMgY2FzZSBhbmQgYWZ0ZXIgd2UgaGF2ZSBtYWRlIHRoZSBidWZmZXJzIGF2YWls
YWJsZSBhZ2FpbiwKPj4gKwkgKiB3ZSByZXN0YXJ0IHRoZSBjaGFubmVsLgo+PiArCSAqLwo+IAo+
IEFyZSB5b3Ugc3VyZSB3ZSBjYW4ndCBtaXNzIGNhc2VzIHdoZXJlIHdlIG9ubHkgaGFkIHRvIG1h
a2Ugc29tZSBidWZmZXJzCj4gYXZhaWxhYmxlIGFnYWluLCBidXQgdGhlIFNETUEgYWxyZWFkeSBy
YW4gb3V0IG9mIGJ1ZmZlcnMgYmVmb3JlPwpUaGluayBzbywgeWVzLgo+IAo+IEEgd2hpbGUgYWdv
LCBJIHdhcyBkZWJ1Z2dpbmcgYSBzaW1pbGFyIGlzc3VlIHRyaWdnZXJlZCBieSByZWNlaXZpbmcK
PiBkYXRhIHdpdGggYSB3cm9uZyBiYXVkIHJhdGUsIHdoaWNoIGxlYWRzIHRvIGFsbCBkZXNjcmlw
dG9ycyBiZWluZwo+IG1hcmtlZCB3aXRoIHRoZSBlcnJvciBmbGFnIHZlcnkgcXVpY2tseSAoYW5k
IHRoZSBTRE1BIHN0YWxsaW5nKS4KPiBJIG5vdGljZWQgdGhhdCB5b3UgY2FuIGNoZWNrIGlmIHRo
ZSBjaGFubmVsIGlzIHN0aWxsIHJ1bm5pbmcgYnkKPiBjaGVja2luZyB0aGUgU0RNQV9IX1NUQVRT
VE9QIHJlZ2lzdGVyICYgQklUKHNkbWFjLT5jaGFubmVsKS4KCkkgdGhpbmsgY2hlY2tpbmcgZm9y
IHRoaXMgcmVnaXN0ZXIgaXMgdGhlIGJldHRlciBhcHByb2FjaC4gVGhlbiBpIGNvdWxkIGRyb3Ag
dGhlCmNudCB2YXJpYWJsZS4gQW5kIGJ5IGRyb3BwdGluZyBjbnQgaSB3b3VsZCBwcm9wb3NlIHRv
IG1vdmUgdGhlIGNoZWNrIGFuZCByZWVuYWJsaW5nCnRvIHRoZSBlbmQgb2YgdGhlIHdoaWxlIGxv
b3AgdG8gcmVlbmFibGUgdGhlIGNoYW5uZWwgYWZ0ZXIgZnJlZWluZyBmaXJzdCBidWZmZXIuCgo+
IAo+IEkgYWxzbyBhZGRlZCBhIGZsYWcgZm9yIHRoZSBzZG1hYy0+ZmxhZ3MgZmllbGQgdG8gYWxs
b3cgc3RvcHBpbmcgdGhlCj4gY2hhbm5lbCBmcm9tIHRoZSBjYWxsYmFjayAob3RoZXJ3aXNlIGl0
IHdvdWxkIGVuYWJsZSB0aGUgY2hhbm5lbAo+IGFnYWluKS4KCkNvdWxkIG1lbW9yeSBhbmQgY29t
cGlsZXIgb3JkZXJpbmcgYSBwcm9ibGVtIGhlcmU/CkknbSBub3QgdGhhdCBpbnRvIHRoZXNlIGtp
bmQgb2YgcHJvYmxlbXMsIGJ1dCBpcyB0aGlzCglzZG1hYy0+ZmxhZ3MgJj0gfklNWF9ETUFfQUNU
SVZFOwogIAl3cml0ZWxfcmVsYXhlZChCSVQoY2hhbm5lbCksIHNkbWEtPnJlZ3MgKyBTRE1BX0hf
U1RBVFNUT1ApOwpndWFyYW50ZWVkIHRvIGJlIGZyZWUgb2YgcmFjZSBjb25kaXRpb25zPwoKUmVn
YXJkcywKUGhpbGlwcAoKPiAKPiBBdHRhY2hlZCBpcyBteSBjdXJyZW50IHZlcnNpb24gb2YgdGhh
dCBwYXRjaCBmb3IgcmVmZXJlbmNlLgo+IAo+PiArCWlmIChjbnQgPj0gZGVzYy0+bnVtX2JkKQo+
PiArCQlzZG1hX2VuYWJsZV9jaGFubmVsKHNkbWFjLT5zZG1hLCBzZG1hYy0+Y2hhbm5lbCk7Cj4+
ICB9Cj4+ICAKPj4gIHN0YXRpYyB2b2lkIG14Y19zZG1hX2hhbmRsZV9jaGFubmVsX25vcm1hbChz
dHJ1Y3Qgc2RtYV9jaGFubmVsICpkYXRhKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
