Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D657C1B91ED
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 19:00:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1L7TgMmF+FeQ+UmQlzKZbX/12p4f9jVpP3ucFNeQWs=; b=ep5aLm385lBFN4
	tbbkB6ZOkhwi02/5jsRv2AH/tiYKccQo3jrwKBjzuIdrAjn5uW0KyVTx9NPx1Fh8h4SXCXZqvOIEt
	pxVKQE2iLLKGFvGGR/mdFj6Z/tAQ1LoiDDsWQvHHFC/Wfufl5oRnu3Q30iJzgweTiPfJ2DsgQntTI
	mo6puWXGWFarkSjr/ojit6HKNv/WhnG7LDopTztQh/CSl3HQj+fkgKAR3OwBMBFXvudiK2T75tm4y
	tPIc6yXVLEtAWqivd4qCIGVwq6qbIQnhHs0P//kl1/Tx/0UATx+3JED9wWcB98yHxoM0QmSJvCW4Q
	I93LebCtCcbncIOm8BYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSke4-0008Vl-9T; Sun, 26 Apr 2020 17:00:44 +0000
Received: from gateway21.websitewelcome.com ([192.185.46.113])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSkd5-0005cI-Sm
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 16:59:45 +0000
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
 by gateway21.websitewelcome.com (Postfix) with ESMTP id D216C400C45F6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 11:59:41 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id Skd3jKENcAGTXSkd3jdHPf; Sun, 26 Apr 2020 11:59:41 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iLUgErvb2iXZEJQC9A6HaOt6+FbaW5Lfu+lR1NB4Zrg=; b=eQkt2S1HSzplTsCrtBZNMqkCuC
 twrzZlgfk0cPqKM1uNowWHwJaJ7PFXCgd1AhdvR9p6pJG17u2EGxZuZEaZ92JSnGVW/LfdtI0Zjbr
 1sNwlji5CeNlErZBrPhN7e+IfvmO1z+I7AbPEaFy+9ASdCXCVtx/zwepWkUufnkRzVespgrqmnUUU
 GxvKHPbfJ2ewlfl24Xc+za4b0/QVgi24Pje6zUfY2AAYz9w2iB3vsKTECx4lih1uk6vyh1eu8a/iD
 Nud34aiFU+FH9D3u/au5gx93b8vQ41kpG1YmCfo7nOTca/5m70thZhb07bicF5tsG7tlFni0sJSLU
 ixT17a0w==;
Received: from [191.31.197.205] (port=35482 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jSkd3-001TTf-5q; Sun, 26 Apr 2020 13:59:41 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v4 3/3] ARM: dts: Add Caninos Loucos Labrador
Date: Sun, 26 Apr 2020 13:58:35 -0300
Message-Id: <20200426165835.105970-4-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200426165835.105970-1-matheus@castello.eng.br>
References: <f9e48fba-0da8-7ba9-d44a-7909067a1df1@castello.eng.br>
 <20200426165835.105970-1-matheus@castello.eng.br>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.197.205
X-Source-L: No
X-Exim-ID: 1jSkd3-001TTf-5q
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.197.205]:35482
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 53
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_095944_064755_A9BC80E5 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.46.113 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Matheus Castello <matheus@castello.eng.br>,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 igor.lima@lsitec.org.br, edgar.righi@lsitec.org.br,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIERldmljZSBUcmVlcyBmb3IgQ2FuaW5vcyBMb3Vjb3MgTGFicmFkb3IgQ29NIGFuZCBiYXNl
IGJvYXJkLgpCYXNlZCBvbiB0aGUgd29yayBvZiBBbmRyZWFzIEbDpHJiZXIgb24gTGVtYWtlciBH
dWl0YXIgZGV2aWNlIHRyZWUuCgpTaWduZWQtb2ZmLWJ5OiBNYXRoZXVzIENhc3RlbGxvIDxtYXRo
ZXVzQGNhc3RlbGxvLmVuZy5icj4KUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8
bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+ClJldmlld2VkLWJ5OiBBbmRyZWFzIEbD
pHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUg
ICAgICAgICAgICAgICAgICAgIHwgIDEgKwogLi4uL2FybS9ib290L2R0cy9vd2wtczUwMC1sYWJy
YWRvci1iYXNlLW0uZHRzIHwgMzQgKysrKysrKysrKysrKysrKysrKwogYXJjaC9hcm0vYm9vdC9k
dHMvb3dsLXM1MDAtbGFicmFkb3ItdjIuZHRzaSAgIHwgMjIgKysrKysrKysrKysrCiAzIGZpbGVz
IGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9i
b290L2R0cy9vd2wtczUwMC1sYWJyYWRvci1iYXNlLW0uZHRzCiBjcmVhdGUgbW9kZSAxMDA2NDQg
YXJjaC9hcm0vYm9vdC9kdHMvb3dsLXM1MDAtbGFicmFkb3ItdjIuZHRzaQoKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlIGIvYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUK
aW5kZXggZThkZDk5MjAxMzk3Li4wMmE2MTlkN2JmMmUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jv
b3QvZHRzL01ha2VmaWxlCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlCkBAIC04NTYs
NiArODU2LDcgQEAgZHRiLSQoQ09ORklHX0FSQ0hfT1JJT041WCkgKz0gXAogZHRiLSQoQ09ORklH
X0FSQ0hfQUNUSU9OUykgKz0gXAogCW93bC1zNTAwLWN1YmllYm9hcmQ2LmR0YiBcCiAJb3dsLXM1
MDAtZ3VpdGFyLWJiLXJldi1iLmR0YiBcCisJb3dsLXM1MDAtbGFicmFkb3ItYmFzZS1tLmR0YiBc
CiAJb3dsLXM1MDAtc3Bhcmt5LmR0YgogZHRiLSQoQ09ORklHX0FSQ0hfUFJJTUEyKSArPSBcCiAJ
cHJpbWEyLWV2Yi5kdGIKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL293bC1zNTAwLWxh
YnJhZG9yLWJhc2UtbS5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9vd2wtczUwMC1sYWJyYWRvci1i
YXNlLW0uZHRzCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uMDQ0NTY4
ZmVjMjVlCi0tLSAvZGV2L251bGwKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvb3dsLXM1MDAtbGFi
cmFkb3ItYmFzZS1tLmR0cwpAQCAtMCwwICsxLDM0IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogKEdQTC0yLjArIE9SIE1JVCkKKy8qCisgKiBDYW5pbm9zIExhYnJhZG9yIEJhc2UgQm9h
cmQKKyAqCisgKiBDb3B5cmlnaHQgKGMpIDIwMTktMjAyMCBNYXRoZXVzIENhc3RlbGxvCisgKi8K
KworL2R0cy12MS87CisKKyNpbmNsdWRlICJvd2wtczUwMC1sYWJyYWRvci12Mi5kdHNpIgorCisv
IHsKKwltb2RlbCA9ICJDYW5pbm9zIExhYnJhZG9yIEJhc2UtTSB2MS4wYSI7CisJY29tcGF0aWJs
ZSA9ICJjYW5pbm9zLGxhYnJhZG9yLWJhc2UtbSIsICJhY3Rpb25zLHM1MDAiOworCisJYWxpYXNl
cyB7CisJCXNlcmlhbDMgPSAmdWFydDM7CisJfTsKKworCWNob3NlbiB7CisJCXN0ZG91dC1wYXRo
ID0gInNlcmlhbDM6MTE1MjAwbjgiOworCX07CisKKwl1YXJ0M19jbGs6IHVhcnQzLWNsayB7CisJ
CWNvbXBhdGlibGUgPSAiZml4ZWQtY2xvY2siOworCQljbG9jay1mcmVxdWVuY3kgPSA8OTIxNjAw
PjsKKwkJI2Nsb2NrLWNlbGxzID0gPDA+OworCX07Cit9OworCismdWFydDMgeworCXN0YXR1cyA9
ICJva2F5IjsKKwljbG9ja3MgPSA8JnVhcnQzX2Nsaz47Cit9OwpkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vYm9vdC9kdHMvb3dsLXM1MDAtbGFicmFkb3ItdjIuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRz
L293bC1zNTAwLWxhYnJhZG9yLXYyLmR0c2kKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAw
MDAwMDAwMDAwLi5mMzFkZWY2YjI0OGEKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNoL2FybS9ib290
L2R0cy9vd2wtczUwMC1sYWJyYWRvci12Mi5kdHNpCkBAIC0wLDAgKzEsMjIgQEAKKy8vIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQorLyoKKyAqIENhbmlub3MgTGFi
cmFkb3IgU29NIFYyCisgKgorICogQ29weXJpZ2h0IChjKSAyMDE5LTIwMjAgTWF0aGV1cyBDYXN0
ZWxsbworICovCisKKyNpbmNsdWRlICJvd2wtczUwMC5kdHNpIgorCisvIHsKKwltb2RlbCA9ICJD
YW5pbm9zIExhYnJhZG9yIENvcmUgVjIuMSI7CisJY29tcGF0aWJsZSA9ICJjYW5pbm9zLGxhYnJh
ZG9yLXYyIiwgImFjdGlvbnMsczUwMCI7CisKKwltZW1vcnlAMCB7CisJCWRldmljZV90eXBlID0g
Im1lbW9yeSI7CisJCXJlZyA9IDwweDAgMHg4MDAwMDAwMD47CisJfTsKK307CisKKyZ0aW1lciB7
CisJY2xvY2tzID0gPCZob3NjPjsKK307Ci0tCjIuMjUuMAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
