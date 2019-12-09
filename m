Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CA5116872
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 09:41:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MnSfHYZxi3RRBEPHpYqS+tpy799KswWGeMyN1WS9VE=; b=CwUHuWcxflfEbL
	B4fk7st9i8IYssI5Il+S2C46azBzkCEzxU/LgwMmsS6Zx5KbElR1Veo5Cc5m0m37pHW5GpXo/FIdW
	WIPBeyq+AYIQxZBK4YtK97uyt8SQ3WFlg8OjXfDiDwZMFfrcvMz9+v8cXfjkMDBmVmL7EE8xT16Sx
	fFaceG8ObHb2xucPUhoHCaSbJXUus/UczQ7tHpPBxQcN733/bjsiOiZcbB+4qtP2slqaX+wLkhPmj
	rWUI5SGf6gPy897nfkjt/gDx4+kvFa0m5yBkPAleksXNcJhwUrATcONXbdqkH2jid40Dycoo+oufb
	l03E6wDBMgoxjW/6sJwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEbj-0001Kj-Mj; Mon, 09 Dec 2019 08:41:31 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEbY-0001Jv-3h
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 08:41:21 +0000
Received: by mail-ed1-f66.google.com with SMTP id cm12so11913849edb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 00:41:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=2kW38B0cuYpIKkhvAIys+E2QTBK5Yh5SHGBkdoRtsZ8=;
 b=lwSaon2SujWXufGrTA35Ylyi5V7OBWnxyJSMaeQXiZoM3x7kHBgWsyjo28i6MvzuYr
 RmOqbboDXn27024iVuVjEDR1z4n2ZYkCw32Hi0V2Xjtap+R4FRS+9PHOG6GK+TtYC/DK
 4fhD9PBx9WGyrj0tHak+wioM2AkhDn9P5GFDRb7M5NUw5U+9wW9Ttw9OBqq49puAUQbn
 S30/flLlh+eDTiEE4xPe4Z2gbtVbroweEqIxYcTqFetwd/HGEbFZVsFTJFGiWeRCSf0Y
 6gXodets7247NEjq/rorQRSlVSWtcbYFfWdsfh9Cm2v9pbc0J0Qe3o2vziAhbbx1j/dR
 i5IQ==
X-Gm-Message-State: APjAAAVCUly79h1WEV4OfRWhfGkkl6iUjTX+r+HUcH6N97s3YIFOW8Fy
 XnEp2DpCIVQJFh6rwyCQkkg=
X-Google-Smtp-Source: APXvYqxnmfRBujpXQ+VU19W08DbV8Aj87ESy1oEsbFuJ+8f1z5uvtmn43KkwiQePVPVKDlPT9/CHWg==
X-Received: by 2002:a17:906:2db1:: with SMTP id
 g17mr13034085eji.240.1575880877907; 
 Mon, 09 Dec 2019 00:41:17 -0800 (PST)
Received: from pi3 ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id f13sm703065edq.26.2019.12.09.00.41.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 00:41:17 -0800 (PST)
Date: Mon, 9 Dec 2019 09:41:15 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hyunki Koo <hyunki00.koo@gmail.com>
Subject: Re: [PATCH 1/2] irqchip: define EXYNOS_IRQ_COMBINER
Message-ID: <20191209084115.GA6375@pi3>
References: <20191207130049.27533-1-hyunki00.koo@gmail.com>
 <20191207130049.27533-2-hyunki00.koo@gmail.com>
 <20191207132855.GA4384@kozik-lap>
 <CAJKOXPcUXRGa7+ZgSYomo5v_eh=GjqyWYBkzsXUJi0zAPHcOjg@mail.gmail.com>
 <e6c3661e-36df-5ae8-eedb-1961063bcabb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e6c3661e-36df-5ae8-eedb-1961063bcabb@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_004120_154102_7694A83C 
X-CRM114-Status: GOOD (  26.10  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 jason@lakedaemon.net, maz@kernel.org, linux@armlinux.org.uk,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 kgene@kernel.org, Hyunki Koo <hyunki00.koo@samsung.com>, tglx@linutronix.de,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBEZWMgMDgsIDIwMTkgYXQgMDc6MjQ6NDlBTSArMDkwMCwgSHl1bmtpIEtvbyB3cm90
ZToKPiAKPiBPbiAxOS4gMTIuIDcuIOyYpO2bhCAxMDozNywgS3J6eXN6dG9mIEtvemxvd3NraSB3
cm90ZToKPiA+IE9uIFNhdCwgNyBEZWMgMjAxOSBhdCAxNDoyOCwgS3J6eXN6dG9mIEtvemxvd3Nr
aSA8a3J6a0BrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4gT24gU2F0LCBEZWMgMDcsIDIwMTkgYXQg
MTA6MDA6NDhQTSArMDkwMCwgSHl1bmtpIEtvbyB3cm90ZToKPiA+ID4gPiBGcm9tOiBIeXVua2kg
S29vIDxoeXVua2kwMC5rb29Ac2Ftc3VuZy5jb20+Cj4gPiA+ID4gCj4gPiA+ID4gTm90IGFsbCBl
eHlub3MgZGV2aWNlIGhhdmUgSVJRX0NPTUJJTkVSLgo+ID4gPiA+IFRodXMgYWRkIHRoZSBjb25m
aWcgZm9yIEVYWU5PU19JUlFfQ09NQklORVIuCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1i
eTogSHl1bmtpIEtvbyA8aHl1bmtpMDAua29vQHNhbXN1bmcuY29tPgo+ID4gPiA+IC0tLQo+ID4g
PiA+ICAgZHJpdmVycy9pcnFjaGlwL0tjb25maWcgIHwgNyArKysrKysrCj4gPiA+ID4gICBkcml2
ZXJzL2lycWNoaXAvTWFrZWZpbGUgfCAyICstCj4gPiA+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDgg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gPiA+IAo+ID4gPiBIaSwKPiA+ID4gCj4g
PiA+IFRoZXJlIGlzIG5vIGNoYW5nZWxvZyBhbmQgdmVyc2lvbmluZyBvZiB0aGlzIHBhdGNoIHNv
IEkgZG8gbm90Cj4gPiA+IHVuZGVyc3RhbmQgaG93IGl0IGRpZmZlcnMgd2l0aCBwcmV2aW91cy4g
SXQncyBhIHJlc2VuZD8gdjI/IEl0IGJyaW5ncwo+ID4gPiB0aGUgY29uZnVzaW9uIGFuZCBsb29r
cyBsaWtlIHlvdSdyZSBpZ25vcmluZyBwcmV2aW91cyBjb21tZW50cy4KPiA+ID4gCj4gPiA+IExv
b2tzIHRoZSBzYW1lIGFuZCBsb29rcyBsaWtlIGJyZWFraW5nIEV4eW5vcyBwbGF0Zm9ybXMgaW4g
dGhlIHNhbWUgd2F5Lgo+ID4gPiAKPiA+ID4gSWYgeW91IG5vdCB3YW50IHRvIHNraXAgY29tYmlu
ZXIgb24gQVJNdjgsIGl0IG1ha2VzIHNlbnNlLCB0aGVuIHBsZWFzZQo+ID4gPiBmb2xsb3cgdGhl
IGFwcHJvYWNoIHdlIGRpZCBmb3IgUGluY3RybCBkcml2ZXJzIChQSU5DVFJMX0VYWU5PU19BUk0g
YW5kCj4gPiA+IFBJTkNUUkxfRVhZTk9TX0FSTTY0KS4KPiA+ID4gCj4gPiA+IEJlc3QgcmVnYXJk
cywKPiA+ID4gS3J6eXN6dG9mCj4gPiBBaCwgbm93IEkgc2VlIHRoZSBzZWNvbmQgcGF0Y2guIFN0
aWxsIHlvdSBicmVhayBiaXNlY3Qgd2hpY2ggcmVxdWlyZXMKPiA+IHNwZWNpZmljIG9yZGVyaW5n
IG9mIHBhdGNoZXMgb3Igc3F1YXNoaW5nIHRoZW0gaW50byBvbmUuIE9wdGlvbmFsbHkKPiA+IHRo
aXMgY291bGQgYmUgZGVmYXVsdD15IGlmIEFSQ0hfRVhZTk9TICYmIEFSTS4gSSBwcmVmZXIganVz
dCBzcXVhc2hpbmcKPiA+IGJvdGggaW50byBvbmUgcGF0Y2ggaW4gdGhpcyBjYXNlLgo+IAo+IHlv
dSBtZWFuIHNxdWFzaGluZyB0d28gZmlsZXMgYXJjaC9hcm0vbWFjaC1leHlub3MvS2NvbmZpZyBh
bmQKPiBhcmNoL2FybS9tYWNoLWV4eW5vcy9LY29uZmlnIGludG8gb25lIHBhdGNoCj4gCj4gb3Ig
c3F1YXNoaW5nIGludG8gb25seSBvbmUgZmlsZSBsaWtlIGJsb3c/Cj4gCj4gK2NvbmZpZyBFWFlO
T1NfSVJRX0NPTUJJTkVSCj4gK8KgwqDCoMKgwqDCoCBib29sICJTYW1zdW5nIEV4eW5vcyBJUlEg
Y29tYmluZXIgc3VwcG9ydCIKPiArwqDCoMKgwqDCoMKgIGRlcGVuZHMgb24gKEFSQ0hfRVhZTk9T
wqAgJiYgQVJNKSB8fCBDT01QSUxFX1RFU1QKPiArwqDCoMKgwqDCoMKgIGRlZmF1bHQgeQo+IAo+
IEkgcHJlZmVyIGZpcnN0IG9uZSAoc3F1YXNoaW5nIHR3byBmaWxlcyBpbnRvIG9uZSBwYXRjaCkK
ClNxdWFzaGluZyB0d28gcGF0Y2hlcyBpbnRvIG9uZS4KCj4gCj4gPiAKPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9pcnFjaGlwL0tjb25maWcgYi9kcml2ZXJzL2lycWNoaXAvS2NvbmZpZwo+
ID4gPiA+IGluZGV4IGJhMTUyOTU0MzI0Yi4uM2VkN2I3ZjJhZTI2IDEwMDY0NAo+ID4gPiA+IC0t
LSBhL2RyaXZlcnMvaXJxY2hpcC9LY29uZmlnCj4gPiA+ID4gKysrIGIvZHJpdmVycy9pcnFjaGlw
L0tjb25maWcKPiA+ID4gPiBAQCAtNDk5LDQgKzQ5OSwxMSBAQCBjb25maWcgU0lGSVZFX1BMSUMK
PiA+ID4gPiAKPiA+ID4gPiAgICAgICAgICAgSWYgeW91IGRvbid0IGtub3cgd2hhdCB0byBkbyBo
ZXJlLCBzYXkgWS4KPiA+ID4gPiAKPiA+ID4gPiArY29uZmlnIEVYWU5PU19JUlFfQ09NQklORVIK
PiA+ID4gPiArICAgICBib29sICJTYW1zdW5nIEV4eW5vcyBJUlEgY29tYmluZXIgc3VwcG9ydCIK
PiA+IE5vdyBwb2ludCBpdCB0byBiZSB2aXNpYmxlLiBPbmx5IGZvciBDT01QSUxFX1RFU1QKClR5
cG8gZnJvbSBteSBzaWRlLiBJIHdhbnRlZCB0byBzYXkgIk5vIHBvaW50IiAtIHRoaXMgc2hvdWxk
IG5vdCBiZQpzZWxlY3RhYmxlIGJ5IHVzZXIuCgo+ID4gCj4gPiA+ID4gKyAgICAgZGVwZW5kcyBv
biBBUkNIX0VYWU5PUwo+ID4gU2luY2UgeW91IG1ha2UgaXQgYSBzZXBhcmF0ZSBvcHRpb24sIG1h
a2UgaXQgQ09NUElMRV9URVNULgo+IAo+IElzIHRoaXPCoCBnb29kID8KCk5vdCBlbnRpcmVseS4g
VGhlIGJvb2wgc2hvdWxkIGJlIGFsc28gd2l0aCAiaWYgQ09NUElMRSBURVNUIiBzbzoKCmNvbmZp
ZyBFWFlOT1NfSVJRX0NPTUJJTkVSCglib29sICJTYW1zdW5nIEV4eW5vcyBJUlEgY29tYmluZXIg
c3VwcG9ydCIgaWYgQ09NUElMRV9URVNUCglkZXBlbmRzIG9uIChBUkNIX0VYWU5PU8KgJiYgQVJN
KSB8fCBDT01QSUxFX1RFU1QKCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
