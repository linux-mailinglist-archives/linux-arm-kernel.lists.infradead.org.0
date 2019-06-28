Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6002592D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 06:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3SJCTEGYSLStjMmD/pdhz3FRqJr450ClVuQxFtVUcI=; b=WU6PpFnycXJDk8
	y2qdnCrHRjQQUt0EV5FoC/KIevOpaZgwkqzH+JaKAwv8UPgAINlHg+NtJMNa3FWJIj5FYX0NCqKry
	jglVcjWDb+r0VQ5WESGIPgIqAbVcOcIfS3svNFxrffTLE3mEnc63/bPiDaJlz2vhHiJ35XZwNCwQH
	HRitl57t65w/MSlwSNZ/bbZf2swcNyNNlAg8b9YW7B66Tqg61gxY7LUZfwAA7FPsx3PstASedN6nV
	n4GMzLFid2qu5tbGhbH0J7vy7xr48aTJi35JJIE6G4nUMSnpYS7XM8bwbpoY6b5rt/fJTX1b24Ixu
	oUp8TmN9O6DXQiNi+pYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiUc-0004by-Vf; Fri, 28 Jun 2019 04:28:11 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgiU0-0004Pe-Au
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 04:27:33 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S4RRDV002933;
 Thu, 27 Jun 2019 23:27:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561696047;
 bh=Naw4jhqGjLB8jwbjXzxM4e42Xzg07p8Ordo2UvFves4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=jEzNuh2hP8N4tQSx4UAScuPT/vH3dpVQtrM9PzrHOK0FUpUt9GNitLEoG+zPMsWlJ
 ifgLE8XDIfyc3jZR8sBx2vSbK8wzFMWVROh93Xt4NeqqrXD30Q3PswVoheqmowEgRg
 FnO4504njXnu/mL0CPsDKkPLFiuIRc6sggZ8Aczk=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S4RRKc032476
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Jun 2019 23:27:27 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 27
 Jun 2019 23:27:26 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 27 Jun 2019 23:27:26 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S4RKPL062595;
 Thu, 27 Jun 2019 23:27:24 -0500
From: Keerthy <j-keerthy@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>
Subject: [RESEND PATCH 01/10] dt-bindings: crypto: k3: Add sa2ul bindings
 documentation
Date: Fri, 28 Jun 2019 09:57:36 +0530
Message-ID: <20190628042745.28455-2-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628042745.28455-1-j-keerthy@ti.com>
References: <20190628042745.28455-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_212732_455823_32648522 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nm@ti.com, devicetree@vger.kernel.org, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHNlcmllcyBhZGRzIENyeXB0byBoYXJkd2FyZSBhY2NlbGVyYXRvciBzdXBwb3J0IGZvciBT
QTJVTC4KU0EyVUwgc3RhbmRzIGZvciBzZWN1cml0eSBhY2NlbGVyYXRvciB1bHRyYSBsaXRlLgoK
VGhlIFNlY3VyaXR5IEFjY2VsZXJhdG9yIChTQTJfVUwpIHN1YnN5c3RlbSBwcm92aWRlcyBoYXJk
d2FyZQpjcnlwdG9ncmFwaGljIGFjY2VsZXJhdGlvbiBmb3IgdGhlIGZvbGxvd2luZyB1c2UgY2Fz
ZXM6CuKAoiBFbmNyeXB0aW9uIGFuZCBhdXRoZW50aWNhdGlvbiBmb3Igc2VjdXJlIGJvb3QK4oCi
IEVuY3J5cHRpb24gYW5kIGF1dGhlbnRpY2F0aW9uIG9mIGNvbnRlbnQgaW4gYXBwbGljYXRpb25z
CiAgcmVxdWlyaW5nIERSTSAoZGlnaXRhbCByaWdodHMgbWFuYWdlbWVudCkgYW5kCiAgY29udGVu
dC9hc3NldCBwcm90ZWN0aW9uClRoZSBkZXZpY2UgaW5jbHVkZXMgb25lIGluc3RhbnRpYXRpb24g
b2YgU0EyX1VMIG5hbWVkIFNBMl9VTDAKClNBMlVMIG5lZWRzIG9uIHR4IGNoYW5uZWwgYW5kIGEg
cGFpciBvZiByeCBkbWEgY2hhbm5lbHMuCgpTaWduZWQtb2ZmLWJ5OiBLZWVydGh5IDxqLWtlZXJ0
aHlAdGkuY29tPgotLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0by9zYTJ1bC50eHQg
ICAgICB8IDQ3ICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA0NyBpbnNlcnRp
b25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2NyeXB0by9zYTJ1bC50eHQKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvY3J5cHRvL3NhMnVsLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9jcnlwdG8vc2EydWwudHh0Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAw
MDAwMDAwMC4uODFjYzAzOTY3M2I0Ci0tLSAvZGV2L251bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0by9zYTJ1bC50eHQKQEAgLTAsMCArMSw0NyBAQAorSzMg
U29DIFNBMlVMIGNyeXB0byBtb2R1bGUKKworUmVxdWlyZWQgcHJvcGVydGllczoKKworLSBjb21w
YXRpYmxlIDogU2hvdWxkIGJlOgorICAtICJ0aSxzYTJ1bC1jcnlwdG8iCistIHJlZyA6IE9mZnNl
dCBhbmQgbGVuZ3RoIG9mIHRoZSByZWdpc3RlciBzZXQgZm9yIHRoZSBtb2R1bGUKKworLSBkbWFz
OiBETUEgc3BlY2lmaWVycyBmb3IgdHggYW5kIHJ4IGRtYS4gc2EydWwgbmVlZHMgb25lIHR4IGNo
YW5uZWwKKwlhbmQgMiByeCBjaGFubmVscy4gRmlyc3QgcnggY2hhbm5lbCBmb3IgPCAyNTYgYnl0
ZXMgYW5kCisJdGhlIG90aGVyIG9uZSBmb3IgPj0yNTYgYnl0ZXMuIFNlZSB0aGUgRE1BIGNsaWVu
dCBiaW5kaW5nLAorICAgICAgICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1h
L2RtYS50eHQKKy0gZG1hLW5hbWVzOiBETUEgcmVxdWVzdCBuYW1lcyBoYXMgdG8gaGF2ZSBvbmUg
dHggYW5kIDIgcnggbmFtZXMKKwljb3JyZXNwb25kaW5nIHRvIGRtYXMgYWJpdmUuCistIHRpLHBz
aWwtY29uZmlnKiAtIFVETUEgUFNJTCBuYXRpdmUgUGVyaXBoZXJhbCB1c2luZyBwYWNrZXQgbW9k
ZS4KKwlTQTJVTCBtdXN0IGhhdmUgRVBJQihFeHRlbmRlZCBwcm90b2NhbCBpbmZvcm1hdGlvbiBi
bG9jaykKKwlhbmQgUFNEQVRBKHByb3RvY29sIHNwZWNpZmljIGRhdGEpIHByb3BlcnRpZXMuCisK
K0V4YW1wbGUgQU02NTQgU0EyVUw6CitjcnlwdG86IGNyeXB0b0A0RTAwMDAwIHsKKwljb21wYXRp
YmxlID0gInRpLHNhMnVsLWNyeXB0byI7CisJcmVnID0gPDB4MCAweDRFMDAwMDAgMHgwIDB4MTIw
MD47CisJdGkscHNpbC1iYXNlID0gPDB4NDAwMD47CisKKwlkbWFzID0gPCZtYWluX3VkbWFwICZj
cnlwdG8gMCBVRE1BX0RJUl9UWD4sCisJCTwmbWFpbl91ZG1hcCAmY3J5cHRvIDAgVURNQV9ESVJf
Ulg+LAorCQk8Jm1haW5fdWRtYXAgJmNyeXB0byAxIFVETUFfRElSX1JYPjsKKwlkbWEtbmFtZXMg
PSAidHgiLCAicngxIiwgInJ4MiI7CisKKwl0aSxwc2lsLWNvbmZpZzAgeworCQlsaW51eCx1ZG1h
LW1vZGUgPSA8VURNQV9QS1RfTU9ERT47CisJCXRpLG5lZWRzLWVwaWI7CisJCXRpLHBzZC1zaXpl
ID0gPDY0PjsKKwl9OworCisJdGkscHNpbC1jb25maWcxIHsKKwkJbGludXgsdWRtYS1tb2RlID0g
PFVETUFfUEtUX01PREU+OworCQl0aSxuZWVkcy1lcGliOworCQl0aSxwc2Qtc2l6ZSA9IDw2ND47
CisJfTsKKworCXRpLHBzaWwtY29uZmlnMiB7CisJCWxpbnV4LHVkbWEtbW9kZSA9IDxVRE1BX1BL
VF9NT0RFPjsKKwkJdGksbmVlZHMtZXBpYjsKKwkJdGkscHNkLXNpemUgPSA8NjQ+OworCX07Cit9
OwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
