Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E223E9BF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 13:59:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y3lDtQfaI1o6k0fEJszMrbinVqGIGLOkTV+n0P4q5qQ=; b=M+e/t0/h5ejLkMBQdrNY6oYq8
	W2lc65LUZpfw7hfO6qKnJqlj0JWbMMb2M4F0GDTMAYmUhCR73csjUCKI6NTZGOlGCIVdwn8pEMD9h
	GZmrasylmQnw9BOpJZEnrCBmHVois0Q6F6jDPpifXPXhqK3BJi+8fGWzC43z9K8w63o6QiiaC/aho
	K4kXKgC9g69Nn6jnREr+EAi+IAlEJZoLUibgjW0j2Ykg9uELtaytMyUzxnlgimAMtCRhFfNViUxY7
	blbQ9kn4VN4ATUoeS82h7yIQNTTC1nFuko6wZRvHNACqa5z+bGzQ8LeRF6+UaqHNgEo8HM2bEJ0c0
	JdDR8P/8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPnZh-0004hX-Rj; Wed, 30 Oct 2019 12:59:45 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPnZW-0004gr-Sa; Wed, 30 Oct 2019 12:59:36 +0000
Received: from [10.28.19.135] (10.28.19.135) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Wed, 30 Oct
 2019 20:59:28 +0800
Subject: Re: [PATCH v3 2/4] dt-bindings: watchdog: add new binding for meson
 secure watchdog
To: Rob Herring <robh@kernel.org>
References: <1571983984-11771-1-git-send-email-xingyu.chen@amlogic.com>
 <1571983984-11771-3-git-send-email-xingyu.chen@amlogic.com>
 <20191025203030.GA28391@bogus>
 <1914e315-3cb7-9251-f871-0024e0e4f68b@amlogic.com>
 <CAL_JsqLr-Cgu4yZFGTfO=qpFPLBZ1gb-1+DZ35eQX3dUsadm4g@mail.gmail.com>
From: Xingyu Chen <xingyu.chen@amlogic.com>
Message-ID: <2808a8c9-a835-2706-f300-0deb924d3686@amlogic.com>
Date: Wed, 30 Oct 2019 20:59:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLr-Cgu4yZFGTfO=qpFPLBZ1gb-1+DZ35eQX3dUsadm4g@mail.gmail.com>
Content-Language: en-GB
X-Originating-IP: [10.28.19.135]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_055934_928198_6616C64A 
X-CRM114-Status: GOOD (  13.76  )
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jian Hu <jian.hu@amlogic.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksUm9iCgpPbiAyMDE5LzEwLzMwIDQ6NTEsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIE1vbiwg
T2N0IDI4LCAyMDE5IGF0IDM6MzUgQU0gWGluZ3l1IENoZW4gPHhpbmd5dS5jaGVuQGFtbG9naWMu
Y29tPiB3cm90ZToKPj4KPj4gSGksIFJvYgo+Pgo+PiBPbiAyMDE5LzEwLzI2IDQ6MzAsIFJvYiBI
ZXJyaW5nIHdyb3RlOgo+Pj4gT24gRnJpLCBPY3QgMjUsIDIwMTkgYXQgMDI6MTM6MDJQTSArMDgw
MCwgWGluZ3l1IENoZW4gd3JvdGU6Cj4+Pj4gVGhlIGJpbmRpbmcgdGFyZ2V0cyB0aGUgTWVzb24t
QS9DIHNlcmllcyBjb21wYXRpYmxlIFNvQ3MsIGluIHdoaWNoIHRoZQo+Pj4+IHdhdGNoZG9nIHJl
Z2lzdGVycyBhcmUgaW4gc2VjdXJlIHdvcmxkLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogWGlu
Z3l1IENoZW4gPHhpbmd5dS5jaGVuQGFtbG9naWMuY29tPgo+Pj4+IC0tLQo+Pj4+ICAgIC4uLi9i
aW5kaW5ncy93YXRjaGRvZy9hbWxvZ2ljLG1lc29uLXNlYy13ZHQueWFtbCAgIHwgMzQgKysrKysr
KysrKysrKysrKysrKysrKwo+Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCsp
Cj4+Pj4gICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy93YXRjaGRvZy9hbWxvZ2ljLG1lc29uLXNlYy13ZHQueWFtbAo+Pj4+Cj4+Pj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRvZy9hbWxvZ2lj
LG1lc29uLXNlYy13ZHQueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93
YXRjaGRvZy9hbWxvZ2ljLG1lc29uLXNlYy13ZHQueWFtbAo+Pj4+IG5ldyBmaWxlIG1vZGUgMTAw
NjQ0Cj4+Pj4gaW5kZXggMDAwMDAwMDAuLjBiYmM4MDcKPj4+PiAtLS0gL2Rldi9udWxsCj4+Pj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL2FtbG9naWMs
bWVzb24tc2VjLXdkdC55YW1sCj4+Pj4gQEAgLTAsMCArMSwzNCBAQAo+Pj4+ICsjIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+Pj4+ICsjIENvcHlyaWdodCAoYykg
MjAxOSBBbWxvZ2ljLCBJbmMKPj4+PiArJVlBTUwgMS4yCj4+Pj4gKy0tLQo+Pj4+ICskaWQ6ICJo
dHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9wb3dlci9hbWxvZ2ljLG1lc29uLXNlYy13ZHQu
eWFtbCMiCj4+Pj4gKyRzY2hlbWE6ICJodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFz
L2NvcmUueWFtbCMiCj4+Pj4gKwo+Pj4+ICt0aXRsZTogQW1sb2dpYyBNZXNvbiBTZWN1cmUgV2F0
Y2hkb2cgVGltZXIKPj4+PiArCj4+Pj4gK21haW50YWluZXJzOgo+Pj4+ICsgIC0gWGluZ3l1IENo
ZW4gPHhpbmd5dS5jaGVuQGFtbG9naWMuY29tPgo+Pj4+ICsKPj4+PiArZGVzY3JpcHRpb246IHwr
Cj4+Pj4gKyAgU2VjdXJlIFdhdGNoZG9nIFRpbWVyIHVzZWQgaW4gTWVzb24tQS9DIHNlcmllcyBD
b21wYXRpYmxlIFNvQ3MKPj4+PiArCj4+Pj4gK3Byb3BlcnRpZXM6Cj4+Pj4gKyAgY29tcGF0aWJs
ZToKPj4+PiArICAgIGVudW06Cj4+Pj4gKyAgICAgIC0gYW1sb2dpYyxtZXNvbi1zZWMtd2R0Cj4+
Pgo+Pj4gSWYgdGhlcmUgYXJlIG5vIG90aGVyIHByb3BlcnRpZXMsIHRoZW4geW91IGRvbid0IG5l
ZWQgdGhpcy4gSnVzdCBoYXZlCj4+PiB0aGUgc2VjdXJlIGZpcm13YXJlIGRyaXZlciBpbnN0YW50
aWF0ZSB0aGUgd2F0Y2hkb2cuCj4+IEknYW0gdmVyeSBzb3JyeSBpIGRvbid0IHVuZGVyc3RhbmQg
aG93IHRvIGluaXRpYWxpemUgdGhlIHdhdGNoZG9nIGRyaXZlcgo+PiBpZiB0aGUgY29tcGF0aWJs
ZSBwcm9wZXJ0eSBpcyByZW1vdmVkLCBDb3VsZCB5b3UgZ2l2ZSBtZSBtb3JlCj4+IHN1Z2dlc3Rp
b25zIG9yIGV4YW1wbGVzIO+8nyBUaGFuayB5b3UgdmVyeSBtdWNoLgo+IAo+IHBsYXRmb3JtX2Rl
dmljZV9yZWdpc3Rlcl9zaW1wbGUoKSBmcm9tIHRoZSBzZWN1cmUgZmlybXdhcmUgZHJpdmVyLgpU
aGFua3MgZm9yIHlvdXIgaGVscC4gVGhlIGRldmljZSBub2RlIG9mIHdkdCBsb29rcyB1c2VsZXNz
IGlmIEkgdXNlIHRoaXMgCmZ1bmN0aW9uIHRvIHJlZ2lzdGVyIGRldmljZS4gaWYgc28sIGhvdyBz
aG91bGQgSSBnZXQgdGhlIHBvaW50ZXIgdG8gCnNlY3VyZS1tb25pdG9yIGluIHdkdCBkcml2ZXIg
PyBvciBzaG91bGQgSSB1c2UgZGlyZWN0bHkgYXJtX3NtY2NjIHRvIAphY2Nlc3MgdGhlIHNlY2Z3
ID8KPiAKPiBSb2IKPiAKPiAuCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
