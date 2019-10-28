Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE442E6E4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 09:35:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KjO5LOZX2XEFm+n6k8X94Ybg5D/ecWNTePlDSyTgHmQ=; b=KDcffOJNFEGaTh/IXrLeLuTq5
	uH7hA8GwNUGWhvl7Av/dctFtzrzRvMdAMFM3JVr5BZzx+5wRCaphtxAHxcOxlW2FZlYBTeUWczb5R
	Jxjx39iEyG0vj/6DR/VfVRjpIk937xv17BY4fReWSE1vUlQsKfEeb9CMZKIuX9ztlDndPVfeDAyLL
	TliZZAiZBZUlyHytKhlmHTEzhJQSdfRFmTt5wmq9t6o6e/t7lR2simDbp8xJg/v+S21eTEAeQPvvd
	ZwgfvvZb8IsAzuh127jQxz81vxC4U2GvINI3VxXKshbRYLPw7227a9QZto/HS5+7ezjLBBsGfPZN5
	yrOyZ82Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP0Uk-0003BO-UY; Mon, 28 Oct 2019 08:35:22 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP0UY-0002dD-02; Mon, 28 Oct 2019 08:35:11 +0000
Received: from [10.28.19.135] (10.28.19.135) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Mon, 28 Oct
 2019 16:35:18 +0800
Subject: Re: [PATCH v3 2/4] dt-bindings: watchdog: add new binding for meson
 secure watchdog
To: Rob Herring <robh@kernel.org>
References: <1571983984-11771-1-git-send-email-xingyu.chen@amlogic.com>
 <1571983984-11771-3-git-send-email-xingyu.chen@amlogic.com>
 <20191025203030.GA28391@bogus>
From: Xingyu Chen <xingyu.chen@amlogic.com>
Message-ID: <1914e315-3cb7-9251-f871-0024e0e4f68b@amlogic.com>
Date: Mon, 28 Oct 2019 16:35:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191025203030.GA28391@bogus>
Content-Language: en-GB
X-Originating-IP: [10.28.19.135]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_013510_041263_F57AC939 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, Jian Hu <jian.hu@amlogic.com>,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFJvYgoKT24gMjAxOS8xMC8yNiA0OjMwLCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBGcmks
IE9jdCAyNSwgMjAxOSBhdCAwMjoxMzowMlBNICswODAwLCBYaW5neXUgQ2hlbiB3cm90ZToKPj4g
VGhlIGJpbmRpbmcgdGFyZ2V0cyB0aGUgTWVzb24tQS9DIHNlcmllcyBjb21wYXRpYmxlIFNvQ3Ms
IGluIHdoaWNoIHRoZQo+PiB3YXRjaGRvZyByZWdpc3RlcnMgYXJlIGluIHNlY3VyZSB3b3JsZC4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogWGluZ3l1IENoZW4gPHhpbmd5dS5jaGVuQGFtbG9naWMuY29t
Pgo+PiAtLS0KPj4gICAuLi4vYmluZGluZ3Mvd2F0Y2hkb2cvYW1sb2dpYyxtZXNvbi1zZWMtd2R0
LnlhbWwgICB8IDM0ICsrKysrKysrKysrKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwg
MzQgaW5zZXJ0aW9ucygrKQo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvYW1sb2dpYyxtZXNvbi1zZWMtd2R0LnlhbWwKPj4K
Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRv
Zy9hbWxvZ2ljLG1lc29uLXNlYy13ZHQueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy93YXRjaGRvZy9hbWxvZ2ljLG1lc29uLXNlYy13ZHQueWFtbAo+PiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMC4uMGJiYzgwNwo+PiAtLS0gL2Rldi9udWxsCj4+
ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRvZy9hbWxvZ2lj
LG1lc29uLXNlYy13ZHQueWFtbAo+PiBAQCAtMCwwICsxLDM0IEBACj4+ICsjIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+PiArIyBDb3B5cmlnaHQgKGMpIDIwMTkg
QW1sb2dpYywgSW5jCj4+ICslWUFNTCAxLjIKPj4gKy0tLQo+PiArJGlkOiAiaHR0cDovL2Rldmlj
ZXRyZWUub3JnL3NjaGVtYXMvcG93ZXIvYW1sb2dpYyxtZXNvbi1zZWMtd2R0LnlhbWwjIgo+PiAr
JHNjaGVtYTogImh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIyIK
Pj4gKwo+PiArdGl0bGU6IEFtbG9naWMgTWVzb24gU2VjdXJlIFdhdGNoZG9nIFRpbWVyCj4+ICsK
Pj4gK21haW50YWluZXJzOgo+PiArICAtIFhpbmd5dSBDaGVuIDx4aW5neXUuY2hlbkBhbWxvZ2lj
LmNvbT4KPj4gKwo+PiArZGVzY3JpcHRpb246IHwrCj4+ICsgIFNlY3VyZSBXYXRjaGRvZyBUaW1l
ciB1c2VkIGluIE1lc29uLUEvQyBzZXJpZXMgQ29tcGF0aWJsZSBTb0NzCj4+ICsKPj4gK3Byb3Bl
cnRpZXM6Cj4+ICsgIGNvbXBhdGlibGU6Cj4+ICsgICAgZW51bToKPj4gKyAgICAgIC0gYW1sb2dp
YyxtZXNvbi1zZWMtd2R0Cj4gCj4gSWYgdGhlcmUgYXJlIG5vIG90aGVyIHByb3BlcnRpZXMsIHRo
ZW4geW91IGRvbid0IG5lZWQgdGhpcy4gSnVzdCBoYXZlCj4gdGhlIHNlY3VyZSBmaXJtd2FyZSBk
cml2ZXIgaW5zdGFudGlhdGUgdGhlIHdhdGNoZG9nLgpJJ2FtIHZlcnkgc29ycnkgaSBkb24ndCB1
bmRlcnN0YW5kIGhvdyB0byBpbml0aWFsaXplIHRoZSB3YXRjaGRvZyBkcml2ZXIgCmlmIHRoZSBj
b21wYXRpYmxlIHByb3BlcnR5IGlzIHJlbW92ZWQsIENvdWxkIHlvdSBnaXZlIG1lIG1vcmUgCnN1
Z2dlc3Rpb25zIG9yIGV4YW1wbGVzIO+8nyBUaGFuayB5b3UgdmVyeSBtdWNoLgoKPiAKPj4gKwo+
PiArICBzZWN1cmUtbW9uaXRvcjoKPj4gKyAgICBkZXNjcmlwdGlvbjogcGhhbmRsZSB0byB0aGUg
c2VjdXJlLW1vbml0b3Igbm9kZQo+PiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2Rl
ZmluaXRpb25zL3BoYW5kbGUKPj4gKwo+PiArcmVxdWlyZWQ6Cj4+ICsgIC0gY29tcGF0aWJsZQo+
PiArICAtIHNlY3VyZS1tb25pdG9yCj4+ICsKPj4gK2V4YW1wbGVzOgo+PiArICAtIHwKPj4gKyAg
ICB3YXRjaGRvZyB7Cj4+ICsgICAgICAgICAgY29tcGF0aWJsZSA9ICJhbWxvZ2ljLG1lc29uLXNl
Yy13ZHQiOwo+PiArICAgICAgICAgIHNlY3VyZS1tb25pdG9yID0gPCZzbT47Cj4+ICsgICAgfTsK
Pj4gLS0gCj4+IDIuNy40Cj4+Cj4gCj4gLgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
