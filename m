Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 302B31A9859
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 11:20:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=edxq8mwkmRVEWEDfrzf+UmeV/ezRwB7hI7tBAwG8fpw=; b=QSVMiqwU19arXSc1hTdXqxrjd
	M4Y4TXLMqE3SkOUv125XlVb0oT90QXt4ZodmwKkqfaogUyiMaOchrxKpjaK21YMKWTIZY1xiV2GDz
	y1RPnFviR1N3L+iy42tprbBq92nEs6AlM5dMLtXujcY74ehVQ+qw3w1PVZoYtC0BkaKIyyZG4eIEi
	mWONuGfC5vOe4WjbMqunlNI5/Ucu+WuDfEogbzBTBn+/X8gCdjZ24hH9n3xfteSIxMlEuEGdJuU87
	xR8Vr7Ju+M6HAgAFbjbQvf3IdIWUer5iSchdiyZFh9r8peDVUaraq0bkObBuVv9/nmdLdXQJTGFk+
	N6aI9w1ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOeDA-0001g5-48; Wed, 15 Apr 2020 09:20:00 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeCu-0001Ws-Ho; Wed, 15 Apr 2020 09:19:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 19217ADCC;
 Wed, 15 Apr 2020 09:19:38 +0000 (UTC)
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: realtek: Document RTD1319 and
 Realtek PymParticle EVB
To: =?UTF-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?= <james.tai@realtek.com>
References: <20200204145207.28622-1-james.tai@realtek.com>
 <20200204145207.28622-2-james.tai@realtek.com>
 <bf55ccbe-cbdf-7ba7-d701-aa84c20204e3@suse.de>
 <a9685d4560a6445d81c4919b2a323f68@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <cb724434-bebf-2a23-fd90-8cd82078459d@suse.de>
Date: Wed, 15 Apr 2020 11:19:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <a9685d4560a6445d81c4919b2a323f68@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_021944_755352_515F3661 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAxNS4wNC4yMCB1bSAxMDo1OCBzY2hyaWViIEphbWVzIFRhaSBb5oi05b+X
5bOwXToKPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL3JlYWx0ZWsueWFtbAo+Pj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL3JlYWx0ZWsueWFtbAo+Pj4gaW5kZXggODQ1ZjljNzZkNmY3Li4zYjQ4YWU3MWZkZDggMTAw
NjQ0Cj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0
ZWsueWFtbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9y
ZWFsdGVrLnlhbWwKPj4+IEBAIC00Miw2ICs0MiwxMiBAQCBwcm9wZXJ0aWVzOgo+Pj4gICAgICAg
ICAgICAgICAgICAtIHN5bm9sb2d5LGRzNDE4ICMgU3lub2xvZ3kgRGlza1N0YXRpb24gRFM0MTgK
Pj4+ICAgICAgICAgICAgICAtIGNvbnN0OiByZWFsdGVrLHJ0ZDEyOTYKPj4+Cj4+PiArICAgICAg
IyBSVEQxMzE5IFNvQyBiYXNlZCBib2FyZHMKPj4+ICsgICAgICAtIGl0ZW1zOgo+Pj4gKyAgICAg
ICAgICAtIGVudW06Cj4+PiArICAgICAgICAgICAgICAtIHJlYWx0ZWsscHltcGFydGljbGUgIyBS
ZWFsdGVrIFB5bVBhcnRpY2xlIEVWQgo+Pgo+PiBUaGUgYm9hcmQgc2VlbXMgbGFiZWxsZWQgIlBZ
TV9QQVJUSUNMRVMiLgo+Pgo+PiBXaGlsZSBXaWtpcGVkaWEgaGFzIG5vdGhpbmcgb24gdGhhdCwg
SSBmb3VuZCB0aGlzIGV4cGxhbmF0aW9uOgo+PiBodHRwczovL21hcnZlbC5mYW5kb20uY29tL3dp
a2kvUHltX1BhcnRpY2xlcwo+Pgo+PiBTbywgYXJlIHlvdSBzdXJlIGl0J3MgUHltUGFydGljbGUg
YW5kIG5vdCAiUHltIFBhcnRpY2xlIiB3aXRoIHNwYWNlIG9yICJQeW0KPj4gUGFydGljbGVzIiB3
aXRoIHNwYWNlIGFuZCBwbHVyYWwgUz8gVGhlIFMgd291bGQgYWZmZWN0IGFsc28gdGhlIC5kdHMg
ZmlsZW5hbWUuCj4+Cj4gSSBzaG91bGQgY2hhbmdlIHRoZSBzdHJpbmcgdG8gIlB5bSBQYXJ0aWNs
ZXMiLgoKT2theSwgaW4gdGhhdCBjYXNlIEkgc3VnZ2VzdCBydGQxMzE5LXB5bXBhcnRpY2xlcy5k
dHMgZm9yIGNvbnNpc3RlbmN5LiAKVW5sZXNzIHlvdSB3YW50IHRvIGNoYW5nZSBydGQxMzk1LWxp
b25za2luLmR0cyB0byBydGQxMzk1LWxpb24tc2tpbi5kdHMuCgo+PiBGb3IgdGhlIGNvbXBhdGli
bGUgc3RyaW5nIHRoZSBxdWVzdGlvbiBpcyBweW1wYXJ0aWNsZSBvciBweW0tcGFydGljbGUuCj4+
Cj4gVGhlIGNvbXBhdGlibGUgc3RyaW5nIGlzICJweW0tcGFydGljbGVzIi4KCldvcmtzIGZvciBt
ZS4gKGFsd2F5cyBhc3N1bWluZyB3ZSBib3RoIGltcGx5IHRoZSAicmVhbHRlaywiIHByZWZpeCkK
CklmIHlvdSBzZW5kIGEgdjQsIHBsZWFzZSBkb3VibGUtY2hlY2sgdGhlIGNvbW1lbnRzIGluIHBh
dGNoIDIvMi4KCj4+IEJ5IGNvbXBhcmlzb24sIExJT04tU0tJTiB3YXMgbmFtZWQgbGlvbi1za2lu
IGluIHRoZSBjb21wYXRpYmxlIGFuZCBzcGVsbGVkCj4+IExpb24gU2tpbiBpbiB0ZXh0dWFsIGZv
cm0uIElmIHlvdSBiZWxpZXZlIHRoYXQgc2hvdWxkIGJlIGZpeGVkLCBub3cgd291bGQgYmUgdGhl
Cj4+IHRpbWUgdG8gcmV2aXNpdCB0aG9zZSBwYXRjaGVzIHRoYXQgZGlkbid0IG1ha2UgdjUuNy4K
Pj4KPiBJJ2xsIGNoZWNrIHRob3NlIHJlbGV2YW50IHBhdGNoZXMuCgpUaGFua3MsCkFuZHJlYXMK
Ci0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwg
OTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5
IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
