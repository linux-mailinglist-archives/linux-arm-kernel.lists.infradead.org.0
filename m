Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6321975D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 09:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xm7IeM6hUbeIpuKFKR6ms3XJHJs7LapP8AlNxYbx88c=; b=E/22462YTpWm76
	fU5/zqRAGSkGE0XT+b9gs3fL4/bXIcHTbB5k1RLzg1YiUxpykdLy4qwZRFVkOgeSN3XAANU4cq/jN
	UVF5IeAc/XGG4Hl7HDuw9u1LyDbRyRYHKOHLL5q4iEHPLVp8IZb4g8mfT7MLc/UFCCKa/+SOZhm0W
	VDWD68xCpzNQL0y0KtwhvaqqbVJINZdWt8cg9il8THfLMUOsprKRzP3sdRGgO88UD9cmfkbrU3S2p
	Qnfn/21Mu9+jab/ZAR9nEZfGByVGNAjc8SEIXLABBUTf+9blri/Y5/hKHLHGfAAsVZ/mnFbTuuy+Z
	tHeZKWE+u29NWp00+pWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIoyy-0004kl-88; Mon, 30 Mar 2020 07:37:16 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIoyn-0004kS-74
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 07:37:06 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02U7avtO076750;
 Mon, 30 Mar 2020 02:36:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585553818;
 bh=voYQW80EDvQkOlSfgnq9c/dTJexZ26VOrA18YkmsPTw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=EoXO05vQBMtq0tom/g/Fbz6SZPBShTbVdsPJ4+iOQlEjDowyGWB1hDXOUzYbr4BE/
 ua9Cn8M1pnrkq97+Jp0+ERZ16Lej0LWhkw80kgiPcM8lWJhrHTN+0Lgb2sCW9L5E2o
 J5cfY5e4wbDZ1Fy2BTB7wPn+rs7beppbGEgVK+Ts=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02U7avrb068349
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 30 Mar 2020 02:36:57 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 30
 Mar 2020 02:36:57 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 30 Mar 2020 02:36:57 -0500
Received: from [10.24.69.198] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02U7aq7w094270;
 Mon, 30 Mar 2020 02:36:53 -0500
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
To: Tero Kristo <t-kristo@ti.com>, Vladimir Oltean <olteanv@gmail.com>, David
 Miller <davem@davemloft.net>
References: <20200323225254.12759-1-grygorii.strashko@ti.com>
 <20200326.200136.1601946994817303021.davem@davemloft.net>
 <CA+h21hr8G24ddEgAbU_TfoNAe0fqUJ0_Uyp54Gxn5cvPrM6u9g@mail.gmail.com>
 <8f5e981a-193c-0c1e-1e0a-b0380b2e6a9c@ti.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <2d305c89-601c-5dee-06be-30257a26a392@ti.com>
Date: Mon, 30 Mar 2020 13:06:52 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <8f5e981a-193c-0c1e-1e0a-b0380b2e6a9c@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_003705_344204_E5F8F35A 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
 netdev <netdev@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 kishon@ti.com, peter.ujfalusi@ti.com, Murali Karicheri <m-karicheri2@ti.com>,
 Olof Johansson <olof@lixom.net>, Jakub Kicinski <kuba@kernel.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, rogerq@ti.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAvMDMvMjAgMTI6NDUgUE0sIFRlcm8gS3Jpc3RvIHdyb3RlOgo+IE9uIDI4LzAzLzIwMjAg
MDM6NTMsIFZsYWRpbWlyIE9sdGVhbiB3cm90ZToKPj4gSGkgRGF2aWQsCj4+Cj4+IE9uIEZyaSwg
MjcgTWFyIDIwMjAgYXQgMDU6MDIsIERhdmlkIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4g
d3JvdGU6Cj4+Pgo+Pj4gRnJvbTogR3J5Z29yaWkgU3RyYXNoa28gPGdyeWdvcmlpLnN0cmFzaGtv
QHRpLmNvbT4KPj4+IERhdGU6IFR1ZSwgMjQgTWFyIDIwMjAgMDA6NTI6NDMgKzAyMDAKPj4+Cj4+
Pj4gVGhpcyB2NiBzZXJpZXMgYWRkcyBiYXNpYyBuZXR3b3JraW5nIHN1cHBvcnQgc3VwcG9ydCBU
SSBLMwo+Pj4+IEFNNjU0eC9KNzIxRSBTb0Mgd2hpY2gKPj4+PiBoYXZlIGludGVncmF0ZWQgR2ln
YWJpdCBFdGhlcm5ldCBNQUMgKE1lZGlhIEFjY2VzcyBDb250cm9sbGVyKSBpbnRvCj4+Pj4gZGV2
aWNlIE1DVQo+Pj4+IGRvbWFpbiBhbmQgbmFtZWQgTUNVX0NQU1cwIChDUFNXMkcgTlVTUykuCj4+
PiDCoCAuLi4KPj4+Cj4+PiBTZXJpZXMgYXBwbGllZCwgdGhhbmsgeW91Lgo+Pgo+PiBUaGUgYnVp
bGQgaXMgbm93IGJyb2tlbiBvbiBuZXQtbmV4dDoKPj4KPj4gYXJjaC9hcm02NC9ib290L2R0cy90
aS9rMy1qNzIxZS1tY3Utd2FrZXVwLmR0c2k6MzAzLjIzLTMwOS42OiBFUlJPUgo+PiAocGhhbmRs
ZV9yZWZlcmVuY2VzKToKPj4gL2ludGVyY29ubmVjdEAxMDAwMDAvaW50ZXJjb25uZWN0QDI4Mzgw
MDAwL2V0aGVybmV0QDQ2MDAwMDAwL2V0aGVybmV0LXBvcnRzL3BvcnRAMToKPj4KPj4gUmVmZXJl
bmNlIHRvIG5vbi1leGlzdGVudCBub2RlCj4+IG9yIGxhYmVsICJtY3VfY29uZiIKPj4KPj4gwqDC
oCBhbHNvIGRlZmluZWQgYXQKPj4gYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1qNzIxZS1jb21t
b24tcHJvYy1ib2FyZC5kdHM6NDcxLjEzLTQ3NC4zCj4+IGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkv
azMtajcyMWUtbWN1LXdha2V1cC5kdHNpOjMwMy4yMy0zMDkuNjogRVJST1IKPj4gKHBoYW5kbGVf
cmVmZXJlbmNlcyk6Cj4+IC9pbnRlcmNvbm5lY3RAMTAwMDAwL2ludGVyY29ubmVjdEAyODM4MDAw
MC9ldGhlcm5ldEA0NjAwMDAwMC9ldGhlcm5ldC1wb3J0cy9wb3J0QDE6Cj4+Cj4+IFJlZmVyZW5j
ZSB0byBub24tZXhpc3RlbnQgbm9kZQo+PiBvciBsYWJlbCAicGh5X2dtaWlfc2VsIgo+Pgo+PiDC
oMKgIGFsc28gZGVmaW5lZCBhdAo+PiBhcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWo3MjFlLWNv
bW1vbi1wcm9jLWJvYXJkLmR0czo0NzEuMTMtNDc0LjMKPj4KPj4gQXMgR3J5Z29yaWkgc2FpZDoK
Pj4KPj4gUGF0Y2hlcyAxLTYgYXJlIGludGVuZGVkIGZvciBuZXRkZXYsIFBhdGNoZXMgNy0xMSBh
cmUgaW50ZW5kZWQgZm9yIEszCj4+IFBsYXRmb3JtCj4+IHRyZWUgYW5kIHByb3ZpZGVkIGhlcmUg
Zm9yIHRlc3RpbmcgcHVycG9zZXMuCj4gCj4gWWVhaCwgSSB0aGluayB5b3UgYXJlIG1pc3Npbmcg
YSBkZXBlbmRlbmN5IHRoYXQgd2FzIGFwcGxpZWQgdmlhIHRoZSBLMwo+IGJyYW5jaCBlYXJsaWVy
LiBUaGV5IGFyZSBpbiBsaW51eC1uZXh0IG5vdywgYnV0IEkgYW0gbm90IHNvIHN1cmUgaG93Cj4g
bXVjaCB0aGF0IGlzIGdvaW5nIHRvIGhlbHAgeW91Lgo+IAo+IFlvdSBjb3VsZCBqdXN0IGRyb3Ag
dGhlIERUIHBhdGNoZXMgZnJvbSB0aGlzIG1lcmdlIGFuZCBsZXQgbWUgYXBwbHkgdGhlbQo+IHZp
YSB0aGUgcGxhdGZvcm0gYnJhbmNoLgoKT25lIG90aGVyIG9wdGlvbiB3b3VsZCBiZSB0aGF0IERh
dmUgbWVyZ2VzIHlvdXIgSzMgdGFnIHdoaWNoIHdhcyBzZW50IHRvCkFSTSBTb0MgdG8gbmV0LW5l
eHQuIEl0cyBiYXNlZCBvbiB2NS42LXJjMSwgaGFzIG5vIG90aGVyIGRlcGVuZGVuY2llcywKaXMg
YWxyZWFkeSBpbiBsaW51eC1uZXh0LCBzaG91bGQgYmUgaW1tdXRhYmxlIGFuZCBzYWZlIHRvIG1l
cmdlLiBUaGlzCmhhcyB0aGUgYWR2YW50YWdlIHRoYXQgbm8gcmViYXNlIGlzIG5lY2Vzc2FyeSBv
biBuZXQtbmV4dC4KCmdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC9rcmlzdG8vbGludXgKdGFncy90aS1rMy1zb2MtZm9yLXY1LjcKCisgQVJNIFNvQyBtYWludGFp
bmVycyBmb3IgdGhlaXIgaW5mb3JtYXRpb24gYW5kIGFueSBhZHZpc2UuCgpUaGFua3MsClNla2hh
cgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
