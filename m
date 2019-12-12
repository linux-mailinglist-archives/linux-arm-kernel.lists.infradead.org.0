Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A5111D0C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:18:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXQ8MapXS8nwZ2RNkfMRcE7QasMFWSnDWwkdhqvhpRA=; b=sR7qknWCWAzjSZ
	YPzaBVWpi9+BiJ56cj9Zh3ifoRJv08N46bBP/V9Yz+LtKDBfz+8Wy7ORFUp+v4RPT+Belx7lVTzgd
	y2rg1TPpFxnqhmqpzMcseExhA3ALmxAJFyNTSY/0J91fCvc+rX8SkG/X841jYLE+qWC1bv7Im1Cls
	fRUf9FlgbD0YyvD66tFQb3QY+04N0VyMtczVNHWSSZbSaRbknB3r134zeDXOaEDCVwkdAde1FM9CO
	xGBT/65LHChZj0ioVEHz0FnhUpn/hJ6x5N09qqbsuP9gsLUM2vGHalaRp8ULVIgxWc3y7l6sIYobH
	P3T2uTN97XFUsWnGg9dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQEA-0007Bd-FA; Thu, 12 Dec 2019 15:18:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQDy-0007AT-L2
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 15:17:57 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ifQDn-000761-RH; Thu, 12 Dec 2019 16:17:43 +0100
Message-ID: <ccc48df65e340c52218fd45549c26174a10f410c.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/2] reset: simple: Add AST2600 compatibility string
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Brad Bishop <bradleyb@fuzziesquirrel.com>
Date: Thu, 12 Dec 2019 16:17:42 +0100
In-Reply-To: <EFF7E049-08C0-40A0-946A-18822C7AEEE3@fuzziesquirrel.com>
References: <20191129000827.650566-1-joel@jms.id.au>
 <20191129000827.650566-3-joel@jms.id.au>
 <2498da189d5e21ae70fb6884df6fc16ecfee2087.camel@pengutronix.de>
 <EFF7E049-08C0-40A0-946A-18822C7AEEE3@fuzziesquirrel.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_071754_690518_3FAF926B 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQnJhZCwKCk9uIFRodSwgMjAxOS0xMi0xMiBhdCAwOTo1MSAtMDUwMCwgQnJhZCBCaXNob3Ag
d3JvdGU6Cj4gSGkgUGhpbGlwcC4gIFRoYW5rcyBmb3IgeW91ciB0aW1lLgo+IAo+ID4gT24gRGVj
IDIsIDIwMTksIGF0IDc6NTMgQU0sIFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXgu
ZGU+IHdyb3RlOgo+ID4gCj4gPiBPbiBGcmksIDIwMTktMTEtMjkgYXQgMTA6MzggKzEwMzAsIEpv
ZWwgU3RhbmxleSB3cm90ZToKPiA+ID4gRnJvbTogQnJhZCBCaXNob3AgPGJyYWRsZXliQGZ1enpp
ZXNxdWlycmVsLmNvbT4KPiA+ID4gCj4gPiA+IFRoZSBBU1QyNjAwIFNvQyBjb250YWlucyB0aGUg
c2FtZSBMUEMgcmVnaXN0ZXIgc2V0IGFzIHRoZSBBU1QyNTAwLgo+ID4gCj4gPiBJZiB0aGUgTFBD
IHJlZ2lzdGVyIHNldCBpcyBleGFjdGx5IHRoZSBzYW1lLCBzaG91bGRuJ3QgQVNUMjYwMCByZXVz
ZSB0aGUKPiA+IEFTVDI1MDAgY29tcGF0aWJsZSwgaS5lLjoKPiA+IAljb21wYXRpYmxlID0gImFz
cGVlZCxhc3QyNjAwLWxwYy1yZXNldCIsICJhc3BlZWQsYXN0MjUwMC1scGMtcmVzZXQiOwo+ID4g
Pwo+IAo+IEnigJltIG5vdCBzdXJlLiAgSSBsZXQgd2hhdCB3YXMgYWxyZWFkeSB0aGVyZSBiZSBt
eSBndWlkZSAtIHRoZSBhc3QyNTAwCj4gTFBDIHJlZ2lzdGVycyBhcmUgdGhlIHNhbWUgYXMgdGhl
IGFzdDI0MDAgYXMgd2VsbCBhbmQgdGhvc2UgZ290IHRoZWlyCj4gb3duIGNvbXBhdGlibGVzLiAg
SXMgdGhlcmUgYSBndWlkZWxpbmUgd3JpdHRlbiBkb3duIHNvbWV3aGVyZSB0aGF0Cj4gYmFja3Mg
eW91ciB0aGlua2luZyB1cD8KCkkgcmVhZCBzZWN0aW9uIDIuMy4xICJjb21wYXRpYmxlIiBvZiB0
aGUgRGV2aWNlVHJlZSBTcGVjaWZpY2F0aW9uIFsxXSBhcwpzdXBwb3J0aW5nIHRoYXQgdmlldy4g
SWYgYWxsIHRocmVlIExQQyByZXNldCBjb250cm9sbGVycyBhcmUgaW4gZmFjdAppZGVudGljYWws
IEkgd291bGQgYXJndWUgdGhhdCBib3RoIGFzdDI1MDAgYW5kIGFzdDI2MDAgYXJlIGNvbXBhdGli
bGUgdG8KYXN0MjQwMCBhbmQgc2hvdWxkIGJlIHNwZWNpZmllZCBhczoKCWNvbXBhdGlibGUgPSAi
YXNwZWVkLGFzdDI1MDAtbHBjLXJlc2V0IiwgImFzcGVlZCxhc3QyNDAwLWxwYy1yZXNldCI7CmFu
ZDoKCWNvbXBhdGlibGUgPSAiYXNwZWVkLGFzdDI2MDAtbHBjLXJlc2V0IiwgImFzcGVlZCxhc3Qy
NDAwLWxwYy1yZXNldCI7CnJlc3BlY3RpdmVseS4KClsxXSBodHRwczovL2dpdGh1Yi5jb20vZGV2
aWNldHJlZS1vcmcvZGV2aWNldHJlZS1zcGVjaWZpY2F0aW9uL3JlbGVhc2VzL2Rvd25sb2FkL3Yw
LjIvZGV2aWNldHJlZS1zcGVjaWZpY2F0aW9uLXYwLjIucGRmCgpyZWdhcmRzClBoaWxpcHAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
