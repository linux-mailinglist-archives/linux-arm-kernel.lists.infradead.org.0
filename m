Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D96DFA4F06
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 07:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cup4qoALk5Y0nqju9MkqHisXuZirmmNY2TJ6QO5RQhQ=; b=dQFK4ybFv8cO0nzSKtCWE5nPL
	OGTPNj+EpgNuTyzsonSAmGPOw3znyX9qOLzJFEazxeWH9DZUfV3Fnjw7jYRMOqMDqRBYSw+YQP3YW
	uT0z4oXsQUjEQxgCIR5NT4oGi/pDiOBBu8HjOCeZoCtGCNXwcrKEn5MbXnXsUUWLI56WH7OZq825Q
	1Q+KQJtlIV5PEDOUqszPDKuofrcp7ym6gRS4ScpPAdbUcGHSQ1B61fC0sHBlXd3J2/Z4yLbqlknEz
	O4o26VthjBHFx9ONmAqdiZ2jhZeZ96WnmJcVhYlMzfGi7A3Y29bYs1rhYHN5fQtxpjtYdoQZJUgKO
	k3eLk0wsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4fMu-0005rS-JM; Mon, 02 Sep 2019 05:59:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4fMf-0005qr-V0
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 05:58:59 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <o.rempel@pengutronix.de>)
 id 1i4fMO-0007zm-FU; Mon, 02 Sep 2019 07:58:40 +0200
Subject: Re: [PATCH] [RFC] i2c: imx: make use of format specifier %dE
To: Wolfram Sang <wsa@the-dreams.de>, =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?=
 <uwe@kleine-koenig.org>
References: <20190829042905.4850-1-uwe@kleine-koenig.org>
 <20190829203912.GU3740@ninjato>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <aefbf1c5-d0b7-bb6e-0f97-d65575d549ff@pengutronix.de>
Date: Mon, 2 Sep 2019 07:58:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190829203912.GU3740@ninjato>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:13da
X-SA-Exim-Mail-From: o.rempel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_225857_999634_8A74B3D7 
X-CRM114-Status: GOOD (  19.73  )
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
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Shawn Guo <shawnguo@kernel.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Oleksij Rempel <linux@rempel-privat.de>,
 Enrico Weigelt <lkml@metux.net>, linux-i2c@vger.kernel.org,
 kernel@pengutronix.de, Andrew Morton <akpm@linux-foundation.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyOS4wOC4xOSAyMjozOSwgV29sZnJhbSBTYW5nIHdyb3RlOgo+IE9uIFRodSwgQXVnIDI5
LCAyMDE5IGF0IDA2OjI5OjA1QU0gKzAyMDAsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+PiBJ
IGNyZWF0ZWQgYSBwYXRjaCB0aGF0IHRlYWNoZXMgcHJpbnRrIGV0IGFsIHRvIGVtaXQgYSBzeW1i
b2xpYyBlcnJvcgo+PiBuYW1lIGZvciBhbiBlcnJvciB2YWx1ZWQgaW50ZWdlclsxXS4gV2l0aCB0
aGF0IGFwcGxpZWQKPj4KPj4gCWRldl9lcnIoJnBkZXYtPmRldiwgImNhbid0IGVuYWJsZSBJMkMg
Y2xvY2ssIHJldD0lZEVcbiIsIHJldCk7Cj4+Cj4+IGVtaXRzCj4+Cj4+IAkuLi4gY2FuJ3QgZW5h
YmxlIEkyQyBjbG9jaywgcmV0PUVJTwo+Pgo+PiBpZiByZXQgaXMgLUVJTy4gUGV0ciBNbGFkZWsg
KGkuZS4gb25lIG9mIHRoZSBwcmludGsgbWFpbnRhaW5lcnMpIGhhZAo+PiBjb25jZXJucyBpZiB0
aGlzIHdvdWxkIGJlIHdlbGwgcmVjZWl2ZWQgYW5kIHdvcnRoIHRoZSBlZmZvcnQuIEhlIGFza2Vk
Cj4+IHRvIHByZXNlbnQgaXQgdG8gYSBmZXcgc3Vic3lzdGVtcy4gU28gZm9yIG5vdywgdGhpcyBw
YXRjaCBjb252ZXJ0aW5nIHRoZQo+PiBpMmMtaW14IGRyaXZlciBzaG91bGRuJ3QgYmUgYXBwbGll
ZCB5ZXQgYnV0IGl0IHdvdWxkIGJlIGdyZWF0IHRvIGdldAo+PiBzb21lIGZlZWRiYWNrIGFib3V0
IGlmIHlvdSB0aGluayB0aGF0IGJlaW5nIGFibGUgdG8gZWFzaWx5IHByaW50ayAoZm9yCj4+IGV4
YW1wbGUpICJFSU8iIGluc3RlYWQgb2YgIi01IiBpcyBhIGdvb2QgaWRlYS4gV291bGQgaXQgaGVs
cCB5b3U/IERvIHlvdQo+PiB0aGluayBpdCBoZWxwcyB5b3VyIHVzZXJzPwo+IAo+IFllcywgaXQg
d291bGQgaGVscCBtZS4gQW5kIHVzZXJzLCB0b28sIEkgYW0gcXVpdGUgc3VyZS4gRm9yIG1lLCBp
ZiBJIG1peAo+IHVwIHR3byBudW1iZXJzIHdoaWxlIGRlYnVnZ2luZywgSSBhbSBodW50aW5nIGdo
b3N0cyBmb3IgYSB3aGlsZSB1bnRpbCBJCj4gcmVhbGl6ZSBteSBtaXN0YWtlLiBTbzoKPiAKPiBB
Y2tlZC1ieTogV29sZnJhbSBTYW5nIDx3c2FAdGhlLWRyZWFtcy5kZT4KPiAKPiBJIHRoaW5rIHRo
ZSBtYWluIGRyYXdiYWNrIGlzIHRoYXQgRVJST1JDT0RFUyBpbiB2c3ByaW50Zi5jIG5vdyBuZWVk
Cj4gbWFpbnRlbmFuY2UsIGJ1dCBJIHRoaW5rIGl0IGlzIHdvcnRoIHRoZSBlZmZvcnQuIEknZCBi
ZSBpbnRlcmVzdGVkIGluCj4gdGhlIG92ZXJoZWFkIGluIHNpemUgdGhpcyBjYXVzZXMsIGJ1dCBJ
IGFsc28gdGhpbmsgaXQgaXMgd29ydGggdGhlCj4gZWZmb3J0LiAoSXQgY291bGQgZXZlbiBiZSBj
b21waWxlZCBvdXQgaWYgd2UgaGF2ZSBzb21lIGdlbmVyaWMgS2NvbmZpZwo+IHN5bWJvbCBmb3Ig
c21hbGxlciBrZXJuZWxzKS4KCgpJIGxpa2UgaXQsIGF0IGxlYXN0IGl0IHdpbGwgc2FmZSBtZSBz
b21lIHRpbWUuCkkgdGVzdGVkIHRoaXMgcGF0Y2ggdG9nZXRoZXIgd2l0aCB0aGUgdnByaW50ZiBw
YXRjaCwgc28gcmVzdWx0IGxvb2tzIGxpa2U6ClsgICAgMC4yODE4NDNdIGlteC1pMmMgMjFhMDAw
MC5pMmM6IGNhbid0IGVuYWJsZSBJMkMgY2xvY2ssIHJldD1FSU8KWyAgICAwLjI4MTg5MV0gaW14
LWkyYzogcHJvYmUgb2YgMjFhMDAwMC5pMmMgZmFpbGVkIHdpdGggZXJyb3IgLTUKClRlc3RlZC1i
eTogT2xla3NpaiBSZW1wZWwgPG8ucmVtcGVsQHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5
OiBPbGVrc2lqIFJlbXBlbCA8by5yZW1wZWxAcGVuZ3V0cm9uaXguZGU+CgpLaW5kIHJlZ2FyZHMs
Ck9sZWtzaWogUmVtcGVsCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBT
b2x1dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwK
UGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01
MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAg
ICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
