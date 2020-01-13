Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF84138DA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:21:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kHFOjNWCGhHkRvdMdGkMsIbpZcu/eYGIxxs/Pf9qAng=; b=Fj1qvZpD9CYtCSAfUly+bword
	+xpncJqkMKU7MwVDBBaj3ZR2X66dqIOVTaZkFUdeSDBu13K94yRxggR5fqiTcmwlwZyjxGqTu4Jau
	JLOtw3UrxqJXfz+6qY92G7yDslJjaRBaIwwRv/nH4SkRhiAtblugA+jFsxGjNIFUo2YZhcmRS1h4T
	vG5LGaoUiYFLiyBsd5H1DRHWViPIhZGEOCcktZmTNo7Pj7ADGQkHomCypwsOvTVbOkTfklUYJQCvb
	yO8bJGWcIuojCSB6Rfw5FbkTJ5o+lrfs1V02X9EnyID+aqm3Smg+HYzBetXjDxcPE8917SNNq7WKd
	e4FDRExpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvuu-0004pV-N2; Mon, 13 Jan 2020 09:21:48 +0000
Received: from fd.dlink.ru ([178.170.168.18])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvuk-0004ni-8v; Mon, 13 Jan 2020 09:21:40 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id 5E27A1B214CE; Mon, 13 Jan 2020 12:21:24 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 5E27A1B214CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1578907284; bh=awOlvhtlkFxUadttzRRBmg6cBvcEOkaMn5I2RIuDKkk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=V2FkgjoStRLOl8Eh2OjL+3k1e4Mprsgn1zkdtQfhHMXr7BudKwSxCd/D43U/8f7Wg
 qeeZz9jeNIx9TGVwYaYZQpy6R9DSIvzAMHP2MD97ytCRRMJ3tL3TQ4vaMD40d1ohL8
 7FTgsrFoPTT6+/HRNa4LnzIOCNBgxIwq41vcVkb8=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-99.2 required=7.5 tests=BAYES_50,URIBL_BLOCKED,
 USER_IN_WHITELIST autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id B0E611B201E9;
 Mon, 13 Jan 2020 12:21:14 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru B0E611B201E9
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id E6CE71B2613D;
 Mon, 13 Jan 2020 12:21:13 +0300 (MSK)
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 13 Jan 2020 12:21:13 +0300 (MSK)
MIME-Version: 1.0
Date: Mon, 13 Jan 2020 12:21:13 +0300
From: Alexander Lobakin <alobakin@dlink.ru>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH RFC net-next 05/19] net: dsa: tag_ar9331: add GRO callbacks
In-Reply-To: <ee6f83fd-edf4-5a98-9868-4cbe9e226b9b@gmail.com>
References: <20191230143028.27313-1-alobakin@dlink.ru>
 <20191230143028.27313-6-alobakin@dlink.ru>
 <ee6f83fd-edf4-5a98-9868-4cbe9e226b9b@gmail.com>
User-Agent: Roundcube Webmail/1.4.0
Message-ID: <ed0ad0246c95a9ee87352d8ddbf0d4a1@dlink.ru>
X-Sender: alobakin@dlink.ru
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_012138_854449_B7365947 
X-CRM114-Status: GOOD (  22.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.170.168.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Stanislav Fomichev <sdf@google.com>,
 Matteo Croce <mcroce@redhat.com>, Edward Cree <ecree@solarflare.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 Jiri Pirko <jiri@mellanox.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 Paul Blakey <paulb@mellanox.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 "David S. Miller" <davem@davemloft.net>, Taehee Yoo <ap420073@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RmxvcmlhbiBGYWluZWxsaSB3cm90ZSAzMC4xMi4yMDE5IDIxOjIwOgo+IE9uIDEyLzMwLzE5IDY6
MzAgQU0sIEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgo+PiBBZGQgR1JPIGNhbGxiYWNrcyB0byB0
aGUgQVI5MzMxIHRhZ2dlciBzbyBHUk8gbGF5ZXIgY2FuIG5vdyBwcm9jZXNzCj4+IHN1Y2ggZnJh
bWVzLgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIExvYmFraW4gPGFsb2Jha2luQGRs
aW5rLnJ1Pgo+IAo+IFRoaXMgaXMgYSBnb29kIGV4YW1wbGUgYW5kIHdlIHNob3VsZCBwcm9iYWJs
eSBidWlsZCBhIHRhZ2dlciAKPiBhYnN0cmFjdGlvbgo+IHRoYXQgaXMgbXVjaCBzaW1wbGVyIHRv
IGZpbGwgaW4gY2FsbGJhY2tzIGZvciAoYWx0aG91Z2ggaW5kaXJlY3QKPiBmdW5jdGlvbiBjYWxs
cyBtYXkgZW5kLXVwIGtpbGxpbmcgcGVyZm9ybWFuY2Ugd2l0aCByZXRwb2xpbmUgYW5kCj4gZnJp
ZW5kcyksIGJ1dCBsZXQncyBjb25zaWRlciB0aGlzIGlkZWEuCgpIZXkgYWwsClNvcnJ5IGZvciBs
YXRlIHJlcGxpZXMsIHdhcyBpbiBhIGJpZyB0cmlwLgoKVGhlIHBlcmZvcm1hbmNlIGlzc3VlIHdh
cyB0aGUgbWFpbiByZWFzb24gd2h5IEkgY2hvc2UgdG8gd3JpdGUgZnVsbAouZ3JvX3JlY2VpdmUo
KSBmb3IgZXZlcnkgc2luZ2xlIHRhZ2dlciBpbnN0ZWFkIG9mIHByb3ZpZGluZyBhIGJ1bmNoCm9m
IGFic3RyYWN0aW9uIGNhbGxiYWNrcy4gSXQgcmVhbGx5IGlzbid0IGEgcHJvYmxlbSBmb3IgTUlQ
Uywgb24Kd2hpY2ggSSdtIHdvcmtpbmcgb24gdGhpcyBzdHVmZiwgYnV0IGNhbiBraWxsIGFueSBh
ZHZhbnRhZ2VzIHRoYXQgd2UKY291bGQgZ2V0IGZyb20gR1JPIHN1cHBvcnQgb24gZS5nLiB4ODYu
Cgo+PiAtLS0KPj4gIG5ldC9kc2EvdGFnX2FyOTMzMS5jIHwgNzcgCj4+ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgNzcgaW5z
ZXJ0aW9ucygrKQo+PiAKPj4gZGlmZiAtLWdpdCBhL25ldC9kc2EvdGFnX2FyOTMzMS5jIGIvbmV0
L2RzYS90YWdfYXI5MzMxLmMKPj4gaW5kZXggYzIyYzFiNTE1ZTAyLi45OWNjN2ZkOTJkOGUgMTAw
NjQ0Cj4+IC0tLSBhL25ldC9kc2EvdGFnX2FyOTMzMS5jCj4+ICsrKyBiL25ldC9kc2EvdGFnX2Fy
OTMzMS5jCj4+IEBAIC0xMDAsMTIgKzEwMCw4OSBAQCBzdGF0aWMgdm9pZCBhcjkzMzFfdGFnX2Zs
b3dfZGlzc2VjdChjb25zdCBzdHJ1Y3QgCj4+IHNrX2J1ZmYgKnNrYiwgX19iZTE2ICpwcm90bywK
Pj4gIAkqcHJvdG8gPSBhcjkzMzFfdGFnX2VuY2FwX3Byb3RvKHNrYi0+ZGF0YSk7Cj4+ICB9Cj4+
IAo+PiArc3RhdGljIHN0cnVjdCBza19idWZmICphcjkzMzFfdGFnX2dyb19yZWNlaXZlKHN0cnVj
dCBsaXN0X2hlYWQgKmhlYWQsCj4+ICsJCQkJCSAgICAgIHN0cnVjdCBza19idWZmICpza2IpCj4+
ICt7Cj4+ICsJY29uc3Qgc3RydWN0IHBhY2tldF9vZmZsb2FkICpwdHlwZTsKPj4gKwlzdHJ1Y3Qg
c2tfYnVmZiAqcCwgKnBwID0gTlVMTDsKPj4gKwl1MzIgZGF0YV9vZmYsIGRhdGFfZW5kOwo+PiAr
CWNvbnN0IHU4ICpkYXRhOwo+PiArCWludCBmbHVzaCA9IDE7Cj4+ICsKPj4gKwlkYXRhX29mZiA9
IHNrYl9ncm9fb2Zmc2V0KHNrYik7Cj4+ICsJZGF0YV9lbmQgPSBkYXRhX29mZiArIEFSOTMzMV9I
RFJfTEVOOwo+IAo+IEFSOTMzMV9IRFJfTEVOIGlzIGEgcGFyYW1ldGVyIGhlcmUgd2hpY2ggaXMg
aW5jaWRlbnRhbGx5Cj4gZHNhX2RldmljZV9vcHM6Om92ZXJoZWFkLgoKT3Igd2UgY2FuIHNwbGl0
IC5vdmVyaGVhZCB0byAucnhfbGVuIGFuZCAudHhfbGVuIGFuZCB1c2UgdGhlIGZpcnN0CnRvIGhl
bHAgR1JPIGxheWVyIGFuZCBmbG93IGRpc3NlY3RvciBhbmQgdGhlIHNlY29uZCB0byBkZXRlcm1p
bmUKdG90YWwgb3ZlcmhlYWQgdG8gY29ycmVjdCBNVFUgdmFsdWUuIFNtdGggbGlrZToKCm10dSA9
IG1heCh0YWdfb3BzLT5yeF9sZW4sIHRhZ19vcHMtPnR4X2xlbik7Cgo+PiArCj4+ICsJZGF0YSA9
IHNrYl9ncm9faGVhZGVyX2Zhc3Qoc2tiLCBkYXRhX29mZik7Cj4+ICsJaWYgKHNrYl9ncm9faGVh
ZGVyX2hhcmQoc2tiLCBkYXRhX2VuZCkpIHsKPj4gKwkJZGF0YSA9IHNrYl9ncm9faGVhZGVyX3Ns
b3coc2tiLCBkYXRhX2VuZCwgZGF0YV9vZmYpOwo+PiArCQlpZiAodW5saWtlbHkoIWRhdGEpKQo+
PiArCQkJZ290byBvdXQ7Cj4+ICsJfQo+PiArCj4+ICsJLyogRGF0YSB0aGF0IGlzIHRvIHRoZSBs
ZWZ0IGZyb20gdGhlIGN1cnJlbnQgcG9zaXRpb24gaXMgYWxyZWFkeQo+PiArCSAqIHB1bGxlZCB0
byB0aGUgaGVhZAo+PiArCSAqLwo+PiArCWlmICh1bmxpa2VseSghYXI5MzMxX3RhZ19zYW5pdHlf
Y2hlY2soc2tiLT5kYXRhICsgZGF0YV9vZmYpKSkKPj4gKwkJZ290byBvdXQ7Cj4gCj4gVGhpcyBp
cyBhcHBsaWNhYmxlIHRvIGFsbCB0YWdnZXJzLCB0aGV5IG5lZWQgdG8gdmVyaWZ5IHRoZSBzYW5p
dHkgb2YgCj4gdGhlCj4gaGVhZGVyIHRoZXkgYXJlIGJlaW5nIGhhbmRlZC4KPiAKPj4gKwo+PiAr
CXJjdV9yZWFkX2xvY2soKTsKPj4gKwo+PiArCXB0eXBlID0gZ3JvX2ZpbmRfcmVjZWl2ZV9ieV90
eXBlKGFyOTMzMV90YWdfZW5jYXBfcHJvdG8oZGF0YSkpOwo+IAo+IElmIHRoZXJlIGlzIG5vIGVu
Y2Fwc3VsYXRpb24gYSB0YWdnZXIgY2FuIHJldHVybiB0aGUgZnJhbWUncyBwcm90b2NvbAo+IGRp
cmVjdGx5LCBzbyBzaW1pbGFybHkgdGhlIHRhZ2dlciBjYW4gYmUgaW50ZXJyb2dhdGVkIGZvciBy
ZXR1cm5pbmcgCj4gdGhhdC4KPiAKPj4gKwlpZiAoIXB0eXBlKQo+PiArCQlnb3RvIG91dF91bmxv
Y2s7Cj4+ICsKPj4gKwlmbHVzaCA9IDA7Cj4+ICsKPj4gKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KHAs
IGhlYWQsIGxpc3QpIHsKPj4gKwkJaWYgKCFOQVBJX0dST19DQihwKS0+c2FtZV9mbG93KQo+PiAr
CQkJY29udGludWU7Cj4+ICsKPj4gKwkJaWYgKGFyOTMzMV90YWdfc291cmNlX3BvcnQoc2tiLT5k
YXRhICsgZGF0YV9vZmYpIF4KPj4gKwkJICAgIGFyOTMzMV90YWdfc291cmNlX3BvcnQocC0+ZGF0
YSArIGRhdGFfb2ZmKSkKPiAKPiBTaW1pbGFybHkgaGVyZSwgdGhlIHRhZ2dlciBjb3VsZCBwcm92
aWRlIGEgZnVuY3Rpb24gd2hvc2Ugam9iIGlzIHRvCj4gcmV0dXJuIHRoZSBwb3J0IG51bWJlciBm
cm9tIHdpdGhpbiBpdHMgb3duIHRhZy4KPiAKPiBTbyB3aXRoIHRoYXQgYmVpbmcgc2FpZCwgd2hh
dCBkbyB5b3UgdGhpbmsgYWJvdXQgYnVpbGRpbmcgYSB0YWdnZXIKPiBhYnN0cmFjdGlvbiB3aGlj
aCBpcyBjb21wcmlzZWQgb2Y6Cj4gCj4gLSBoZWFkZXIgbGVuZ3RoIHdoaWNoIGlzIGRzYV9kZXZp
Y2Vfb3BzOjpvdmVyaGVhZAo+IC0gdmFsaWRhdGVfdGFnKCkKPiAtIGdldF90YWdfZW5jYXBfcHJv
dG8oKQo+IC0gZ2V0X3BvcnRfbnVtYmVyKCkKPiAKPiBhbmQgdGhlIHJlc3QgaXMganVzdCB3cmFw
cGluZyB0aGUgZ2VuZXJhbCBHUk8gbGlzdCBtYW5pcHVsYXRpb24/CgpnZXRfdGFnX2VuY2FwX3By
b3RvKCkgYW5kIGdldF9wb3J0X251bWJlcigpIHdvdWxkIGJlIGNhbGxlZCBtb3JlCnRoYW4gb25j
ZSBpbiB0aGF0IGNhc2UgZm9yIGV2ZXJ5IHNpbmdsZSBmcmFtZS4gTm90IHN1cmUgaWYgaXQgaXMK
YSBnb29kIGlkZWEgcmVnYXJkaW5nIHRvIG1lbnRpb25lZCByZXRwb2xpbmUgaXNzdWVzLgoKPiBB
bHNvLCBJIGFtIHdvbmRlcmluZyBzaG91bGQgd2Ugc29tZWhvdyBleHBvc2UgdGhlIERTQSBtYXN0
ZXIKPiBuZXRfZGV2aWNlJ3MgbmFwaV9zdHJ1Y3Qgc3VjaCB0aGF0IHdlIGNvdWxkIGhhdmUgdGhl
IERTQSBzbGF2ZQo+IG5ldF9kZXZpY2VzIGNhbGwgbmFwaV9ncm9fcmVjZWl2ZSgpIHRoZW1zZWx2
ZXMgZGlyZWN0bHkgc3VjaCB0aGF0IHRoZXkKPiBjb3VsZCBhbHNvIHBlcmZvcm0gYWRkaXRpb25h
bCBHUk8gb24gdG9wIG9mIEV0aGVybmV0IGZyYW1lcz8KClRoZXJlJ3Mgbm8gcmVhc29uIHRvIHBh
c3MgZnJhbWVzIHRvIEdSTyBsYXllciBtb3JlIHRoYW4gb25jZS4KClRoZSBtb3N0IGNvcnJlY3Qg
d2F5IHRvIGhhbmRsZSBmcmFtZXMgaXMgdG8gcGFzcyB0aGVtIHRvIG5ldHdvcmtpbmcKc3RhY2sg
b25seSBhZnRlciBEU0EgdGFnIGV4dHJhY3Rpb24gYW5kIHJlbW92YWwuIFRoYXQncyBraW5kYSBo
b3cKbWFjODAyMTEgaW5mcmEgd29ya3MuIEJ1dCB0aGlzIGlzIHJhdGhlciBwcm9ibGVtYXRpYyBm
b3IgRFNBIGFzIGl0CmtlZXBzIEV0aGVybmV0IGNvbnRyb2xsZXIgZHJpdmVycyBhbmQgdGFnZ2Vy
cyBjb21wbGV0ZWx5IGluZGVwZW5kZW50CmZyb20gZWFjaCBvdGhlcnMuCgpJIGFsc28gaGFkIGFu
IGlkZWEgdG8gdXNlIG5ldF9kZXZpY2U6OnJ4X2hhbmRsZXIgZm9yIHRhZyBwcm9jZXNzaW5nCmlu
c3RlYWQgb2YgZHNhX3BhY2tfdHlwZS4gQ1BVIHBvcnRzIGNhbid0IGJlIGJyaWRnZWQgYW55d2F5
LCBzbyB0aGlzCnNob3VsZCBub3QgYmUgYSBwcm9ibGVtIGFuIHRoZSBmaXJzdCBsb29rLgoKUmVn
YXJkcywK4Zq3IOGbliDhmqIg4ZqmIOGaoCDhmrEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
