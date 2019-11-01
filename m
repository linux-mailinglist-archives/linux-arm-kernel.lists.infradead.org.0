Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74470EBFE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:47:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LYPfPI1Tfr3UIqj1NBhumjERgRApnop+8QuAPHqYfY=; b=Na/pumetwJO25w
	1080vIltDvRiVe/x6thFfdLag0OhpH1f/0Du24KYnn7dkMpS/OPS28v/Bd467UjKxV84HmozlBoFU
	FlEm23xy6xWouLt2bE+4M/QGj/KNIhlNQmFiDf3DZJLrQOoxUco4HhkAX2ViRilXeyhSS4qjFZKUH
	KKsFuLRlbnWkpaUPDGSXuNCRyHoYiQjbhMmQ26O1YkyU34Pn0+U4mCkNap9linBRETfk8dDtpeGwY
	HEe6yaKO2zTYs3C+tTGf71/RCO8p52yyuxQI8MRx49bteL2y6b2pUal7+V8Kgpcs8GGi9cqdIDyRl
	N5/WABRs8TzhMEcDJPIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSb7-0007Qe-65; Fri, 01 Nov 2019 08:47:57 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSUo-0000mv-Mv
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 08:41:29 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA18fNFi021460;
 Fri, 1 Nov 2019 03:41:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572597683;
 bh=EhFkztpAXr99tdQOKA4eamtWfuHwfN2ZGnP4SNgOkUE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Qzyh9deX5WDxYdL6IHLD9xdkCnJnQUJulNAe+ci4NoZPuCZbheQaK+uhEkpxyhTxu
 C2iLYUcE72XDhp9EjVYIvnbZpCI7mQiARyUK17N6Rm+IWB9A8leoUn5J25jJrjtoO2
 NJQwq2X8Vrh0d0TgzgOZzre+pelTbjzEeIZPhgFk=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA18fNoH047655
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 1 Nov 2019 03:41:23 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 1 Nov
 2019 03:41:09 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 1 Nov 2019 03:41:09 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA18eP8n036903;
 Fri, 1 Nov 2019 03:41:19 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH v4 14/15] dmaengine: ti: New driver for K3 UDMA - split#6:
 Kconfig and Makefile
Date: Fri, 1 Nov 2019 10:41:34 +0200
Message-ID: <20191101084135.14811-15-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101084135.14811-1-peter.ujfalusi@ti.com>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_014126_880829_B3315719 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
NCArKysrKysrKysrKysrKwogZHJpdmVycy9kbWEvdGkvTWFrZWZpbGUgfCAgMSArCiAyIGZpbGVz
IGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS90aS9L
Y29uZmlnIGIvZHJpdmVycy9kbWEvdGkvS2NvbmZpZwppbmRleCA3MmYzZDI3MjgxNzguLjA0Yzk4
ZTIxNWJhNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEvdGkvS2NvbmZpZworKysgYi9kcml2ZXJz
L2RtYS90aS9LY29uZmlnCkBAIC0zNCw2ICszNCwyMCBAQCBjb25maWcgRE1BX09NQVAKIAkgIEVu
YWJsZSBzdXBwb3J0IGZvciB0aGUgVEkgc0RNQSAoU3lzdGVtIERNQSBvciBETUE0KSBjb250cm9s
bGVyLiBUaGlzCiAJICBETUEgZW5naW5lIGlzIGZvdW5kIG9uIE9NQVAgYW5kIERSQTd4eCBwYXJ0
cy4KIAorY29uZmlnIFRJX0szX1VETUEKKwl0cmlzdGF0ZSAiVGV4YXMgSW5zdHJ1bWVudHMgVURN
QSBzdXBwb3J0IgorCWRlcGVuZHMgb24gQVJDSF9LMyB8fCBDT01QSUxFX1RFU1QKKwlkZXBlbmRz
IG9uIFRJX1NDSV9QUk9UT0NPTAorCWRlcGVuZHMgb24gVElfU0NJX0lOVEFfSVJRQ0hJUAorCXNl
bGVjdCBETUFfRU5HSU5FCisJc2VsZWN0IERNQV9WSVJUVUFMX0NIQU5ORUxTCisJc2VsZWN0IFRJ
X0szX1JJTkdBQ0MKKwlzZWxlY3QgVElfSzNfUFNJTAorCWRlZmF1bHQgeQorICAgICAgICBoZWxw
CisJICBFbmFibGUgc3VwcG9ydCBmb3IgdGhlIFRJIFVETUEgKFVuaWZpZWQgRE1BKSBjb250cm9s
bGVyLiBUaGlzCisJICBETUEgZW5naW5lIGlzIHVzZWQgaW4gQU02NXguCisKIGNvbmZpZyBUSV9L
M19QU0lMCiAJYm9vbAogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS90aS9NYWtlZmlsZSBiL2Ry
aXZlcnMvZG1hL3RpL01ha2VmaWxlCmluZGV4IGY4ZDkxMmFkN2VhZi4uOWQ3ODdmMDA5MTk1IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2RtYS90aS9NYWtlZmlsZQorKysgYi9kcml2ZXJzL2RtYS90aS9N
YWtlZmlsZQpAQCAtMiw1ICsyLDYgQEAKIG9iai0kKENPTkZJR19USV9DUFBJNDEpICs9IGNwcGk0
MS5vCiBvYmotJChDT05GSUdfVElfRURNQSkgKz0gZWRtYS5vCiBvYmotJChDT05GSUdfRE1BX09N
QVApICs9IG9tYXAtZG1hLm8KK29iai0kKENPTkZJR19USV9LM19VRE1BKSArPSBrMy11ZG1hLm8K
IG9iai0kKENPTkZJR19USV9LM19QU0lMKSArPSBrMy1wc2lsLm8gazMtcHNpbC1hbTY1NC5vIGsz
LXBzaWwtajcyMWUubwogb2JqLSQoQ09ORklHX1RJX0RNQV9DUk9TU0JBUikgKz0gZG1hLWNyb3Nz
YmFyLm8KLS0gClBldGVyCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5r
YXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4g
S290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
