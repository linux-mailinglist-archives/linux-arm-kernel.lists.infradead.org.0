Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D39C21B144C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 20:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DpT1J0VwE0Pf1dmFjHq6xuXvoaxonfwDlaJC3/1u9nc=; b=A2ti/ITLqNKxYjLWjocqEPMdG
	EvJZQGLRTZklJ0q9cXK/E7abnXriWO/QaNAFwTGZ0b1IdFJpkwZSznxa7bssMnnEGPg7zdHgaselA
	EAH7KkdZKtD1xLyNYRiVL0u97UG657m6o5WHiXZZpH3JutdnwFWWOEDaZ0ShlPD94fhyn52eDnLzP
	ofBFHQH7eZ7iaLujbaaCO9QQxrQE1lk7sNyc+iwTH2i9A3B1+tKLwRmbYNEXHkppuAHa5NlJgP5jn
	EoAYA1yUJfUV9Ms5Pu9FevTxU07FVOMJI8jJJur1nysBkEF3L34nLsPt/38WkQ+2yQd8EgK/NhoLq
	/RUNW3W8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQb1i-0002nC-H3; Mon, 20 Apr 2020 18:20:14 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQb1K-0002l1-W5
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 18:19:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 313602A0FEB
Subject: Re: [RFC v3 1/2] thermal: core: Let thermal zone device's mode be
 stored in its struct
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
References: <9ac3b37a-8746-b8ee-70e1-9c876830ac83@linaro.org>
 <20200417162020.19980-1-andrzej.p@collabora.com>
 <CGME20200417162037eucas1p11663f116fd9844d38c0b5d4d7ebe9f1c@eucas1p1.samsung.com>
 <20200417162020.19980-2-andrzej.p@collabora.com>
 <4b97e46a-e7ef-ee22-227e-d35ebef458b0@samsung.com>
 <4cda3e11-7bea-8445-cd51-4b25dcafc741@collabora.com>
Message-ID: <920f8285-1b49-d088-64b4-98bce8d23e39@collabora.com>
Date: Mon, 20 Apr 2020 20:19:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <4cda3e11-7bea-8445-cd51-4b25dcafc741@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_111951_158590_DAF0997A 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Jiri Pirko <jiri@mellanox.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Shawn Guo <shawnguo@kernel.org>, Peter Kaestle <peter@piie.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, netdev@vger.kernel.org,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QERhbmllbAoKcGxlYXNlIHNlZSBiZWxvdwoKVyBkbml1IDIwLjA0LjIwMjAgb8KgMTM6MDMsIEFu
ZHJ6ZWogUGlldHJhc2lld2ljeiBwaXN6ZToKPiBIaSBCYXJsb21pZWosCj4gCj4gVGhhbmtzIGZv
ciBsb29raW5nIGludG8gdGhlIHNlcmllcy4KPiAKPiBARGFuaWVsIGNhbiB5b3Ugc2VlIGJlbG93
Pwo+IAo+IFcgZG5pdSAxOS4wNC4yMDIwIG/CoDEzOjM4LCBCYXJ0bG9taWVqIFpvbG5pZXJraWV3
aWN6IHBpc3plOgo+Pgo+PiBIaSBBbmRyemVqLAo+Pgo+PiBPbiA0LzE3LzIwIDY6MjAgUE0sIEFu
ZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPj4+IFRoZXJtYWwgem9uZSBkZXZpY2VzJyBtb2Rl
IGlzIHN0b3JlZCBpbiBpbmRpdmlkdWFsIGRyaXZlcnMuIFRoaXMgcGF0Y2gKPj4+IGNoYW5nZXMg
aXQgc28gdGhhdCBtb2RlIGlzIHN0b3JlZCBpbiBzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSBp
bnN0ZWFkLgo+Pj4KPj4+IEFzIGEgcmVzdWx0IGFsbCBkcml2ZXItc3BlY2lmaWMgdmFyaWFibGVz
IHN0b3JpbmcgdGhlIG1vZGUgYXJlIG5vdCBuZWVkZWQKPj4+IGFuZCBhcmUgcmVtb3ZlZC4gQ29u
c2VxdWVudGx5LCB0aGUgZ2V0X21vZGUoKSBpbXBsZW1lbnRhdGlvbnMgaGF2ZSBub3RoaW5nCj4+
PiB0byBvcGVyYXRlIG9uIGFuZCBuZWVkIHRvIGJlIHJlbW92ZWQsIHRvby4KPj4+Cj4+PiBTb21l
IHRoZXJtYWwgZnJhbWV3b3JrIHNwZWNpZmljIGZ1bmN0aW9ucyBhcmUgaW50cm9kdWNlZDoKPj4+
Cj4+PiB0aGVybWFsX3pvbmVfZGV2aWNlX2dldF9tb2RlKCkKPj4+IHRoZXJtYWxfem9uZV9kZXZp
Y2Vfc2V0X21vZGUoKQo+Pj4gdGhlcm1hbF96b25lX2RldmljZV9lbmFibGUoKQo+Pj4gdGhlcm1h
bF96b25lX2RldmljZV9kaXNhYmxlKCkKPj4+Cj4+PiB0aGVybWFsX3pvbmVfZGV2aWNlX2dldF9t
b2RlKCkgYW5kIGl0cyAic2V0IiBjb3VudGVycGFydCB0YWtlIHR6ZCdzIGxvY2sKPj4+IGFuZCB0
aGUgInNldCIgY2FsbHMgZHJpdmVyJ3Mgc2V0X21vZGUoKSBpZiBwcm92aWRlZCwgc28gdGhlIGxh
dHRlciBtdXN0Cj4+PiBub3QgdGFrZSB0aGlzIGxvY2sgYWdhaW4uIEF0IHRoZSBlbmQgb2YgdGhl
ICJzZXQiCj4+PiB0aGVybWFsX3pvbmVfZGV2aWNlX3VwZGF0ZSgpIGlzIGNhbGxlZCBzbyBkcml2
ZXJzIGRvbid0IG5lZWQgdG8gcmVwZWF0IHRoaXMKPj4+IGludm9jYXRpb24gaW4gdGhlaXIgc3Bl
Y2lmaWMgc2V0X21vZGUoKSBpbXBsZW1lbnRhdGlvbnMuCj4+Pgo+Pj4gVGhlIHNjb3BlIG9mIHRo
ZSBhYm92ZSA0IGZ1bmN0aW9ucyBpcyBwdXJwb3NlZGx5IGxpbWl0ZWQgdG8gdGhlIHRoZXJtYWwK
Pj4+IGZyYW1ld29yayBhbmQgZHJpdmVycyBhcmUgbm90IHN1cHBvc2VkIHRvIGNhbGwgdGhlbS4g
VGhpcyBlbmNhcHN1bGF0aW9uCj4+Cj4+IFRoaXMgc2hvdWxkIGJlIHRydWUgb25seSBmb3IgdGhl
cm1hbF96b25lX2RldmljZV97Z2V0LHNldH1fbW9kZSgpLgo+Pgo+PiB0aGVybWFsX3pvbmVfZGV2
aWNlX3tlbixkaXN9YWJsZSgpIHNob3VsZCBiZSBhdmFpbGFibGUgZm9yIGRldmljZSBkcml2ZXJz
Ogo+Pgo+PiAqIG9mL3RoZXJtYWwgZGV2aWNlIGRyaXZlcnMgbmVlZCB0byBlbmFibGUgdGhlcm1h
bCBkZXZpY2UgaXRzZWxmCj4+IMKgwqAgKHBsZWFzZSByZWZlciB0byBteSBwYXRjaHNldCBmb3Ig
ZGV0YWlscykKPj4KPj4gKiBkZXZpY2UgZHJpdmVycyBuZWVkIHRvIGNhbGwgdGhlbSBvbiAtPnN1
c3BlbmQgYW5kIC0+cmVzdW1lIG9wZXJhdGlvbnMKPj4KPiAKPiBARGFuaWVsOgo+IAo+IEhvdyBk
b2VzIHRoaXMgY29tcGFyZSB0bwo+IAo+ICJKdXN0Ogo+IAo+IHRoZXJtYWxfem9uZV9kZXZpY2Vf
Z2V0X21vZGUoKQo+IHRoZXJtYWxfem9uZV9kZXZpY2Vfc2V0X21vZGUoKQo+IHRoZXJtYWxfem9u
ZV9kZXZpY2VfZGlzYWJsZSgpCj4gdGhlcm1hbF96b25lX2RldmljZV9lbmFibGUoKQo+IAo+IEFu
ZCBhbGwgb2YgdGhlbSBpbiBkcml2ZXJzL3RoZXJtYWwvdGhlcm1hbF9jb3JlLmgiLiBEaWQgSSB1
bmRlcnN0YW5kCj4geW91IGNvcnJlY3RseT8KPiAKCkkgc2VudCBhIFBBVENIIHNlcmllcyAocmF0
aGVyIHRoYW4gbmV4dCBpdGVyYXRpb24gb2YgUkZDKSBhZGRyZXNzaW5nCkJhcnRsb21pZWoncyBj
b21tZW50cy4gVGhleSBtYWtlIHNlbnNlIHRvIG1lLgoKUmVnYXJkcywKCkFuZHJ6ZWoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
