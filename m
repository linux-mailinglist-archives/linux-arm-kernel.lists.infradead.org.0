Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAEC1BA220
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 13:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hrFSc9ETkSCQTAcRDclvR52T44HDnoWoLm65gnKUAno=; b=pTPEyfRkQ6a2pxztxRYly22rR
	nkZvFwN0EUI9BS5onoIJ+Ed+2xUghU2+/yA/o791AhRDXWZVzikIXi+SN2Xa7xyw/ay6mEHs+uSVb
	pa1P3S+TNcQIblh0DGCPZ1EVKiCKwB5t3LoWE50QR1pjtEx7jkwZo6gb0ce5Mnud28Lrw0rvIpCaF
	j7XK84JzLIiGqpLcSh3FBnmKgrmvt20FVsQmtT4O6yL6q4WS7cROOB7cXDtYDmAxOwFgqP6032+JF
	Ho+Jz8GUc70ukIheicKduscrh3M0/TQ0RCFp5zGceGaEVqnZOxPR7V5eKhrwDGUWZ3V3qM8wzXE8J
	rhGQo2XAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT1ji-0003Z1-Of; Mon, 27 Apr 2020 11:15:42 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT1jV-0003XW-Ds
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 11:15:31 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03RBFSN3063594;
 Mon, 27 Apr 2020 06:15:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587986128;
 bh=gWEr5tUocVL65YN3YdxkcoYlxJ4xnh76tpLqZoEi+T4=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=BXLQ8oWgszzhS0GV9UfDuuVUIYnrSddUEq0vE+9Rs9AACJ3poew6mm6tlOp/V0bfI
 4/WQE22r6YIZwkiu1I0urYnMsabV716UlqXvWUcP/5/UvvyjtcNvFwMdcc84Tciw+b
 yCHmotWXuGxhCX8NBjOsiZ1UVnUes0ZtGV3qKBQg=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03RBFS42121540
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Apr 2020 06:15:28 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 27
 Apr 2020 06:15:27 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 27 Apr 2020 06:15:27 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03RBFPaI063776;
 Mon, 27 Apr 2020 06:15:26 -0500
Subject: Re: [PATCH 2/3] arm64: dts: ti: k3-j721e-main.dtsi: Add DSS node
To: Jyri Sarha <jsarha@ti.com>, Tero Kristo <t-kristo@ti.com>, Nishanth Menon
 <nm@ti.com>, Rob Herring <robh+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200422091512.950-1-tomi.valkeinen@ti.com>
 <20200422091512.950-2-tomi.valkeinen@ti.com>
 <ade3a177-f060-bc40-bcc1-494093e3071d@ti.com>
 <47b7f858-a8d9-1c3b-4dca-2cc493f6730f@ti.com>
 <fa497e8d-7911-5f3d-cf91-347370f8edaa@ti.com>
 <217c0c14-f4fb-7321-9f57-205df0cd01fe@ti.com>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <9a4b1d0a-c871-2280-8d22-196730e9385b@ti.com>
Date: Mon, 27 Apr 2020 14:15:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <217c0c14-f4fb-7321-9f57-205df0cd01fe@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_041529_832199_07BBAFAE 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjcvMDQvMjAyMCAxNDoxMCwgSnlyaSBTYXJoYSB3cm90ZToKPiBPbiAyNy8wNC8yMDIwIDEz
OjUxLCBUb21pIFZhbGtlaW5lbiB3cm90ZToKPj4gT24gMjcvMDQvMjAyMCAxMzozNywgSnlyaSBT
YXJoYSB3cm90ZToKPj4+IE9uIDI3LzA0LzIwMjAgMTM6MDksIFRlcm8gS3Jpc3RvIHdyb3RlOgo+
Pj4+PiArwqDCoMKgwqDCoMKgwqAgc3RhdHVzID0gImRpc2FibGVkIjsKPj4+Pgo+Pj4+IEFnYWlu
LCB3aHkgZGlzYWJsZWQgYnkgZGVmYXVsdD8KPj4+Pgo+Pj4KPj4+IHRpZHNzIGRldmljZSBpcyBu
b3QgZnVuY3Rpb25hbCB3aXRob3V0IGEgZGVmaW5lZCB2aWRlby1wb3J0LiBUaGUgZHJpdmVyCj4+
PiBpcyBub3QgaW1wbGVtZW50ZWQgaW4gYSB3YXkgdGhhdCBpdCB3b3VsZCBoYW5kbGUgYSBicm9r
ZW4gY29uZmlndXJhdGlvbgo+Pj4gZ3JhY2VmdWxseS4KPj4KPj4gVGhlbiB3ZSBuZWVkIHRvIGZp
eCBpdC4gVGhlIGRyaXZlciBzaG91bGQgaGFuZGxlIHRoZSBjYXNlIHdoZXJlIHRoZXJlCj4+IGFy
ZSBubyBwb3J0cyBkZWZpbmVkIGp1c3QgZmluZS4KPj4KPiAKPiBKdXN0IGJ5IHJlYWRpbmcgdGhl
IGNvZGUsIEkgd291bGQgc2F5IHRoYXQgY3VycmVudGx5IHRoZSBwcm9iZSB3b3VsZAo+IGZhaWwg
d2l0aCByZXR1cm5lZCAtRU5PTUVNIGFmdGVyIGNhbGxpbmcgZHJtX3ZibGFua19pbml0KCkgd2l0
aCB6ZXJvIENSVENzLgo+IAo+IFNvIHNob3VsZCB0aGUgcHJvYmUgZmFpbCBncmFjZWZ1bGx5IGFu
ZCBzaWxlbnRseSwgb3Igc2hvdWxkIHdlIHRyeSB0bwo+IHJlZ2lzdGVyIGEgRFJNIGRldmljZSB3
aXRoIG5vIENSVENzPyBJcyB0aGF0IGV2ZW4gcG9zc2libGU/CgpNeSBmaXJzdCB0aG91Z2h0IGlz
IHRoYXQgdGhlIGRyaXZlciBzaG91bGQgZXhpdCBwcm9iZSBzaWxlbnRseSB3aXRoIEVOT0RFViBp
ZiB0aGVyZSBhcmUgbm8gb3V0cHV0cyAKZGVmaW5lZCAoYnV0LCBvZiBjb3Vyc2UsIHdpdGggRVBS
T0JFX0RFRkVSIGlmIHRoZXJlIGFyZSBvdXRwdXRzIHdoaWNoIGhhdmVuJ3QgYmVlbiBwcm9iZWQg
eWV0KS4KCkl0IGdldHMgYSBiaXQgbW9yZSBjb21wbGV4IGlmIHdlIGV2ZXIgc3VwcG9ydCB3cml0
ZWJhY2ssIGFzIHRoYXQgY2FuIGJlIHVzZWQgYXMgbWVtLXRvLW1lbSB3aXRob3V0IAphbnkgZGlz
cGxheXMsIGJ1dCBJIHRoaW5rIHdlIGNhbiBpZ25vcmUgdGhhdCBmb3Igbm93LgoKICBUb21pCgot
LSAKVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAg
SGVsc2lua2kuClktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9t
aWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
