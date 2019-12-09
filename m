Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C897D1169E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:46:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/eHOCXU3v+Natq6/I/JH86JsFUxetDZZaB2z1I0r+I=; b=UQU6QA+hIWqEX8
	GIqb4JmtJm97dnKtvqIL23WjbevDlrcoB5T+3zh/p/L5yEsUcINZjnWz5wYGnETc6cbqUt1N5rT9n
	xQZzZ7Mxf5FvwEfPGcw11SpA7pocknJMCld/gtaKtke8dT8SRKeOgUAa4oInvnmqCI/rbMjfpQ0qP
	4n+sQmnKZP43/0qn5/no/XexbmhQknAJmmO/jmzm7jw4gd3S1RsgVbaCQdL9WLVCDu/6z4ru9zH78
	mqmz8a4+BW1GoC5d2lIgjsmse2p8nSH2RE4IyE7CN5dVLAPfcQaTeum+tJNy2ARRaEKVR3lqf5Nyk
	ydqfhp0PM3r+Tqj7sROQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFcm-0008SS-0x; Mon, 09 Dec 2019 09:46:40 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFaI-0005I3-Il
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:44:10 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xB99i2it088426;
 Mon, 9 Dec 2019 03:44:02 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1575884642;
 bh=5OjMWNd5ALQ5WMDmKVwfPB8zpIcPz6tmK9RS2Eo8FeA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=PQ/vFnqBVh/TQ33npTMzn5fAKNuoeeRZtCh29+XazW7agreOXOO452wjYwmeFIA0/
 gg9xWXnCd0b8SwTuttcl3cj0dcNpe2gzUXI0mRqM4+dIcuk+cf07s93fELHUHQhs6U
 lnRhu2Ix//neeBUg8Jr/qHtyo1OD4QJmmBMmc/Tk=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB99i2Ek032250;
 Mon, 9 Dec 2019 03:44:02 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 9 Dec
 2019 03:44:01 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 9 Dec 2019 03:44:01 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB99hOWp080263;
 Mon, 9 Dec 2019 03:43:58 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH v7 08/12] dt-bindings: dma: ti: Add document for K3 UDMA
Date: Mon, 9 Dec 2019 11:43:28 +0200
Message-ID: <20191209094332.4047-9-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209094332.4047-1-peter.ujfalusi@ti.com>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_014406_721289_36CF6C2A 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, vigneshr@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TmV3IGJpbmRpbmcgZG9jdW1lbnQgZm9yClRleGFzIEluc3RydW1lbnRzIEszIE5BVlNTIFVuaWZp
ZWQgRE1BIOKAkyBQZXJpcGhlcmFsIFJvb3QgQ29tcGxleCAoVURNQS1QKS4KClVETUEtUCBpcyBp
bnRyb2R1Y2VkIGFzIHBhcnQgb2YgdGhlIEszIGFyY2hpdGVjdHVyZSBhbmQgY2FuIGJlIGZvdW5k
IGluCkFNNjU0IGFuZCBqNzIxZS4KClNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRl
ci51amZhbHVzaUB0aS5jb20+ClJldmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwu
b3JnPgotLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS90aS9rMy11ZG1hLnlhbWwgICB8
IDE4NSArKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxODUgaW5zZXJ0aW9ucygr
KQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9k
bWEvdGkvazMtdWRtYS55YW1sCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2RtYS90aS9rMy11ZG1hLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvZG1hL3RpL2szLXVkbWEueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAw
MDAwMDAwMDAwMDAuLjc3YWVmNGE0YWJjZQotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEvdGkvazMtdWRtYS55YW1sCkBAIC0wLDAgKzEsMTg1
IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNs
YXVzZSkKKyVZQU1MIDEuMgorLS0tCiskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFz
L2RtYS90aS9rMy11ZG1hLnlhbWwjCiskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0
YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6IFRleGFzIEluc3RydW1lbnRzIEszIE5BVlNT
IFVuaWZpZWQgRE1BIERldmljZSBUcmVlIEJpbmRpbmdzCisKK21haW50YWluZXJzOgorICAtIFBl
dGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+CisKK2Rlc2NyaXB0aW9uOiB8Cisg
IFRoZSBVRE1BLVAgaXMgaW50ZW5kZWQgdG8gcGVyZm9ybSBzaW1pbGFyIChidXQgc2lnbmlmaWNh
bnRseSB1cGdyYWRlZCkKKyAgZnVuY3Rpb25zIGFzIHRoZSBwYWNrZXQtb3JpZW50ZWQgRE1BIHVz
ZWQgb24gcHJldmlvdXMgU29DIGRldmljZXMuIFRoZSBVRE1BLVAKKyAgbW9kdWxlIHN1cHBvcnRz
IHRoZSB0cmFuc21pc3Npb24gYW5kIHJlY2VwdGlvbiBvZiB2YXJpb3VzIHBhY2tldCB0eXBlcy4K
KyAgVGhlIFVETUEtUCBpcyBhcmNoaXRlY3RlZCB0byBmYWNpbGl0YXRlIHRoZSBzZWdtZW50YXRp
b24gYW5kIHJlYXNzZW1ibHkgb2YKKyAgU29DIERNQSBkYXRhIHN0cnVjdHVyZSBjb21wbGlhbnQg
cGFja2V0cyB0by9mcm9tIHNtYWxsZXIgZGF0YSBibG9ja3MgdGhhdCBhcmUKKyAgbmF0aXZlbHkg
Y29tcGF0aWJsZSB3aXRoIHRoZSBzcGVjaWZpYyByZXF1aXJlbWVudHMgb2YgZWFjaCBjb25uZWN0
ZWQKKyAgcGVyaXBoZXJhbC4KKyAgTXVsdGlwbGUgVHggYW5kIFJ4IGNoYW5uZWxzIGFyZSBwcm92
aWRlZCB3aXRoaW4gdGhlIERNQSB3aGljaCBhbGxvdyBtdWx0aXBsZQorICBzZWdtZW50YXRpb24g
b3IgcmVhc3NlbWJseSBvcGVyYXRpb25zIHRvIGJlIG9uZ29pbmcuIFRoZSBETUEgY29udHJvbGxl
cgorICBtYWludGFpbnMgc3RhdGUgaW5mb3JtYXRpb24gZm9yIGVhY2ggb2YgdGhlIGNoYW5uZWxz
IHdoaWNoIGFsbG93cyBwYWNrZXQKKyAgc2VnbWVudGF0aW9uIGFuZCByZWFzc2VtYmx5IG9wZXJh
dGlvbnMgdG8gYmUgdGltZSBkaXZpc2lvbiBtdWx0aXBsZXhlZCBiZXR3ZWVuCisgIGNoYW5uZWxz
IGluIG9yZGVyIHRvIHNoYXJlIHRoZSB1bmRlcmx5aW5nIERNQSBoYXJkd2FyZS4gQW4gZXh0ZXJu
YWwgRE1BCisgIHNjaGVkdWxlciBpcyB1c2VkIHRvIGNvbnRyb2wgdGhlIG9yZGVyaW5nIGFuZCBy
YXRlIGF0IHdoaWNoIHRoaXMgbXVsdGlwbGV4aW5nCisgIG9jY3VycyBmb3IgVHJhbnNtaXQgb3Bl
cmF0aW9ucy4gVGhlIG9yZGVyaW5nIGFuZCByYXRlIG9mIFJlY2VpdmUgb3BlcmF0aW9ucworICBp
cyBpbmRpcmVjdGx5IGNvbnRyb2xsZWQgYnkgdGhlIG9yZGVyIGluIHdoaWNoIGJsb2NrcyBhcmUg
cHVzaGVkIGludG8gdGhlIERNQQorICBvbiB0aGUgUnggUFNJLUwgaW50ZXJmYWNlLgorCisgIFRo
ZSBVRE1BLVAgYWxzbyBzdXBwb3J0cyBhY3RpbmcgYXMgYm90aCBhIFVUQyBhbmQgVURNQS1DIGZv
ciBpdHMgaW50ZXJuYWwKKyAgY2hhbm5lbHMuIENoYW5uZWxzIGluIHRoZSBVRE1BLVAgY2FuIGJl
IGNvbmZpZ3VyZWQgdG8gYmUgZWl0aGVyIFBhY2tldC1CYXNlZAorICBvciBUaGlyZC1QYXJ0eSBj
aGFubmVscyBvbiBhIGNoYW5uZWwgYnkgY2hhbm5lbCBiYXNpcy4KKworICBBbGwgdHJhbnNmZXJz
IHdpdGhpbiBOQVZTUyBpcyBkb25lIGJldHdlZW4gUFNJLUwgc291cmNlIGFuZCBkZXN0aW5hdGlv
bgorICB0aHJlYWRzLgorICBUaGUgcGVyaXBoZXJhbHMgc2VydmljZWQgYnkgVURNQSBjYW4gYmUg
UFNJLUwgbmF0aXZlIChzYTJ1bCwgY3BzdywgZXRjKSBvcgorICBsZWdhY3ksIG5vbiBQU0ktTCBu
YXRpdmUgcGVyaXBoZXJhbHMuIEluIHRoZSBsYXRlciBjYXNlIGEgc3BlY2lhbCwgc21hbGwgUERN
QQorICBpcyB0YXNrZWQgdG8gYWN0IGFzIGEgYnJpZGdlIGJldHdlZW4gdGhlIFBTSS1MIGZhYnJp
YyBhbmQgdGhlIGxlZ2FjeQorICBwZXJpcGhlcmFsLgorCisgIFBETUFzIGNhbiBiZSBjb25maWd1
cmVkIHZpYSBVRE1BUCBwZWVyIHJlZ2lzdGVycyB0byBtYXRjaCB3aXRoIHRoZQorICBjb25maWd1
cmF0aW9uIG9mIHRoZSBsZWdhY3kgcGVyaXBoZXJhbC4KKworYWxsT2Y6CisgIC0gJHJlZjogIi4u
L2RtYS1jb250cm9sbGVyLnlhbWwjIgorCitwcm9wZXJ0aWVzOgorICAiI2RtYS1jZWxscyI6Cisg
ICAgY29uc3Q6IDEKKyAgICBkZXNjcmlwdGlvbjogfAorICAgICAgVGhlIGNlbGwgaXMgdGhlIFBT
SS1MICB0aHJlYWQgSUQgb2YgdGhlIHJlbW90ZSAodG8gVURNQVApIGVuZC4KKyAgICAgIFZhbGlk
IHJhbmdlcyBmb3IgdGhyZWFkIElEIGRlcGVuZHMgb24gdGhlIGRhdGEgbW92ZW1lbnQgZGlyZWN0
aW9uOgorICAgICAgZm9yIHNvdXJjZSB0aHJlYWQgSURzIChyeCk6IDAgLSAweDdmZmYKKyAgICAg
IGZvciBkZXN0aW5hdGlvbiB0aHJlYWQgSURzICh0eCk6IDB4ODAwMCAtIDB4ZmZmZgorCisgICAg
ICBQTGVhc2UgcmVmZXIgdG8gdGhlIGRldmljZSBkb2N1bWVudGF0aW9uIGZvciB0aGUgUFNJLUwg
dGhyZWFkIG1hcCBhbmQgYWxzbworICAgICAgdGhlIFBTSS1MIHBlcmlwaGVyYWwgY2hhcHRlciBm
b3IgdGhlIGNvcnJlY3QgdGhyZWFkIElELgorCisgIGNvbXBhdGlibGU6CisgICAgZW51bToKKyAg
ICAgIC0gdGksYW02NTQtbmF2c3MtbWFpbi11ZG1hcAorICAgICAgLSB0aSxhbTY1NC1uYXZzcy1t
Y3UtdWRtYXAKKyAgICAgIC0gdGksajcyMWUtbmF2c3MtbWFpbi11ZG1hcAorICAgICAgLSB0aSxq
NzIxZS1uYXZzcy1tY3UtdWRtYXAKKworICByZWc6CisgICAgbWF4SXRlbXM6IDMKKworICByZWct
bmFtZXM6CisgICBpdGVtczoKKyAgICAgLSBjb25zdDogZ2NmZworICAgICAtIGNvbnN0OiByY2hh
bnJ0CisgICAgIC0gY29uc3Q6IHRjaGFucnQKKworICBtc2ktcGFyZW50OiB0cnVlCisKKyAgdGks
c2NpOgorICAgIGRlc2NyaXB0aW9uOiBwaGFuZGxlIHRvIFRJLVNDSSBjb21wYXRpYmxlIFN5c3Rl
bSBjb250cm9sbGVyIG5vZGUKKyAgICBhbGxPZjoKKyAgICAgIC0gJHJlZjogL3NjaGVtYXMvdHlw
ZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZQorCisgIHRpLHNjaS1kZXYtaWQ6CisgICAgZGVz
Y3JpcHRpb246IFRJLVNDSSBkZXZpY2UgaWQgb2YgVURNQVAKKyAgICBhbGxPZjoKKyAgICAgIC0g
JHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvdWludDMyCisKKyAgdGkscmlu
Z2FjYzoKKyAgICBkZXNjcmlwdGlvbjogcGhhbmRsZSB0byB0aGUgcmluZyBhY2NlbGVyYXRvciBu
b2RlCisgICAgYWxsT2Y6CisgICAgICAtICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmlu
aXRpb25zL3BoYW5kbGUKKworICB0aSxzY2ktcm0tcmFuZ2UtdGNoYW46CisgICAgZGVzY3JpcHRp
b246IHwKKyAgICAgIEFycmF5IG9mIFVETUEgdGNoYW4gcmVzb3VyY2Ugc3VidHlwZXMgZm9yIHJl
c291cmNlIGFsbG9jYXRpb24gZm9yIHRoaXMKKyAgICAgIGhvc3QKKyAgICBhbGxPZjoKKyAgICAg
IC0gJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvdWludDMyLWFycmF5Cisg
ICAgbWluSXRlbXM6IDEKKyAgICAjIFNob3VsZCBiZSBlbm91Z2gKKyAgICBtYXhJdGVtczogMjU1
CisKKyAgdGksc2NpLXJtLXJhbmdlLXJjaGFuOgorICAgIGRlc2NyaXB0aW9uOiB8CisgICAgICBB
cnJheSBvZiBVRE1BIHJjaGFuIHJlc291cmNlIHN1YnR5cGVzIGZvciByZXNvdXJjZSBhbGxvY2F0
aW9uIGZvciB0aGlzCisgICAgICBob3N0CisgICAgYWxsT2Y6CisgICAgICAtICRyZWY6IC9zY2hl
bWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMi1hcnJheQorICAgIG1pbkl0ZW1zOiAx
CisgICAgIyBTaG91bGQgYmUgZW5vdWdoCisgICAgbWF4SXRlbXM6IDI1NQorCisgIHRpLHNjaS1y
bS1yYW5nZS1yZmxvdzoKKyAgICBkZXNjcmlwdGlvbjogfAorICAgICAgQXJyYXkgb2YgVURNQSBy
ZmxvdyByZXNvdXJjZSBzdWJ0eXBlcyBmb3IgcmVzb3VyY2UgYWxsb2NhdGlvbiBmb3IgdGhpcwor
ICAgICAgaG9zdAorICAgIGFsbE9mOgorICAgICAgLSAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1s
Iy9kZWZpbml0aW9ucy91aW50MzItYXJyYXkKKyAgICBtaW5JdGVtczogMQorICAgICMgU2hvdWxk
IGJlIGVub3VnaAorICAgIG1heEl0ZW1zOiAyNTUKKworcmVxdWlyZWQ6CisgIC0gY29tcGF0aWJs
ZQorICAtICIjZG1hLWNlbGxzIgorICAtIHJlZworICAtIHJlZy1uYW1lcworICAtIG1zaS1wYXJl
bnQKKyAgLSB0aSxzY2kKKyAgLSB0aSxzY2ktZGV2LWlkCisgIC0gdGkscmluZ2FjYworICAtIHRp
LHNjaS1ybS1yYW5nZS10Y2hhbgorICAtIHRpLHNjaS1ybS1yYW5nZS1yY2hhbgorICAtIHRpLHNj
aS1ybS1yYW5nZS1yZmxvdworCitleGFtcGxlczoKKyAgLSB8KworICAgIGNiYXNzX21haW4gewor
ICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwyPjsKKyAgICAgICAgI3NpemUtY2VsbHMgPSA8Mj47
CisKKyAgICAgICAgY2Jhc3NfbWFpbl9uYXZzczogbmF2c3NAMzA4MDAwMDAgeworICAgICAgICAg
ICAgY29tcGF0aWJsZSA9ICJzaW1wbGUtbWZkIjsKKyAgICAgICAgICAgICNhZGRyZXNzLWNlbGxz
ID0gPDI+OworICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8Mj47CisgICAgICAgICAgICBkbWEt
Y29oZXJlbnQ7CisgICAgICAgICAgICBkbWEtcmFuZ2VzOworICAgICAgICAgICAgcmFuZ2VzOwor
CisgICAgICAgICAgICB0aSxzY2ktZGV2LWlkID0gPDExOD47CisKKyAgICAgICAgICAgIG1haW5f
dWRtYXA6IGRtYS1jb250cm9sbGVyQDMxMTUwMDAwIHsKKyAgICAgICAgICAgICAgICBjb21wYXRp
YmxlID0gInRpLGFtNjU0LW5hdnNzLW1haW4tdWRtYXAiOworICAgICAgICAgICAgICAgIHJlZyA9
IDwweDAgMHgzMTE1MDAwMCAweDAgMHgxMDA+LAorICAgICAgICAgICAgICAgICAgICAgIDwweDAg
MHgzNDAwMDAwMCAweDAgMHgxMDAwMDA+LAorICAgICAgICAgICAgICAgICAgICAgIDwweDAgMHgz
NTAwMDAwMCAweDAgMHgxMDAwMDA+OworICAgICAgICAgICAgICAgIHJlZy1uYW1lcyA9ICJnY2Zn
IiwgInJjaGFucnQiLCAidGNoYW5ydCI7CisgICAgICAgICAgICAgICAgI2RtYS1jZWxscyA9IDwx
PjsKKworICAgICAgICAgICAgICAgIHRpLHJpbmdhY2MgPSA8JnJpbmdhY2M+OworCisgICAgICAg
ICAgICAgICAgbXNpLXBhcmVudCA9IDwmaW50YV9tYWluX3VkbWFzcz47CisKKyAgICAgICAgICAg
ICAgICB0aSxzY2kgPSA8JmRtc2M+OworICAgICAgICAgICAgICAgIHRpLHNjaS1kZXYtaWQgPSA8
MTg4PjsKKworICAgICAgICAgICAgICAgIHRpLHNjaS1ybS1yYW5nZS10Y2hhbiA9IDwweDE+LCAv
KiBUWF9IQ0hBTiAqLworICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDww
eDI+OyAvKiBUWF9DSEFOICovCisgICAgICAgICAgICAgICAgdGksc2NpLXJtLXJhbmdlLXJjaGFu
ID0gPDB4ND4sIC8qIFJYX0hDSEFOICovCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgPDB4NT47IC8qIFJYX0NIQU4gKi8KKyAgICAgICAgICAgICAgICB0aSxzY2ktcm0t
cmFuZ2UtcmZsb3cgPSA8MHg2PjsgLyogR1AgUkZMT1cgKi8KKyAgICAgICAgICAgIH07CisgICAg
ICAgIH07CisKKyAgICAgICAgbWNhc3AwOiBtY2FzcEAwMkIwMDAwMCB7CisgICAgICAgICAgICBk
bWFzID0gPCZtYWluX3VkbWFwIDB4YzQwMD4sIDwmbWFpbl91ZG1hcCAweDQ0MDA+OworICAgICAg
ICAgICAgZG1hLW5hbWVzID0gInR4IiwgInJ4IjsKKyAgICAgICAgfTsKKworICAgICAgICBjcnlw
dG86IGNyeXB0b0A0RTAwMDAwIHsKKyAgICAgICAgICAgIGNvbXBhdGlibGUgPSAidGksc2EydWwt
Y3J5cHRvIjsKKworICAgICAgICAgICAgZG1hcyA9IDwmbWFpbl91ZG1hcCAweGMwMDA+LCA8Jm1h
aW5fdWRtYXAgMHg0MDAwPiwgPCZtYWluX3VkbWFwIDB4NDAwMT47CisgICAgICAgICAgICBkbWEt
bmFtZXMgPSAidHgiLCAicngxIiwgInJ4MiI7CisgICAgICAgIH07CisgICAgfTsKLS0gClBldGVy
CgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBI
ZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21p
Y2lsZTogSGVsc2lua2kKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
