Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84680198323
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 20:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=00oSs9Dh0sjuXfpRHbDUryY3xBBORSg0tFC178SSz6k=; b=RT/qQxdy5jtyNF2sCW7ZYZfqo
	Mdre0u07NmWMPhcvFWfwExbVEc4I12evCcAOU1/vh00s3NXmnSnH4Msh+jvwfKlkaQXmjF4SUI5dW
	WFKworF/z+dNdsL8IEkPVieBGy3w2eSVuBhzmww0gZfU2ToFVzXd50ny7S4SVB3UQx788c4cqGG2S
	8jTNQKRzpHaBBXyPn+TBtWckATnPC+v3L6rdSeHVvR6qSKT4/514nzISwvDLoZJhLOFiQX+4NVD5g
	obFu6oef9/MeA6r86/ILD8s8cGEufEZ2qdunLa4hzEVzwXk92zJBYH9KvH2suu0iHXHK5YrDDJXIE
	m+VZz9Q9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIyvy-000075-A2; Mon, 30 Mar 2020 18:14:50 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIyvR-0008Dd-Ay
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 18:14:19 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02UIE7X5124911;
 Mon, 30 Mar 2020 13:14:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585592047;
 bh=Ysd2CfzoUryMv7olffzf/9E4mY3hhWXojGKfYzHOL6k=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Rjwo3vpUSjlp3mC2/WZM64s6nB/dhQIu6GTBHE/cLhtJTNoeDbutDwTjPzepHr0LV
 3J/LRavtV0Ew/ZhxyM+qMfpIAVS+C14TCGYL/Y0LhYJ5ASohgsnmsj6Shmh8AUN6Hw
 twDGupg6w8UITkOoJAq8YNqKbBNPxxLNnNrFrDJ4=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02UIE71J099822
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 30 Mar 2020 13:14:07 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 30
 Mar 2020 13:14:06 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 30 Mar 2020 13:14:06 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02UIE0Qg044169;
 Mon, 30 Mar 2020 13:14:02 -0500
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
To: Sekhar Nori <nsekhar@ti.com>, Tero Kristo <t-kristo@ti.com>, Vladimir
 Oltean <olteanv@gmail.com>, David Miller <davem@davemloft.net>
References: <20200323225254.12759-1-grygorii.strashko@ti.com>
 <20200326.200136.1601946994817303021.davem@davemloft.net>
 <CA+h21hr8G24ddEgAbU_TfoNAe0fqUJ0_Uyp54Gxn5cvPrM6u9g@mail.gmail.com>
 <8f5e981a-193c-0c1e-1e0a-b0380b2e6a9c@ti.com>
 <2d305c89-601c-5dee-06be-30257a26a392@ti.com>
 <cac3d501-cc36-73c5-eea8-aaa2d10105b0@ti.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <590f9865-ace7-fc12-05e7-0c8579785f96@ti.com>
Date: Mon, 30 Mar 2020 21:14:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <cac3d501-cc36-73c5-eea8-aaa2d10105b0@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_111417_579029_B1D8975A 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, netdev <netdev@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, kishon@ti.com, peter.ujfalusi@ti.com,
 Murali Karicheri <m-karicheri2@ti.com>, Olof Johansson <olof@lixom.net>,
 Jakub Kicinski <kuba@kernel.org>, "moderated
 list:ARM/Mediatek SoC support" <linux-arm-kernel@lists.infradead.org>,
 rogerq@ti.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkKCk9uIDMwLzAzLzIwMjAgMTE6MjgsIFNla2hhciBOb3JpIHdyb3RlOgo+IE9uIDMwLzAzLzIw
IDE6MDYgUE0sIFNla2hhciBOb3JpIHdyb3RlOgo+PiBPbiAzMC8wMy8yMCAxMjo0NSBQTSwgVGVy
byBLcmlzdG8gd3JvdGU6Cj4+PiBPbiAyOC8wMy8yMDIwIDAzOjUzLCBWbGFkaW1pciBPbHRlYW4g
d3JvdGU6Cj4+Pj4gSGkgRGF2aWQsCj4+Pj4KPj4+PiBPbiBGcmksIDI3IE1hciAyMDIwIGF0IDA1
OjAyLCBEYXZpZCBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+IHdyb3RlOgo+Pj4+Pgo+Pj4+
PiBGcm9tOiBHcnlnb3JpaSBTdHJhc2hrbyA8Z3J5Z29yaWkuc3RyYXNoa29AdGkuY29tPgo+Pj4+
PiBEYXRlOiBUdWUsIDI0IE1hciAyMDIwIDAwOjUyOjQzICswMjAwCj4+Pj4+Cj4+Pj4+PiBUaGlz
IHY2IHNlcmllcyBhZGRzIGJhc2ljIG5ldHdvcmtpbmcgc3VwcG9ydCBzdXBwb3J0IFRJIEszCj4+
Pj4+PiBBTTY1NHgvSjcyMUUgU29DIHdoaWNoCj4+Pj4+PiBoYXZlIGludGVncmF0ZWQgR2lnYWJp
dCBFdGhlcm5ldCBNQUMgKE1lZGlhIEFjY2VzcyBDb250cm9sbGVyKSBpbnRvCj4+Pj4+PiBkZXZp
Y2UgTUNVCj4+Pj4+PiBkb21haW4gYW5kIG5hbWVkIE1DVV9DUFNXMCAoQ1BTVzJHIE5VU1MpLgo+
Pj4+PiAgwqAgLi4uCj4+Pj4+Cj4+Pj4+IFNlcmllcyBhcHBsaWVkLCB0aGFuayB5b3UuCj4+Pj4K
Pj4+PiBUaGUgYnVpbGQgaXMgbm93IGJyb2tlbiBvbiBuZXQtbmV4dDoKPj4+Pgo+Pj4+IGFyY2gv
YXJtNjQvYm9vdC9kdHMvdGkvazMtajcyMWUtbWN1LXdha2V1cC5kdHNpOjMwMy4yMy0zMDkuNjog
RVJST1IKPj4+PiAocGhhbmRsZV9yZWZlcmVuY2VzKToKPj4+PiAvaW50ZXJjb25uZWN0QDEwMDAw
MC9pbnRlcmNvbm5lY3RAMjgzODAwMDAvZXRoZXJuZXRANDYwMDAwMDAvZXRoZXJuZXQtcG9ydHMv
cG9ydEAxOgo+Pj4+Cj4+Pj4gUmVmZXJlbmNlIHRvIG5vbi1leGlzdGVudCBub2RlCj4+Pj4gb3Ig
bGFiZWwgIm1jdV9jb25mIgo+Pj4+Cj4+Pj4gIMKgwqAgYWxzbyBkZWZpbmVkIGF0Cj4+Pj4gYXJj
aC9hcm02NC9ib290L2R0cy90aS9rMy1qNzIxZS1jb21tb24tcHJvYy1ib2FyZC5kdHM6NDcxLjEz
LTQ3NC4zCj4+Pj4gYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1qNzIxZS1tY3Utd2FrZXVwLmR0
c2k6MzAzLjIzLTMwOS42OiBFUlJPUgo+Pj4+IChwaGFuZGxlX3JlZmVyZW5jZXMpOgo+Pj4+IC9p
bnRlcmNvbm5lY3RAMTAwMDAwL2ludGVyY29ubmVjdEAyODM4MDAwMC9ldGhlcm5ldEA0NjAwMDAw
MC9ldGhlcm5ldC1wb3J0cy9wb3J0QDE6Cj4+Pj4KPj4+PiBSZWZlcmVuY2UgdG8gbm9uLWV4aXN0
ZW50IG5vZGUKPj4+PiBvciBsYWJlbCAicGh5X2dtaWlfc2VsIgo+Pj4+Cj4+Pj4gIMKgwqAgYWxz
byBkZWZpbmVkIGF0Cj4+Pj4gYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1qNzIxZS1jb21tb24t
cHJvYy1ib2FyZC5kdHM6NDcxLjEzLTQ3NC4zCj4+Pj4KPj4+PiBBcyBHcnlnb3JpaSBzYWlkOgo+
Pj4+Cj4+Pj4gUGF0Y2hlcyAxLTYgYXJlIGludGVuZGVkIGZvciBuZXRkZXYsIFBhdGNoZXMgNy0x
MSBhcmUgaW50ZW5kZWQgZm9yIEszCj4+Pj4gUGxhdGZvcm0KPj4+PiB0cmVlIGFuZCBwcm92aWRl
ZCBoZXJlIGZvciB0ZXN0aW5nIHB1cnBvc2VzLgo+Pj4KPj4+IFllYWgsIEkgdGhpbmsgeW91IGFy
ZSBtaXNzaW5nIGEgZGVwZW5kZW5jeSB0aGF0IHdhcyBhcHBsaWVkIHZpYSB0aGUgSzMKPj4+IGJy
YW5jaCBlYXJsaWVyLiBUaGV5IGFyZSBpbiBsaW51eC1uZXh0IG5vdywgYnV0IEkgYW0gbm90IHNv
IHN1cmUgaG93Cj4+PiBtdWNoIHRoYXQgaXMgZ29pbmcgdG8gaGVscCB5b3UuCj4+Pgo+Pj4gWW91
IGNvdWxkIGp1c3QgZHJvcCB0aGUgRFQgcGF0Y2hlcyBmcm9tIHRoaXMgbWVyZ2UgYW5kIGxldCBt
ZSBhcHBseSB0aGVtCj4+PiB2aWEgdGhlIHBsYXRmb3JtIGJyYW5jaC4KPj4KPj4gT25lIG90aGVy
IG9wdGlvbiB3b3VsZCBiZSB0aGF0IERhdmUgbWVyZ2VzIHlvdXIgSzMgdGFnIHdoaWNoIHdhcyBz
ZW50IHRvCj4+IEFSTSBTb0MgdG8gbmV0LW5leHQuIEl0cyBiYXNlZCBvbiB2NS42LXJjMSwgaGFz
IG5vIG90aGVyIGRlcGVuZGVuY2llcywKPj4gaXMgYWxyZWFkeSBpbiBsaW51eC1uZXh0LCBzaG91
bGQgYmUgaW1tdXRhYmxlIGFuZCBzYWZlIHRvIG1lcmdlLiBUaGlzCj4+IGhhcyB0aGUgYWR2YW50
YWdlIHRoYXQgbm8gcmViYXNlIGlzIG5lY2Vzc2FyeSBvbiBuZXQtbmV4dC4KPj4KPj4gZ2l0Oi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2tyaXN0by9saW51eAo+PiB0
YWdzL3RpLWszLXNvYy1mb3ItdjUuNwo+IAo+IEZXSVcsIEkgd2FzIGFibGUgdG8gcmVwcm9kdWNl
IHRoZSBidWlsZCBmYWlsdXJlIHJlcG9ydGVkIGJ5IFZsYWRpbWlyIG9uCj4gbmV0LW5leHQsIG1l
cmdlIFRlcm8ncyB0YWcgKGFib3ZlKSBjbGVhbmx5IGludG8gaXQsIGFuZCBzZWUgdGhhdCBBUk02
NAo+IGRlZmNvbmZpZyBidWlsZCBvbiBuZXQtbmV4dCBzdWNjZWVkcyBhZnRlciB0aGUgbWVyZ2Uu
CgpUaGFuayB5b3UgU2VraGFyIGZvciBjaGVja2luZyB0aGlzLgoKSSdtIHZlcnkgc29ycnkgZm9y
IGludHJvZHVjaW5nIHRoaXMgaXNzdWUuIEkndmUgdHJpZWQgaGFyZCB0byBhdm9pZCBzdWNoIGlz
c3VlLApidXQgc3RpbGwgbWlzc2VkIGl0IChwcm9iYWJseSBJIGhhdmUgaGFkIHRvIGRyb3AgRFQg
cGF0Y2hlcyBmcm9tIGxhc3Qgc3VibWlzc2lvbgphbmQgc2VuZCB0aGVtIHNlcGFyYXRlbHkpLgoK
U29ycnkgYWdhaW4uCgotLSAKQmVzdCByZWdhcmRzLApncnlnb3JpaQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
