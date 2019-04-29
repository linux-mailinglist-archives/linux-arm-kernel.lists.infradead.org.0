Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F73DD46
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:58:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbbcTCLw/OMBnkN9VENYjmkTpWwgnlh3CaxmwgieRC8=; b=i5b2NyJ+beTvTJ
	kjqRkxpnV6x9PCbNHeSeLLxhZ6wfxTWwQa9aPVNtVOwQ3Riyc8shCqWhtSqPowZYvgTQgJfBbuOJF
	8FNL+sULSg7JI6Wc1xILS81RSHjzq0EKK6pXcZXzWAND1n1yBV1cJoC5gnBn0jdrCaEU0oiiy/rjo
	GprLxuZ73Xi8sTiEa1wsJwNENi7TJ6fFnW/ODXtIn18YUTn3fq00In6nn9/Mva6l9fKmfFZQR1XfK
	68kCu2yp9IK4JL3bT65rjSwgpS+9i53GANw+V9O8Gs9hqExfu9+Bk55esZHx1EfU0V1ovAQSr8hzn
	a05IqMKQZn3vNqfz0CqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1As-0000iW-3o; Mon, 29 Apr 2019 07:58:06 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1Ae-0000WU-NU
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 07:57:56 +0000
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 2E3DB100024;
 Mon, 29 Apr 2019 07:57:28 +0000 (UTC)
Date: Mon, 29 Apr 2019 09:57:27 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Timothy Krantz" <tkrantz@stahurabrenner.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: espressobin device tree with kernel 5.1 RC
Message-ID: <20190429095727.48de0b7c@xps13>
In-Reply-To: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABB6J1kxOR7T73eMrM92Eq+AQAAAAA=@stahurabrenner.com>
References: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABB6J1kxOR7T73eMrM92Eq+AQAAAAA=@stahurabrenner.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_005753_326057_32EA3338 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVGltb3RoeSwKCiJUaW1vdGh5IEtyYW50eiIgPHRrcmFudHpAc3RhaHVyYWJyZW5uZXIuY29t
PiB3cm90ZSBvbiBNb24sIDIyIEFwciAyMDE5CjE1OjA3OjEyIC0wNDAwOgoKPiBIaSwKPiBQbGVh
c2UgZXhjdXNlIG15IGVtYWlsaW5nIHlvdSBkaXJlY3RseS4gIEkgZG8gbm90IGtub3cgdGhlIHBy
b3BlciBjaGFubmVscwo+IHRvIHJlcG9ydCBteSBwcm9ibGVtLgo+IAoKRm9yIHRoaXMga2luZCBv
ZiBxdWVzdGlvbiBJIHRoaW5rIGFkZGluZyB0aGUgTGludXggQVJNIEtlcm5lbCBNYWlsaW5nCkxp
c3QgKExBS01MKSBpcyB0aGUgcmlnaHQgdGhpbmcgdG8gZG8uCgo+IEkgYnVpbGQgbXkgb3duIGtl
cm5lbHMgZm9yIG15IDMgZXNwcmVzc29iaW5zLiAgVXAgdGhyb3VnaCBrZXJuZWwgNS4wIHRoaW5n
cwo+IHdvcmsgZmluZS4KPiAKPiBJbiB0aGUgNS4xIFJDIGtlcm5lbHMgSSBoYXZlIGJlZW4gdW5h
YmxlIHRvIGJvb3QgdXNpbmcgdGhlIDUuMSBSQyBkZXZpY2UKPiB0cmVlLiAgSSBnZXQgOgo+IAo+
IGFoY2ktbXZlYnUgZDAwZTAwMDAuc2F0YTogY291bGRuJ3QgZ2V0IFBIWSBpbiBub2RlIHNhdGE6
IC01MTcKPiAKPiB0aGVuIHRoZSBib290IGZhaWxzIHdhaXRpbmcgZm9yIHRoZSByb290ZnMgb24g
bXkgc2F0YSBkZXZpY2UuCj4gCj4gSWYgSSB1c2UgYSBrZXJuZWwgNS4wIGRldmljZSB0cmVlIHdp
dGggYSA1LjEgUkMga2VybmVsIGl0IGJvb3RzIGZpbmUuCj4gCj4gSSBhbSBnbGFkIHRvIHRlc3Qg
YW55dGhpbmcgaWYgdGhhdCB3b3VsZCBoZWxwLgoKRG8geW91IGhhdmUgUEhZX01WRUJVX0EzNzAw
X0NPTVBIWSBlbmFibGVkPwoKPiAKPiBUaW0gS3JhbnR6Cj4gCgoKVGhhbmtzLApNaXF1w6hsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
