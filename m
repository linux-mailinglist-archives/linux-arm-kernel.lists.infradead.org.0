Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B15D31083CC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 15:19:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bawcov6RT4vPTELDLmCoPtR29zHTnWZI/YEtQYBGkA8=; b=QxPgppogj6i/Xp
	Qak9c8pv1RcWxefipjvsI9R7AwBM/2tsXYkaIVxUstCd7psVgOVEpHi9TN157Iz5p2L1F+tE4JTdF
	0Ay3Ju3x9tvHAH9ZwAscHgvwPK2p9qpnyeINWFX31iVG2fZ24VLJLvWM9QNZTSx0slUj96PWGELzd
	ccnUFmE9qLY8r7RAmHNDvFElM7nrPJGvQv79U/Of7SOTkCbax2iEhgHUQulqnXQbiDGKqUBRvcZDA
	52WVEINinXSsC730uFgkm7onJ43xUbNMLJjpnxHMECEWc24TInH1qFCZ32+W2y6yK+HYSbmcnqbhv
	McnUsPFL95ZpEx6x8T8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYsjE-0007ZY-Kf; Sun, 24 Nov 2019 14:19:08 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYsj7-0007Yi-3B
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 14:19:03 +0000
X-Originating-IP: 93.23.250.25
Received: from xps13 (25.250.23.93.rev.sfr.net [93.23.250.25])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id AA94EC0005;
 Sun, 24 Nov 2019 14:18:39 +0000 (UTC)
Date: Sun, 24 Nov 2019 15:18:35 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Baruch Siach <baruch@tkos.co.il>
Subject: Re: CP110 Comphy Issue
Message-ID: <20191124151835.7e2b549a@xps13>
In-Reply-To: <874kythgsl.fsf@tarshish>
References: <7BB0B44E-A78D-4DDF-962E-5C8130B6F31A@voleatech.de>
 <874kythgsl.fsf@tarshish>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_061901_267161_2FF28251 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sven Auhagen <sven.auhagen@voleatech.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3ZlbiwKCkJhcnVjaCBTaWFjaCA8YmFydWNoQHRrb3MuY28uaWw+IHdyb3RlIG9uIFN1biwg
MjQgTm92IDIwMTkgMDk6MzE6MDYKKzAyMDA6Cgo+IEhpIFN2ZW4sIE1pcXVlbCwKPiAKPiBPbiBT
dW4sIE5vdiAyNCAyMDE5LCBTdmVuIEF1aGFnZW4gd3JvdGU6Cj4gPiBJIGFtIHRlc3RpbmcgS2Vy
bmVsIDUuNCBSQzggd2l0aCB0aGUgbmV3IENQMTEwIGNvbXBoeSBpbml0aWFsaXphdGlvbgo+ID4g
YW5kIGl0IGRvZXMgbm90IHdvcmsgZm9yIG91ciBjdXN0b20gYm9hcmQgb24gQ1AgMSBQQ0lFMC4K
PiA+Cj4gPiBJdCBoYW5ncyBvbiBwaHkgdXAgaW5kZWZpbml0ZWx5IGR1cmluZyBib290Lgo+ID4K
PiA+IENQMCBQQ0lFMCB3b3JrcyBmaW5lLgo+ID4KPiA+IEkgYW0gdXNpbmc6Cj4gPiArJmNwMV9w
Y2llMCB7Cj4gPiArICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4g
KyAgICAgICAgICAgICAgcGluY3RybC0wID0gPCZjcDBfcGNpMV9yZXNldF9waW5zPjsKPiA+ICsg
ICAgICAgICAgICAgIG51bS1sYW5lcyA9IDwxPjsKPiA+ICsgICAgICAgICAgICAgIC8vbnVtLXZp
ZXdwb3J0ID0gPDg+Owo+ID4gKyAgICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmNwMF9ncGlv
MiAxIEdQSU9fQUNUSVZFX0xPVz47Cj4gPiArICAgICAgICAgICAgICAvL3J4LWRpc2FibGUtZ3Bp
byA9IDwmY3AwX2dwaW8yIDIwIEdQSU9fQUNUSVZFX0xPVz47Cj4gPiArICAgICAgICAgICAgICBw
aHlzID0gPCZjcDFfY29tcGh5MCAwPjsKPiA+ICsgICAgICAgICAgICAgIHBoeS1uYW1lcyA9ICJj
cDEtcGNpZTAteDEtcGh5IjsKPiA+ICsgICAgICAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+
ICt9Owo+ID4KPiA+IEFuZCB0aGlzIG9uZSB3b3Jrcwo+ID4KPiA+ICsmY3AwX3BjaWUwIHsKPiA+
ICsgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiArICAgICAgICAg
ICAgICBwaW5jdHJsLTAgPSA8JmNwMF9wY2kwX3Jlc2V0X3BpbnM+Owo+ID4gKyAgICAgICAgICAg
ICAgbnVtLWxhbmVzID0gPDE+Owo+ID4gKyAgICAgICAgICAgICAgLy9udW0tdmlld3BvcnQgPSA8
OD47Cj4gPiArICAgICAgICAgICAgICByZXNldC1ncGlvcyA9IDwmY3AwX2dwaW8yIDAgR1BJT19B
Q1RJVkVfTE9XPjsKPiA+ICsgICAgICAgICAgICAgIC8vcngtZGlzYWJsZS1ncGlvID0gPCZjcDBf
Z3BpbzIgMTkgR1BJT19BQ1RJVkVfTE9XPjsKPiA+ICsgICAgICAgICAgICAgIHBoeXMgPSA8JmNw
MF9jb21waHkwIDA+Owo+ID4gKyAgICAgICAgICAgICAgcGh5LW5hbWVzID0gImNwMC1wY2llMC14
MS1waHkiOwo+ID4gKyAgICAgICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4gPiAr
Cj4gPgo+ID4gSSBhbSB1c2luZyB1LWJvb3QgMjAxOS4wNCBhbmQgQVRGIDIuMS4KPiA+IFBDSWUg
aXMgaW5pdGlhbGl6ZWQgYnkgVS1Cb290Lgo+ID4KPiA+IEkgd2FzIHVzaW5nIGEgcG9ydGVkIHZl
cnNpb24gb2YgdGhlIGNvbXBoeSBjb2RlIGZyb20gdGhlIG1hcnZlbGwgbGludXgKPiA+IGdpdGh1
YiBiZWZvcmUgd2hpY2ggZGlkIG5vdCBoYXZlIHRoaXMgcHJvYmxlbS4KPiA+Cj4gPiBMZXQgbWUg
a25vdyBpZiBJIGNhbiBkZWJ1ZyBhbnl0aGluZyBoZXJlIG9uIG15IGVuZC4gIAo+IAo+IE9uZSBp
bXBvcnRhbnQgYml0IG9mIG1pc3NpbmcgaW5mb3JtYXRpb24gaXMgdGhhdCB0aGUgYm9hcmQgaXMg
YmFzZWQgb24KPiBBcm1hZGEgODA0MC4KCkNhbiB5b3Ugc2hhcmUgdGhlIGxvZ3M/IEhvdyBkb2Vz
IGl0IGZhaWw/IFBsZWFzZSBzaGFyZSB0aGUgZnVsbCBsb2cuCgpBbHNvLCBhcmUgeW91IHN1cmUg
eW91ciBBVEYgaGFzIENPTVBIWSBzdXBwb3J0PyBSZWNlbnQga2VybmVscyB1c2UgQVJNClNNQyBj
b252ZW50aW9uIHRvIHJlcXVlc3QgQ09NUEhZIGluaXRpYWxpemF0aW9uLCB3aGljaCB3YXMgcHJv
YmFibHkgbm90CnRoZSBjYXNlIGJlZm9yZSB3aXRoIHRoZSBjb2RlIHBvcnRlZCBmcm9tIE1hcnZl
bGwncyBCU1AuIE1heWJlIGlmIHlvdQphcmUgdXNpbmcgYW4gb2ZmaWNpYWwgQVRGIHJlbGVhc2Ug
eW91IGRvbid0IGhhdmUgaXQgKHlldD8pLgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
