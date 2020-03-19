Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E658D18BF68
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 19:32:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yyx/4kd/jK/2rDa7hA/zYvEMUZH55QF3ENrMN6bTiHs=; b=k/3Tv4byeWhoFe/qhN0Ik8eAl
	lfLJNdTjZUcheYlU8lJYb6Tz9xJdFJN1hu9zrz9Fl+n7bclIoKvY9ZjAjcKGoNVQi53mkvMhYlilQ
	C4W9/pO6ouWagjR/+TSNH2HduJFKi+F4L4gICuS460NnZ3aZ7L4F5gTzyEI+yrZo4OQxUxzDE3jCe
	W3CusrNov0noh9glA2X1PBI6oUTsZ+KY4Lalls3Q0gf4PF3uP7ei5V3D5Yv67FXUI/raQZ6dSz5Lz
	l9pw35ZBCqazlhSLtp0gGAO2Z9BTTk5dujo/LFEQ6g0JW1crhmx2x9DCtYNnsDfHpgC9Sz+krl+Vx
	5JNN7+Fgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEzxY-0003kL-Gk; Thu, 19 Mar 2020 18:32:00 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEzxO-0003jq-Qc; Thu, 19 Mar 2020 18:31:53 +0000
Received: from fsav302.sakura.ne.jp (fsav302.sakura.ne.jp [153.120.85.133])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 02JIVgOl095188;
 Fri, 20 Mar 2020 03:31:42 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav302.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav302.sakura.ne.jp);
 Fri, 20 Mar 2020 03:31:42 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav302.sakura.ne.jp)
Received: from [192.168.1.2] (121.252.232.153.ap.dti.ne.jp [153.232.252.121])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 02JIVfsO095185
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Fri, 20 Mar 2020 03:31:42 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: [PATCH] ARM: dts: rockchip: move uart2 pinctrl settings to each
 dts for rk3288
To: Robin Murphy <robin.murphy@arm.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>
References: <20200319151339.17909-1-katsuhiro@katsuster.net>
 <4307911.4IBKxFWOMT@diego>
 <8eed33d8-142c-28cf-7fa4-faf9bebb13cf@katsuster.net>
 <4d93b050-6185-0d39-c89a-ac7fb6fc7780@arm.com>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <3dab67ea-65e5-e1a5-75de-0a749ea11bce@katsuster.net>
Date: Fri, 20 Mar 2020 03:31:41 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <4d93b050-6185-0d39-c89a-ac7fb6fc7780@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_113151_367434_A89CCEEE 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gUm9iaW4sCgpUaGFuayB5b3UgZm9yIHJlcGx5LgoKT24gMjAyMC8wMy8yMCAxOjI5LCBS
b2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMjAyMC0wMy0xOSAzOjU4IHBtLCBLYXRzdWhpcm8gU3V6
dWtpIHdyb3RlOgo+PiBIZWxsbyBIZWlrbywKPj4KPj4gT24gMjAyMC8wMy8yMCAwOjI1LCBIZWlr
byBTdMO8Ym5lciB3cm90ZToKPj4+IEhpLAo+Pj4KPj4+IEFtIERvbm5lcnN0YWcsIDE5LiBNw6Ry
eiAyMDIwLCAxNjoxMzozOSBDRVQgc2NocmllYiBLYXRzdWhpcm8gU3V6dWtpOgo+Pj4+IFRoaXMg
cGF0Y2ggcmVtb3ZlcyBjb25mbGljdGVkIHBpbmN0cmwgc2V0dGluZ3MgdWFydDIgYW5kIHB3bSAy
LzMKPj4+PiBmcm9tIGNvbW1vbiByazMyODguZHRzaSBhbmQgbW92ZXMgZXhpc3QgdWFydDIgcGlu
Y3RybCBzZXR0aW5ncwo+Pj4+IGludG8gZWFjaCByazMyODgqLmR0cyBmaWxlcy4KPj4+Pgo+Pj4+
IMKgwqAgLSBwd20yX3BpbsKgIDogdXNlIEdQSU83X0M2Cj4+Pj4gwqDCoCAtIHB3bTNfcGluwqAg
OiB1c2UgR1BJTzdfQzcKPj4+PiDCoMKgIC0gdWFydDJfeGZlcjogdXNlIEdQSU83X0M2LCBHUElP
N19DNwo+Pj4KPj4+IEJvYXJkIGZpbGVzIG9ubHkgZXZlciBnZXQgdG8gZW5hYmxlIGVpdGhlciBw
d20yLzMgb3IgdWFydDIsCj4+PiBub3QgYm90aCBhdCBvbmNlIC0gc28gSSdtIG5vdCBzdXJlIHdo
ZXJlIHlvdSBzZWUgY29uZmxpY3RzLgo+Pj4KPj4KPj4gQXQgZmlyc3QsIEkgdGhpbmsgc28gdG9v
LiBCdXQgSSd2ZSBzYXcgdGhpcyBtZXNzYWdlIHdoZW4gYm9vdGluZy4KPj4KPj4gLS0tLS0tLS0t
LQo+PiBbwqDCoMKgIDIuNDM1NTA0XSByb2NrY2hpcC1waW5jdHJsIHBpbmN0cmw6IHBpbiBncGlv
Ny0yMiBhbHJlYWR5IHJlcXVlc3RlZCBieSBmZjY4MDAyMC5wd207IGNhbm5vdCBjbGFpbSBmb3Ig
ZmY2OTAwMDAuc2VyaWFsCj4+IFvCoMKgwqAgMi40NDc1MDZdIHJvY2tjaGlwLXBpbmN0cmwgcGlu
Y3RybDogcGluLTIzOCAoZmY2OTAwMDAuc2VyaWFsKSBzdGF0dXMgLTIyCj4+IFvCoMKgwqAgMi40
NTUxOThdIHJvY2tjaGlwLXBpbmN0cmwgcGluY3RybDogY291bGQgbm90IHJlcXVlc3QgcGluIDIz
OCAoZ3BpbzctMjIpIGZyb20gZ3JvdXAgdWFydDIteGZlcsKgIG9uIGRldmljZSByb2NrY2hpcC1w
aW5jdHJsCj4+IC0tLS0tLS0tLS0KPj4KPj4gQW5kIGl0IHNlZW1zIHRoYXQgdWFydDIodHR5UzIp
IGlzIG5vdCB3b3JraW5nIGNvcnJlY3RseS4KPj4KPj4gLS0tLS0tLS0tLQo+PiAjIGNhdCAvZGV2
L3R0eVMyCj4+IGNhdDogL2Rldi90dHlTMjogSW5wdXQvb3V0cHV0IGVycm9yCj4+IC0tLS0tLS0t
LS0KPj4KPj4gSSdtIHVzaW5nIG5ld2VzdCBsaW51eC1uZXh0LCBtYWtlIGRlZmNvbmZpZyBhbmQg
Q09ORklHX01PRFVMRVMgPSBuIHNldHRpbmcKPj4gd2l0aCBUaW5rZXJCb2FyZC4gQ2FuIEkgcmVz
b2x2ZSB0aGlzIGlzc3VlIGluIG90aGVyIHdheXM/Cj4gCj4gRG8geW91IHBlcmhhcHMgaGF2ZSBh
IERUIG92ZXJsYXkgb3IgYm9vdGxvYWRlciBzY3JpcHQgZW5hYmxpbmcgcHdtMj8gKHRyeSBgY2F0
IC9zeXMvZmlybXdhcmUvZGV2aWNldHJlZS9iYXNlL3B3bUBmZjY4MDAyMC9zdGF0dXNgIGZvciBh
IHNhbml0eSBjaGVjaykuIEZXSVcgSSBkb24ndCByZWNhbGwgZXZlciBzZWVpbmcgdGhpcyBvbiBt
eSBSSzMyODggYm94Lgo+IAo+IChvciBvZiBjb3Vyc2UgbWF5YmUgdGhlcmUncyBqdXN0IHNvbWUg
cGluY3RybCBidWcgaW4gLW5leHQgdGhhdCdzIGNsYWltaW5nIGNvbmZpZ3MgZm9yIGRpc2FibGVk
IGRldmljZXMpCgpBaCwgY2F0IC9zeXMvZmlybXdhcmUvZGV2aWNldHJlZS9iYXNlL3B3bUBmZjY4
MDAyMC9zdGF0dXMgaXMgJ29rYXknLgpTbyBib290bG9hZGVyIG9yIHNvbWVvbmUgZW5hYmxlcyBw
d20yIG9uIGJvb3RpbmcuCgpJJ2xsIGNoZWNrIHNldHRpbmdzIG9mIGJvb3Rsb2FkZXIgb2YgbXkg
Ym9hcmQuIFRoYW5rcyBhIGxvdCEKCkJlc3QgUmVnYXJkcywKS2F0c3VoaXJvIFN1enVraQoKPiAK
PiBSb2Jpbi4KPiAKPj4KPj4gQmVzdCBSZWdhcmRzLAo+PiBLYXRzdWhpcm8gU3V6dWtpCj4+Cj4+
Cj4+PiBBbmQgb2YgY291cnNlIHRoZXJlIGFyZSBhbHRlcm5hdGl2ZSBwaW5zIHRvIHVzZSwgaWYg
eW91IG5lZWQgdWFydDIKPj4+IHlvdSBuZWVkIGJvdGggcGlucyBpbiB1YXJ0LXBpbm11eCBhbmQg
aWYgeW91IG5lZWQgZWl0aGVyIGFzIHB3bSwgdGhlbgo+Pj4gdGhlIGJvYXJkIGJ5IGRlc2lnbiBq
dXN0IGNhbid0IHVzZSB0aGVtIGFzIHVhcnQyLgo+Pj4KPj4+IFNvIHBpbiBzZXR0aW5nIHNob3Vs
ZCBzdGF5IHdoZXJlIHRoZXkgYXJlLCBhcyB0aGVyZSByZWFsbHkgaXMgbm8gY29uZmxpY3QuCj4+
Pgo+Pj4KPj4+IEhlaWtvCj4+Pgo+Pj4KPj4+Cj4+Pj4gQ3VycmVudGx5IHVhcnQyIHJrMzI4OCB1
c2VyIGlzIHRoZSBmb2xsb3dpbmc6Cj4+Pj4KPj4+PiDCoMKgIC0gcmszMjg4LWV2Yi5kdHNpOiZ1
YXJ0MiB7Cj4+Pj4gwqDCoCAtIHJrMzI4OC1maXJlZmx5LXJlbG9hZC5kdHM6JnVhcnQyIHsKPj4+
PiDCoMKgIC0gcmszMjg4LWZpcmVmbHkuZHRzaTomdWFydDIgewo+Pj4+IMKgwqAgLSByazMyODgt
bWlxaS5kdHM6JnVhcnQyIHsKPj4+PiDCoMKgIC0gcmszMjg4LXBoeWNvcmUtcmRrLmR0czomdWFy
dDIgewo+Pj4+IMKgwqAgLSByazMyODgtcG9wbWV0YWwuZHRzOiZ1YXJ0MiB7Cj4+Pj4gwqDCoCAt
IHJrMzI4OC1yODkuZHRzOiZ1YXJ0MiB7Cj4+Pj4gwqDCoCAtIHJrMzI4OC1yb2NrMi1zcXVhcmUu
ZHRzOiZ1YXJ0MiB7Cj4+Pj4gwqDCoCAtIHJrMzI4OC10aW5rZXIuZHRzaTomdWFydDIgewo+Pj4+
IMKgwqAgLSByazMyODgtdmV5cm9uLmR0c2k6JnVhcnQyIHsKPj4+PiDCoMKgIC0gcmszMjg4LXZ5
YXNhLmR0czomdWFydDIgewo+Pj4+Cj4+Pj4gQW5kIG5vIG9uZSBpcyB1c2luZyBwd20yIG5vciBw
d20zLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogS2F0c3VoaXJvIFN1enVraSA8a2F0c3VoaXJv
QGthdHN1c3Rlci5uZXQ+Cj4+Pj4gLS0tCj4+Pj4gwqAgYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4
LWV2Yi5kdHNpwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyICsrCj4+Pj4gwqAgYXJjaC9hcm0vYm9v
dC9kdHMvcmszMjg4LWZpcmVmbHktcmVsb2FkLmR0cyB8IDIgKysKPj4+PiDCoCBhcmNoL2FybS9i
b290L2R0cy9yazMyODgtZmlyZWZseS5kdHNpwqDCoMKgwqDCoMKgIHwgMiArKwo+Pj4+IMKgIGFy
Y2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC1taXFpLmR0c8KgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMiAr
Kwo+Pj4+IMKgIGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC1waHljb3JlLXJkay5kdHPCoMKgwqAg
fCAyICsrCj4+Pj4gwqAgYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXBvcG1ldGFsLmR0c8KgwqDC
oMKgwqDCoCB8IDIgKysKPj4+PiDCoCBhcmNoL2FybS9ib290L2R0cy9yazMyODgtcjg5LmR0c8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyICsrCj4+Pj4gwqAgYXJjaC9hcm0vYm9vdC9kdHMvcmsz
Mjg4LXJvY2syLXNxdWFyZS5kdHPCoMKgIHwgMiArKwo+Pj4+IMKgIGFyY2gvYXJtL2Jvb3QvZHRz
L3JrMzI4OC10aW5rZXIuZHRzacKgwqDCoMKgwqDCoMKgIHwgMiArKwo+Pj4+IMKgIGFyY2gvYXJt
L2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24uZHRzacKgwqDCoMKgwqDCoMKgIHwgMiArKwo+Pj4+IMKg
IGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12eWFzYS5kdHPCoMKgwqDCoMKgwqDCoMKgwqAgfCAy
ICsrCj4+Pj4gwqAgYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LmR0c2nCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHwgNiAtLS0tLS0KPj4+PiDCoCAxMiBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNl
cnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L2Jvb3QvZHRzL3JrMzI4OC1ldmIuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC1ldmIu
ZHRzaQo+Pj4+IGluZGV4IDAxODgwMmRmNGMwZS4uNzQwOTFmODMxZWNmIDEwMDY0NAo+Pj4+IC0t
LSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC1ldmIuZHRzaQo+Pj4+ICsrKyBiL2FyY2gvYXJt
L2Jvb3QvZHRzL3JrMzI4OC1ldmIuZHRzaQo+Pj4+IEBAIC0yODUsNiArMjg1LDggQEAgJnVhcnQx
IHsKPj4+PiDCoCB9Owo+Pj4+IMKgICZ1YXJ0MiB7Cj4+Pj4gK8KgwqDCoCBwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwo+Pj4+ICvCoMKgwqAgcGluY3RybC0wID0gPCZ1YXJ0Ml94ZmVyPjsKPj4+
PiDCoMKgwqDCoMKgIHN0YXR1cyA9ICJva2F5IjsKPj4+PiDCoCB9Owo+Pj4+IGRpZmYgLS1naXQg
YS9hcmNoL2FybS9ib290L2R0cy9yazMyODgtZmlyZWZseS1yZWxvYWQuZHRzIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvcmszMjg4LWZpcmVmbHktcmVsb2FkLmR0cwo+Pj4+IGluZGV4IDhjMzhiZGEyMWE3
Yy4uYjBjOTc2YzhlMzViIDEwMDY0NAo+Pj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4
OC1maXJlZmx5LXJlbG9hZC5kdHMKPj4+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9yazMyODgt
ZmlyZWZseS1yZWxvYWQuZHRzCj4+Pj4gQEAgLTI4Myw2ICsyODMsOCBAQCAmdWFydDEgewo+Pj4+
IMKgIH07Cj4+Pj4gwqAgJnVhcnQyIHsKPj4+PiArwqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Cj4+Pj4gK8KgwqDCoCBwaW5jdHJsLTAgPSA8JnVhcnQyX3hmZXI+Owo+Pj4+IMKgwqDC
oMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+Pj4+IMKgIH07Cj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtL2Jvb3QvZHRzL3JrMzI4OC1maXJlZmx5LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9yazMy
ODgtZmlyZWZseS5kdHNpCj4+Pj4gaW5kZXggNWUwYTE5MDA0ZTQ2Li4xNjMyY2MwODNjMTIgMTAw
NjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LWZpcmVmbHkuZHRzaQo+Pj4+
ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC1maXJlZmx5LmR0c2kKPj4+PiBAQCAtNTMy
LDYgKzUzMiw4IEBAICZ1YXJ0MSB7Cj4+Pj4gwqAgfTsKPj4+PiDCoCAmdWFydDIgewo+Pj4+ICvC
oMKgwqAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+PiArwqDCoMKgIHBpbmN0cmwtMCA9
IDwmdWFydDJfeGZlcj47Cj4+Pj4gwqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+Pj4gwqAg
fTsKPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LW1pcWkuZHRzIGIv
YXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LW1pcWkuZHRzCj4+Pj4gaW5kZXggYzQxZDAxMmM4ODUw
Li4yYzBlZDM3ZmRlODAgMTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4
LW1pcWkuZHRzCj4+Pj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LW1pcWkuZHRzCj4+
Pj4gQEAgLTM3OSw2ICszNzksOCBAQCAmdHNhZGMgewo+Pj4+IMKgIH07Cj4+Pj4gwqAgJnVhcnQy
IHsKPj4+PiArwqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+Pj4gK8KgwqDCoCBw
aW5jdHJsLTAgPSA8JnVhcnQyX3hmZXI+Owo+Pj4+IMKgwqDCoMKgwqAgc3RhdHVzID0gIm9rYXki
Owo+Pj4+IMKgIH07Cj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC1w
aHljb3JlLXJkay5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9yazMyODgtcGh5Y29yZS1yZGsuZHRz
Cj4+Pj4gaW5kZXggMWUzMzg1OWRlNDg0Li42NTMyYzFhYzQzY2QgMTAwNjQ0Cj4+Pj4gLS0tIGEv
YXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXBoeWNvcmUtcmRrLmR0cwo+Pj4+ICsrKyBiL2FyY2gv
YXJtL2Jvb3QvZHRzL3JrMzI4OC1waHljb3JlLXJkay5kdHMKPj4+PiBAQCAtMjQ0LDYgKzI0NCw4
IEBAICZ1YXJ0MCB7Cj4+Pj4gwqAgfTsKPj4+PiDCoCAmdWFydDIgewo+Pj4+ICvCoMKgwqAgcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+PiArwqDCoMKgIHBpbmN0cmwtMCA9IDwmdWFydDJf
eGZlcj47Cj4+Pj4gwqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+Pj4gwqAgfTsKPj4+PiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXBvcG1ldGFsLmR0cyBiL2FyY2gv
YXJtL2Jvb3QvZHRzL3JrMzI4OC1wb3BtZXRhbC5kdHMKPj4+PiBpbmRleCA2YTUxOTQwMzk4YjUu
LmYxODMwNmJkOWU2ZSAxMDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9yazMyODgt
cG9wbWV0YWwuZHRzCj4+Pj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXBvcG1ldGFs
LmR0cwo+Pj4+IEBAIC00ODEsNiArNDgxLDggQEAgJnVhcnQxIHsKPj4+PiDCoCB9Owo+Pj4+IMKg
ICZ1YXJ0MiB7Cj4+Pj4gK8KgwqDCoCBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+Pj4+ICvC
oMKgwqAgcGluY3RybC0wID0gPCZ1YXJ0Ml94ZmVyPjsKPj4+PiDCoMKgwqDCoMKgIHN0YXR1cyA9
ICJva2F5IjsKPj4+PiDCoCB9Owo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9y
azMyODgtcjg5LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC1yODkuZHRzCj4+Pj4gaW5k
ZXggYTI1OGM3YWU1MzI5Li4wMmQyZjVjZmUyMDEgMTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm0v
Ym9vdC9kdHMvcmszMjg4LXI4OS5kdHMKPj4+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9yazMy
ODgtcjg5LmR0cwo+Pj4+IEBAIC0zNDAsNiArMzQwLDggQEAgJnVhcnQxIHsKPj4+PiDCoCB9Owo+
Pj4+IMKgICZ1YXJ0MiB7Cj4+Pj4gK8KgwqDCoCBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+
Pj4+ICvCoMKgwqAgcGluY3RybC0wID0gPCZ1YXJ0Ml94ZmVyPjsKPj4+PiDCoMKgwqDCoMKgIHN0
YXR1cyA9ICJva2F5IjsKPj4+PiDCoCB9Owo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290
L2R0cy9yazMyODgtcm9jazItc3F1YXJlLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC1y
b2NrMi1zcXVhcmUuZHRzCj4+Pj4gaW5kZXggY2RjZGM5MjFlZTA5Li5hNDQyOTBlODgyYmUgMTAw
NjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXJvY2syLXNxdWFyZS5kdHMK
Pj4+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9yazMyODgtcm9jazItc3F1YXJlLmR0cwo+Pj4+
IEBAIC0yNjQsNiArMjY0LDggQEAgJnNwZGlmIHsKPj4+PiDCoCB9Owo+Pj4+IMKgICZ1YXJ0MiB7
Cj4+Pj4gK8KgwqDCoCBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+Pj4+ICvCoMKgwqAgcGlu
Y3RybC0wID0gPCZ1YXJ0Ml94ZmVyPjsKPj4+PiDCoMKgwqDCoMKgIHN0YXR1cyA9ICJva2F5IjsK
Pj4+PiDCoCB9Owo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdGlu
a2VyLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdGlua2VyLmR0c2kKPj4+PiBpbmRl
eCBhY2ZhYTEyZWMyMzkuLjAzMjcxMTlmNzFiNCAxMDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybS9i
b290L2R0cy9yazMyODgtdGlua2VyLmR0c2kKPj4+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9y
azMyODgtdGlua2VyLmR0c2kKPj4+PiBAQCAtNTAwLDYgKzUwMCw4IEBAICZ1YXJ0MSB7Cj4+Pj4g
wqAgfTsKPj4+PiDCoCAmdWFydDIgewo+Pj4+ICvCoMKgwqAgcGluY3RybC1uYW1lcyA9ICJkZWZh
dWx0IjsKPj4+PiArwqDCoMKgIHBpbmN0cmwtMCA9IDwmdWFydDJfeGZlcj47Cj4+Pj4gwqDCoMKg
wqDCoCBzdGF0dXMgPSAib2theSI7Cj4+Pj4gwqAgfTsKPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4
LXZleXJvbi5kdHNpCj4+Pj4gaW5kZXggNTRhNjgzOGQ3M2Y1Li5iYWE0NGQwMGU0OWEgMTAwNjQ0
Cj4+Pj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi5kdHNpCj4+Pj4gKysr
IGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi5kdHNpCj4+Pj4gQEAgLTQxMiw2ICs0
MTIsOCBAQCAmdWFydDEgewo+Pj4+IMKgIH07Cj4+Pj4gwqAgJnVhcnQyIHsKPj4+PiArwqDCoMKg
IHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+Pj4gK8KgwqDCoCBwaW5jdHJsLTAgPSA8JnVh
cnQyX3hmZXI+Owo+Pj4+IMKgwqDCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+Pj4+IMKgIH07Cj4+
Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12eWFzYS5kdHMgYi9hcmNo
L2FybS9ib290L2R0cy9yazMyODgtdnlhc2EuZHRzCj4+Pj4gaW5kZXggMzg1ZGQ1OTM5M2UxLi5h
YTUwY2RjN2Y4MzkgMTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZ5
YXNhLmR0cwo+Pj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12eWFzYS5kdHMKPj4+
PiBAQCAtMzk4LDYgKzM5OCw4IEBAICZ0c2FkYyB7Cj4+Pj4gwqAgfTsKPj4+PiDCoCAmdWFydDIg
ewo+Pj4+ICvCoMKgwqAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+PiArwqDCoMKgIHBp
bmN0cmwtMCA9IDwmdWFydDJfeGZlcj47Cj4+Pj4gwqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7
Cj4+Pj4gwqAgfTsKPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LmR0
c2kgYi9hcmNoL2FybS9ib290L2R0cy9yazMyODguZHRzaQo+Pj4+IGluZGV4IDBjZDg4Nzc0ZGI5
NS4uNGMxZjhjYWJiNWViIDEwMDY0NAo+Pj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4
OC5kdHNpCj4+Pj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LmR0c2kKPj4+PiBAQCAt
NDUwLDggKzQ1MCw2IEBAIHVhcnQyOiBzZXJpYWxAZmY2OTAwMDAgewo+Pj4+IMKgwqDCoMKgwqDC
oMKgwqDCoCByZWctaW8td2lkdGggPSA8ND47Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNsb2Nr
cyA9IDwmY3J1IFNDTEtfVUFSVDI+LCA8JmNydSBQQ0xLX1VBUlQyPjsKPj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgY2xvY2stbmFtZXMgPSAiYmF1ZGNsayIsICJhcGJfcGNsayI7Cj4+Pj4gLcKgwqDC
oMKgwqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+Pj4gLcKgwqDCoMKgwqDCoMKg
IHBpbmN0cmwtMCA9IDwmdWFydDJfeGZlcj47Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHN0YXR1
cyA9ICJkaXNhYmxlZCI7Cj4+Pj4gwqDCoMKgwqDCoCB9Owo+Pj4+IEBAIC03MDYsOCArNzA0LDYg
QEAgcHdtMjogcHdtQGZmNjgwMDIwIHsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJs
ZSA9ICJyb2NrY2hpcCxyazMyODgtcHdtIjsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0g
PDB4MCAweGZmNjgwMDIwIDB4MCAweDEwPjsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgI3B3bS1j
ZWxscyA9IDwzPjsKPj4+PiAtwqDCoMKgwqDCoMKgwqAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsKPj4+PiAtwqDCoMKgwqDCoMKgwqAgcGluY3RybC0wID0gPCZwd20yX3Bpbj47Cj4+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwmY3J1IFBDTEtfUktQV00+Owo+Pj4+IMKgwqDCoMKg
wqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJwd20iOwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBz
dGF0dXMgPSAiZGlzYWJsZWQiOwo+Pj4+IEBAIC03MTcsOCArNzEzLDYgQEAgcHdtMzogcHdtQGZm
NjgwMDMwIHsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxy
azMyODgtcHdtIjsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MCAweGZmNjgwMDMw
IDB4MCAweDEwPjsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgI3B3bS1jZWxscyA9IDwzPjsKPj4+
PiAtwqDCoMKgwqDCoMKgwqAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+PiAtwqDCoMKg
wqDCoMKgwqAgcGluY3RybC0wID0gPCZwd20zX3Bpbj47Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
IGNsb2NrcyA9IDwmY3J1IFBDTEtfUktQV00+Owo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9j
ay1uYW1lcyA9ICJwd20iOwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAiZGlzYWJs
ZWQiOwo+Pj4+Cj4+Pgo+Pj4KPj4+Cj4+Pgo+Pj4KPj4KPj4KPj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKPj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
