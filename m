Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77775112647
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:01:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5RW2ySjmb8QPbup2DPsHAQpkfCmu7wZrlBRzLJHRQc=; b=lPjMxMUZgMCKpu
	qty/T72SyiMEsNkLQWI0zne17rh9pICZtIfIoF/dJQw+2E8XaMdEtv1Gd247lsGcon2y96fEdaQgO
	8m+EpWDpsSjlNkkFwPiZumL2aIhKHSHadsjQP+PQ2clLhoKGXzGDYgAgkilTAGz7BwrwA9DZR7N5x
	sF5iYu4GNP+mDjfwxAOCZLiGtXv3DqbYjCupR30WIcDcKFSiaXByd3XSLsF1BMRkdiHnZhmuG66FY
	HKfv0GNlknTNpSJs8RsquMlVPS5uJYVUEo3NTbpqR+I6QeeozqEKpRw8VstN31tOY8bkqlYDpwpYF
	sNKbxjRTs5JAaap+EbGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQXS-0004zm-O9; Wed, 04 Dec 2019 09:01:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQXL-0004zE-US
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 09:01:33 +0000
Received: by mail-wm1-x342.google.com with SMTP id f4so4312640wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 01:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=forissier-org.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vDrWy796wKMZ2Mza1wCol9rw+XTqteo6Nw1Jc5BqkmA=;
 b=lo6kslYOBgX2o+UK2LGOBubGC3ERk6MmGflRPDbPI0CYPLdAIQmk7f3LOk/f1k8Ntn
 G3lnaHyeKgJp8cs8c1IVI4OnSUBov9f/GEOgDR4TKaAM3zt6hm/Ny9AOOhEshF280i2g
 5iGCATMl6U++1TJsHQtYnvsoKLAEA/vuynLyWH/0H3Nw2qg3ug3x9zLfTo8TIjl+gvqV
 U98mlU7QAiFpppPcKYauCTFT6MaxJSRzHs998YuDDZ1WI+Ha8+/4sjtL6A8BDIlHH1GS
 rPa8NBPPLiDtyxSV+ECy5phbH7zFXYI391r5Hn3cNb/2egDgx5CZobVYpnqclzHRrNJm
 SeCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vDrWy796wKMZ2Mza1wCol9rw+XTqteo6Nw1Jc5BqkmA=;
 b=fuKha9cJONLzgAgOWFNU8WMOXJT45traT5Bckh/7EqXsdjwZIzQMcjBULTmMRpos3F
 pPnmNcVyvwmzeV3nPozEbsApN3AcTma023XqH3HxWm7aZbAIfuP24H4JeZh27ETdgVlP
 peVI2aJWWhbcq56Z9nzIrf0qbLPcGhgAwrp6ChewQTuueafpIDCnxAzVg+yfdDnGPOXi
 xqsP+vYB3aTwtVbpWW4Fcz8ke/k31tWtVbT4AOPup+TGRaqx5iSjc/vi9N/atWipiROc
 FIIsNTIR5AAL91yI6PS+/UeTaqOz43VvBdEcEVYrB/+hSjzb49+M1mV1wr3qNN/y0IWo
 oXvA==
X-Gm-Message-State: APjAAAWOW2ryuT5rWwGRU8ORnW9KxwUFW9sZ1LtNgDcqv3ubZJEDqttS
 /rMf5P3oHSpe7et2hF5dZJPLng==
X-Google-Smtp-Source: APXvYqyFfhkjfoS3lTDnSXCll7V0hxr3PX9xAawvsz4+HokbUCe47jYv/uVfmnvo9LqIZoTiOGYB/g==
X-Received: by 2002:a1c:2383:: with SMTP id j125mr32691852wmj.87.1575450088081; 
 Wed, 04 Dec 2019 01:01:28 -0800 (PST)
Received: from [192.168.1.7] ([5.50.11.226])
 by smtp.gmail.com with ESMTPSA id v3sm7104636wru.32.2019.12.04.01.01.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Dec 2019 01:01:27 -0800 (PST)
Subject: Re: Kernel v5.2+ on HiKey960?
To: Marc Zyngier <maz@misterjones.org>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <5e71ae8ec1ecb64544d131686f5405bb@www.loen.fr>
From: Jerome Forissier <jerome@forissier.org>
Message-ID: <2ad4364a-1498-5a2d-d64b-8d07023cac33@forissier.org>
Date: Wed, 4 Dec 2019 10:01:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <5e71ae8ec1ecb64544d131686f5405bb@www.loen.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_010132_123637_41522A28 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDEyLzMvMTkgNjo0NyBQTSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IEhpIEpl
cm9tZSwKPiAKPiBBZGRpbmcgVmluY2Vuem8gKHdobyB3YXMgdGhlIGxhc3Qgb25lIHRvIG1lc3Mg
d2l0aCB0aGUgVkRTTykuCj4gCj4gT24gMjAxOS0xMi0wMyAxNTo0MywgSmVyb21lIEZvcmlzc2ll
ciB3cm90ZToKPj4gSGksCj4+Cj4+IEhhcyBhbnlvbmUgc3VjY2Vzc2Z1bGx5IHJ1biBrZXJuZWwg
djUuMiBvciBsYXRlciBvbiBhIEhpS2V5OTYwIGJvYXJkPwo+Pgo+PiBGb3Igc29tZSByZWFzb24s
IGFueXRoaW5nIHBhc3QgdjUuMSBkb2Vzbid0IHdvcmsgZm9yIG1lIGFuZCBJIGNvdWxkIG5vdAo+
PiBmaWd1cmUgb3V0IHdoeS4gVGhlIHN5bXB0b20gaXMgaXQgbmV2ZXIgZ2V0cyB0byB0aGUgbG9n
aW4gcHJvbXB0LiBUaGUKPj4gcm9vdCBGUyBpcyBhIEJ1aWxkcm9vdC1nZW5lcmF0ZWQgb25lLCBh
bmQgcHJpb3IgdG8gcmVhY2hpbmcgdGhlIGtlcm5lbAo+PiB0aGUgYm9hcmQgcnVucyBURi1BLCBP
UC1URUUsIFVFRkkgKGVkazIpIGFuZCBHcnViLgo+Pgo+PiBJIHRyaWVkIHJlcGxhY2luZyAvaW5p
dCB3aXRoIGEgc2hlbGwsIGluIHdoaWNoIGNhc2UgSSBjYW4gdHlwZSBhIGNvbW1hbmQKPj4gYnV0
IHdoYXRldmVyIGl0IGlzIChldmVuIGEgc2ltcGxlICJscyIpLCB0aGUgY29tbWFuZCBoYW5ncyBv
biBleGl0IGFuZCBJCj4+IG5ldmVyIGdldCBiYWNrIHRvIHRoZSBwcm9tcHQuCj4+Cj4+IFRoZW4g
SSBzdGFydGVkIGJpc2VjdGluZywgdGhhdCB3YXMgcXVpdGUgcGFpbmZ1bCBidXQgSSBmb3VuZCBz
ZXZlcmFsCj4+IHByb2JsZW1hdGljIGNvbW1pdHMuIEkgZW5kZWQgdXAgcmV2ZXJ0aW5nIHRoZSBm
b2xsb3dpbmcgKGluIHRoaXMgb3JkZXIpCj4+IHRvIGJlIGFibGUgdG8gYm9vdCB2NS40Ogo+Pgo+
PiAxLiAiYXJtNjQ6IHZkc286IFN1YnN0aXR1dGUgZ2V0dGltZW9mZGF5KCkgd2l0aCBDIGltcGxl
bWVudGF0aW9uIgo+PiAyLiAiYXJtNjQ6IHZkc286IEV4cGxpY2l0bHkgYWRkIGJ1aWxkLWlkIG9w
dGlvbiIKPj4gMy4gImFybTY0OiBhcmNoX3RpbWVyOiBFbnN1cmUgY291bnRlciByZWdpc3RlciBy
ZWFkcyBvY2N1ciB3aXRoIHNlcWxvY2sKPj4gwqDCoMKgIGhlbGQiCj4+IDQuICJhcm02NDogdmRz
bzogUmVtb3ZlIHN0YWxlIGZpbGVzIGZyb20gb2xkIGFzc2VtYmx5IGltcGxlbWVudGF0aW9uIgo+
Pgo+PiBTbyB0aGUgbWFpbiB0aGluZyBhcHBlYXJzIHRvIGJlIHRoZSBWRFNPIHN0dWZmLCBidXQg
aWYgSSBkbyBub3QgYWxzbwo+PiByZXZlcnQgdGhlIGFyY2hfdGltZXIgY29tbWl0IEkgZ2V0IGEg
a2VybmVsIHBhbmljOgo+Pgo+PiBbwqDCoMKgIDQuNjU3MTE4XSBSdW4gL2luaXQgYXMgaW5pdCBw
cm9jZXNzCj4+IFvCoMKgwqAgNC42NjIzODBdIEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBB
dHRlbXB0ZWQgdG8ga2lsbCBpbml0IQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGV4
aXRjb2RlPTB4MDAwMDAwMDQKPj4gW8KgwqDCoCA0LjY3MDAzNV0gQ1BVOiA3IFBJRDogMSBDb21t
OiBpbml0IE5vdCB0YWludGVkIDUuNC4wLTAwMDAzLQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGcyMjNiMTJjMDMzZmIgIzI1OAo+PiBbwqDCoMKgIDQuNjc3MzM4XSBIYXJkd2FyZSBu
YW1lOiBIaUtleTk2MCAoRFQpCj4+IFvCoMKgwqAgNC42ODEyNTNdIENhbGwgdHJhY2U6Cj4+IFvC
oMKgwqAgNC42ODM3MDBdwqAgZHVtcF9iYWNrdHJhY2UrMHgwLzB4MTQ4Cj4+IFvCoMKgwqAgNC42
ODczNTVdwqAgc2hvd19zdGFjaysweDI0LzB4MzAKPj4gW8KgwqDCoCA0LjY5MDY2NF3CoCBkdW1w
X3N0YWNrKzB4YmMvMHgxMDAKPj4gW8KgwqDCoCA0LjY5NDA1OF3CoCBwYW5pYysweDE2OC8weDM2
OAo+PiBbwqDCoMKgIDQuNjk3MTA1XcKgIGRvX2V4aXQrMHhhMTAvMHhhMjgKPj4gW8KgwqDCoCA0
LjcwMDMyM13CoCBkb19ncm91cF9leGl0KzB4NDgvMHhhOAo+PiBbwqDCoMKgIDQuNzAzODkyXcKg
IGdldF9zaWduYWwrMHhlYy8weDg0OAo+PiBbwqDCoMKgIDQuNzA3Mjg3XcKgIGRvX25vdGlmeV9y
ZXN1bWUrMHgyMWMvMHg0ODAKPj4gW8KgwqDCoCA0LjcxMTI5MF3CoCB3b3JrX3BlbmRpbmcrMHg4
LzB4MTAKPj4gW8KgwqDCoCA0LjcxNDY4OV0gU01QOiBzdG9wcGluZyBzZWNvbmRhcnkgQ1BVcwo+
PiBbwqDCoMKgIDQuNzE4NjA3XSBLZXJuZWwgT2Zmc2V0OiBkaXNhYmxlZAo+PiBbwqDCoMKgIDQu
NzIyMDg5XSBDUFUgZmVhdHVyZXM6IDB4MDAwMiwyMTA4MjAwNAo+PiBbwqDCoMKgIDQuNzI2MDkw
XSBNZW1vcnkgTGltaXQ6IG5vbmUKPj4gW8KgwqDCoCA0LjcyOTE0NV0gLS0tWyBlbmQgS2VybmVs
IHBhbmljIC0gbm90IHN5bmNpbmc6IEF0dGVtcHRlZCB0byBraWxsCj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgaW5pdCEgZXhpdGNvZGU9MHgwMDAwMDAwNCBdLS0tCj4+Cj4+IEFueSBp
ZGVhIHdoYXQgY291bGQgYmUgd3Jvbmcgd2l0aCBteSBzZXR1cD8KPiAKPiBQb3N0aW5nIHRoZSBy
ZWxldmFudCBzZWN0aW9ucyBvZiB5b3VyIGtlcm5lbCBtZXNzYWdlcyB3b3VsZCBiZSBhIGdvb2QK
PiBzdGFydC4KCk5vdCBzdXJlIHdoYXQncyByZWxldmFudCwgc28gaGVyZSBhcmUgdGhlIGZ1bGwg
Ym9vdCBsb2dzOiB2NS4xIFsxXSwKYm9vdHMgZmluZTsgdjUuNCBbMl0sIGhhbmdzIHdoZW4gbGF1
bmNoaW5nIC9pbml0IChhY3R1YWxseSBzZWVtcyB0byBiZQpzdHVjayBpbiBzb21lIGtpbmQgb2Yg
YWN0aXZlIGxvb3AganVkZ2luZyBieSB0aGUgIlRIRVJNQUwgQUxBUk0iCm1lc3NhZ2UpOyB2NS40
ICsgdGhlIGFib3ZlIGNvbW1pdHMgcmV2ZXJ0ZWQgWzNdLCBib290cyBmaW5lIGFnYWluCihwbGVh
c2UgaWdub3JlIHRoZSBtZXNzYWdlICJvcHRlZTogUFRBX0NNRF9HRVRfREVWSUNFUyBpbnZva2Ug
ZnVuY3Rpb24KZXJyOiBmZmZmMDAwNiIgYXMgd2VsbCBhcyB0aGUgZXJyb3JzIGFib3V0IC9kZXYv
dGVlKiwgdGhleSBhcmUgdW5yZWxhdGVkCmFuZCBhcmUgZml4ZWQgaW4gLW5leHQpLgoKWzFdIGh0
dHBzOi8vcGFzdGViaW4uY29tL3BqOHRiNFFyClsyXSBodHRwczovL3Bhc3RlYmluLmNvbS9zUVRN
UTh3dQpbM10gaHR0cHM6Ly9wYXN0ZWJpbi5jb20vNThZeWNTRjQKClRoYW5rcywKLS0gCkplcm9t
ZQoKPiAKPiBUaGUgcmV2ZXJzYWwgb2YgdGhlIHRpbWVyIHBhdGNoIHNlZW1zIGxpa2UgYSByZWQg
aGVycmluZywgYnV0IFZpbmNlbnpvCj4gc2hvdWxkIGJlIGFibGUgdG8gaGVscCB5b3UgdGhlcmUu
Cj4gCj4gVGhhbmtzLAo+IAo+IMKgwqDCoMKgwqDCoMKgIE0uCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
