Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A199DC2D71
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 08:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZeQocS6AhADg9Ycx0uFLxq4eTqfAGDmJ+YxDq+zvzI=; b=lphxS0MaYe7VZr
	mDMqdK0FWYz1RI3w+1r3zTyFZGBCOyWeoxSWom+AIobJb9CiSoOuiKbzAQfC1+8kU0WkJBbIOX4gj
	YkeuQJB4E9U8OXqYG9j4QvtdA0efmop/ZNAzPVvG9NE7xBPnFT5spht6P/AlEIp51I60094Uh4Lr6
	5DDcOAfH2o/rmpj11gE2AYhFBQt080ceQByDAoNd58KMOev0PX1AWBP7ZY6Hr2ibPPyjtQqh8abQh
	8VwB5cOrFBHjLhCqo9YF5KaAFIsc4oa7ELypMfFanZH7lzLKTMKqbxdpREiSxk4DTUD7mNWPCbfdD
	BCN0UDYfGJ8n5mqRJOjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFBX3-0005Zt-Ke; Tue, 01 Oct 2019 06:21:09 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFBTD-0000oY-63
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 06:17:13 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x916H8W9128340;
 Tue, 1 Oct 2019 01:17:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1569910628;
 bh=HyIOBD3MNPmsZnPcqMBjSQyryNrZzCytNl/H3AWymMU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=pP+Mg3kWp8QtuHUso4CLX8Ww2iZb8kHUOzpRh/IxbPKoy7MueOJ6OEXUht935DP2M
 H9y8aoDJ8kZd/EoZUrxu0cDwho+8AjGsYDdExx4lOLCQcA7Q1RujU/5NLXdnDZ0ZAg
 qIE3gS31Qe711fjxTOBXlQls7FEMNxB4JXdrJyz4=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x916H84e116057
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 1 Oct 2019 01:17:08 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 1 Oct
 2019 01:16:57 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 1 Oct 2019 01:17:07 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x916GGXI090310;
 Tue, 1 Oct 2019 01:17:03 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH v3 13/14] dmaengine: ti: New driver for K3 UDMA - split#6:
 Kconfig and Makefile
Date: Tue, 1 Oct 2019 09:17:03 +0300
Message-ID: <20191001061704.2399-14-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191001061704.2399-1-peter.ujfalusi@ti.com>
References: <20191001061704.2399-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_231711_351865_C901F898 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [198.47.19.142 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, lokeshvutla@ti.com,
 j-keerthy@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 tony@atomide.com, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3BsaXQgcGF0Y2ggZm9yIHJldmlldyBjb250YWluaW5nOgpLY29uZmlnIGFuZCBNYWtlZmlsZSBj
aGFuZ2VzCgpETUEgZHJpdmVyIGZvcgpUZXhhcyBJbnN0cnVtZW50cyBLMyBOQVZTUyBVbmlmaWVk
IERNQSDigJMgUGVyaXBoZXJhbCBSb290IENvbXBsZXggKFVETUEtUCkKClRoZSBVRE1BLVAgaXMg
aW50ZW5kZWQgdG8gcGVyZm9ybSBzaW1pbGFyIChidXQgc2lnbmlmaWNhbnRseSB1cGdyYWRlZCkg
ZnVuY3Rpb25zCmFzIHRoZSBwYWNrZXQtb3JpZW50ZWQgRE1BIHVzZWQgb24gcHJldmlvdXMgU29D
IGRldmljZXMuIFRoZSBVRE1BLVAgbW9kdWxlCnN1cHBvcnRzIHRoZSB0cmFuc21pc3Npb24gYW5k
IHJlY2VwdGlvbiBvZiB2YXJpb3VzIHBhY2tldCB0eXBlcy4gVGhlIFVETUEtUCBpcwphcmNoaXRl
Y3RlZCB0byBmYWNpbGl0YXRlIHRoZSBzZWdtZW50YXRpb24gYW5kIHJlYXNzZW1ibHkgb2YgU29D
IERNQSBkYXRhCnN0cnVjdHVyZSBjb21wbGlhbnQgcGFja2V0cyB0by9mcm9tIHNtYWxsZXIgZGF0
YSBibG9ja3MgdGhhdCBhcmUgbmF0aXZlbHkKY29tcGF0aWJsZSB3aXRoIHRoZSBzcGVjaWZpYyBy
ZXF1aXJlbWVudHMgb2YgZWFjaCBjb25uZWN0ZWQgcGVyaXBoZXJhbC4gTXVsdGlwbGUKVHggYW5k
IFJ4IGNoYW5uZWxzIGFyZSBwcm92aWRlZCB3aXRoaW4gdGhlIERNQSB3aGljaCBhbGxvdyBtdWx0
aXBsZSBzZWdtZW50YXRpb24Kb3IgcmVhc3NlbWJseSBvcGVyYXRpb25zIHRvIGJlIG9uZ29pbmcu
IFRoZSBETUEgY29udHJvbGxlciBtYWludGFpbnMgc3RhdGUKaW5mb3JtYXRpb24gZm9yIGVhY2gg
b2YgdGhlIGNoYW5uZWxzIHdoaWNoIGFsbG93cyBwYWNrZXQgc2VnbWVudGF0aW9uIGFuZApyZWFz
c2VtYmx5IG9wZXJhdGlvbnMgdG8gYmUgdGltZSBkaXZpc2lvbiBtdWx0aXBsZXhlZCBiZXR3ZWVu
IGNoYW5uZWxzIGluIG9yZGVyCnRvIHNoYXJlIHRoZSB1bmRlcmx5aW5nIERNQSBoYXJkd2FyZS4g
QW4gZXh0ZXJuYWwgRE1BIHNjaGVkdWxlciBpcyB1c2VkIHRvCmNvbnRyb2wgdGhlIG9yZGVyaW5n
IGFuZCByYXRlIGF0IHdoaWNoIHRoaXMgbXVsdGlwbGV4aW5nIG9jY3VycyBmb3IgVHJhbnNtaXQK
b3BlcmF0aW9ucy4gVGhlIG9yZGVyaW5nIGFuZCByYXRlIG9mIFJlY2VpdmUgb3BlcmF0aW9ucyBp
cyBpbmRpcmVjdGx5IGNvbnRyb2xsZWQKYnkgdGhlIG9yZGVyIGluIHdoaWNoIGJsb2NrcyBhcmUg
cHVzaGVkIGludG8gdGhlIERNQSBvbiB0aGUgUnggUFNJLUwgaW50ZXJmYWNlLgoKVGhlIFVETUEt
UCBhbHNvIHN1cHBvcnRzIGFjdGluZyBhcyBib3RoIGEgVVRDIGFuZCBVRE1BLUMgZm9yIGl0cyBp
bnRlcm5hbApjaGFubmVscy4gQ2hhbm5lbHMgaW4gdGhlIFVETUEtUCBjYW4gYmUgY29uZmlndXJl
ZCB0byBiZSBlaXRoZXIgUGFja2V0LUJhc2VkIG9yClRoaXJkLVBhcnR5IGNoYW5uZWxzIG9uIGEg
Y2hhbm5lbCBieSBjaGFubmVsIGJhc2lzLgoKVGhlIGluaXRpYWwgZHJpdmVyIHN1cHBvcnRzOgot
IE1FTV9UT19NRU0gKFRSIG1vZGUpCi0gREVWX1RPX01FTSAoUGFja2V0IC8gVFIgbW9kZSkKLSBN
RU1fVE9fREVWIChQYWNrZXQgLyBUUiBtb2RlKQotIEN5Y2xpYyAoUGFja2V0IC8gVFIgbW9kZSkK
LSBNZXRhZGF0YSBmb3IgZGVzY3JpcHRvcnMKClNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNp
IDxwZXRlci51amZhbHVzaUB0aS5jb20+Ci0tLQogZHJpdmVycy9kbWEvdGkvS2NvbmZpZyAgfCAx
MyArKysrKysrKysrKysrCiBkcml2ZXJzL2RtYS90aS9NYWtlZmlsZSB8ICAxICsKIDIgZmlsZXMg
Y2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hL3RpL0tj
b25maWcgYi9kcml2ZXJzL2RtYS90aS9LY29uZmlnCmluZGV4IGQ1MDdjMjRmYmYzMS4uYjZiNzU3
MWJlMzk0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS90aS9LY29uZmlnCisrKyBiL2RyaXZlcnMv
ZG1hL3RpL0tjb25maWcKQEAgLTM0LDUgKzM0LDE4IEBAIGNvbmZpZyBETUFfT01BUAogCSAgRW5h
YmxlIHN1cHBvcnQgZm9yIHRoZSBUSSBzRE1BIChTeXN0ZW0gRE1BIG9yIERNQTQpIGNvbnRyb2xs
ZXIuIFRoaXMKIAkgIERNQSBlbmdpbmUgaXMgZm91bmQgb24gT01BUCBhbmQgRFJBN3h4IHBhcnRz
LgogCitjb25maWcgVElfSzNfVURNQQorCXRyaXN0YXRlICJUZXhhcyBJbnN0cnVtZW50cyBVRE1B
IHN1cHBvcnQiCisJZGVwZW5kcyBvbiBBUkNIX0szIHx8IENPTVBJTEVfVEVTVAorCWRlcGVuZHMg
b24gVElfU0NJX1BST1RPQ09MCisJZGVwZW5kcyBvbiBUSV9TQ0lfSU5UQV9JUlFDSElQCisJc2Vs
ZWN0IERNQV9FTkdJTkUKKwlzZWxlY3QgRE1BX1ZJUlRVQUxfQ0hBTk5FTFMKKwlzZWxlY3QgVElf
SzNfUklOR0FDQworCWRlZmF1bHQgeQorICAgICAgICBoZWxwCisJICBFbmFibGUgc3VwcG9ydCBm
b3IgdGhlIFRJIFVETUEgKFVuaWZpZWQgRE1BKSBjb250cm9sbGVyLiBUaGlzCisJICBETUEgZW5n
aW5lIGlzIHVzZWQgaW4gQU02NXguCisKIGNvbmZpZyBUSV9ETUFfQ1JPU1NCQVIKIAlib29sCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2RtYS90aS9NYWtlZmlsZSBiL2RyaXZlcnMvZG1hL3RpL01ha2Vm
aWxlCmluZGV4IDExM2U1OWVjOWMzMi4uZWJkNDgyMmUwNjRlIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2RtYS90aS9NYWtlZmlsZQorKysgYi9kcml2ZXJzL2RtYS90aS9NYWtlZmlsZQpAQCAtMiw0ICsy
LDUgQEAKIG9iai0kKENPTkZJR19USV9DUFBJNDEpICs9IGNwcGk0MS5vCiBvYmotJChDT05GSUdf
VElfRURNQSkgKz0gZWRtYS5vCiBvYmotJChDT05GSUdfRE1BX09NQVApICs9IG9tYXAtZG1hLm8K
K29iai0kKENPTkZJR19USV9LM19VRE1BKSArPSBrMy11ZG1hLm8KIG9iai0kKENPTkZJR19USV9E
TUFfQ1JPU1NCQVIpICs9IGRtYS1jcm9zc2Jhci5vCi0tIApQZXRlcgoKVGV4YXMgSW5zdHJ1bWVu
dHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClktdHVubnVz
L0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
