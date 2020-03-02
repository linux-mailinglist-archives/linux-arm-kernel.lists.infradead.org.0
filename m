Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEEA17561E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 09:40:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycrND61Rv1F/L+eH9lv4IvUAthZdjnCHO7w9u3HB/hA=; b=o+vOXh0CYpRn6k
	p9+4ncN2cYuvYYqpmsPJtxa5AxJiu4ijYf0wge3YppuHAo6Vqo6XTQKuFTnV0dCsRxziXmDz7DEe5
	F8Kh2vW8XCaA31rZRI8yllzVvSJYQ6y4ZShl0Adg3nrrKUzWOSORqXdotLwqMKQ2gxM3tnd420Zol
	mhyngxiD2hOSAFXkJ2Id82h3Es69cnrmgw0UQJEtbvoZDzmjQaZoYUS2Btno5wxO6cU9LsY064ISx
	YkLKP5G8XR8ScGhP5VKP00r/z0Bs6qYtMBEDa2VwoFLuu2fPcF3h97sMTje881T9ge8U4NOV0IJm9
	JF5XKQYWQLpY0saTxsuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8gcZ-0008L1-8A; Mon, 02 Mar 2020 08:40:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8gcP-0007l5-4J
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 08:40:06 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j8gcM-00086M-VK; Mon, 02 Mar 2020 09:40:02 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j8gcJ-00027p-Ox; Mon, 02 Mar 2020 09:39:59 +0100
Date: Mon, 2 Mar 2020 09:39:59 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Romain Izard <romain.izard.pro@gmail.com>
Subject: Re: GPIOs not correctly exported via sysfs on ATSAMA5D2
Message-ID: <20200302083959.wju5vz3acuka2edq@pengutronix.de>
References: <CAMiSF3BULWkyWTytTBcFfch9YaV_QzuBiawk-ZqEcQnsuGdUiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMiSF3BULWkyWTytTBcFfch9YaV_QzuBiawk-ZqEcQnsuGdUiQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_004005_182765_3E237313 
X-CRM114-Status: GOOD (  21.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Linux GPIO List <linux-gpio@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBGZWIgMjgsIDIwMjAgYXQgMTE6NTg6MjFBTSArMDEwMCwgUm9tYWluIEl6YXJkIHdy
b3RlOgo+IEhlbGxvLAo+IAo+IFdoaWxlIGV4cGVyaW1lbnRpbmcgd2l0aCBhIG5ldyBjaGlwLCBJ
IGNvbm5lY3RlZCBpdCBvbiB0aGUgU0RJTwo+IGludGVyZmFjZSBvbiBteSBib2FyZCBiYXNlZCBv
biBhIFNBTUE1RDIgU29DLiBGb3IgYSBmaXJzdCBzdGVwLCBJIG5lZWQKPiB0byBkcml2ZSB0aGUg
cGlucyBvbiB0aGUgU0RJTyBidXMgYXQgYSBnaXZlbiBsZXZlbCB0byBwcm9ncmFtIHRoaXMgbmV3
Cj4gY2hpcC4gVG8gZG8gc28sIEkgdHJpZWQgdG8gY29udHJvbCB0aGUgR1BJTyBsaW5lcyBtYW51
YWxseSBieSB1bmJpbmRpbmcKPiB0aGUgU0RIQ0kgY29udHJvbGxlciwgYW5kIHVzaW5nIC9zeXMv
Y2xhc3MvZ3Bpby9leHBvcnQgdG8gY29udHJvbCB0aGUKPiBwaW5zLCB3aXRoIHRoZSBmb2xsb3dp
bmcgY29kZToKPiAKPiBlY2hvIGEwMDAwMDAwLnNkaW8taG9zdCA+IC9zeXMvYnVzL3BsYXRmb3Jt
L2RyaXZlcnMvc2RoY2ktYXQ5MS91bmJpbmQKPiBlY2hvIDQgPiAvc3lzL2NsYXNzL2dwaW8vZXhw
b3J0Cj4gZWNobyBsb3cgPiAvc3lzL2NsYXNzL2dwaW8vUEE0L2RpcmVjdGlvbgo+IAo+IFVuZm9y
dHVuYXRlbHksIHRoZSBzdGF0ZSBvZiB0aGUgcGluIGRvZXMgbm90IGNoYW5nZSBhbmQgaXQgcmVt
YWlucwo+IGRyaXZlbiB0byAxLiBJIGNoZWNrZWQgdGhlIGNvbmZpZ3VyYXRpb24gcmVnaXN0ZXIg
d2l0aCBkZXZtZW0yLCBhbmQgaXQKPiBhcHBlYXJlZCB0aGF0IHRoZSBzZWxlY3RlZCBmdW5jdGlv
biByZW1haW5zIHRoZSBTRElPIGZ1bmN0aW9uIGV2ZW4gYWZ0ZXIKPiBjYWxsaW5nIGV4cG9ydC4K
PiAKPiBUaGUgaXNzdWUgZG9lcyBub3QgYXBwZWFyIHdoZW4gSSB1c2UgYSBHUElPIGluIGEgZHJp
dmVyIHdpdGggYW4gZXhwbGljaXQKPiBwaW5jdHJsIGNvbmZpZ3VyYXRpb24gaW4gdGhlIGRldmlj
ZSB0cmVlLCB3aGljaCBleHBsYWlucyB3aHkgSSBkaWQgbm90Cj4gc2VlIGl0IHVudGlsIG5vdy4K
PiAKPiBUaGUga2VybmVsIHZlcnNpb24gdXNlZCBpcyBMaW51eCA1LjQuMjIKPiAKPiBJcyB0aGlz
IGEgdXNlciBlcnJvciBmcm9tIG15IHBhcnQsIG9yIGlzIHRoZXJlIHNvbWV0aGluZyBtaXNzaW5n
IGluIHRoZQo+IEFUOTEgUElPNCBwaW5jdHJsIGRyaXZlciA/CgpJTUhPIHRoaXMgaXMgYWxsIGFz
IGV4cGVjdGVkLiBUaGVyZSBhcmUgZ3BpbyBjb250cm9sbGVycyB0aGF0CmF1dG9tYXRpY2FsbHkg
bXV4IHRoZSBtYXRjaGluZyBwaW4sIGJ1dCB5b3UgbXVzdCBub3QgZXhwZWN0IHRoYXQuCgpNeSBw
ZXJzb25hbCBvcGluaW9uIG9uIHRoaXMgaXMsIHRoYXQgdGhlIGRvd25zaWRlIG9mIHRoaXMgYXV0
b21hdGljIGlzCndvcnNlIHRoYW4gaXRzIGJlbmVmaXRzOgoKIC0gSXQncyBub3QgdW5pdmVyc2Fs
LCBhcyB0aGVyZSBhcmUgU29DcyB0aGF0IGRvbid0IGhhdmUgYSBzaW5nbGUgcGluCiAgIGZvciBh
IGdpdmVuIEdQSU8sIHNvIHlvdSBjYW5ub3QgcmVsaWFibHkgaW1wbGVtZW50IGl0IGZvciBhbGwK
ICAgY29udHJvbGxlcnMuCgogLSBTb21ldGltZXMgaXQgaXMgdXNlZnVsIHRvIG1ha2UgdXNlIG9m
IGEgR1BJTyBhbmQgYSBkZWRpY2F0ZWQgZnVuY3Rpb24KICAgb24gdGhlIHNhbWUgcGluIGluIGEg
ZHJpdmVyIChlLmcuIGFuIGkyYyBkcml2ZXIgbWlnaHQgbmVlZCB0byBzd2l0Y2gKICAgdG8gZ3Bp
byB0byBkbyBhIGJ1cyByZWNvdmVyeSkuIFRoZSBhdXRvbWF0aWMgcGlubXV4aW5nIHRoZW4gaGFz
CiAgIHN0cmFuZ2Ugc2lkZSBlZmZlY3QgYmVjYXVzZSB5b3UgaGF2ZSB0byByZW11eCB0aGUgcGlu
cyBhZnRlcgogICByZXF1ZXN0aW5nIHRoZSBHUElPcyBldmVuIGlmIHlvdSBkaWRuJ3QgZHJpdmUg
dGhlIHBpbnMgYXMgR1BJTyBhbmQKICAgdGhlcmUgaXMgYSBzaG9ydCB0aW1lIHdoZXJlIHRoZSBw
aW4gZnVuY3Rpb24gaXNuJ3QgdGhlIGRlZGljYXRlZAogICBvbmUuCgpTbyB0byBtZSB0aGlzIGlz
IHRvbyBtYWdpYyBhbmQgbGVzcyBleHBsaWNpdCBhbmQgc28gYmFkLgoKSnVzdCBteSAwLjAy4oKs
ClV3ZQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8IFV3
ZSBLbGVpbmUtS8O2bmlnICAgICAgICAgICAgfApJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAg
ICAgICAgICAgICAgICAgfCBodHRwczovL3d3dy5wZW5ndXRyb25peC5kZS8gfAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
