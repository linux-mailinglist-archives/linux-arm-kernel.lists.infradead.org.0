Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2ACDD1EEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 05:32:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dsV+n0TzsZxnXdx52VWPOP3BmmcQa1EvLwua3Hs6UnE=; b=rZQK+lfAlqlR6R
	NW0/8ONH4Ef0xrVQWnXm2IhTM9yB1+RXQas0k358ylJuYDHNec3b79sZQvBE6ASPvMS5RfIvTQz/B
	LRKBH+Lg5yCDhte7cZboRDZhVTHeOUS+KghKDV7VHt3sy2dwbf0T2k1hEm1I5dfWrGiUC3ZDdRDOI
	T1rxyWnKrNIw5eNCq0X2ypOurM/SkH7lXEvC4/zHYxJnprl9p/URIWrE9N+uLPNPsZM0wMVy2cy07
	AsugI7Rbbw/DLxcmwqpy6Sy5NTqsirSFQnIRHwRt1hz2v1AAt9b/c+B+DDwA17VGE/8TGhRBvyILI
	Ea5uqWlsvlUl4ObFyWgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIPBE-0003XY-P2; Thu, 10 Oct 2019 03:31:56 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIPB6-0003Wy-HY; Thu, 10 Oct 2019 03:31:50 +0000
Received: from [10.18.29.227] (10.18.29.227) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Thu, 10 Oct
 2019 11:31:39 +0800
Subject: Re: [PATCH 1/3] dt-bindings: power: add Amlogic secure power domains
 bindings
To: Rob Herring <robh@kernel.org>
References: <1568895064-4116-1-git-send-email-jianxin.pan@amlogic.com>
 <1568895064-4116-2-git-send-email-jianxin.pan@amlogic.com>
 <5d93ce88.1c69fb81.aec64.6b1b@mx.google.com>
From: Jianxin Pan <jianxin.pan@amlogic.com>
Message-ID: <3152a4ac-5059-502b-3bf3-71f7e2d8118a@amlogic.com>
Date: Thu, 10 Oct 2019 11:31:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5d93ce88.1c69fb81.aec64.6b1b@mx.google.com>
Content-Language: en-US
X-Originating-IP: [10.18.29.227]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_203148_584644_50C136AE 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Zhiqiang Liang <zhiqiang.liang@amlogic.com>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9i77yMCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3LgoKSSdtIHNvcnJ5IHRvIHJlcGx5IHNv
IGxhdGUsIGZvciBJJ3ZlIGJlZW4gb24gdmFjYXRpb24gaW4gdGhlIGxhc3Qgd2Vlay4KCk9uIDIw
MTkvMTAvMiA2OjA5LCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBUaHUsIFNlcCAxOSwgMjAxOSBh
dCAwODoxMTowMkFNIC0wNDAwLCBKaWFueGluIFBhbiB3cm90ZToKPj4gQWRkIHRoZSBiaW5kaW5n
cyBmb3IgdGhlIEFtbG9naWMgU2VjdXJlIHBvd2VyIGRvbWFpbnMsIGNvbnRyb2xsaW5nIHRoZQo+
PiBzZWN1cmUgcG93ZXIgZG9tYWlucy4KPj4KPj4gVGhlIGJpbmRpbmdzIHRhcmdldHMgdGhlIEFt
bG9naWMgQTEgYW5kIEMxIGNvbXBhdGlibGUgU29DcywgaW4gd2hpY2ggdGhlCj4+IHBvd2VyIGRv
bWFpbiByZWdpc3RlcnMgYXJlIGluIHNlY3VyZSB3b3JsZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
SmlhbnhpbiBQYW4gPGppYW54aW4ucGFuQGFtbG9naWMuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBa
aGlxaWFuZyBMaWFuZyA8emhpcWlhbmcubGlhbmdAYW1sb2dpYy5jb20+Cj4+IC0tLQo+PiAgLi4u
L2JpbmRpbmdzL3Bvd2VyL2FtbG9naWMsbWVzb24tc2VjLXB3cmMueWFtbCAgICAgfCAzMiArKysr
KysrKysrKysrKysrKysrKysrCj4+ICBpbmNsdWRlL2R0LWJpbmRpbmdzL3Bvd2VyL21lc29uLWEx
LXBvd2VyLmggICAgICAgICB8IDMyICsrKysrKysrKysrKysrKysrKysrKysKPj4gIDIgZmlsZXMg
Y2hhbmdlZCwgNjQgaW5zZXJ0aW9ucygrKQo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9hbWxvZ2ljLG1lc29uLXNlYy1wd3JjLnlh
bWwKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL3Bvd2VyL21lc29u
LWExLXBvd2VyLmgKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9wb3dlci9hbWxvZ2ljLG1lc29uLXNlYy1wd3JjLnlhbWwgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIvYW1sb2dpYyxtZXNvbi1zZWMtcHdyYy55YW1sCj4+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwLi4zMjdlMGQ5Cj4+IC0tLSAv
ZGV2L251bGwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2Vy
L2FtbG9naWMsbWVzb24tc2VjLXB3cmMueWFtbAo+PiBAQCAtMCwwICsxLDMyIEBACj4+ICsjIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+PiArIyBDb3B5cmlnaHQg
KGMpIDIwMTkgQW1sb2dpYywgSW5jCj4+ICsjIEF1dGhvcjogSmlhbnhpbiBQYW4gPGppYW54aW4u
cGFuQGFtbG9naWMuY29tPgo+PiArJVlBTUwgMS4yCj4+ICstLS0KPj4gKyRpZDogImh0dHA6Ly9k
ZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3Bvd2VyL2FtbG9naWMsbWVzb24tc2VjLXB3cmMueWFtbCMi
Cj4+ICskc2NoZW1hOiAiaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlh
bWwjIgo+PiArCj4+ICt0aXRsZTogQW1sb2dpYyBNZXNvbiBTZWN1cmUgUG93ZXIgRG9tYWlucwo+
PiArCj4+ICttYWludGFpbmVyczoKPj4gKyAgLSBKaWFueGluIFBhbiA8amlhbnhpbi5wYW5AYW1s
b2dpYy5jb20+Cj4+ICsKPj4gK2Rlc2NyaXB0aW9uOiB8Kwo+PiArICBBMS9DMSBzZXJpZXMgVGhl
IFNlY3VyZSBQb3dlciBEb21haW5zIG5vZGUgc2hvdWxkIGJlIHRoZSBjaGlsZCBvZiBhIHN5c2Nv
bgo+PiArICBub2RlIHdpdGggdGhlIHJlcXVpcmVkIHByb3BlcnR5Lgo+IAo+ICdhIHN5c2NvbiBu
b2RlJyBpcyBub3Qgc3BlY2lmaWMgZW5vdWdoLiBJdCBtdXN0IGJlIGEgc3BlY2lmaWMgbm9kZS4K
PiAKSSB3aWxsIGZpeCB0aGlzLgpJbiBBMS9DMSwgcG93ZXIgY29udHJvbCBpcyBpbiBzZWN1cmUg
ZG9tYWluLCBhbmQgc3lzY29uIHBhcmVudCBpcyBub3QgbmVlZGVkLgo+PiArCj4+ICtwcm9wZXJ0
aWVzOgo+PiArICBjb21wYXRpYmxlOgo+PiArICAgIGVudW06Cj4+ICsgICAgICAtIGFtbG9naWMs
bWVzb24tYTEtcHdyYwo+PiArCj4+ICtyZXF1aXJlZDoKPj4gKyAgLSBjb21wYXRpYmxlCj4+ICsK
Pj4gK2V4YW1wbGVzOgo+PiArICAtIHwKPj4gKyAgICBwd3JjOiBwb3dlci1jb250cm9sbGVyIHsK
Pj4gKyAgICAgICAgICBjb21wYXRpYmxlID0gImFtbG9naWMsbWVzb24tYTEtcHdyYyI7Cj4gCj4g
QnV0IHdoeSBkbyB5b3UgbmVlZCB0aGlzIG5vZGU/IEl0IGhhcyBubyByZXNvdXJjZXMuCj4gCj4g
I3Bvd2VyLWRvbWFpbi1jZWxscyBuZWVkZWQ/Ckkgd2lsbCBhZGQgI3Bvd2VyLWRvbWFpbi1jZWxs
cyBhbmQgc2VjdXJlLW1vbml0b3IgaGVyZS4KVGhhbmsgeW91IGZvciB0aGUgcmV2aWV3Lgo+IAo+
PiArICAgIH07Cj4+ICsKPj4gKwo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9w
b3dlci9tZXNvbi1hMS1wb3dlci5oIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9wb3dlci9tZXNvbi1h
MS1wb3dlci5oCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwLi42Y2Y1
MGJmCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9wb3dlci9t
ZXNvbi1hMS1wb3dlci5oCj4+IEBAIC0wLDAgKzEsMzIgQEAKPj4gKy8qIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiAoR1BMLTIuMCsgb3IgTUlUKSAqLwo+PiArLyoKPj4gKyAqIENvcHlyaWdodCAo
YykgMjAxOSBBbWxvZ2ljLCBJbmMuCj4+ICsgKiBBdXRob3I6IEppYW54aW4gUGFuIDxqaWFueGlu
LnBhbkBhbWxvZ2ljLmNvbT4KPj4gKyAqLwo+PiArCj4+ICsjaWZuZGVmIF9EVF9CSU5ESU5HU19N
RVNPTl9BMV9QT1dFUl9ICj4+ICsjZGVmaW5lIF9EVF9CSU5ESU5HU19NRVNPTl9BMV9QT1dFUl9I
Cj4+ICsKPj4gKyNkZWZpbmUgUFdSQ19EU1BBX0lECTgKPj4gKyNkZWZpbmUgUFdSQ19EU1BCX0lE
CTkKPj4gKyNkZWZpbmUgUFdSQ19VQVJUX0lECTEwCj4+ICsjZGVmaW5lIFBXUkNfRE1DX0lECTEx
Cj4+ICsjZGVmaW5lIFBXUkNfSTJDX0lECTEyCj4+ICsjZGVmaW5lIFBXUkNfUFNSQU1fSUQJMTMK
Pj4gKyNkZWZpbmUgUFdSQ19BQ09ERUNfSUQJMTQKPj4gKyNkZWZpbmUgUFdSQ19BVURJT19JRAkx
NQo+PiArI2RlZmluZSBQV1JDX09UUF9JRAkxNgo+PiArI2RlZmluZSBQV1JDX0RNQV9JRAkxNwo+
PiArI2RlZmluZSBQV1JDX1NEX0VNTUNfSUQJMTgKPj4gKyNkZWZpbmUgUFdSQ19SQU1BX0lECTE5
Cj4+ICsjZGVmaW5lIFBXUkNfUkFNQl9JRAkyMAo+PiArI2RlZmluZSBQV1JDX0lSX0lECTIxCj4+
ICsjZGVmaW5lIFBXUkNfU1BJQ0NfSUQJMjIKPj4gKyNkZWZpbmUgUFdSQ19TUElGQ19JRAkyMwo+
PiArI2RlZmluZSBQV1JDX1VTQl9JRAkyNAo+PiArI2RlZmluZSBQV1JDX05JQ19JRAkyNQo+PiAr
I2RlZmluZSBQV1JDX1BETUlOX0lECTI2Cj4+ICsjZGVmaW5lIFBXUkNfUlNBX0lECTI3Cj4+ICsj
ZGVmaW5lIFBXUkNfTUFYX0lECTI4Cj4+ICsKPj4gKyNlbmRpZgo+PiAtLSAKPj4gMi43LjQKPj4K
PiAKPiAuCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
