Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 846F41DEC0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v8qxgZXYKdDTY5ChS/eFKH6wbiQ8LUxiThDY/E6tYGQ=; b=f6d88Z+kWg4VxglF14/qA+gMI
	eJnBngIJ5kzwiyLMQE8x+JI+9kjUWOQmvDkBUpdZVlxcWmzgSIDAcdIQh/Syk+mt0+Lh5HJs1k2/4
	O8rDeC4Otscmt+5nCA+XK0fT9xMjNervpfknvOKoBn1NvA8ta+iOY2b6CY7a80g8BZdgwqCY4J8i/
	ul3zpymJNVtZZV+YuaHGelByyId8qOzzwdYflQvGU49jvg4SZdTCmpcy1AvkY/V/751K7ift+VLbH
	H/FrEcTSaBbd4ylpP55WEy+YMx+6W5SblVe7sc+NBV+3lX4qB0xNnzjiZoSZpaGHtuk5O/SP8DLhR
	quBgtMQ1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9ip-0006FR-Fj; Fri, 22 May 2020 15:36:31 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9iN-00065l-JJ
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 15:36:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 7F0622A38F6
Subject: Re: [PATCHv2 0/7] Support inhibiting input devices
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Peter Hutterer <peter.hutterer@who-t.net>
References: <20200506002746.GB89269@dtor-ws>
 <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
 <20200517225510.GA205823@koala> <20200518024034.GL89269@dtor-ws>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <513f25c0-7125-c564-0090-052d626fe508@collabora.com>
Date: Fri, 22 May 2020 17:35:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200518024034.GL89269@dtor-ws>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_083603_908309_083AC86A 
X-CRM114-Status: GOOD (  21.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Nick Dyer <nick@shmanahar.org>, linux-iio@vger.kernel.org,
 Benjamin Tissoires <btissoir@redhat.com>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-acpi@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-input@vger.kernel.org,
 Len Brown <lenb@kernel.org>, Peter Hutterer <peter.hutterer@redhat.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Lars-Peter Clausen <lars@metafoo.de>, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, patches@opensource.cirrus.com,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGFucywgaGkgRG1pdHJ5LAoKVyBkbml1IDE4LjA1LjIwMjAgb8KgMDQ6NDAsIERtaXRyeSBU
b3Jva2hvdiBwaXN6ZToKPiBIaSBIYW5zLCBQZXRlciwKPiAKPiBPbiBNb24sIE1heSAxOCwgMjAy
MCBhdCAwODo1NToxMEFNICsxMDAwLCBQZXRlciBIdXR0ZXJlciB3cm90ZToKPj4gT24gRnJpLCBN
YXkgMTUsIDIwMjAgYXQgMDg6MTk6MTBQTSArMDIwMCwgSGFucyBkZSBHb2VkZSB3cm90ZToKPj4+
IEhpIEFuZHJlemosCj4+PgoKPHNuaXA+Cgo+Pgo+Pj4gSSBhbHNvIG5vdGljZWQgdGhhdCB5b3Ug
a2VlcCB0aGUgZGV2aWNlIG9wZW4gKGRvIG5vdCBjYWxsIHRoZQo+Pj4gaW5wdXRfZGV2aWNlJ3Mg
Y2xvc2UgY2FsbGJhY2spIHdoZW4gaW5oaWJpdGVkIGFuZCBqdXN0IHRocm93IGF3YXkKPj4+IGFu
eSBldmVudHMgZ2VuZXJhdGVkLiBUaGlzIHNlZW1zIGluZWZmaWNpZW50IGFuZCBtYXkgbGVhZCB0
bwo+Pj4gdGhlIGludGVybmFsIHN0YXRlIGdldHRpbmcgb3V0IG9mIHN5bmMuIFdoYXQgaWYgYSBr
ZXkgaXMgcHJlc3NlZAo+Pj4gd2hpbGUgaW5oaWJpdGVkIGFuZCB0aGVuIHRoZSBkZXZpY2UgaXMg
dW5pbmhpYml0ZWQgd2hpbGUgdGhlIGtleQo+Pj4gaXMgc3RpbGwgcHJlc3NlZD8gIE5vdyB0aGUg
cHJlc3MgZXZlbnQgaXMgbG9zdCBhbmQgdXNlcnNwYWNlCj4+PiBxdWVyeWluZyB0aGUgY3VycmVu
dCBzdGF0ZSB3aWxsIHNlZSB0aGUgcHJlc3NlZCBrZXkgYXMgYmVpbmcKPj4+IHJlbGVhc2VkLgo+
IAo+IFRoaXMgaXMgYSBnb29kIHBvaW50LiBXZSBzaG91bGQgbG9vayBpbnRvIHNpZ25hbGxpbmcg
dGhhdCBzb21lIGV2ZW50cwo+IGhhdmUgYmVlbiBkcm9wcGVkICh2aWEgRVZfU1lOL1NZTl9EUk9Q
UEVEKSBzbyB0aGF0IGNsaWVudHMgYXJlIGF3YXJlIG9mCj4gaXQuCj4gCgpJdCBzZWVtcyB0byBt
ZSB0aGF0IHRoZSBzaXR1YXRpb24gSGFucyBlbnZpc2lvbnMgaXMgbm90IHBvc3NpYmxlLApvciB3
aWxsIG5vdCBiZSBwb3NzaWJsZSB3aXRoIGEgc2ltcGxlIGNoYW5nZS4gTGV0IG1lIGV4cGxhaW4u
CgpGb3IgYSBzdGFydCwgbGV0J3MgcmVjYWxsIHRoYXQgdGhlIGlucHV0IGNvcmUgcHJldmVudHMg
Y29uc2VjdXRpdmUKZXZlbnRzIG9mIHRoZSBzYW1lIGtpbmQgKHR5cGUgX2FuZF8gY29kZSBfYW5k
XyB2YWx1ZSkgZnJvbSBiZWluZwpkZWxpdmVyZWQgdG8gaGFuZGxlcnMuIFRoZSBkZWNpc2lvbiBp
cyBtYWRlIGluIGlucHV0X2dldF9kaXNwb3NpdGlvbigpLgpGb3IgRVZfS0VZIGl0IGlzOgoKCQlp
ZiAoaXNfZXZlbnRfc3VwcG9ydGVkKGNvZGUsIGRldi0+a2V5Yml0LCBLRVlfTUFYKSkgewoKCQkJ
LyogYXV0by1yZXBlYXQgYnlwYXNzZXMgc3RhdGUgdXBkYXRlcyAqLwoJCQlpZiAodmFsdWUgPT0g
MikgewoJCQkJZGlzcG9zaXRpb24gPSBJTlBVVF9QQVNTX1RPX0hBTkRMRVJTOwoJCQkJYnJlYWs7
CgkJCX0KCgkJCWlmICghIXRlc3RfYml0KGNvZGUsIGRldi0+a2V5KSAhPSAhIXZhbHVlKSB7CgoJ
CQkJX19jaGFuZ2VfYml0KGNvZGUsIGRldi0+a2V5KTsKCQkJCWRpc3Bvc2l0aW9uID0gSU5QVVRf
UEFTU19UT19IQU5ETEVSUzsKCQkJfQoJCX0KCkxldCdzIG5vdyBmb2N1cyBvbiB2YWx1ZSAhPSAy
IChldmVudHMgb3RoZXIgdGhhbiBhdXRvLXJlcGVhdCkuClRoZSBkaXNwb3NpdGlvbiBjaGFuZ2Vz
IGZyb20gdGhlIGRlZmF1bHQgSU5QVVRfSUdOT1JFX0VWRU5UIHRvCklOUFVUX1BBU1NfVE9fSEFO
RExFUlMgb25seSB3aGVuIHRoZSBldmVudCBpbiBxdWVzdGlvbiBjaGFuZ2VzCnRoZSBjdXJyZW50
IHN0YXRlOiBlaXRoZXIgYnkgcmVsZWFzaW5nIGEgcHJlc3NlZCBrZXksIG9yIGJ5CnByZXNzaW5n
IGEgcmVsZWFzZWQga2V5LiBTdWJzZXF1ZW50IHJlbGVhc2VzIG9mIGEgcmVsZWFzZWQga2V5Cm9y
IHN1YnNlcXVlbnQgcHJlc3NlcyBvZiBhIHByZXNzZWQga2V5IHdpbGwgYmUgaWdub3JlZC4KCldo
YXQgSGFucyBwb2ludHMgb3V0IGlzIHRoZSBwb3NzaWJpbGl0eSBvZiB1bmluaGliaXRpbmcgYSBk
ZXZpY2UKd2hpbGUgaXRzIGtleSBpcyBwcmVzc2VkIGFuZCB0aGVuIHJlbGVhc2luZyB0aGUga2V5
LiBGaXJzdCBvZiBhbGwsCmR1cmluZyBpbmhpYml0aW5nIGlucHV0X2Rldl9yZWxlYXNlX2tleXMo
KSBpcyBjYWxsZWQsIHNvIGlucHV0X2RldidzCmludGVybmFsIHN0YXRlIHdpbGwgYmUgY2xlYXJl
ZCBvZiBhbGwgcHJlc3NlZCBrZXlzLiBUaGVuIHRoZSBkZXZpY2UKLSBhZnRlciBiZWluZyB1bmlu
aGliaXRlZCAtIGFsbCBvZiBhIHN1ZGRlbiBwcm9kdWNlcyBhIGtleSByZWxlYXNlCmV2ZW50LiBJ
dCB3aWxsIGJlIGlnbm9yZWQgYXMgcGVyIHRoZSAic3Vic2VxdWVudCByZWxlYXNlcyBvZiBhCnJl
bGVhc2VkIGtleSIgY2FzZSwgc28gdGhlIGhhbmRsZXJzIHdpbGwgbm90IGJlIHBhc3NlZCBhbiB1
bm1hdGNoZWQKa2V5IHJlbGVhc2UgZXZlbnQuIEFzc3VtaW5nIHRoYXQgcGFzc2luZyBhbiB1bm1h
dGNoZWQga2V5IHJlbGVhc2UKZXZlbnQgd2FzIEhhbnMncyBjb25jZXJuLCBpbiB0aGlzIGNhc2Ug
aXQgc2VlbXMgaW1wb3NzaWJsZS4KCk5vdywgdGhlIHZhbHVlIG9mIDIgKGF1dG8tcmVwZWF0KSBu
ZWVkcyBzb21lIGF0dGVudGlvbi4gVGhlcmUgYXJlIHR3bwpjYXNlcyB0byBjb25zaWRlcjogdGhl
IGRldmljZSB1c2VzIGlucHV0IGNvcmUncyBzb2Z0d2FyZSByZXBlYXQgb3IgaXQKdXNlcyBpdHMg
b3duIChoYXJkd2FyZSkgcmVwZWF0LgoKTGV0J3MgY29uc2lkZXIgdGhlIGZpcnN0IGNhc2UuIFRo
ZSB0aW1lciB3aGljaCBnZW5lcmF0ZXMgYXV0by1yZXBlYXQKaXMgb25seSBzdGFydGVkIG9uIGEg
a2V5IHByZXNzIGV2ZW50IGFuZCBvbmx5IHN0b3BwZWQgb24gYSBrZXkgcmVsZWFzZQpldmVudC4g
QXMgc3VjaCwgaWYgYW55IGF1dG8tcmVwZWF0IHdhcyBpbiBwcm9ncmVzcyB3aGVuIGluaGliaXRp
bmcKaGFwcGVuZWQsIGl0IG11c3QgaGF2ZSBiZWVuIHN0b3BwZWQgYXMgcGVyIGlucHV0X2Rldl9y
ZWxlYXNlX2tleXMoKS4KVGhlbiB0aGUga2V5IGlzIHByZXNzZWQgYW5kIGhlbGQgYWZ0ZXIgdGhl
IGRldmljZSBoYXMgYmVlbiBpbmhpYml0ZWQsCmFuZCB0aGUgZGV2aWNlIGlzIGJlaW5nIHVuaW5o
aWJpdGVkLiBTaW5jZSBpdCB1c2VzIHNvZnR3YXJlIGF1dG8tcmVwZWF0LApubyBldmVudHMgd2ls
bCBiZSByZXBvcnRlZCBieSB0aGUgZGV2aWNlIHVudGlsIHRoZSBrZXkgaXMgcmVsZWFzZWQsCmFu
ZCwgYXMgZXhwbGFpbmVkIGFib3ZlLCB0aGUgcmVsZWFzZSBldmVudCB3aWxsIGJlIGlnbm9yZWQu
CgpMZXQncyBjb25zaWRlciB0aGUgc2Vjb25kIGNhc2UuIFRoZSBrZXkgaXMgcHJlc3NlZCBhbmQg
aGVsZCBhZnRlciB0aGUKZGV2aWNlIGhhcyBiZWVuIGluaGliaXRlZCBhbmQgdGhlIGRldmljZSBp
cyBiZWluZyB1bmluaGliaXRlZC4gVGhlIHdvcnN0CnRoaW5nIHRoYXQgY2FuIGhhcHBlbiBpcyB1
bm1hdGNoZWQga2V5IHJlcGVhdCBldmVudHMgd2lsbCBzdGFydCBjb21pbmcKZnJvbSB0aGUgZGV2
aWNlLiBXZSBtdXN0IHByZXZlbnQgdGhlbSBmcm9tIHJlYWNoaW5nIHRoZSBoYW5kbGVycyBhbmQK
aWdub3JlIHRoZW0gaW5zdGVhZC4gU28gSSBzdWdnZXN0IHNvbWV0aGluZyBvbiB0aGUgbGluZXMg
b2Y6CgppZiAoaXNfZXZlbnRfc3VwcG9ydGVkKGNvZGUsIGRldi0+a2V5Yml0LCBLRVlfTUFYKSkg
ewoKCQkJLyogYXV0by1yZXBlYXQgYnlwYXNzZXMgc3RhdGUgdXBkYXRlcyAqLwotCQkJaWYgKHZh
bHVlID09IDIpIHsKKwkJCWlmICh2YWx1ZSA9PSAyICYmIHRlc3RfYml0KGNvZGUsIGRldi0+a2V5
KSkgewoJCQkJZGlzcG9zaXRpb24gPSBJTlBVVF9QQVNTX1RPX0hBTkRMRVJTOwoJCQkJYnJlYWs7
CgkJCX0KClRoZSBpbnRlbmRlZCBtZWFuaW5nIGlzICJpZ25vcmUga2V5IHJlcGVhdCBldmVudHMg
aWYgdGhlIGtleSBpcyBub3QKcHJlc3NlZCIuCgpXaXRoIHRoaXMgc21hbGwgY2hhbmdlIEkgYmVs
aWV2ZSBpdCBpcyBub3QgcG9zc2libGUgdG8gaGF2ZSBuZWl0aGVyCnVubWF0Y2hlZCByZWxlYXNl
IG5vciB1bm1hdGNoZWQgcmVwZWF0IGJlaW5nIGRlbGl2ZXJlZCB0byBoYW5kbGVycy4KClJlZ2Fy
ZHMsCgpBbmRyemVqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
