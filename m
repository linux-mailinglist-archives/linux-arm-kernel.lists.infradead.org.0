Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E0B101FAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 10:12:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXfyqlUvlfYd14Qwd85yGZV/i+8Gk0aq9QqStNHl9g0=; b=o24RATed0jUZLM
	iNH0iKlhi3KcRTxoMn+KCuYHb6iXzUHZGBsBQIWfZQf7qM9HcQ+6kJrozKcgQPElQlebO8z7Z86PG
	XNIqaspDNfsKk6MpH2jLsOE4O8iFjQ3e5AdENYteaVUvNy+uRUDC5i/OgWTMrzFCZnTzk7/QRQFKN
	abddDgWoS+ijAH+JakagkR4Yclf+eYUtt6NKxdidbIaw5bVA/hw0cTlEG5UnQEQlP/1qTkdb0zRPs
	mfjvhAksybliFFeW5UVQjpc3d8axUhKrjKv89pYvZ06x6fhgj5H5IQ+6FqxR4+83O5qMZY2Zhk1po
	j009oBZQiWO+eoze1mpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWzY7-00048r-OA; Tue, 19 Nov 2019 09:11:51 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWzXx-00047j-ND; Tue, 19 Nov 2019 09:11:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4B85DB235;
 Tue, 19 Nov 2019 09:11:40 +0000 (UTC)
Subject: Re: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
To: James Tai <james.tai@realtek.com>
References: <43B123F21A8CFE44A9641C099E4196FFCF91BEFA@RTITMBSVM04.realtek.com.tw>
 <25fdd8eb-f1a0-82ae-9c4b-22325b163b0e@suse.de>
 <43B123F21A8CFE44A9641C099E4196FFCF920024@RTITMBSVM04.realtek.com.tw>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <6182b89f-cd7e-ce7c-56f7-e2f500321cde@suse.de>
Date: Tue, 19 Nov 2019 10:11:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <43B123F21A8CFE44A9641C099E4196FFCF920024@RTITMBSVM04.realtek.com.tw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_011141_901380_C63AEF0A 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAwOC4xMS4xOSB1bSAxNjozNiBzY2hyaWViIEphbWVzIFRhaToKPj4gSXMg
dGhlIFVBUlQgbm8gbG9uZ2VyIGJlaGluZCBhbiBJUlEgbXV4IG9uIFJURDE2MTksIG9yIGlzIHRo
ZSBhYm92ZSB0aGUgSVJRCj4+IG11eCBpbnRlcnJ1cHQgYXMgYSB3b3JrYXJvdW5kIGZvciBsYWNr
IG9mIGluLXRyZWUgaXJxY2hpcCBkcml2ZXI/Cj4+Cj4gWWVzLCB0aGUgVUFSVCBubyBsb25nZXIg
YmVoaW5kIGFuIElSUSBtdXggb24gUlREMTYxOS4KClRoaXMgY29uZmxpY3RzIHdpdGggd2hhdCBJ
IHNlZSBpbiBCU1AgaXJxIG11eCBjb2RlIGhlcmU6Cmh0dHBzOi8vZ2l0aHViLmNvbS9CUEktU0lO
T1ZPSVAvQlBJLU00LWJzcC9ibG9iL21hc3Rlci9saW51eC1ydGsvZHJpdmVycy9pcnFjaGlwL2ly
cS1ydGQxNnh4LmgKClRoYXQgZG9lcyBzaG93IFVSMCBhcyBiaXQgMiBmb3IgdGhlIGlzbyBpcnEg
bXV4LCBhcyBmb3IgcHJldmlvdXMgU29Dcy4KSXMgdGhhdCBjb2RlIHdyb25nLCBvciBkb2VzIHRo
ZSBzYW1lIFVBUlQwIElQIGJsb2NrIGhhdmUgdHdvIGFsdGVybmF0aXZlCmludGVycnVwdHMgZm9y
IGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5PyBJIHRoZXJlZm9yZSBoZWxkIGJhY2sgUlREMTYxOQpp
cnEgbXV4IHBhdGNoZXMgZnJvbSBteSBpcnFjaGlwIHY0IHNlcmllcyBbMV0uCgpUaGUgQlNQIERU
IGRvZXMgYXNzaWduIG5vbi1tdXggaW50ZXJydXB0cyB0byB0aGUgVUFSVCBub2RlIGxpa2UgeW91
IGRpZDoKaHR0cHM6Ly9naXRodWIuY29tL0JQSS1TSU5PVk9JUC9CUEktTTQtYnNwL2Jsb2IvbWFz
dGVyL2xpbnV4LXJ0ay9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTZ4eC9ydGQtMTZ4
eC5kdHNpCkFuZCBJIG9idmlvdXNseSB0cnVzdCB0aGF0IHlvdSB0ZXN0ZWQgeW91ciBEVCB0byBw
cm9kdWNlIHNlcmlhbCBvdXRwdXQuCgoKQWxzbyBub3RlIGhvdyB0aGVyZSBhcmUgVVIxX1RPIGFu
ZCBVUjJfVE8gKFRPID0gdGltZW91dD8pIGluIGFkZGl0aW9uIHRvCnJlZ3VsYXIgVVIxIGFuZCBV
UjIgaW50ZXJydXB0cyBpbiB0aGUgbXV4IGFib3ZlLCBqdXN0IGFzIGZvciBSVEQxMjk1IGFuZApS
VEQxMTk1IChVUjEvVVIxX1RPIG9ubHkpLiBGcm9tIG15IGlycW11eCB2NCBzZXJpZXMgcG9zdGVk
IGxhc3QgbmlnaHQgSQpoYWQgdG8gZHJvcCB0aG9zZSBhZGRpdGlvbmFsIGludGVycnVwdHMgcHJv
cGVydHkgdmFsdWVzIGZyb20gdGhlIERUIFsyXSwKYXMgdGhleSB2aW9sYXRlIG1haW5saW5lJ3Mg
RGVzaWduV2FyZSBEVCBzY2hlbWEncyBtYXhJdGVtcyAxIGFuZCB3b3VsZApyZXF1aXJlIGEgbmV3
IGNvbXBhdGlibGUgc3RyaW5nIChhbmQgYSBkcml2ZXIgcGF0Y2ggdG8gbWFrZSB1c2Ugb2YgaXQp
LgoKaHR0cHM6Ly9naXRodWIuY29tL0JQSS1TSU5PVk9JUC9CUEktTTQtYnNwL2Jsb2IvbWFzdGVy
L2xpbnV4LXJ0ay9kcml2ZXJzL2lycWNoaXAvaXJxLXJ0ZDExOXguaApodHRwczovL2dpdGh1Yi5j
b20vQlBJLVNJTk9WT0lQL0JQSS1NNC1ic3AvYmxvYi9tYXN0ZXIvbGludXgtcnRrL2RyaXZlcnMv
aXJxY2hpcC9pcnEtcnRkMTI5eC5oCmh0dHBzOi8vZ2l0aHViLmNvbS9CUEktU0lOT1ZPSVAvQlBJ
LU00LWJzcC9ibG9iL21hc3Rlci9saW51eC1ydGsvZHJpdmVycy9pcnFjaGlwL2lycS1ydGQxMzl4
LmgKClJlZ2FyZHMsCkFuZHJlYXMKClsxXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2Nv
dmVyLzExMjUwNjQzLwpbMl0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTI1
MDY0NS8KCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0
ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJC
IDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
