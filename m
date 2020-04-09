Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 341FE1A2F75
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 08:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tk5SHrrtfWP7dYyampTjrX+C0CzEFsnvAk7WDjAlvUM=; b=adxrcTs7onj+PV
	2qJAWiVLHIGo3G/oI0iH+IKT4lEuPFwx7tA6NsMr4m8WhKdR+rzzFcxBGWhiaqDuJ2xl1D07y8QIN
	rUJnvwUZiUSGLvS79XUXg4oXNoz7BZg6PKRqidWnJZvgGCXEijwuly6oY4ZvUAyXTn6k97H/lGMPv
	dOBixW171pLWYSM+KwDuqqx2052ozLrBxLfgvd3M/MXbc23BdVAuuydr7ILJimrh3JqeYnZ/NPR3p
	tfI9O0AgfNt2QcXRJCQU8QSzlLG8v5e9GvkB9Inb1+bMIR+BYzGcfW0HWtkjTpqU6HGltjUoqHKnL
	dnlqs32tT1bKchewhPew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMQwz-00088D-6Y; Thu, 09 Apr 2020 06:46:09 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMQw0-0004zx-20
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 06:45:14 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0396ix9U027169;
 Thu, 9 Apr 2020 01:44:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1586414699;
 bh=vdhHAqjD6KP/c72S1QR0R+EvzV4ffIQ2S0zwlWNW4fI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=IPfcJLrPfAQJk2ml4I0UtMDVqPON9fKBS/4V5zp26L/WrhwTcjxlQ0j2Dodf37xem
 ljRWxQJe6iEb63WgvnS6PwK3aDUrBFQNOOqOtTtl2bZWPwJvx9Y6J/CVg1pthsIQI7
 /8WaOvK3ygzM1KWGHNp2D/+9Utz3HurOPNDuCCpI=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0396ixNK088950
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 9 Apr 2020 01:44:59 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 9 Apr
 2020 01:44:58 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 9 Apr 2020 01:44:58 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0396iu6b123222;
 Thu, 9 Apr 2020 01:44:56 -0500
Subject: Re: [PATCH] dmaengine: ti: k3-psil: fix deadlock on error path
To: Grygorii Strashko <grygorii.strashko@ti.com>, Vinod Koul
 <vkoul@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, <dmaengine@vger.kernel.org>
References: <20200408185501.30776-1-grygorii.strashko@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <d4a71f25-8a25-76bc-bbf7-749e20268339@ti.com>
Date: Thu, 9 Apr 2020 09:45:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200408185501.30776-1-grygorii.strashko@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_234508_192721_B0C855BC 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
Cc: Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwOC8wNC8yMDIwIDIxLjU1LCBHcnlnb3JpaSBTdHJhc2hrbyB3cm90ZToKPiBUaGUgbXV0
ZXhfdW5sb2NrKCkgaXMgbWlzc2VkIG9uIGVycm9yIHBhdGggb2YgcHNpbF9nZXRfZXBfY29uZmln
KCkKPiB3aGljaCBjYXVzZXMgZGVhZGxvY2ssIHNvIGFkZCBtaXNzZWQgbXV0ZXhfdW5sb2NrKCku
CgpBaCwgeW91IGFyZSByaWdodCwgdGhhbmtzIGZvciBjYXRjaGluZyBpdCEKCkFja2VkLWJ5OiBQ
ZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1c2lAdGkuY29tPgoKPiBGaXhlczogOGM2YmI2MmY2
YjRhICgiZG1hZW5naW5lOiB0aTogazMgUFNJLUwgcmVtb3RlIGVuZHBvaW50IGNvbmZpZ3VyYXRp
b24iKQo+IFNpZ25lZC1vZmYtYnk6IEdyeWdvcmlpIFN0cmFzaGtvIDxncnlnb3JpaS5zdHJhc2hr
b0B0aS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZG1hL3RpL2szLXBzaWwuYyB8IDEgKwo+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEv
dGkvazMtcHNpbC5jIGIvZHJpdmVycy9kbWEvdGkvazMtcHNpbC5jCj4gaW5kZXggZDdiOTY1MDQ5
Y2NiLi5mYjdjODE1MGIwZDEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kbWEvdGkvazMtcHNpbC5j
Cj4gKysrIGIvZHJpdmVycy9kbWEvdGkvazMtcHNpbC5jCj4gQEAgLTI3LDYgKzI3LDcgQEAgc3Ry
dWN0IHBzaWxfZW5kcG9pbnRfY29uZmlnICpwc2lsX2dldF9lcF9jb25maWcodTMyIHRocmVhZF9p
ZCkKPiAgCQkJc29jX2VwX21hcCA9ICZqNzIxZV9lcF9tYXA7Cj4gIAkJfSBlbHNlIHsKPiAgCQkJ
cHJfZXJyKCJQU0lMOiBObyBjb21wYXRpYmxlIG1hY2hpbmUgZm91bmQgZm9yIG1hcFxuIik7Cj4g
KwkJCW11dGV4X3VubG9jaygmZXBfbWFwX211dGV4KTsKPiAgCQkJcmV0dXJuIEVSUl9QVFIoLUVO
T1RTVVBQKTsKPiAgCQl9Cj4gIAkJcHJfZGVidWcoIiVzOiBVc2luZyBtYXAgZm9yICVzXG4iLCBf
X2Z1bmNfXywgc29jX2VwX21hcC0+bmFtZSk7Cj4gCgotIFDDqXRlcgoKVGV4YXMgSW5zdHJ1bWVu
dHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClktdHVubnVz
L0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
