Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0450197670
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 10:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ElT67s62d2ppoRMqjFPa3IoW/D1iwERH/S3bW2DYWYo=; b=B9R0i/Fu+n4VEU
	LosgePu8KTHJQ00Pkve3OYgtAu5yd67RFg4GF2ZJVoz1KPbO9e0R6dDDyWrlRCxWrddTGJ6eJ+xYl
	bIUvDoRqYX6ljhj4Uw/WYCUsQ0vgWMGEh0y429r3a3zX9HSoWN6zIsZtz6V9NFM1N9964zQYnEzPY
	rVSaG6oYURUAGBIfazbkgkF89QXw5rzgicrtmbI3hcy2k0a/Rfc3vv3/EEB1aqFbAFcOhC89jw7Fz
	MwVZnabd2p8UW+Ewob2QuzZoooGruQCgto2858XhvZvdKStUc7OuWH1lkiKcJVn3Ud9zuF7WKm7RM
	C/L/YiYsvoDbFMFnvGEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIpmv-00008L-Os; Mon, 30 Mar 2020 08:28:53 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIpma-0008QR-4O
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 08:28:33 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02U8SERF110283;
 Mon, 30 Mar 2020 03:28:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585556894;
 bh=1YfcS38BPhZe/p5W8i5G+38GAG3OkNcS1KKAWP4M02Q=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=Dx268NtKt8MNlm4k8PX37tpHEKSLzyMAmWYnugW6ihPQBOfctEiBLCWkYklM6/8/h
 DWwzVspu4bdTCGIzHkXMNM5E2n3h3k/azSnILrmah1lW3fxAB8dqNUonZm4d1k5FmW
 JyGPMDgUB8xzEQNPvm3067KxHIEVykRbugwFnZT4=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02U8SE8F019493
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 30 Mar 2020 03:28:14 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 30
 Mar 2020 03:28:14 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 30 Mar 2020 03:28:14 -0500
Received: from [10.24.69.198] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02U8S902055047;
 Mon, 30 Mar 2020 03:28:10 -0500
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
From: Sekhar Nori <nsekhar@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Vladimir Oltean <olteanv@gmail.com>, David
 Miller <davem@davemloft.net>
References: <20200323225254.12759-1-grygorii.strashko@ti.com>
 <20200326.200136.1601946994817303021.davem@davemloft.net>
 <CA+h21hr8G24ddEgAbU_TfoNAe0fqUJ0_Uyp54Gxn5cvPrM6u9g@mail.gmail.com>
 <8f5e981a-193c-0c1e-1e0a-b0380b2e6a9c@ti.com>
 <2d305c89-601c-5dee-06be-30257a26a392@ti.com>
Message-ID: <cac3d501-cc36-73c5-eea8-aaa2d10105b0@ti.com>
Date: Mon, 30 Mar 2020 13:58:08 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <2d305c89-601c-5dee-06be-30257a26a392@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_012832_325220_8451B0FB 
X-CRM114-Status: GOOD (  16.28  )
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

T24gMzAvMDMvMjAgMTowNiBQTSwgU2VraGFyIE5vcmkgd3JvdGU6Cj4gT24gMzAvMDMvMjAgMTI6
NDUgUE0sIFRlcm8gS3Jpc3RvIHdyb3RlOgo+PiBPbiAyOC8wMy8yMDIwIDAzOjUzLCBWbGFkaW1p
ciBPbHRlYW4gd3JvdGU6Cj4+PiBIaSBEYXZpZCwKPj4+Cj4+PiBPbiBGcmksIDI3IE1hciAyMDIw
IGF0IDA1OjAyLCBEYXZpZCBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+IHdyb3RlOgo+Pj4+
Cj4+Pj4gRnJvbTogR3J5Z29yaWkgU3RyYXNoa28gPGdyeWdvcmlpLnN0cmFzaGtvQHRpLmNvbT4K
Pj4+PiBEYXRlOiBUdWUsIDI0IE1hciAyMDIwIDAwOjUyOjQzICswMjAwCj4+Pj4KPj4+Pj4gVGhp
cyB2NiBzZXJpZXMgYWRkcyBiYXNpYyBuZXR3b3JraW5nIHN1cHBvcnQgc3VwcG9ydCBUSSBLMwo+
Pj4+PiBBTTY1NHgvSjcyMUUgU29DIHdoaWNoCj4+Pj4+IGhhdmUgaW50ZWdyYXRlZCBHaWdhYml0
IEV0aGVybmV0IE1BQyAoTWVkaWEgQWNjZXNzIENvbnRyb2xsZXIpIGludG8KPj4+Pj4gZGV2aWNl
IE1DVQo+Pj4+PiBkb21haW4gYW5kIG5hbWVkIE1DVV9DUFNXMCAoQ1BTVzJHIE5VU1MpLgo+Pj4+
IMKgIC4uLgo+Pj4+Cj4+Pj4gU2VyaWVzIGFwcGxpZWQsIHRoYW5rIHlvdS4KPj4+Cj4+PiBUaGUg
YnVpbGQgaXMgbm93IGJyb2tlbiBvbiBuZXQtbmV4dDoKPj4+Cj4+PiBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3RpL2szLWo3MjFlLW1jdS13YWtldXAuZHRzaTozMDMuMjMtMzA5LjY6IEVSUk9SCj4+PiAo
cGhhbmRsZV9yZWZlcmVuY2VzKToKPj4+IC9pbnRlcmNvbm5lY3RAMTAwMDAwL2ludGVyY29ubmVj
dEAyODM4MDAwMC9ldGhlcm5ldEA0NjAwMDAwMC9ldGhlcm5ldC1wb3J0cy9wb3J0QDE6Cj4+Pgo+
Pj4gUmVmZXJlbmNlIHRvIG5vbi1leGlzdGVudCBub2RlCj4+PiBvciBsYWJlbCAibWN1X2NvbmYi
Cj4+Pgo+Pj4gwqDCoCBhbHNvIGRlZmluZWQgYXQKPj4+IGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkv
azMtajcyMWUtY29tbW9uLXByb2MtYm9hcmQuZHRzOjQ3MS4xMy00NzQuMwo+Pj4gYXJjaC9hcm02
NC9ib290L2R0cy90aS9rMy1qNzIxZS1tY3Utd2FrZXVwLmR0c2k6MzAzLjIzLTMwOS42OiBFUlJP
Ugo+Pj4gKHBoYW5kbGVfcmVmZXJlbmNlcyk6Cj4+PiAvaW50ZXJjb25uZWN0QDEwMDAwMC9pbnRl
cmNvbm5lY3RAMjgzODAwMDAvZXRoZXJuZXRANDYwMDAwMDAvZXRoZXJuZXQtcG9ydHMvcG9ydEAx
Ogo+Pj4KPj4+IFJlZmVyZW5jZSB0byBub24tZXhpc3RlbnQgbm9kZQo+Pj4gb3IgbGFiZWwgInBo
eV9nbWlpX3NlbCIKPj4+Cj4+PiDCoMKgIGFsc28gZGVmaW5lZCBhdAo+Pj4gYXJjaC9hcm02NC9i
b290L2R0cy90aS9rMy1qNzIxZS1jb21tb24tcHJvYy1ib2FyZC5kdHM6NDcxLjEzLTQ3NC4zCj4+
Pgo+Pj4gQXMgR3J5Z29yaWkgc2FpZDoKPj4+Cj4+PiBQYXRjaGVzIDEtNiBhcmUgaW50ZW5kZWQg
Zm9yIG5ldGRldiwgUGF0Y2hlcyA3LTExIGFyZSBpbnRlbmRlZCBmb3IgSzMKPj4+IFBsYXRmb3Jt
Cj4+PiB0cmVlIGFuZCBwcm92aWRlZCBoZXJlIGZvciB0ZXN0aW5nIHB1cnBvc2VzLgo+Pgo+PiBZ
ZWFoLCBJIHRoaW5rIHlvdSBhcmUgbWlzc2luZyBhIGRlcGVuZGVuY3kgdGhhdCB3YXMgYXBwbGll
ZCB2aWEgdGhlIEszCj4+IGJyYW5jaCBlYXJsaWVyLiBUaGV5IGFyZSBpbiBsaW51eC1uZXh0IG5v
dywgYnV0IEkgYW0gbm90IHNvIHN1cmUgaG93Cj4+IG11Y2ggdGhhdCBpcyBnb2luZyB0byBoZWxw
IHlvdS4KPj4KPj4gWW91IGNvdWxkIGp1c3QgZHJvcCB0aGUgRFQgcGF0Y2hlcyBmcm9tIHRoaXMg
bWVyZ2UgYW5kIGxldCBtZSBhcHBseSB0aGVtCj4+IHZpYSB0aGUgcGxhdGZvcm0gYnJhbmNoLgo+
IAo+IE9uZSBvdGhlciBvcHRpb24gd291bGQgYmUgdGhhdCBEYXZlIG1lcmdlcyB5b3VyIEszIHRh
ZyB3aGljaCB3YXMgc2VudCB0bwo+IEFSTSBTb0MgdG8gbmV0LW5leHQuIEl0cyBiYXNlZCBvbiB2
NS42LXJjMSwgaGFzIG5vIG90aGVyIGRlcGVuZGVuY2llcywKPiBpcyBhbHJlYWR5IGluIGxpbnV4
LW5leHQsIHNob3VsZCBiZSBpbW11dGFibGUgYW5kIHNhZmUgdG8gbWVyZ2UuIFRoaXMKPiBoYXMg
dGhlIGFkdmFudGFnZSB0aGF0IG5vIHJlYmFzZSBpcyBuZWNlc3Nhcnkgb24gbmV0LW5leHQuCj4g
Cj4gZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2tyaXN0by9s
aW51eAo+IHRhZ3MvdGktazMtc29jLWZvci12NS43CgpGV0lXLCBJIHdhcyBhYmxlIHRvIHJlcHJv
ZHVjZSB0aGUgYnVpbGQgZmFpbHVyZSByZXBvcnRlZCBieSBWbGFkaW1pciBvbgpuZXQtbmV4dCwg
bWVyZ2UgVGVybydzIHRhZyAoYWJvdmUpIGNsZWFubHkgaW50byBpdCwgYW5kIHNlZSB0aGF0IEFS
TTY0CmRlZmNvbmZpZyBidWlsZCBvbiBuZXQtbmV4dCBzdWNjZWVkcyBhZnRlciB0aGUgbWVyZ2Uu
CgpUaGFua3MsClNla2hhcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
