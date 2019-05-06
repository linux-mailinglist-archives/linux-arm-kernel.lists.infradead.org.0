Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C9F14A41
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 14:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvzRxVGMCK81pZuQ8AGyxgsenw3dR4ePPdY/uqo+4Os=; b=ogv7+x3giExrUi
	yJZSD78FX2B9fuqMV6ZO+24Rn3L8Dex3tvg767oOMhVlfwL4G63yfmFIQJt5Pgahz4SyA3MdTQYul
	5LIoCojEs66QJBlp2+kf91tmwR5uZ8ezKB6N622j32fXNEN5Ysy+tR6XF1WB/xeTmFSG/mysd96yR
	EoxqlSVefIbQkrtuu6+kpOiDW6cfIkWROYKKq2x2Ga/j33fxZyGb3IRi2HSUAWIbxpjwnFQvmT8tl
	ia6yofR4320H5nY45xzvoJUGq5MzkUfZkTTGmIHBOoKFZZ6cxMpjINyls+fAmwacXVR8VdbHzhP8L
	oPQoT1j5mfOR00oasV8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNd6Z-0008E8-BI; Mon, 06 May 2019 12:52:27 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNd6T-0007vw-LX
 for linux-arm-kernel@bombadil.infradead.org; Mon, 06 May 2019 12:52:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8aDyln+tva0twlHMQ4A9ci2qDy3svDO4SbE9n9FaL0E=; b=jQ9zlhT9f3dEbrqECozRdDPMQl
 oCqs1coFQOIGm9ddSgHLIY2+d2zs6WK3VTNN+I/Nd2O1Er5KS+IKG7IqlEvsgZ66IVtFSdyELjHhR
 Fubdg35xcJsJb/UExTXapUlJ0tIM7GyZYD7RzLoAy8z0P8r+SjdOlYzLMBqaW17tcaij3TbTtUoPz
 z8rVVJMGLey6cYY93QekkVZyqMr14crPM2K7ieWu/dbPbft0AtMrLK/OfZ7PJcwKJf9CSG+4YetQU
 NDUgkMmsRQhvjsSBUDQxTICg0XroMr22lDaLyzTdeaijpyT26eOh1ef+M+d5x64mBAFl0J4BOkO60
 zUJX6HWg==;
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNcqR-0004yf-MB
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 12:35:50 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x46CZfDV017952;
 Mon, 6 May 2019 07:35:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1557146141;
 bh=8aDyln+tva0twlHMQ4A9ci2qDy3svDO4SbE9n9FaL0E=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ZXbFznSfybn+a3X80pspSyGWIv2xuyxSbGsOm70jnGNpbsIptk8XyK7COR19qsRRx
 91R5b5/QoYJkSgS4TFdWEHQ6gkeljIteLrwFo2uE8X3Xm8HCkFH8gL/jAVpFIqMGDw
 5QZGmsOrClwwnEF4YcIwD53cBBKJTFClqnX0S8BA=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x46CZf2Y024842
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 6 May 2019 07:35:41 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 6 May
 2019 07:35:40 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 6 May 2019 07:35:40 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x46CYpUL110286;
 Mon, 6 May 2019 07:35:38 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH 15/16] dmaengine: ti: New driver for K3 UDMA - split#6:
 Kconfig and Makefile
Date: Mon, 6 May 2019 15:34:55 +0300
Message-ID: <20190506123456.6777-16-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190506123456.6777-1-peter.ujfalusi@ti.com>
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_133548_023317_6AA415DF 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
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
b25maWcgYi9kcml2ZXJzL2RtYS90aS9LY29uZmlnCmluZGV4IGU1ZTc0ZTEzNjFkYy4uNDU0MmVh
ZTY0Y2YyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS90aS9LY29uZmlnCisrKyBiL2RyaXZlcnMv
ZG1hL3RpL0tjb25maWcKQEAgLTMzLDUgKzMzLDE4IEBAIGNvbmZpZyBETUFfT01BUAogCSAgRW5h
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
