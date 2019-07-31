Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAA77C91B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I150F5o5Df26rhOW+i0IEpLh/Iz95SXRRaFvmHyuc3s=; b=s2NN6OXf6wwRSi
	7p7f0SGRYQ3ESz7Haj0sF/mHjaZEQN/NC2iCKIkIXWH0ce6gighjf8SdnSgD7zLj69PhApLJKgCp5
	ud8G6JZ7x+0g3NDNo0tCSGVzNeOZqRnda+BqD+R00Cu+5B9x1K7+RJrDBgx9VI0IN81AR+wMdumPt
	6hQL0HToLnlmDumvNC5fkhYXpnaKPHJ/EI5tbEfZwU8Y9q0w9M0UxTMWSRrcJHbg8ZO0vbY80Unux
	uyecQR6PEd++bse9g8pDqEky4GCPLTOFYXA+tv9CiEMpbZ70gm5y+Xp6MXYbwJKNa4Hoaxstc/k/B
	5EzYH7KtY5t0daWZWSyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrkS-0001rY-OB; Wed, 31 Jul 2019 16:46:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrkI-0001qc-9q
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:46:39 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hsrkA-0005jG-Fj; Wed, 31 Jul 2019 18:46:26 +0200
Message-ID: <1564591585.7267.22.camel@pengutronix.de>
Subject: Re: [PATCH 2/2] reset: imx7: Fix IMX8MQ_RESET_MIPI_DSI_ defines
From: Lucas Stach <l.stach@pengutronix.de>
To: Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Rob
 Herring <robh+dt@kernel.org>,  Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
Date: Wed, 31 Jul 2019 18:46:25 +0200
In-Reply-To: <bd1504122f6797536a253a37f3604f5c46f02ab2.1564591352.git.agx@sigxcpu.org>
References: <cover.1564591352.git.agx@sigxcpu.org>
 <bd1504122f6797536a253a37f3604f5c46f02ab2.1564591352.git.agx@sigxcpu.org>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_094637_881817_6EA42754 
X-CRM114-Status: GOOD (  15.42  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gTWl0dHdvY2gsIGRlbiAzMS4wNy4yMDE5LCAxODo0MyArMDIwMCBzY2hyaWViIEd1aWRvIEfD
vG50aGVyOgo+IFNvbWUgb2YgdGhlIG1pcGkgZHNpIHJlc2V0cyB3ZXJlIGNhbGxlZAo+IAo+IMKg
IElNWDhNUV9SRVNFVF9NSVBJX0RJU18KPiAKPiBpbnN0ZWFkIG9mCj4gCj4gwqAgSU1YOE1RX1JF
U0VUX01JUElfRFNJXwo+IAo+IFNpbmNlIHRoZXkncmUgRFNJIHJlbGF0ZWQgdGhpcyBsb29rcyBs
aWtlIGEgdHlwby4KPiAKPiBJIHdhc24ndCBzdXJlIGlmIHRoaXMgc2hvdWxkIGJlIGEgc2luZ2xl
IHBhdGNoIHNpbmNlIGl0IG90aGVyd2lzZSBicmVha3MKPiBiaXNlY3RhYmlsaXR5LiBJIGNvdWxk
bid0IGZpbmQgYW55IGRldmljZSB0cmVlcyB1c2luZyB0aGlzIHlldC4KClllcywgSSB0aGluayB0
aGlzIHNob3VsZCBiZSBzcXVhc2hlZCBpbnRvIGEgc2luZ2xlIGNvbW1pdC4gT3RoZXIgdGhhbgp0
aGF0LCB0aGUgY2hhbmdlIGxvb2tzIGNvcnJlY3QuCgpSZWdhcmRzLApMdWNhcwoKPiBTaWduZWQt
b2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgo+IC0tLQo+IMKgZHJpdmVy
cy9yZXNldC9yZXNldC1pbXg3LmMgfCAxMiArKysrKystLS0tLS0KPiDCoDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcmVzZXQvcmVzZXQtaW14Ny5jIGIvZHJpdmVycy9yZXNldC9yZXNldC1pbXg3LmMKPiBpbmRl
eCAzZWNkNzcwZjkxMGIuLjE0NDNhNTVhMGMyOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Jlc2V0
L3Jlc2V0LWlteDcuYwo+ICsrKyBiL2RyaXZlcnMvcmVzZXQvcmVzZXQtaW14Ny5jCj4gQEAgLTE2
OSw5ICsxNjksOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGlteDdfc3JjX3NpZ25hbCBpbXg4bXFf
c3JjX3NpZ25hbHNbSU1YOE1RX1JFU0VUX05VTV0gPSB7Cj4gPiA+IMKgCVtJTVg4TVFfUkVTRVRf
T1RHMl9QSFlfUkVTRVRdCQk9IHsgU1JDX1VTQk9QSFkyX1JDUiwgQklUKDApIH0sCj4gPiA+IMKg
CVtJTVg4TVFfUkVTRVRfTUlQSV9EU0lfUkVTRVRfQllURV9OXQk9IHsgU1JDX01JUElQSFlfUkNS
LCBCSVQoMSkgfSwKPiA+ID4gwqAJW0lNWDhNUV9SRVNFVF9NSVBJX0RTSV9SRVNFVF9OXQkJPSB7
IFNSQ19NSVBJUEhZX1JDUiwgQklUKDIpIH0sCj4gPiA+IC0JW0lNWDhNUV9SRVNFVF9NSVBJX0RJ
U19EUElfUkVTRVRfTl0JPSB7IFNSQ19NSVBJUEhZX1JDUiwgQklUKDMpIH0sCj4gPiA+IC0JW0lN
WDhNUV9SRVNFVF9NSVBJX0RJU19FU0NfUkVTRVRfTl0JPSB7IFNSQ19NSVBJUEhZX1JDUiwgQklU
KDQpIH0sCj4gPiA+IC0JW0lNWDhNUV9SRVNFVF9NSVBJX0RJU19QQ0xLX1JFU0VUX05dCT0geyBT
UkNfTUlQSVBIWV9SQ1IsIEJJVCg1KSB9LAo+ID4gPiArCVtJTVg4TVFfUkVTRVRfTUlQSV9EU0lf
RFBJX1JFU0VUX05dCT0geyBTUkNfTUlQSVBIWV9SQ1IsIEJJVCgzKSB9LAo+ID4gPiArCVtJTVg4
TVFfUkVTRVRfTUlQSV9EU0lfRVNDX1JFU0VUX05dCT0geyBTUkNfTUlQSVBIWV9SQ1IsIEJJVCg0
KSB9LAo+ID4gPiArCVtJTVg4TVFfUkVTRVRfTUlQSV9EU0lfUENMS19SRVNFVF9OXQk9IHsgU1JD
X01JUElQSFlfUkNSLCBCSVQoNSkgfSwKPiA+ID4gwqAJW0lNWDhNUV9SRVNFVF9QQ0lFUEhZXQkJ
CT0geyBTUkNfUENJRVBIWV9SQ1IsCj4gPiDCoAkJCQkJCcKgwqDCoMKgQklUKDIpIHwgQklUKDEp
IH0sCj4gPiA+IMKgCVtJTVg4TVFfUkVTRVRfUENJRVBIWV9QRVJTVF0JCT0geyBTUkNfUENJRVBI
WV9SQ1IsIEJJVCgzKSB9LAo+IEBAIC0yMjAsOSArMjIwLDkgQEAgc3RhdGljIGludCBpbXg4bXFf
cmVzZXRfc2V0KHN0cnVjdCByZXNldF9jb250cm9sbGVyX2RldiAqcmNkZXYsCj4gwqAKPiA+IMKg
CWNhc2UgSU1YOE1RX1JFU0VUX1BDSUVfQ1RSTF9BUFBTX0VOOgo+ID4gPiDCoAljYXNlIElNWDhN
UV9SRVNFVF9QQ0lFMl9DVFJMX0FQUFNfRU46CS8qIGZhbGx0aHJvdWdoICovCj4gPiA+IC0JY2Fz
ZSBJTVg4TVFfUkVTRVRfTUlQSV9ESVNfUENMS19SRVNFVF9OOgkvKiBmYWxsdGhyb3VnaCAqLwo+
ID4gPiAtCWNhc2UgSU1YOE1RX1JFU0VUX01JUElfRElTX0VTQ19SRVNFVF9OOgkvKiBmYWxsdGhy
b3VnaCAqLwo+ID4gPiAtCWNhc2UgSU1YOE1RX1JFU0VUX01JUElfRElTX0RQSV9SRVNFVF9OOgkv
KiBmYWxsdGhyb3VnaCAqLwo+ID4gPiArCWNhc2UgSU1YOE1RX1JFU0VUX01JUElfRFNJX1BDTEtf
UkVTRVRfTjoJLyogZmFsbHRocm91Z2ggKi8KPiA+ID4gKwljYXNlIElNWDhNUV9SRVNFVF9NSVBJ
X0RTSV9FU0NfUkVTRVRfTjoJLyogZmFsbHRocm91Z2ggKi8KPiA+ID4gKwljYXNlIElNWDhNUV9S
RVNFVF9NSVBJX0RTSV9EUElfUkVTRVRfTjoJLyogZmFsbHRocm91Z2ggKi8KPiA+ID4gwqAJY2Fz
ZSBJTVg4TVFfUkVTRVRfTUlQSV9EU0lfUkVTRVRfTjoJLyogZmFsbHRocm91Z2ggKi8KPiA+ID4g
wqAJY2FzZSBJTVg4TVFfUkVTRVRfTUlQSV9EU0lfUkVTRVRfQllURV9OOgkvKiBmYWxsdGhyb3Vn
aCAqLwo+ID4gwqAJCXZhbHVlID0gYXNzZXJ0ID8gMCA6IGJpdDsKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
