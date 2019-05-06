Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9439D149E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 14:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETlaba/yTpRvPiVsZRlzjpbb1omn4zCDXxYhdiawN3w=; b=pQ/7pF0rL1CY5Y
	TErhHO5QMul+XY0vDLc4jIb3CSfAN84Ns3R4lrRFXgVzh9OPBeXEgnBL9vDoJA6EzUD8Bzi8GSRX4
	VoYKGvvY0PtjojUFwDYWRBKmIyED6bsFmvYwC1dsVov1D6uN9HtsXW8mmuY377Z+M63FlyMWLMByz
	zwbEJevzMCeB0ulkGSCzdg5Ho9nBx5UqHJFSffuHDS8AV41mIWEkCoGhMwEySVz7gsH6qumCKCTYB
	9Gs6Yq7nI4PgTr6O7thQGF9InV92Dt1bPF9gqy7WHBHmlBVire+bz0J3GO5g1MCXESmrJNjIiSKuO
	nz8j/7ZOVVecnmsgZS7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNcrX-0000k7-W6; Mon, 06 May 2019 12:36:56 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNcqA-0007g6-NO
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 12:35:59 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x46CZNDa059224;
 Mon, 6 May 2019 07:35:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1557146123;
 bh=E/RDTiGfkvfUatsiHKhpgwopQi5Kz6u+zKIcoE9UgMY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Tpqciy604lId4D1+IcqarpqN0RMg17+qKFHZNtuMpvOtthACi+EhZRQP8IvF2UFN0
 ZOxQPY54FG9tlrJo59ATmB3+kazsdoaQhXzXCrOiyr00E1tbMzw0unQmILpqy+77iF
 f/25SktFH9L6vNguhDNXn5XI/MovU38SBbWjsUOE=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x46CZN0K129509
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 6 May 2019 07:35:23 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 6 May
 2019 07:35:22 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 6 May 2019 07:35:22 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x46CYpUF110286;
 Mon, 6 May 2019 07:35:19 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH 09/16] dt-bindings: dma: ti: Add document for K3 UDMA
Date: Mon, 6 May 2019 15:34:49 +0300
Message-ID: <20190506123456.6777-10-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190506123456.6777-1-peter.ujfalusi@ti.com>
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_053531_420019_C8032185 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

TmV3IGJpbmRpbmcgZG9jdW1lbnQgZm9yClRleGFzIEluc3RydW1lbnRzIEszIE5BVlNTIFVuaWZp
ZWQgRE1BIOKAkyBQZXJpcGhlcmFsIFJvb3QgQ29tcGxleCAoVURNQS1QKS4KClVETUEtUCBpcyBp
bnRyb2R1Y2VkIGFzIHBhcnQgb2YgdGhlIEszIGFyY2hpdGVjdHVyZSBhbmQgY2FuIGJlIGZvdW5k
IG9uCkFNNjV4IFNvQy4KClNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRlci51amZh
bHVzaUB0aS5jb20+Ci0tLQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3RpL2szLXVkbWEu
dHh0ICAgIHwgMTM0ICsrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEzNCBpbnNl
cnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2RtYS90aS9rMy11ZG1hLnR4dAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kbWEvdGkvazMtdWRtYS50eHQgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvZG1hL3RpL2szLXVkbWEudHh0Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IDAwMDAwMDAwMDAwMC4uYjIyMWE1ZWExMTljCi0tLSAvZGV2L251bGwKKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS90aS9rMy11ZG1hLnR4dApAQCAtMCwwICsx
LDEzNCBAQAorKiBUZXhhcyBJbnN0cnVtZW50cyBLMyBOQVZTUyBVbmlmaWVkIERNQSDigJMgUGVy
aXBoZXJhbCBSb290IENvbXBsZXggKFVETUEtUCkKKworVGhlIFVETUEtUCBpcyBpbnRlbmRlZCB0
byBwZXJmb3JtIHNpbWlsYXIgKGJ1dCBzaWduaWZpY2FudGx5IHVwZ3JhZGVkKSBmdW5jdGlvbnMK
K2FzIHRoZSBwYWNrZXQtb3JpZW50ZWQgRE1BIHVzZWQgb24gcHJldmlvdXMgU29DIGRldmljZXMu
IFRoZSBVRE1BLVAgbW9kdWxlCitzdXBwb3J0cyB0aGUgdHJhbnNtaXNzaW9uIGFuZCByZWNlcHRp
b24gb2YgdmFyaW91cyBwYWNrZXQgdHlwZXMuIFRoZSBVRE1BLVAgaXMKK2FyY2hpdGVjdGVkIHRv
IGZhY2lsaXRhdGUgdGhlIHNlZ21lbnRhdGlvbiBhbmQgcmVhc3NlbWJseSBvZiBTb0MgRE1BIGRh
dGEKK3N0cnVjdHVyZSBjb21wbGlhbnQgcGFja2V0cyB0by9mcm9tIHNtYWxsZXIgZGF0YSBibG9j
a3MgdGhhdCBhcmUgbmF0aXZlbHkKK2NvbXBhdGlibGUgd2l0aCB0aGUgc3BlY2lmaWMgcmVxdWly
ZW1lbnRzIG9mIGVhY2ggY29ubmVjdGVkIHBlcmlwaGVyYWwuIE11bHRpcGxlCitUeCBhbmQgUngg
Y2hhbm5lbHMgYXJlIHByb3ZpZGVkIHdpdGhpbiB0aGUgRE1BIHdoaWNoIGFsbG93IG11bHRpcGxl
IHNlZ21lbnRhdGlvbgorb3IgcmVhc3NlbWJseSBvcGVyYXRpb25zIHRvIGJlIG9uZ29pbmcuIFRo
ZSBETUEgY29udHJvbGxlciBtYWludGFpbnMgc3RhdGUKK2luZm9ybWF0aW9uIGZvciBlYWNoIG9m
IHRoZSBjaGFubmVscyB3aGljaCBhbGxvd3MgcGFja2V0IHNlZ21lbnRhdGlvbiBhbmQKK3JlYXNz
ZW1ibHkgb3BlcmF0aW9ucyB0byBiZSB0aW1lIGRpdmlzaW9uIG11bHRpcGxleGVkIGJldHdlZW4g
Y2hhbm5lbHMgaW4gb3JkZXIKK3RvIHNoYXJlIHRoZSB1bmRlcmx5aW5nIERNQSBoYXJkd2FyZS4g
QW4gZXh0ZXJuYWwgRE1BIHNjaGVkdWxlciBpcyB1c2VkIHRvCitjb250cm9sIHRoZSBvcmRlcmlu
ZyBhbmQgcmF0ZSBhdCB3aGljaCB0aGlzIG11bHRpcGxleGluZyBvY2N1cnMgZm9yIFRyYW5zbWl0
CitvcGVyYXRpb25zLiBUaGUgb3JkZXJpbmcgYW5kIHJhdGUgb2YgUmVjZWl2ZSBvcGVyYXRpb25z
IGlzIGluZGlyZWN0bHkgY29udHJvbGxlZAorYnkgdGhlIG9yZGVyIGluIHdoaWNoIGJsb2NrcyBh
cmUgcHVzaGVkIGludG8gdGhlIERNQSBvbiB0aGUgUnggUFNJLUwgaW50ZXJmYWNlLgorCitUaGUg
VURNQS1QIGFsc28gc3VwcG9ydHMgYWN0aW5nIGFzIGJvdGggYSBVVEMgYW5kIFVETUEtQyBmb3Ig
aXRzIGludGVybmFsCitjaGFubmVscy4gQ2hhbm5lbHMgaW4gdGhlIFVETUEtUCBjYW4gYmUgY29u
ZmlndXJlZCB0byBiZSBlaXRoZXIgUGFja2V0LUJhc2VkIG9yCitUaGlyZC1QYXJ0eSBjaGFubmVs
cyBvbiBhIGNoYW5uZWwgYnkgY2hhbm5lbCBiYXNpcy4KKworUmVxdWlyZWQgcHJvcGVydGllczoK
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tCistIGNvbXBhdGlibGU6CQlTaG91bGQgYmUKKwkJCSJ0aSxh
bTY1NC1uYXZzcy1tYWluLXVkbWFwIiBmb3IgYW02NTQgbWFpbiBOQVZTUyBVRE1BUAorCQkJInRp
LGFtNjU0LW5hdnNzLW1jdS11ZG1hcCIgZm9yIGFtNjU0IG1jdSBOQVZTUyBVRE1BUAorLSAjZG1h
LWNlbGxzOgkJU2hvdWxkIGJlIHNldCB0byA8Mz4uCisJCQktIFRoZSBmaXJzdCBwYXJhbWV0ZXIg
aXMgYSBwaGFuZGxlIHRvIHRoZSByZW1vdGUgUFNJLUwKKwkJCSAgZW5kcG9pbnQKKwkJCS0gVGhl
IHNlY29uZCBwYXJhbWV0ZXIgaXMgdGhlIHRocmVhZCBvZmZzZXQgd2l0aGluIHRoZQorCQkJICBy
ZW1vdGUgdGhyZWFkIElEIHJhbmdlCisJCQktIFRoZSB0aGlyZCBwYXJhbWV0ZXIgaXMgdGhlIGNo
YW5uZWwgZGlyZWN0aW9uLgorLSByZWc6CQkJTWVtb3J5IG1hcCBvZiBVRE1BUAorLSByZWctbmFt
ZXM6CQkiZ2NmZyIsICJyY2hhbnJ0IiwgInRjaGFucnQiCistIG1zaS1wYXJlbnQ6CQlwaGFuZGxl
IGZvciAidGksc2NpLWludGEiIGludGVycnVwdCBjb250cm9sbGVyCistIHRpLHJpbmdhY2M6CQlw
aGFuZGxlIGZvciB0aGUgcmluZyBhY2NlbGVyYXRvciBub2RlCistIHRpLHBzaWwtYmFzZToJCVBT
SS1MIHRocmVhZCBJRCBiYXNlIG9mIHRoZSBVRE1BUCBjaGFubmVscworLSB0aSxzY2k6CQlwaGFu
ZGxlIG9uIFRJLVNDSSBjb21wYXRpYmxlIFN5c3RlbSBjb250cm9sbGVyIG5vZGUKKy0gdGksc2Np
LWRldi1pZDoJVEktU0NJIGRldmljZSBpZAorLSB0aSxzY2ktcm0tcmFuZ2UtdGNoYW46IFVETUEg
dGNoYW4gcmVzb3VyY2UgbGlzdCBpbiBwYWlycyBvZiB0eXBlIGFuZCBzdWJ0eXBlCistIHRpLHNj
aS1ybS1yYW5nZS1yY2hhbjogVURNQSByY2hhbiByZXNvdXJjZSBsaXN0IGluIHBhaXJzIG9mIHR5
cGUgYW5kIHN1YnR5cGUKKy0gdGksc2NpLXJtLXJhbmdlLXJmbG93OiBVRE1BIHJmbG93IHJlc291
cmNlIGxpc3QgaW4gcGFpcnMgb2YgdHlwZSBhbmQgc3VidHlwZQorCitGb3IgUFNJLUwgdGhyZWFk
IG1hbmFnZW1lbnQgdGhlIHBhcmVudCBOQVZTUyBub2RlIG11c3QgaGF2ZToKKy0gdGksc2NpOgkJ
cGhhbmRsZSBvbiBUSS1TQ0kgY29tcGF0aWJsZSBTeXN0ZW0gY29udHJvbGxlciBub2RlCistIHRp
LHNjaS1kZXYtaWQ6CVRJLVNDSSBkZXZpY2UgaWQgb2YgdGhlIE5BVlNTIGluc3RhbmNlCisKK1Jl
bW90ZSBQU0ktTCBlbmRwb2ludAorCitSZXF1aXJlZCBwcm9wZXJ0aWVzOgorLS0tLS0tLS0tLS0t
LS0tLS0tLS0KKy0gdGkscHNpbC1iYXNlOgkJUFNJLUwgdGhyZWFkIElEIGJhc2Ugb2YgdGhlIGVu
ZHBvaW50CisKK1dpdGhpbiB0aGUgUFNJLUwgZW5kcG9pbnQgbm9kZSB0aHJlYWQgY29uZmlndXJh
dGlvbiBzdWJub2RlcyBtdXN0IHByZXNlbnQgd2l0aDoKK3RpLHBzaWwtY29uZmlnWCBuYW1pbmcg
Y29udmVudGlvbiwgd2hlcmUgWCBpcyB0aGUgdGhyZWFkIElEIG9mZnNldC4KKworQ29uZmlndXJh
dGlvbiBub2RlIFJlcXVpcmVkIHByb3BlcnRpZXM6CistLS0tLS0tLS0tLS0tLS0tLS0tLQorLSBs
aW51eCx1ZG1hLW1vZGU6CUNoYW5uZWwgbW9kZSwgY2FuIGJlOgorCQkJLSBVRE1BX1BLVF9NT0RF
OiBmb3IgUGFja2V0IG1vZGUgY2hhbm5lbHMgKHBlcmlwaGVyYWxzKQorCQkJLSBVRE1BX1RSX01P
REU6IGZvciBUaGlyZC1QYXJ0eSBtb2RlCisKK0NvbmZpZ3VyYXRpb24gbm9kZSBPcHRpb25hbCBw
cm9wZXJ0aWVzOgorLS0tLS0tLS0tLS0tLS0tLS0tLS0KKy0gc3RhdGljdHItdHlwZToJSW4gY2Fz
ZSB0aGUgcmVtb3RlIGVuZHBvaW50IHJlcXVpcmVzIFN0YXRpY1RSCisJCQljb25maWd1cmF0aW9u
OgorCQkJLSBQU0lMX1NUQVRJQ19UUl9YWTogWFkgdHlwZSBvZiBTdGF0aWNUUgorCQkJLSBQU0lM
X1NUQVRJQ19UUl9NQ0FOOiBNQ0FOIHR5cGUgb2YgU3RhdGljVFIKKy0gdGksY2hhbm5lbC10cGw6
CUNoYW5uZWwgVGhyb3VnaHB1dCBsZXZlbDoKKwkJCTAgLyBvciBub3QgcHJlc2VudCAtIG5vcm1h
bCBjaGFubmVsCisJCQkxIC0gSGlnaCBUaHJvdWdocHV0IGNoYW5uZWwKKy0gdGksbmVlZHMtZXBp
YjoJSWYgdGhlIGVuZHBvaW50IHJlcXVpcmUgRVBJQiB0byBiZSBwcmVzZW50IGluIHRoZQorCQkJ
ZGVzY3JpcHRvci4KKy0gdGkscHNkLXNpemU6CQlTaXplIG9mIHRoZSBQcm90b2NvbCBTcGVjaWZp
YyBEYXRhIHNlY3Rpb24gb2YgdGhlCisJCQlkZXNjcmlwdG9yLgorCitFeGFtcGxlOgorCittYWlu
X25hdnNzOiBtYWluX25hdnNzIHsKKwljb21wYXRpYmxlID0gInNpbXBsZS1idXMiOworCSNhZGRy
ZXNzLWNlbGxzID0gPDI+OworCSNzaXplLWNlbGxzID0gPDI+OworCWRtYS1jb2hlcmVudDsKKwlk
bWEtcmFuZ2VzOworCXJhbmdlczsKKworCXRpLHNjaSA9IDwmZG1zYz47CisJdGksc2NpLWRldi1p
ZCA9IDwxMTg+OworCisJbWFpbl91ZG1hcDogdWRtYXBAMzExNTAwMDAgeworCQljb21wYXRpYmxl
ID0gInRpLGFtNjU0LW5hdnNzLW1haW4tdWRtYXAiOworCQlyZWcgPQk8MHgwIDB4MzExNTAwMDAg
MHgwIDB4MTAwPiwKKwkJCTwweDAgMHgzNDAwMDAwMCAweDAgMHgxMDAwMDA+LAorCQkJPDB4MCAw
eDM1MDAwMDAwIDB4MCAweDEwMDAwMD47CisJCXJlZy1uYW1lcyA9ICJnY2ZnIiwgInJjaGFucnQi
LCAidGNoYW5ydCI7CisJCSNkbWEtY2VsbHMgPSA8Mz47CisKKwkJdGkscmluZ2FjYyA9IDwmcmlu
Z2FjYz47CisJCXRpLHBzaWwtYmFzZSA9IDwweDEwMDA+OworCisJCWludGVycnVwdC1wYXJlbnQg
PSA8Jm1haW5fdWRtYXNzX2ludGE+OworCisJCXRpLHNjaSA9IDwmZG1zYz47CisJCXRpLHNjaS1k
ZXYtaWQgPSA8MTg4PjsKKworCQl0aSxzY2ktcm0tcmFuZ2UtdGNoYW4gPSA8MHg2IDB4MT4sIC8q
IFRYX0hDSEFOICovCisJCQkJCTwweDYgMHgyPjsgLyogVFhfQ0hBTiAqLworCQl0aSxzY2ktcm0t
cmFuZ2UtcmNoYW4gPSA8MHg2IDB4ND4sIC8qIFJYX0hDSEFOICovCisJCQkJCTwweDYgMHg1Pjsg
LyogUlhfQ0hBTiAqLworCQl0aSxzY2ktcm0tcmFuZ2UtcmZsb3cgPSA8MHg2IDB4Nj47IC8qIEdQ
IFJGTE9XICovCisJfTsKK307CisKK3BkbWEwOiBwZG1hQDJhNDEwMDAgeworCWNvbXBhdGlibGUg
PSAidGksYW02NTQtcGRtYSI7CisJcmVnID0gPDB4MCAweDAyQTQxMDAwIDB4MCAweDQwMD47CisJ
cmVnLW5hbWVzID0gImVjY2FnZ3JfY2ZnIjsKKworCXRpLHBzaWwtYmFzZSA9IDwweDQ0MDA+Owor
CisJLyogdGkscHNpbC1jb25maWcwLTIgKi8KKwlVRE1BX1BETUFfVFJfWFkoMCk7CisJVURNQV9Q
RE1BX1RSX1hZKDEpOworCVVETUFfUERNQV9UUl9YWSgyKTsKK307CisKK21jYXNwMDogbWNhc3BA
MDJCMDAwMDAgeworLi4uCisJLyogdHg6IHBkbWEwLTAsIHJ4OiBwZG1hMC0wICovCisJZG1hcyA9
IDwmbWFpbl91ZG1hcCAmcGRtYTAgMCBVRE1BX0RJUl9UWD4sCisJICAgICAgIDwmbWFpbl91ZG1h
cCAmcGRtYTAgMCBVRE1BX0RJUl9SWD47CisJZG1hLW5hbWVzID0gInR4IiwgInJ4IjsKKy4uLgor
fTsKLS0gClBldGVyCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1
IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290
aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
