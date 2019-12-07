Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44104115F3F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 23:26:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6EVWPrbOD1gT9kVQwBBlVtRQqtT95C8sUpVjGFfVQxc=; b=BrXGe+KhhRoQVeg/2YTCdW8Jj
	O8wzsah7PoAkTwQcRiX/rXnPBuCRVBbWLMdANRxI05t3HD+DFNz6B4SHMdP2C6K34hHfdMk/wn/kL
	AILjFy3GeiuFS86+7f7N0V5CDjYGUVBKV1wirzPNSRGQml6jDKVDt0gICvIuwq/U3iNyHrWkTzLxr
	wrx4CiL5zI+odyCUwmmKgPC310FFUBFcuF6Y8P7FPwVJP5Tl9vUwKJwJYm4/9bHk1Fqk+N6jiWvNf
	D5/66YfJGrwn6Istp2UNIzCmhWClx6o5CHMc+5Tzrqw3JiYDEbmPolmc8xxaljONS381mhbmcgzSb
	8QcA6ncpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idiXD-00024V-8f; Sat, 07 Dec 2019 22:26:43 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idiVU-0007uU-QI
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Dec 2019 22:24:59 +0000
Received: by mail-pj1-x1044.google.com with SMTP id j11so3117221pjs.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Dec 2019 14:24:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ExI/TKDdtqZJzeoXoc2AmfkP7V2dbpxkrYjX02g6qW8=;
 b=U1LXHG0VqwagIGA58czXmw1H4VD/s4EQgeoMRqcaqrB4IHMlYDFRyLonTr3/YNyqfQ
 ssWFu20NjDv55dUc6YSELfgM2hGxVqpE8E2EEzCeiNr28psNeLADRkC67b4dZTnX/8Ag
 GF/Xij3GKtlCwBTwIUNgng+p82rkDjxUGC/UUdPzLyewnRZ/IVHBTNcp0HWBA3z/TW6X
 sSoufAOKOQoQcSbrKpW+SY18KjvhVrhMuBT7tDuv3fahEWQUEeRAc1n/AiFKO5R1oGGF
 qUznNHp8pumNfO7tnNk9ZTzOCPpdEKHxPLSX610n37BAZJ16kc2fIFso407JTCNEbQlv
 sd8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ExI/TKDdtqZJzeoXoc2AmfkP7V2dbpxkrYjX02g6qW8=;
 b=H42hjH2ZwZJH/wm8PmSj4xYQxk1GdoA+TUpwQ+0fFEq2L4tP9NRCt+IaJ9CvUPQAGY
 P8n4TUrhNkoq3BXQbKUn4+r3saoeyxz+v0yUuvMYSjG4SNJRm+Axt0PhWRPRoFFQ4RUc
 7rMJJMxHKBdc13MZC1oBGl4pzDr7mSatoFWMJHVCH7CE1hzuaCOg0LhipeueGBKCWOTt
 P4Hb7gzamYSphavkCJ1SaIMwkm+71jKGKNm+amQD0jx3JDC7i2r5QoIkPH6pHyd2dmUp
 SvSoSYZ1n0cuCw20XBKQCXG5kus+b6JQ+BMzb+Ro2b+OtEcaAQMO8Du5c6NwVBs1XAQt
 FZCA==
X-Gm-Message-State: APjAAAUzv9G33uFyR3x9zumJuB57gLLame70sXaJQMld2Hhd5GNsDXQU
 X56tHpk8pTEtan6L+OUXLS4=
X-Google-Smtp-Source: APXvYqx7bStIx6xSAxvlhcLeWquMhjmkWNjHW7tGd9W2s1pTJYJMoxzoc3cto86XzIWwTO2kvqyL3Q==
X-Received: by 2002:a17:90a:2486:: with SMTP id
 i6mr24849994pje.9.1575757493839; 
 Sat, 07 Dec 2019 14:24:53 -0800 (PST)
Received: from [192.168.0.53] ([211.243.117.64])
 by smtp.gmail.com with ESMTPSA id w11sm16400204pfn.4.2019.12.07.14.24.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Dec 2019 14:24:53 -0800 (PST)
Subject: Re: [PATCH 1/2] irqchip: define EXYNOS_IRQ_COMBINER
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20191207130049.27533-1-hyunki00.koo@gmail.com>
 <20191207130049.27533-2-hyunki00.koo@gmail.com>
 <20191207132855.GA4384@kozik-lap>
 <CAJKOXPcUXRGa7+ZgSYomo5v_eh=GjqyWYBkzsXUJi0zAPHcOjg@mail.gmail.com>
From: Hyunki Koo <hyunki00.koo@gmail.com>
Message-ID: <e6c3661e-36df-5ae8-eedb-1961063bcabb@gmail.com>
Date: Sun, 8 Dec 2019 07:24:49 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPcUXRGa7+ZgSYomo5v_eh=GjqyWYBkzsXUJi0zAPHcOjg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_142456_964750_BE4395BC 
X-CRM114-Status: GOOD (  21.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hyunki00.koo[at]gmail.com)
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 jason@lakedaemon.net, maz@kernel.org, linux@armlinux.org.uk,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 kgene@kernel.org, Hyunki Koo <hyunki00.koo@samsung.com>, tglx@linutronix.de,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDE5LiAxMi4gNy4g7Jik7ZuEIDEwOjM3LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+
IE9uIFNhdCwgNyBEZWMgMjAxOSBhdCAxNDoyOCwgS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0Br
ZXJuZWwub3JnPiB3cm90ZToKPj4gT24gU2F0LCBEZWMgMDcsIDIwMTkgYXQgMTA6MDA6NDhQTSAr
MDkwMCwgSHl1bmtpIEtvbyB3cm90ZToKPj4+IEZyb206IEh5dW5raSBLb28gPGh5dW5raTAwLmtv
b0BzYW1zdW5nLmNvbT4KPj4+Cj4+PiBOb3QgYWxsIGV4eW5vcyBkZXZpY2UgaGF2ZSBJUlFfQ09N
QklORVIuCj4+PiBUaHVzIGFkZCB0aGUgY29uZmlnIGZvciBFWFlOT1NfSVJRX0NPTUJJTkVSLgo+
Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEh5dW5raSBLb28gPGh5dW5raTAwLmtvb0BzYW1zdW5nLmNv
bT4KPj4+IC0tLQo+Pj4gICBkcml2ZXJzL2lycWNoaXAvS2NvbmZpZyAgfCA3ICsrKysrKysKPj4+
ICAgZHJpdmVycy9pcnFjaGlwL01ha2VmaWxlIHwgMiArLQo+Pj4gICAyIGZpbGVzIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4KPj4gSGksCj4+Cj4+IFRoZXJlIGlz
IG5vIGNoYW5nZWxvZyBhbmQgdmVyc2lvbmluZyBvZiB0aGlzIHBhdGNoIHNvIEkgZG8gbm90Cj4+
IHVuZGVyc3RhbmQgaG93IGl0IGRpZmZlcnMgd2l0aCBwcmV2aW91cy4gSXQncyBhIHJlc2VuZD8g
djI/IEl0IGJyaW5ncwo+PiB0aGUgY29uZnVzaW9uIGFuZCBsb29rcyBsaWtlIHlvdSdyZSBpZ25v
cmluZyBwcmV2aW91cyBjb21tZW50cy4KPj4KPj4gTG9va3MgdGhlIHNhbWUgYW5kIGxvb2tzIGxp
a2UgYnJlYWtpbmcgRXh5bm9zIHBsYXRmb3JtcyBpbiB0aGUgc2FtZSB3YXkuCj4+Cj4+IElmIHlv
dSBub3Qgd2FudCB0byBza2lwIGNvbWJpbmVyIG9uIEFSTXY4LCBpdCBtYWtlcyBzZW5zZSwgdGhl
biBwbGVhc2UKPj4gZm9sbG93IHRoZSBhcHByb2FjaCB3ZSBkaWQgZm9yIFBpbmN0cmwgZHJpdmVy
cyAoUElOQ1RSTF9FWFlOT1NfQVJNIGFuZAo+PiBQSU5DVFJMX0VYWU5PU19BUk02NCkuCj4+Cj4+
IEJlc3QgcmVnYXJkcywKPj4gS3J6eXN6dG9mCj4gQWgsIG5vdyBJIHNlZSB0aGUgc2Vjb25kIHBh
dGNoLiBTdGlsbCB5b3UgYnJlYWsgYmlzZWN0IHdoaWNoIHJlcXVpcmVzCj4gc3BlY2lmaWMgb3Jk
ZXJpbmcgb2YgcGF0Y2hlcyBvciBzcXVhc2hpbmcgdGhlbSBpbnRvIG9uZS4gT3B0aW9uYWxseQo+
IHRoaXMgY291bGQgYmUgZGVmYXVsdD15IGlmIEFSQ0hfRVhZTk9TICYmIEFSTS4gSSBwcmVmZXIg
anVzdCBzcXVhc2hpbmcKPiBib3RoIGludG8gb25lIHBhdGNoIGluIHRoaXMgY2FzZS4KCnlvdSBt
ZWFuIHNxdWFzaGluZyB0d28gZmlsZXMgYXJjaC9hcm0vbWFjaC1leHlub3MvS2NvbmZpZyBhbmQg
CmFyY2gvYXJtL21hY2gtZXh5bm9zL0tjb25maWcgaW50byBvbmUgcGF0Y2gKCm9yIHNxdWFzaGlu
ZyBpbnRvIG9ubHkgb25lIGZpbGUgbGlrZSBibG93PwoKK2NvbmZpZyBFWFlOT1NfSVJRX0NPTUJJ
TkVSCivCoMKgwqDCoMKgwqAgYm9vbCAiU2Ftc3VuZyBFeHlub3MgSVJRIGNvbWJpbmVyIHN1cHBv
cnQiCivCoMKgwqDCoMKgwqAgZGVwZW5kcyBvbiAoQVJDSF9FWFlOT1PCoCAmJiBBUk0pIHx8IENP
TVBJTEVfVEVTVAorwqDCoMKgwqDCoMKgIGRlZmF1bHQgeQoKSSBwcmVmZXIgZmlyc3Qgb25lIChz
cXVhc2hpbmcgdHdvIGZpbGVzIGludG8gb25lIHBhdGNoKQoKPgo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvaXJxY2hpcC9LY29uZmlnIGIvZHJpdmVycy9pcnFjaGlwL0tjb25maWcKPj4+IGluZGV4
IGJhMTUyOTU0MzI0Yi4uM2VkN2I3ZjJhZTI2IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9pcnFj
aGlwL0tjb25maWcKPj4+ICsrKyBiL2RyaXZlcnMvaXJxY2hpcC9LY29uZmlnCj4+PiBAQCAtNDk5
LDQgKzQ5OSwxMSBAQCBjb25maWcgU0lGSVZFX1BMSUMKPj4+Cj4+PiAgICAgICAgICAgSWYgeW91
IGRvbid0IGtub3cgd2hhdCB0byBkbyBoZXJlLCBzYXkgWS4KPj4+Cj4+PiArY29uZmlnIEVYWU5P
U19JUlFfQ09NQklORVIKPj4+ICsgICAgIGJvb2wgIlNhbXN1bmcgRXh5bm9zIElSUSBjb21iaW5l
ciBzdXBwb3J0Igo+IE5vdyBwb2ludCBpdCB0byBiZSB2aXNpYmxlLiBPbmx5IGZvciBDT01QSUxF
X1RFU1QKPgo+Pj4gKyAgICAgZGVwZW5kcyBvbiBBUkNIX0VYWU5PUwo+IFNpbmNlIHlvdSBtYWtl
IGl0IGEgc2VwYXJhdGUgb3B0aW9uLCBtYWtlIGl0IENPTVBJTEVfVEVTVC4KCklzIHRoaXPCoCBn
b29kID8KCitjb25maWcgRVhZTk9TX0lSUV9DT01CSU5FUgoKK8KgwqDCoMKgwqDCoCBib29sICJT
YW1zdW5nIEV4eW5vcyBJUlEgY29tYmluZXIgc3VwcG9ydCIKK8KgwqDCoMKgwqDCoCBkZXBlbmRz
IG9uIChBUkNIX0VYWU5PU8KgICYmIEFSTSkgfHwgQ09NUElMRV9URVNUCgo+Cj4gQmVzdCByZWdh
cmRzLAo+IEtyenlzenRvZgo+Cj4+PiArICAgICBoZWxwCj4+PiArICAgICAgIFNheSB5ZXMgaGVy
ZSB0byBhZGQgc3VwcG9ydCBmb3IgdGhlIElSUSBjb21iaW5lciBkZXZpY2VzIGVtYmVkZGVkCj4+
PiArICAgICAgIGluIFNhbXN1bmcgRXh5bm9zIGNoaXBzLgo+Pj4gKwo+Pj4gICBlbmRtZW51Cj4+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pcnFjaGlwL01ha2VmaWxlIGIvZHJpdmVycy9pcnFjaGlw
L01ha2VmaWxlCj4+PiBpbmRleCBlODA2ZGRhNjkwZWEuLjYwZDdjNzI2MGZjMyAxMDA2NDQKPj4+
IC0tLSBhL2RyaXZlcnMvaXJxY2hpcC9NYWtlZmlsZQo+Pj4gKysrIGIvZHJpdmVycy9pcnFjaGlw
L01ha2VmaWxlCj4+PiBAQCAtOSw3ICs5LDcgQEAgb2JqLSQoQ09ORklHX0FSQ0hfQkNNMjgzNSkg
ICAgICAgICAgICArPSBpcnEtYmNtMjgzNS5vCj4+PiAgIG9iai0kKENPTkZJR19BUkNIX0JDTTI4
MzUpICAgICAgICAgICArPSBpcnEtYmNtMjgzNi5vCj4+PiAgIG9iai0kKENPTkZJR19EQVZJTkNJ
X0FJTlRDKSAgICAgICAgICArPSBpcnEtZGF2aW5jaS1haW50Yy5vCj4+PiAgIG9iai0kKENPTkZJ
R19EQVZJTkNJX0NQX0lOVEMpICAgICAgICAgICAgICAgICs9IGlycS1kYXZpbmNpLWNwLWludGMu
bwo+Pj4gLW9iai0kKENPTkZJR19BUkNIX0VYWU5PUykgICAgICAgICAgICArPSBleHlub3MtY29t
YmluZXIubwo+Pj4gK29iai0kKENPTkZJR19FWFlOT1NfSVJRX0NPTUJJTkVSKSAgICArPSBleHlu
b3MtY29tYmluZXIubwo+Pj4gICBvYmotJChDT05GSUdfRkFSQURBWV9GVElOVEMwMTApICAgICAg
ICAgICAgICArPSBpcnEtZnRpbnRjMDEwLm8KPj4+ICAgb2JqLSQoQ09ORklHX0FSQ0hfSElQMDQp
ICAgICAgICAgICAgICs9IGlycS1oaXAwNC5vCj4+PiAgIG9iai0kKENPTkZJR19BUkNIX0xQQzMy
WFgpICAgICAgICAgICArPSBpcnEtbHBjMzJ4eC5vCj4+PiAtLQo+Pj4gMi4xNy4xCj4+PgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
