Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD218173798
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 13:50:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=udFL0rFuB682Z0T80TkTvy95G0g0GHq0E5EbZeXRsWs=; b=gmBqampCTTr0Kn
	UvcqDyhsxmWNTnCfee3up1qomjNwsZqkNiJIzx1aOiWghAe9E02Pz4dNUI2kECI+RFViySBQD+Fku
	VVqhEX98OERwYSDQ/uUZA3ep8uPTozVScTufcIoUhy4sfyAtfSZt09OhPEXHh47rRZU8oR+SYIz/o
	lak1mcBLkoXw73e+WNAFX6ukUpWjlxImasWUvAsm+jVSTdZLXoFxdsy/pwYmk1/DVn4X5IgW2wIvW
	elzHH4V8wLsXJ31APMqj9ucre7zo4lzgHMkr5BIpG052K6I2kamh1muhMhNbsMo/ACKqSnAYKN3U3
	n/OrUKYvSZdFXgIYDnUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7f65-00032N-7i; Fri, 28 Feb 2020 12:50:29 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7f5s-00030v-Kw; Fri, 28 Feb 2020 12:50:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id m3so3086483wmi.0;
 Fri, 28 Feb 2020 04:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7SOOFR5A8cRXpbsPD4NmdfCkYNnaGr0VzqHcY4iP4Ns=;
 b=hRPTW2ULNhZjOA7emZQEEesi0PP78D2LjuQEDDCKuOSmhH2h3dXr/i2KP0Eh5ZDEQY
 Sl8/xquqjPHT2muExLEDXse/D/C+AgxqOUQjBLddCYYebubu6P0yxK2KUCoxir6gVHlt
 a9chrqRrjWXfXXbAKNMM0JZleYqutB3bgwhdSx/4msoeVSXCjvdn8j7lgq8tlFcJBGNj
 zt8hAewJ71Rprux8EA3g0UshuptOIRaucJsW6wAX/ypcH8Q99Jb8vdhwZj/HLpCH6IbN
 j+BXJQeoMzI17eqjjAG64da++fJXdaXh3MWCVKsQM2khOkO/Oym4aoYRNDtwh3syYwAG
 WxLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7SOOFR5A8cRXpbsPD4NmdfCkYNnaGr0VzqHcY4iP4Ns=;
 b=Xuue1aDbFKoxYiu2JoD2iJ7Kyfki3p7x5T+0tAPQ5iXngmEdBuWp3b0XhgqR7RrXxe
 oBIhyOtq6M7AMfEotghGsoWvlJBXRkrPUlri2AwMvtPNRfcHppV8KbaPdRxHIQpMrHCV
 3K4BoLNDNHXcGT6ppBaV/sPVikae0/8+9u8++lb3aTeoHpKAQRzwSBsX5e75KpcZeXzo
 HE2zpHviSUl+rX1Qd0k4kb7hMKou9ai4pbPA+e+LWMuf80tE+BT5SGM08+MPhWywcis5
 uN2HcrWhRc4yFDByGaWryGbAtJ9JbQWKrogFD2NMYAxDK7Jz3Zc0KAcNK0E/T1rF9L+8
 eRdw==
X-Gm-Message-State: APjAAAWujDqNYBXFwzVrZvtpLkqN/uWm/yVZv2WZSzrtA66qOeyplJ2b
 ixqKhyEdQ0FkQrxZLg8NzJ5pq7Wd
X-Google-Smtp-Source: APXvYqyh7/fg3k/2U7H+2hUIEb3j1cDGCqO8ryTnH0ZUxrE0DmK4Gl1qwlanUJWAfh9jNCS7V8A/dA==
X-Received: by 2002:a05:600c:251:: with SMTP id
 17mr4687252wmj.59.1582894214215; 
 Fri, 28 Feb 2020 04:50:14 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c9sm12549852wrq.44.2020.02.28.04.50.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Feb 2020 04:50:13 -0800 (PST)
Subject: Re: [PATCH 1/4] dt-bindings: arm: fix Rockchip Kylin board bindings
To: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de
References: <20200228061436.13506-1-jbx6244@gmail.com>
 <73b41bd1-01e9-6af8-afc8-b1a96614d026@arm.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <5d47cf5f-9ac4-cff4-340b-a2518a508738@gmail.com>
Date: Fri, 28 Feb 2020 13:50:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <73b41bd1-01e9-6af8-afc8-b1a96614d026@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_045016_692969_0A0CEE8F 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMi8yOC8yMCAxOjM1IFBNLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMjgvMDIvMjAyMCA2
OjE0IGFtLCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4+IEEgdGVzdCB3aXRoIHRoZSBjb21tYW5kIGJl
bG93IGdpdmVzIHRoaXMgZXJyb3I6Cj4+Cj4+IGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzAzNi1reWxp
bi5kdC55YW1sOiAvOiBjb21wYXRpYmxlOgo+PiBbJ3JvY2tjaGlwLHJrMzAzNi1reWxpbicsICdy
b2NrY2hpcCxyazMwMzYnXQo+PiBpcyBub3QgdmFsaWQgdW5kZXIgYW55IG9mIHRoZSBnaXZlbiBz
Y2hlbWFzCj4+Cj4+IEZpeCB0aGlzIGVycm9yIGJ5IGNoYW5naW5nICdyb2NrY2hpcCxreWxpbi1y
azMwMzYnIHRvCj4+ICdyb2NrY2hpcCxyazMwMzYta3lsaW4nIGluIHJvY2tjaGlwLnlhbWwuCj4g
CgoKPiBBbHRob3VnaCBJIGNhbiBndWVzcywgaXQgbWlnaHQgYmUgd29ydGggYSBub3RlIHRvIGV4
cGxhaW4gd2h5IGl0J3MgdGhlCj4gYmluZGluZyByYXRoZXIgdGhhbiB0aGUgRFRTIHRoYXQgZ2V0
cyBjaGFuZ2VkIGhlcmUuCgpIaSBSb2JpbiwKCk15IGd1ZXNzIGlzIHRoYXQgZ2l2ZW4gYSBsb29r
IGF0IHRoZSBvdGhlciBib2FyZHMgdGhlIHByb2Nlc3NvciBuYW1lCmNvbWVzIGZpcnN0IGFuZCB0
aGVuIHRoZSBib2FyZCBuYW1lLCBzbyBJIGNoYW5nZWQgaXQgaW4gcm9ja2NoaXAueWFtbC4KQnV0
IG1heWJlIEhlaWtvIGNhbiBiZXR0ZXIgZXhwbGFpbiB3aGF0IHRoZSBuYW1pbmcgY29uc2Vuc3Vz
IGluIHRoZSBwYXN0Cndhcy4KCktpbmQgcmVnYXJkcywKCkpvaGFuCgo+IAo+IFJvYmluLgo+IAo+
PiBtYWtlIEFSQ0g9YXJtIGR0YnNfY2hlY2sKPj4gRFRfU0NIRU1BX0ZJTEVTPURvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21haWwuY29tPgo+PiAtLS0KPj4gwqAgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIHwgMiArLQo+PiDC
oCAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAu
eWFtbAo+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAu
eWFtbAo+PiBpbmRleCA4NzRiMGVhYTIuLjIwMzE1ODAzOCAxMDA2NDQKPj4gLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4+ICsrKyBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+PiBAQCAt
NDQzLDcgKzQ0Myw3IEBAIHByb3BlcnRpZXM6Cj4+IMKgIMKgwqDCoMKgwqDCoMKgIC0gZGVzY3Jp
cHRpb246IFJvY2tjaGlwIEt5bGluCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpdGVtczoKPj4gLcKg
wqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByb2NrY2hpcCxreWxpbi1yazMwMzYKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByb2NrY2hpcCxyazMwMzYta3lsaW4KPj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByb2NrY2hpcCxyazMwMzYKPj4gwqAgwqDCoMKgwqDCoMKg
wqAgLSBkZXNjcmlwdGlvbjogUm9ja2NoaXAgUFgzIEV2YWx1YXRpb24gYm9hcmQKPj4KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
