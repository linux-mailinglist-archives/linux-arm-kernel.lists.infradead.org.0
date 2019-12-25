Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5246112A7CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 13:05:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwoNufK/rHxe068nREtIksxa03imFPyN1IZlV8ZLi9c=; b=htPZlMhv9fj2wE
	jkzmWIUbxBFNrMDNVyzRfvAw4be7/79ND+pe+2Ghm0NjbJRBv1BWPBtDsNwjoVn0ofTjuTkGSsWTz
	LGHpAYlchBTbftB7WTfbAvWbneXYmfd9KJq+KRPxVlRm2KJ8vS1I3KWxL2HWR1FKxCuVPKM51LAlN
	Xf6646scqvlP00x36jQ2ELfqHSg9iRLrfuN42edR4HkK1qcj+05PVLU8oicXIyqwX3d159YNKrOQG
	E5L/h9VMKjzpwsi4uVkpbO0vVpT7tnMYLW0awhl1FAz9zz8stDtax6UUXp6lxZxPH7E5jASnfxz7T
	IQqmRZAO5SQgmk3RqDfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik5QE-000640-MU; Wed, 25 Dec 2019 12:05:50 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik5Q5-000637-F8
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 12:05:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1577275538;
 s=strato-dkim-0002; d=dawncrow.de;
 h=In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=DTT8QnXe0lhOsmN9ANSBHC1/T8Mi6PUOXnDRXRuVz5Y=;
 b=nktm1kjNlBTaW/RuHSVm6vhyAAyoaOuge/ZtR72DolJmcSEjmHhbos63mnalWwdEJU
 yTENoBT+eUX8JKVhMPJ3SUmwBvOeMX92m6S6TYkF2XskNue7/Cn2eabI7Yh/q3E7nCfU
 Khx8GRh8qvD0XMWGh1r36kEZ3ItpmeU89cdUD5/kGKL0/UaK+q8S41NJgAdhs8UjZ4Qi
 sKLhCbNPl8shK6FDDFIaCTNm8YafqZ0f2VjwijK/GAPmYtibs5a/O5IA2PM62YfgdC4a
 MLw9DaFjA8gixUCjaaaMaE4gSH3rcen+PMku+vs6SuxMEqzXF52SXN3ujS91dhM6chH7
 139g==
X-RZG-AUTH: ":ImkWY2CseuihIZy6ZWWciR6unPhpN+aXzZ6bi4rK0b8tGDimOzIxQbIOZSqtgWHzDs8="
X-RZG-CLASS-ID: mo00
Received: from [192.168.178.40] by smtp.strato.de (RZmta 46.1.3 DYNA|AUTH)
 with ESMTPSA id I099d1vBPC5I4Uz
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Wed, 25 Dec 2019 13:05:18 +0100 (CET)
Subject: Re: [PATCH] ARM: dts: Add omap3-echo
To: Tony Lindgren <tony@atomide.com>
References: <20191224161005.28083-1-nerv@dawncrow.de>
 <20191224184503.GK35479@atomide.com>
From: =?UTF-8?Q?Andr=c3=a9_Hentschel?= <nerv@dawncrow.de>
Autocrypt: addr=nerv@dawncrow.de; prefer-encrypt=mutual; keydata=
 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
 BZtrxq8dmex7tFXvQoJV4PIa20fGXq6S
Message-ID: <a8f64408-f581-e57d-0f5d-db42ff0a4288@dawncrow.de>
Date: Wed, 25 Dec 2019 13:05:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191224184503.GK35479@atomide.com>
Content-Language: de-LU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_040542_099711_C2186FF1 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:4 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux@arm.linux.org.uk,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bcousson@baylibre.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjQuMTIuMTkgdW0gMTk6NDUgc2NocmllYiBUb255IExpbmRncmVuOgo+ICogQW5kcsOpIEhl
bnRzY2hlbCA8bmVydkBkYXduY3Jvdy5kZT4gWzE5MTIyNCAxNjoxMV06Cj4+IFRoaXMgaXMgdGhl
IGZpcnN0IGdlbmVyYXRpb24gQW1hem9uIEVjaG8gZnJvbSAyMDE2Lgo+PiBBdWRpbyBzdXBwb3J0
IGlzIG5vdCB5ZXQgaW1wbGVtZW50ZWQuCj4gCj4gT0sgbG9va3MgZ29vZCB0byBtZSwganVzdCB3
b3JyaWVkIGFib3V0IG9uZSBwYXJ0Ogo+IAo+PiArJnNneF9tb2R1bGUgewo+PiArCXN0YXR1cyA9
ICJkaXNhYmxlZCI7Cj4+ICt9Owo+IAo+IFdlIHNob3VsZCBoYXZlIGEgc2VwYXJhdGUgYW0zNzAz
LmR0c2kgb3Igd2hhdGV2ZXIgdGhlIFNvQyBtb2RlbAo+IGRpc2FibGluZyBzZ3ggaWYgbm90IHRo
ZXJlIG9uIHRoZSBTb0MuIFRoYXQgd2F5IGJvYXJkIHNwZWNpZmljCj4gZHRzIGZpbGVzIGNhbiBq
dXN0IGluY2x1ZGUgaXQgd2l0aG91dCBoYXZpbmcgdG8gZGVidWcgdGhpcyBpc3N1ZQo+IG92ZXIg
YW5kIG92ZXIuCgpUaGFua3MgZm9yIHRoZSBxdWljayByZXZpZXcgaW4gdGhhdCB0aW1lIG9mIHRo
ZSB5ZWFyIQpUaGUgc2d4IGlzc3VlIGNhbWUgdXAgaW4gbmV3ZXIga2VybmVscyBhbmQgSSBoYWQg
dG8gYmlzZWN0IGl0IHRvIDNiNzJmYzg5NWEyZTU3ZjcwMjc2YjQ2ZjM4NmYzNWQ3NTJhZGY1NTUK
VGhlIGRldmljZSBqdXN0IHdhc24ndCBib290aW5nIHdpdGhvdXQgYSBtZXNzYWdlLCBzbyB5ZXMs
IHdlIHNob3VsZCBtYWtlIGl0IGVhc2llciBmb3Igb3RoZXJzIHRvIGZpZ3VyZSBpdCBvdXQuClNv
QyBpcyBETTM3MjUgYW5kIG9ubHkgRE0zNzMwIGhhcyBzZ3ggc3VwcG9ydC4gQW5kIGl0J3MgaGFy
ZCB0byBzYXkgaWYgdGhlIGJhc2UgaXMgYW0zN3h4IG9yIG9tYXAzNnh4LgpCdXQgSSBzZWUgdGhl
IHJlYXNvbnMgeW91IHBpY2tlZCBhbTM3MDMsIHNvIEkgd291bGQgbW92ZSBldmVyeXRoaW5nIGZy
b20gb21hcDM2eHguZHRzaSB0byBhbTM3MDMuZHRzaSBleGNlcHQgc2d4PwpBbmQgdGhlbiBpbmNs
dWRlIGFtMzcwMy5kdHNpIGluIG9tYXAzNnh4LmR0c2kgYmVmb3JlIHNneCBzdXBwb3J0PwpPciB3
b3VsZCBpdCBiZSBiZXR0ZXIgdG8gaGF2ZSBzZ3ggc3VwcG9ydCBpbiBhIHNlcGFyYXRlIGR0c2k/
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
