Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A23E17295F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 21:17:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08gets2IkSt8V8w9x/A4W2gNqmejdVetxKvY7V+xklk=; b=gov65e/FrG1tvI
	ULElh5udTcQrNxmDdWwbqEx84H9iz5cZTBD/1muzdgvlP4rVA3DLBvWnLGKeqR8cXf5pXCs9yjaIZ
	NLwxcf1tEuLj5Rxprin9SfBjiAX5Xq2o9rflppAsXV1U7MzyAnOrqr858fnB7bMGt/LVjTeNU1JN5
	rJ5L+JpuncEpKhZf7/vPyMH0iFyoMGiWAn4FcwUVOv9XbiFSWfDHJ14qipkILkUHxqR7TdwhDDhs5
	Zte6pGTDxgnQJZOav5u8dAvvkM6beADlo5X/71+xRYFzZ6sqgphggWPR9UHZCst+aeZKJ5HTbSnga
	9YOr06bWmPoYvTmrVKmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Pas-0003qJ-Co; Thu, 27 Feb 2020 20:17:14 +0000
Received: from gateway32.websitewelcome.com ([192.185.145.189])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7PaM-0003NZ-EV
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 20:16:43 +0000
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
 by gateway32.websitewelcome.com (Postfix) with ESMTP id A8EF848894
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 14:16:30 -0600 (CST)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id 7PaAj0f8rvBMd7PaAjwEQ8; Thu, 27 Feb 2020 14:16:30 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dli9kbZ6lD/nnDirr7aZdMn36VuNaUx+QZ+TACIU/tA=; b=o1WmDQ8Ul7jha4hCTy8IB94VwD
 EJKa0915/vQCGn7dbSlMGMck6hiMPesVVtxejSyJ3zWgWRuAMUBFXPb9dWMa3m5200gVkD+dFdEh0
 7CBttQ89CyWYYlfb4IYCMTIFPDpqhinZQRnOQvDttvA+JmbU9vm0ejWlNBvmEwDvAnxiDfW+Yh0mU
 Xmf9WLa36EE1M0EdXowscfXwmiedtGUnl8MaFNnw/8e9RGlv4BB1Fa3J3zmq/VS54qy7AqRSnpsMq
 dTLgmsAUpbN0zULww6DGP9CJJcXwuWDhxdSa9cVq3SWgd75d3Er5uKWKdSnAl1ANhAgeK0mSjFZb2
 8AdnyFOg==;
Received: from [191.31.195.84] (port=40030 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1j7Pa9-002xJo-TL; Thu, 27 Feb 2020 17:16:30 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v1 2/2] ARM: dts: Add Caninos Loucos Labrador
Date: Thu, 27 Feb 2020 17:15:57 -0300
Message-Id: <20200227201557.368533-3-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200227201557.368533-1-matheus@castello.eng.br>
References: <20200227201557.368533-1-matheus@castello.eng.br>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.195.84
X-Source-L: No
X-Exim-ID: 1j7Pa9-002xJo-TL
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.195.84]:40030
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 20
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_121642_585930_6421744B 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.145.189 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Matheus Castello <matheus@castello.eng.br>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIERldmljZSBUcmVlcyBmb3IgQ2FuaW5vcyBMb3Vjb3MgTGFicmFkb3IgU29NIGFuZCBiYXNl
IGJvYXJkLgpCYXNlZCBvbiB0aGUgd29yayBvZiBBbmRyZWFzIEbDpHJiZXIgb24gTGVtYWtlciBH
dWl0YXIgZGV2aWNlIHRyZWUuCgpTaWduZWQtb2ZmLWJ5OiBNYXRoZXVzIENhc3RlbGxvIDxtYXRo
ZXVzQGNhc3RlbGxvLmVuZy5icj4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZSAgICAg
ICAgICAgICAgICAgIHwgIDMgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL293bC1zNTAwLWxhYnJhZG9y
LWJiLmR0cyAgfCAzMyArKysrKysrKysrKysrKysrKysrKysKIGFyY2gvYXJtL2Jvb3QvZHRzL293
bC1zNTAwLWxhYnJhZG9yLXYyLmR0c2kgfCAyMSArKysrKysrKysrKysrCiAzIGZpbGVzIGNoYW5n
ZWQsIDU2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBh
cmNoL2FybS9ib290L2R0cy9vd2wtczUwMC1sYWJyYWRvci1iYi5kdHMKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBhcmNoL2FybS9ib290L2R0cy9vd2wtczUwMC1sYWJyYWRvci12Mi5kdHNpCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUgYi9hcmNoL2FybS9ib290L2R0cy9NYWtl
ZmlsZQppbmRleCBkNjU0NmQyNjc2YjkuLmFjZGY2NWVmMzIzNiAxMDA2NDQKLS0tIGEvYXJjaC9h
cm0vYm9vdC9kdHMvTWFrZWZpbGUKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUKQEAg
LTg0Miw3ICs4NDIsOCBAQCBkdGItJChDT05GSUdfQVJDSF9PUklPTjVYKSArPSBcCiBkdGItJChD
T05GSUdfQVJDSF9BQ1RJT05TKSArPSBcCiAJb3dsLXM1MDAtY3ViaWVib2FyZDYuZHRiIFwKIAlv
d2wtczUwMC1ndWl0YXItYmItcmV2LWIuZHRiIFwKLQlvd2wtczUwMC1zcGFya3kuZHRiCisJb3ds
LXM1MDAtc3Bhcmt5LmR0YiBcCisJb3dsLXM1MDAtbGFicmFkb3ItYmIuZHRiCiBkdGItJChDT05G
SUdfQVJDSF9QUklNQTIpICs9IFwKIAlwcmltYTItZXZiLmR0YgogZHRiLSQoQ09ORklHX0FSQ0hf
UFhBKSArPSBcCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9vd2wtczUwMC1sYWJyYWRv
ci1iYi5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9vd2wtczUwMC1sYWJyYWRvci1iYi5kdHMKbmV3
IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4xZTgyMTgwNGRhMzAKLS0tIC9k
ZXYvbnVsbAorKysgYi9hcmNoL2FybS9ib290L2R0cy9vd2wtczUwMC1sYWJyYWRvci1iYi5kdHMK
QEAgLTAsMCArMSwzMyBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBP
UiBNSVQpCisvKgorICogQ29weXJpZ2h0IChjKSAyMDE5LTIwMjAgTWF0aGV1cyBDYXN0ZWxsbwor
ICovCisKKy9kdHMtdjEvOworCisjaW5jbHVkZSAib3dsLXM1MDAtbGFicmFkb3ItdjIuZHRzaSIK
KyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9sZWRzL2NvbW1vbi5oPgorCisvIHsKKwljb21wYXRpYmxl
ID0gImNhbmlub3MsbGFicmFkb3ItYmIiLCAiY2FuaW5vcyxsYWJyYWRvciIsICJhY3Rpb25zLHM1
MDAiOworCW1vZGVsID0gIkNhbmlub3MgTGFicmFkb3IgQmFzZSBCb2FyZCBNIHYxLjAiOworCisJ
YWxpYXNlcyB7CisJCXNlcmlhbDMgPSAmdWFydDM7CisJfTsKKworCWNob3NlbiB7CisJCXN0ZG91
dC1wYXRoID0gInNlcmlhbDM6MTE1MjAwbjgiOworCX07CisKKwl1YXJ0M19jbGs6IHVhcnQzLWNs
ayB7CisJCWNvbXBhdGlibGUgPSAiZml4ZWQtY2xvY2siOworCQljbG9jay1mcmVxdWVuY3kgPSA8
OTIxNjAwPjsKKwkJI2Nsb2NrLWNlbGxzID0gPDA+OworCX07Cit9OworCismdWFydDMgeworCXN0
YXR1cyA9ICJva2F5IjsKKwljbG9ja3MgPSA8JnVhcnQzX2Nsaz47Cit9OwpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vYm9vdC9kdHMvb3dsLXM1MDAtbGFicmFkb3ItdjIuZHRzaSBiL2FyY2gvYXJtL2Jv
b3QvZHRzL293bC1zNTAwLWxhYnJhZG9yLXYyLmR0c2kKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5k
ZXggMDAwMDAwMDAwMDAwLi5lZTA3OWYwMmI1ZGQKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNoL2Fy
bS9ib290L2R0cy9vd2wtczUwMC1sYWJyYWRvci12Mi5kdHNpCkBAIC0wLDAgKzEsMjEgQEAKKy8v
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQorLyoKKyAqIENhbmlu
b3MgTGFicmFkb3IgU29NIFYyCisgKgorICogQ29weXJpZ2h0IChjKSAyMDE5LTIwMjAgTWF0aGV1
cyBDYXN0ZWxsbworICovCisKKyNpbmNsdWRlICJvd2wtczUwMC5kdHNpIgorCisvIHsKKwljb21w
YXRpYmxlID0gImNhbmlub3MsbGFicmFkb3IiLCAiYWN0aW9ucyxzNTAwIjsKKworCW1lbW9yeUAw
IHsKKwkJZGV2aWNlX3R5cGUgPSAibWVtb3J5IjsKKwkJcmVnID0gPDB4MCAweDgwMDAwMDAwPjsK
Kwl9OworfTsKKworJnRpbWVyIHsKKwljbG9ja3MgPSA8Jmhvc2M+OworfTsKLS0KMi4yNS4wCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
