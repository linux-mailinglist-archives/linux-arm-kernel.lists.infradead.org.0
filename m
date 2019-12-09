Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4AF11727B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 18:09:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j3+L7vl71AfH1/ME9dkcS1u9hYdVDQykLa5Vfq2JagE=; b=qASAilX4pnY16jMT9cpnaEVe8J
	VJg1ySEYyFu/537t/48bzvFNPxNbItAUT86MEKMjvlBYpx1TSVbZ0o+4Ve6/aeFGMNshbprsDo5kb
	v7vmVYpF/WtqB2epvGsdguvvHJ0YBsy2c+5/By7mZ1T4SKhbkuj9CavFrBTSGDy6hACgcQni2BZMV
	XqBp7il1F/3h97RfcnjqYKljcWUQ8/6+9j/8hmleG+gkHVkiRhHtyymYiH4lOgKgBKjnGHMS7+B5h
	BbCtZkVCU4v6uXyhBdR2mpUobHf8KlFxSPY+QZItlD8PGPJ6eG3B/TWKul9bFQaAzylrgZgqHlRL+
	T+I9nMpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMX2-0003zw-Mk; Mon, 09 Dec 2019 17:09:12 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMWt-0003yK-EP
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 17:09:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id q9so75985wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 09:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ea4/PrZomre2i6zXGutNZcRSd2/RfVCGFIF5aKKigpg=;
 b=G89bKlHTuIczjERUM7QoxO9gQNhhCJDzRyB73CspgjnYN17lwJLCyIpIsTJ+6oCYCh
 kMWAkZtHWnoro7FaJEYnANtUpg61L+NyU1lcpEpjb56VzXYNOSvcx5/i4eBYSwMrprGC
 YEEWuCa19HV6p8zlpHXB6pkendQRqg1IM9Pxamz1mVs6esNBVyDM+CPBVXR8g/vVHcGM
 OkRN+RffI5J7kn0Cn40HcOGbVtb9YUR3hU4Hjf+2kZZ/DXTCKHLOudrTXVhShPC26g60
 ZJdnFc3xDF0g2xUs7ZuUdMgHK3TEn14Fybrrd9EFF54cUi2itgoNyB5BJQD9vOvUnp/T
 J1bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ea4/PrZomre2i6zXGutNZcRSd2/RfVCGFIF5aKKigpg=;
 b=opZy99nVbI52rUT8WSWKpNCHkRJ3M3wA9z0J2e7FcjK14MhWVANAKsglkEuaxFUqhV
 FlfO+IHlbB2EDATa0tS0JvhFRWdnCkf6CFRZEbYswhb6vG1uN6qst4K44CX4YOaa38ta
 yYtZR6jxRZ/pm+8U7sz8Yzj3RoquqRfNR/3KA6jmJeORa26g8AEo1M4nsfxCNYQljAsh
 f90t3z8PHp5gVwj2Hxs6fhOBkLn15JW55wqGVXJw1keZUpHX7AxyXWJrOv1E8GDrjKRv
 zhpcS8V7R3at3L7u6m0pzaeQ1U/Mivbvkhg1lqoxrsohwy7/qWzlLObBycM+/6jFsZQX
 s2EA==
X-Gm-Message-State: APjAAAVszr86NTfmYDimj5F7Xe8pZ92ALGgVKKrI++WI5sn9wKu8MqEF
 zrFzAPbL3YYQgna9ALELB07Fjw==
X-Google-Smtp-Source: APXvYqweu5sJJ/Vw8xl26KkVBRmHTsmcoLCvukjF1nH+mx7H5AW5d0klOdHvbnPnd8IRnvy/l2vH0g==
X-Received: by 2002:a7b:ce19:: with SMTP id m25mr94947wmc.6.1575911341704;
 Mon, 09 Dec 2019 09:09:01 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:3114:25b8:99b8:d7fe?
 ([2a01:e34:ed2f:f020:3114:25b8:99b8:d7fe])
 by smtp.googlemail.com with ESMTPSA id x6sm468505wmi.44.2019.12.09.09.09.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 09:09:01 -0800 (PST)
Subject: Re: [PATCH] thermal: rockchip: enable hwmon
To: schaecsn@gmx.net, rui.zhang@intel.com, edubezval@gmail.com,
 amit.kucheria@verdurent.com, heiko@sntech.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20191118052413.D729B6E85603@corona.crabdance.com>
 <20191202145256.78AA06E85603@corona.crabdance.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <e3b6e675-14de-d020-48f4-a8ed877646ab@linaro.org>
Date: Mon, 9 Dec 2019 18:08:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191202145256.78AA06E85603@corona.crabdance.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_090903_495796_B85CCAD7 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

CkhpIFN0ZWZhbiwKCgpPbiAwMi8xMi8yMDE5IDE1OjUyLCBTdGVmYW4gU2NoYWVja2VsZXIgd3Jv
dGU6Cj4gSGVsbG8gbGludXggcG93ZXIgbWFuYWdlbWVudCBtYWlsaW5nIGxpc3QgYW5kIG90aGVy
cywKPiAKPiBOZXcgbW9udGgsIG5ldyB0cnkuIENvdWxkIHNvbWVvbmUgcmV2aWV3IHRoaXMgcGF0
Y2gsIHBsZWFzZS4gSSB3b3VsZCByZWFsbD0KPiB5Cj4gbGlrZSB0byBzZWUgdGhlIFJvY2tjaGlw
IFJLMzM5OSB0ZW1wZXJhdHVyZSBzZW5zb3JzIGhvb2tlZCB1cCB0byB0aGUgaHdtb249Cj4gIEFQ
SS4KCkkgZG9uJ3Qga25vdyB3aGF0IGlzIGhhcHBlbmluZyBidXQgdGhlcmUgYXJlIHNvbWUgc3B1
cmlvdXMgJzNEJwpjaGFyYWN0ZXJzLiBQbGVhc2UgZml4IGl0LCBlbGFib3JhdGUgYSBiaXQgdGhl
IGNoYW5nZWxvZyBhbmQgcmVzZW5kLgpJJ2xsIHJldmlldyBpdC4KClRoYW5rcwoKCj4+IEVuYWJs
ZSBod21vbiBmb3IgdGhlIHNvYyBhbmQgZ3B1IHRlbXBlcmF0dXJlIHNlbnNvcnMuCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IFN0ZWZhbiBTY2hhZWNrZWxlciA8c2NoYWVjc25AZ214Lm5ldD4KPj4KPj4g
LS0tCj4+ICBkcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jIHwgMTIgKysrKysrKysr
KystCj4+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyBiL2Ry
aXZlcnMvdGhlcm1hbC9yb2NrY2g9Cj4gaXBfdGhlcm1hbC5jCj4+IGluZGV4IDM0M2MyZjVjNWEy
NS4uZTQ3YzYwMDEwMjU5IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBf
dGhlcm1hbC5jCj4+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPj4g
QEAgLTE5LDYgKzE5LDggQEAKPj4gICNpbmNsdWRlIDxsaW51eC9tZmQvc3lzY29uLmg+Cj4+ICAj
aW5jbHVkZSA8bGludXgvcGluY3RybC9jb25zdW1lci5oPgo+Pgo+PiArI2luY2x1ZGUgInRoZXJt
YWxfaHdtb24uaCIKPj4gKwo+PiAgLyoqCj4+ICAgKiBJZiB0aGUgdGVtcGVyYXR1cmUgb3ZlciBh
IHBlcmlvZCBvZiB0aW1lIEhpZ2gsCj4+ICAgKiB0aGUgcmVzdWx0aW5nIFRTSFVUIGdhdmUgQ1JV
IG1vZHVsZSxsZXQgaXQgcmVzZXQgdGhlIGVudGlyZSBjaGlwLAo+PiBAQCAtMTMyMSw4ICsxMzIz
LDE1IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdGhlcm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm09
Cj4gX2RldmljZSAqcGRldikKPj4KPj4gIAl0aGVybWFsLT5jaGlwLT5jb250cm9sKHRoZXJtYWwt
PnJlZ3MsIHRydWUpOwo+Pgo+PiAtCWZvciAoaSA9M0QgMDsgaSA8IHRoZXJtYWwtPmNoaXAtPmNo
bl9udW07IGkrKykKPj4gKwlmb3IgKGkgPTNEIDA7IGkgPCB0aGVybWFsLT5jaGlwLT5jaG5fbnVt
OyBpKyspIHsKPj4gIAkJcm9ja2NoaXBfdGhlcm1hbF90b2dnbGVfc2Vuc29yKCZ0aGVybWFsLT5z
ZW5zb3JzW2ldLCB0cnVlKTsKPj4gKwkJdGhlcm1hbC0+c2Vuc29yc1tpXS50emQtPnR6cC0+bm9f
aHdtb24gPTNEIGZhbHNlOwo+PiArCQllcnJvciA9M0QgdGhlcm1hbF9hZGRfaHdtb25fc3lzZnMo
dGhlcm1hbC0+c2Vuc29yc1tpXS50emQpOwo+PiArCQlpZiAoZXJyb3IpCj4+ICsJCQlkZXZfd2Fy
bigmcGRldi0+ZGV2LAo+PiArCQkJCSAiZmFpbGVkIHRvIHJlZ2lzdGVyIHNlbnNvciAlZCB3aXRo
IGh3bW9uOiAlZFxuIiwKPj4gKwkJCQkgaSwgZXJyb3IpOwo+PiArCX0KPj4KPj4gIAlwbGF0Zm9y
bV9zZXRfZHJ2ZGF0YShwZGV2LCB0aGVybWFsKTsKPj4KPj4gQEAgLTEzNDQsNiArMTM1Myw3IEBA
IHN0YXRpYyBpbnQgcm9ja2NoaXBfdGhlcm1hbF9yZW1vdmUoc3RydWN0IHBsYXRmb3JtPQo+IF9k
ZXZpY2UgKnBkZXYpCj4+ICAJZm9yIChpID0zRCAwOyBpIDwgdGhlcm1hbC0+Y2hpcC0+Y2huX251
bTsgaSsrKSB7Cj4+ICAJCXN0cnVjdCByb2NrY2hpcF90aGVybWFsX3NlbnNvciAqc2Vuc29yID0z
RCAmdGhlcm1hbC0+c2Vuc29yc1tpXTsKPj4KPj4gKwkJdGhlcm1hbF9yZW1vdmVfaHdtb25fc3lz
ZnMoc2Vuc29yLT50emQpOwo+PiAgCQlyb2NrY2hpcF90aGVybWFsX3RvZ2dsZV9zZW5zb3Ioc2Vu
c29yLCBmYWxzZSk7Cj4+ICAJfQo+Pgo+PiAtLQo+PiAyLjI0LjAKPj4KCgotLSAKIDxodHRwOi8v
d3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMv
TGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0
dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
