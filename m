Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E45BAAC0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 21:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RX+V7LZ+FJYkqv2shp1Cw+SuZaQ/vxBvE0L1RgOPD4s=; b=PjzQSiB74bABQL3uKkitiFtGf
	kGNOGMMyupTTPJaCzo8NmHKHHckcNFJThv9RUHcjvHXhxn4NzZTnA8/UFqDhN2QmN9n5Y7KdJgNoT
	fh8Ta+hg4cQa5ZZatbC6Pg4SVLfpgBJ/J8+FSvGbZD0s4c0HwNRwG6L0a5SMXBbaH+vnbaghuxkh9
	iKRoFtOR3ahYC5mgsq8XCTSlVTUUMI6MMk6Zmqo0JUZjHmFwNMH44L2JwkyR58pwXhJu8Mnjdyyrh
	BTVQF2ox9a9TGgoO4Z38hF1Z5r7ciB73+e0RuXd2miBhbxccjHcncGyEJn+IwQD9OTHjr7blNuvcw
	jYwZVy8dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5xVl-0000hK-Pl; Thu, 05 Sep 2019 19:33:41 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5xVe-0000gx-5j
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 19:33:36 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x85JXVf1013274;
 Thu, 5 Sep 2019 14:33:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567712012;
 bh=kkAMWtH2lSDWQdmzGtIiji4XCoqJUTR6qG2fZ+Vzpqc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=BFSW/p+jNL5LX1/ko200OssuvJytWR4GBiX5gGhcP6SgNOs8u+6qORlPMLg51rKtj
 0vCvmEn+3EbUhSaOjeBRWK76TR3XuFDIlJTQRe9Ojl2DmYFTOYeaEQB81AIuiGulUl
 SBSi6TnBnrlfsND5HFXVJUcEI8XhXfPFptAFxl7k=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x85JXVeO012448
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 5 Sep 2019 14:33:31 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 5 Sep
 2019 14:33:31 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 5 Sep 2019 14:33:31 -0500
Received: from [10.250.98.116] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x85JXSQZ069292;
 Thu, 5 Sep 2019 14:33:29 -0500
Subject: Re: [RESEND PATCH next v2 0/6] ARM: keystone: update dt and enable
 cpts support
To: <santosh.shilimkar@oracle.com>, Santosh Shilimkar <ssantosh@kernel.org>
References: <20190705151247.30422-1-grygorii.strashko@ti.com>
 <2ef8b34e-7a6e-b3e4-90e0-c4e7f16c2e99@oracle.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <323c1835-e6b0-9153-8d1e-06200d5e2201@ti.com>
Date: Thu, 5 Sep 2019 22:33:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <2ef8b34e-7a6e-b3e4-90e0-c4e7f16c2e99@oracle.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_123334_344981_BFC3989F 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Murali Karicheri <m-karicheri2@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2FudG9zaCwKCk9uIDA2LzA3LzIwMTkgMDI6NDgsIHNhbnRvc2guc2hpbGlta2FyQG9yYWNs
ZS5jb20gd3JvdGU6Cj4gT24gNy81LzE5IDg6MTIgQU0sIEdyeWdvcmlpIFN0cmFzaGtvIHdyb3Rl
Ogo+PiBIaSBTYW50b3NoLAo+Pgo+PiBUaGlzIHNlcmllcyBpcyBzZXQgb2YgcGxhdGZvcm0gY2hh
bmdlcyByZXF1aXJlZCB0byBlbmFibGUgTkVUQ1AgQ1BUUyByZWZlcmVuY2UKPj4gY2xvY2sgc2Vs
ZWN0aW9uIGFuZCBmaW5hbCBwYXRjaCB0byBlbmFibGUgQ1BUUyBmb3IgS2V5c3RvbmUgNjZBSzJF
L0wvSEsgU29Dcy4KPj4KPj4gVGhvc2UgcGF0Y2hlcyB3ZXJlIHBvc3RlZCBhbHJlYWR5IFsxXSB0
b2dldGhlciB3aXRoIGRyaXZlcidzIGNoYW5nZXMsIHNvIHRoaXMKPj4gaXMgcmUtc2VuZCBvZiBE
VC9wbGF0Zm9ybSBzcGVjaWZpYyBjaGFuZ2VzIG9ubHksIGFzIGRyaXZlcidzIGNoYW5nZXMgaGF2
ZQo+PiBiZWVuIG1lcmdlZCBhbHJlYWR5Lgo+Pgo+PiBQYXRjaGVzIDEtNTogQ1BUUyBEVCBub2Rl
cyB1cGRhdGUgZm9yIFRJIEtleXN0b25lIDIgNjZBSzJISy9FL0wgU29Dcy4KPj4gUGF0Y2ggNjog
ZW5hYmxlcyBDUFRTIGZvciBUSSBLZXlzdG9uZSAyIDY2QUsySEsvRS9MIFNvQ3MuCj4+Cj4+IFsx
XSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzEwOTgwMDM3Lwo+Pgo+PiBHcnln
b3JpaSBTdHJhc2hrbyAoNik6Cj4+IMKgwqAgQVJNOiBkdHM6IGtleXN0b25lLWNsb2NrczogYWRk
IGlucHV0IGZpeGVkIGNsb2Nrcwo+PiDCoMKgIEFSTTogZHRzOiBrMmUtY2xvY2tzOiBhZGQgaW5w
dXQgZXh0LiBmaXhlZCBjbG9ja3MgdHNpcGNsa2EvYgo+PiDCoMKgIEFSTTogZHRzOiBrMmUtbmV0
Y3A6IGFkZCBjcHRzIHJlZmNsa19tdXggbm9kZQo+PiDCoMKgIEFSTTogZHRzOiBrMmhrLW5ldGNw
OiBhZGQgY3B0cyByZWZjbGtfbXV4IG5vZGUKPj4gwqDCoCBBUk06IGR0czogazJsLW5ldGNwOiBh
ZGQgY3B0cyByZWZjbGtfbXV4IG5vZGUKPj4gwqDCoCBBUk06IGNvbmZpZ3M6IGtleXN0b25lOiBl
bmFibGUgY3B0cwo+Pgo+IFdpbGwgYWRkIHRoZXNlIGZvciA1LjQgcXVldWUuIFRoYW5rcyAhIQoK
U3J5LCB0aGF0IEknbSBkaXN0dXJiaW5nIHlvdSwgYnV0IEkgZG8gbm90IHNlZSB0aG9zZSBwYXRj
aGVzIGFwcGxpZWQ/CgoKCi0tIApCZXN0IHJlZ2FyZHMsCmdyeWdvcmlpCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
