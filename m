Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BB9E6FD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 11:47:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GoByqDk/jqQ4XweTNNyjJg2Fh2gXgYIAPpa7iIBp/Io=; b=o2bgkCZrDExbdg
	GhHMeN0Ek0/r5i7PORuHaAo0B+Xg6S1SX5EZCwErNhsWcm7iwIoy0CPvJi8TwC07iT+38PKNzLK6u
	Bn550ERJt4AFEm8+Pp2cv4NJ8k2cmjOKNn99j3xKOsGm3dg5PhsJwf2hHCIx+AWFAHuy4oYkIw04X
	qDmd3vSfgLNFvOJ5jMnMqFp1cAxXdSDiyAel576HcDxveeqRUlBC8HATQ3YJ+pmuSkasbQL4aT06b
	yhoex+NrDdEv4w9BQ0Dm3K8wlswXiDGxWf552WGJztmSGNL5B3BIBHDFsJ35hi+l04CgrWmE+Sae7
	AjgR+Pqe3IUJpaMiipGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP2YB-0005XT-CH; Mon, 28 Oct 2019 10:47:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP2Y1-0005WT-6i; Mon, 28 Oct 2019 10:46:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2A7BBB1B0;
 Mon, 28 Oct 2019 10:46:49 +0000 (UTC)
Subject: Re: [PATCH v2 2/8] dt-bindings: rtc: realtek: Convert RTD119x to
 schema
To: Rob Herring <robh@kernel.org>
References: <20191020040817.16882-1-afaerber@suse.de>
 <20191020040817.16882-3-afaerber@suse.de> <20191025212015.GA29978@bogus>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <5491f3ed-93bf-1c4d-60f8-5d646c3bd2fb@suse.de>
Date: Mon, 28 Oct 2019 11:46:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191025212015.GA29978@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_034653_391567_E4B70D56 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjUuMTAuMTkgdW0gMjM6MjAgc2NocmllYiBSb2IgSGVycmluZzoKPiBPbiBTdW4sIE9jdCAy
MCwgMjAxOSBhdCAwNjowODoxMUFNICswMjAwLCBBbmRyZWFzIEbDpHJiZXIgd3JvdGU6Cj4+IENv
bnZlcnQgdGhlIFJURDExOXggYmluZGluZyB0byBhIFlBTUwgc2NoZW1hLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4+IC0tLQo+PiAgdjI6
IE5ldwo+PiAgCj4+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9ydGMvcmVhbHRlayxydGQxMTl4
LnR4dCAgICB8IDE2IC0tLS0tLS0tLQo+PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcnRjL3Jl
YWx0ZWsscnRkMTE5eC55YW1sICAgfCAzOCArKysrKysrKysrKysrKysrKysrKysrCj4+ICAyIGZp
bGVzIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQo+PiAgZGVsZXRl
IG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ydGMvcmVhbHRl
ayxydGQxMTl4LnR4dAo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9ydGMvcmVhbHRlayxydGQxMTl4LnlhbWwKPiAKPiAKPj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ydGMvcmVhbHRlayxydGQxMTl4
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcnRjL3JlYWx0ZWsscnRk
MTE5eC55YW1sCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4u
NzFiNzM5NmJkNDY5Cj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3J0Yy9yZWFsdGVrLHJ0ZDExOXgueWFtbAoKV2hpbGUgcmVuYW1pbmcg
dGhlIGZpbGUgdG8gLnlhbWwgSSB3b3VsZCBsaWtlIHRvIGFsc28gcmVuYW1lIGl0IHRvIDExOTUu
Ckl0IHdvdWxkIG5lZWQgdG8gYmUgMXg5eCB0byBjb3ZlciBSVEQxMTk1IGFuZCBlLmcuIFJURDEy
OTYsIGFuZCBsb29raW5nCmZvcndhcmQgdGhlIHdpbGRjYXJkIG1heSBuZWVkIHRvIGJlIDF4eHgg
dG8gY292ZXIgYWxzbyBSVEQxNjE5LCB3aGljaApxdWlja2x5IGJlY29tZXMgdW5yZWNvZ25pemFi
bGUuCgo+PiBAQCAtMCwwICsxLDM4IEBACj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wLW9yLWxhdGVyIE9SIEJTRC0yLUNsYXVzZQo+IAo+IE1pc3NpbmcgKCkKCkZpeGVkLgoK
PiAKPiBUaG91Z2ggSSdtIG5vdCBzdXJlIGl0IG1hdHRlcnMgb3RoZXIgdGhhbiBjb25zaXN0ZW5j
eS4KPiAKPj4gKyVZQU1MIDEuMgo+PiArLS0tCj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9zY2hlbWFzL3J0Yy9yZWFsdGVrLHJ0ZDExOXgueWFtbCMKPj4gKyRzY2hlbWE6IGh0dHA6Ly9k
ZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+PiArCj4+ICt0aXRsZTogUmVh
bHRlayBSVEQxMjl4IFJlYWwtVGltZSBDbG9jawo+PiArCj4+ICthbGxPZjoKPj4gKyAgLSAkcmVm
OiAicnRjLnlhbWwjIgo+PiArCj4+ICttYWludGFpbmVyczoKPj4gKyAgLSBBbmRyZWFzIEbDpHJi
ZXIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4+ICsKPj4gK3Byb3BlcnRpZXM6Cj4+ICsgIGNvbXBhdGli
bGU6Cj4+ICsgICAgY29uc3Q6IHJlYWx0ZWsscnRkMTI5NS1ydGMKPj4gKwo+PiArICByZWc6Cj4+
ICsgICAgbWF4SXRlbXM6IDEKPj4gKwo+PiArICBjbG9ja3M6Cj4+ICsgICAgbWF4SXRlbXM6IDEK
Pj4gKyAgICBkZXNjcmlwdGlvbjogU3BlY2lmaWVzIHRoZSBjbG9jayBnYXRlCj4+ICsKPj4gK3Jl
cXVpcmVkOgo+PiArICAtIGNvbXBhdGlibGUKPj4gKyAgLSByZWcKPj4gKyAgLSBjbG9ja3MKPj4g
Kwo+PiArZXhhbXBsZXM6Cj4+ICsgIC0gfAo+PiArCXJ0Y0A5ODAxYjYwMCB7Cj4+ICsJCWNvbXBh
dGlibGUgPSAicmVhbHRlayxydGQxMjk1LWNsayI7CgpUaGlzIHJldmVhbHMgYSBidWcgaW4gdGhl
IG9yaWdpbmFsIGJpbmRpbmcgZXhhbXBsZS4gRml4ZWQgdG8gLXJ0Yy4KCj4+ICsJCXJlZyA9IDww
eDk4MDFiNjAwIDB4MTAwPjsKPj4gKwkJY2xvY2tzID0gPCZjbGtjIFJURDEyOTVfQ0xLX0VOX01J
U0NfUlRDPjsKPiAKPiBZb3UgbmVlZCB0aGUgaW5jbHVkZSBmaWxlIGhlcmUgb3IgdGhlIGV4YW1w
bGUgd29uJ3QgYnVpbGQgKHJ1biAnbWFrZSAKPiBkdF9iaW5kaW5nX2NoZWNrJykuCgpXZSBjYW4n
dC4gWW91IGFja2VkIHRoZSBjbGsgYmluZGluZyBidXQgdGhlIGRyaXZlciBuZXZlciBnb3QgYW55
IHJldmlldywKc28gaXQgZGlkbid0IGdldCBtZXJnZWQgYW5kIGNhbm5vdCBiZSBkZXBlbmRlZCBv
biBoZXJlLgoKSSd2ZSBjaGFuZ2VkIGl0IHRvIGFuIGFydGlmaWNpYWwgNDIgc28gdGhhdCBkdF9i
aW5kaW5nX2NoZWNrIHBhc3Nlcy4KSSd2ZSBhbHNvIG5lZWRlZCB0byBmaXggdGhlIGluZGVudGF0
aW9uIHRvIDQgc3BhY2VzLgoKUmVnYXJkcywKQW5kcmVhcwoKPiAKPj4gKwl9Owo+PiArLi4uCj4+
IC0tIAo+PiAyLjE2LjQKPj4KCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBH
bWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1l
bmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
