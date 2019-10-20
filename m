Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AE6DDC56
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 06:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G5qL3Q1Otr6I3yx3p7OwDcqWXpCNTdHL2X6QKNzryAg=; b=f0MH21ZHUzL1bb
	rSkHXsASIA8/zzV0hoDh4QAHO5HEOquJdsH9pWlkNx2SFV3bVAq+6tLJUCerE+khvgpQ1TkRuEUne
	+5uScdrXRv+LPT1oPdPt/UUA3V98xZX0kD85vftgX7UT6sQsXPIdKPO6oNJ7DeupVpd1cR2Z6ILLF
	1KGGeil2d+6iikArFSOOzwG7gNJ24ZGBaC7q+YElUsFaeBz+fKX/X4h+HSCs94aG17Fhr+FS0gx9E
	FSejt285BIsKjoWrEpUFwWxC3mwtJTS2lIFE+qV+f34xx38nvUrzuYyg+o4GUvNt5HX05bY+j1PJq
	lMDBqae3yH72nzDx3IPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM2YO-0005mT-Bl; Sun, 20 Oct 2019 04:10:52 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM2W8-0002Vl-AF; Sun, 20 Oct 2019 04:08:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 839B3B3E5;
 Sun, 20 Oct 2019 04:08:29 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 8/8] arm64: dts: realtek: Add RTD1296 and Synology DS418
Date: Sun, 20 Oct 2019 06:08:17 +0200
Message-Id: <20191020040817.16882-9-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191020040817.16882-1-afaerber@suse.de>
References: <20191020040817.16882-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_210832_658479_A99D0999 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, info@synology.com,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIERldmljZSBUcmVlcyBmb3IgUlREMTI5NiBTb0MgYW5kIFN5bm9sb2d5IERpc2tTdGF0aW9u
IERTNDE4LgoKQ2M6IGluZm9Ac3lub2xvZ3kuY29tClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOk
cmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiB2MSAtPiB2MjoKICogTW92ZWQgU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXIgdG8gdG9wCiAqIERyb3BwZWQgImFybSxhcm12OCIgKFJvYikKICogQ2hh
bmdlZCBmcm9tIE1JVCB0byBCU0QtMi1DbGF1c2UgKFJvYikKICogRHJvcHBlZCBhY2NpZGVudGFs
IGVuYWJsZS1tZXRob2QgYW5kIGNwdS1yZWxlYXNlLWFkZHIKICogRml4ZWQgRFM0MTggdG8gdXNl
IHJ0ZDEyOTYuZHRzaQogCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvTWFrZWZpbGUgICAg
ICAgICAgfCAgMiArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5Ni1kczQxOC5k
dHMgfCAzMCArKysrKysrKysrKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5
Ni5kdHNpICAgICAgfCA2NSArKysrKysrKysrKysrKysrKysrKysrKysrKysKIDMgZmlsZXMgY2hh
bmdlZCwgOTcgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9v
dC9kdHMvcmVhbHRlay9ydGQxMjk2LWRzNDE4LmR0cwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gv
YXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk2LmR0c2kKCmRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlYWx0ZWsvTWFrZWZpbGUgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0
ZWsvTWFrZWZpbGUKaW5kZXggZTdmZjQwNDYxZGRjLi41NTU2MzhhZGE3MjEgMTAwNjQ0Ci0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9NYWtlZmlsZQorKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JlYWx0ZWsvTWFrZWZpbGUKQEAgLTUsMyArNSw1IEBAIGR0Yi0kKENPTkZJR19BUkNI
X1JFQUxURUspICs9IHJ0ZDEyOTMtZHM0MThqLmR0YgogZHRiLSQoQ09ORklHX0FSQ0hfUkVBTFRF
SykgKz0gcnRkMTI5NS1tZWxlLXY5LmR0YgogZHRiLSQoQ09ORklHX0FSQ0hfUkVBTFRFSykgKz0g
cnRkMTI5NS1wcm9ib3gyLWF2YS5kdGIKIGR0Yi0kKENPTkZJR19BUkNIX1JFQUxURUspICs9IHJ0
ZDEyOTUtemlkb28teDlzLmR0YgorCitkdGItJChDT05GSUdfQVJDSF9SRUFMVEVLKSArPSBydGQx
Mjk2LWRzNDE4LmR0YgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0
ZDEyOTYtZHM0MTguZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTYtZHM0
MTguZHRzCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNWEwNTFhNTJi
Zjg4Ci0tLSAvZGV2L251bGwKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEy
OTYtZHM0MTguZHRzCkBAIC0wLDAgKzEsMzAgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiAoR1BMLTIuMC1vci1sYXRlciBPUiBCU0QtMi1DbGF1c2UpCisvKgorICogQ29weXJpZ2h0IChj
KSAyMDE3LTIwMTkgQW5kcmVhcyBGw6RyYmVyCisgKi8KKworL2R0cy12MS87CisKKyNpbmNsdWRl
ICJydGQxMjk2LmR0c2kiCisKKy8geworCWNvbXBhdGlibGUgPSAic3lub2xvZ3ksZHM0MTgiLCAi
cmVhbHRlayxydGQxMjk2IjsKKwltb2RlbCA9ICJTeW5vbG9neSBEaXNrU3RhdGlvbiBEUzQxOCI7
CisKKwltZW1vcnlAMCB7CisJCWRldmljZV90eXBlID0gIm1lbW9yeSI7CisJCXJlZyA9IDwweDAg
MHg4MDAwMDAwMD47CisJfTsKKworCWFsaWFzZXMgeworCQlzZXJpYWwwID0gJnVhcnQwOworCX07
CisKKwljaG9zZW4geworCQlzdGRvdXQtcGF0aCA9ICJzZXJpYWwwOjExNTIwMG44IjsKKwl9Owor
fTsKKworJnVhcnQwIHsKKwlzdGF0dXMgPSAib2theSI7Cit9OwpkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cmVhbHRlay9ydGQxMjk2LmR0c2kKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAw
MDAwLi4wZjllNTljYWMwODYKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JlYWx0ZWsvcnRkMTI5Ni5kdHNpCkBAIC0wLDAgKzEsNjUgQEAKKy8vIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiAoR1BMLTIuMC1vci1sYXRlciBPUiBCU0QtMi1DbGF1c2UpCisvKgorICogUmVh
bHRlayBSVEQxMjk2IFNvQworICoKKyAqIENvcHlyaWdodCAoYykgMjAxNy0yMDE5IEFuZHJlYXMg
RsOkcmJlcgorICovCisKKyNpbmNsdWRlICJydGQxMjl4LmR0c2kiCisKKy8geworCWNvbXBhdGli
bGUgPSAicmVhbHRlayxydGQxMjk2IjsKKworCWNwdXMgeworCQkjYWRkcmVzcy1jZWxscyA9IDwy
PjsKKwkJI3NpemUtY2VsbHMgPSA8MD47CisKKwkJY3B1MDogY3B1QDAgeworCQkJZGV2aWNlX3R5
cGUgPSAiY3B1IjsKKwkJCWNvbXBhdGlibGUgPSAiYXJtLGNvcnRleC1hNTMiOworCQkJcmVnID0g
PDB4MCAweDA+OworCQkJbmV4dC1sZXZlbC1jYWNoZSA9IDwmbDI+OworCQl9OworCisJCWNwdTE6
IGNwdUAxIHsKKwkJCWRldmljZV90eXBlID0gImNwdSI7CisJCQljb21wYXRpYmxlID0gImFybSxj
b3J0ZXgtYTUzIjsKKwkJCXJlZyA9IDwweDAgMHgxPjsKKwkJCW5leHQtbGV2ZWwtY2FjaGUgPSA8
JmwyPjsKKwkJfTsKKworCQljcHUyOiBjcHVAMiB7CisJCQlkZXZpY2VfdHlwZSA9ICJjcHUiOwor
CQkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE1MyI7CisJCQlyZWcgPSA8MHgwIDB4Mj47CisJ
CQluZXh0LWxldmVsLWNhY2hlID0gPCZsMj47CisJCX07CisKKwkJY3B1MzogY3B1QDMgeworCQkJ
ZGV2aWNlX3R5cGUgPSAiY3B1IjsKKwkJCWNvbXBhdGlibGUgPSAiYXJtLGNvcnRleC1hNTMiOwor
CQkJcmVnID0gPDB4MCAweDM+OworCQkJbmV4dC1sZXZlbC1jYWNoZSA9IDwmbDI+OworCQl9Owor
CisJCWwyOiBsMi1jYWNoZSB7CisJCQljb21wYXRpYmxlID0gImNhY2hlIjsKKwkJfTsKKwl9Owor
CisJdGltZXIgeworCQljb21wYXRpYmxlID0gImFybSxhcm12OC10aW1lciI7CisJCWludGVycnVw
dHMgPSA8R0lDX1BQSSAxMworCQkJKEdJQ19DUFVfTUFTS19SQVcoMHhmKSB8IElSUV9UWVBFX0xF
VkVMX0xPVyk+LAorCQkJICAgICA8R0lDX1BQSSAxNAorCQkJKEdJQ19DUFVfTUFTS19SQVcoMHhm
KSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAorCQkJICAgICA8R0lDX1BQSSAxMQorCQkJKEdJQ19D
UFVfTUFTS19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAorCQkJICAgICA8R0lDX1BQ
SSAxMAorCQkJKEdJQ19DUFVfTUFTS19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+Owor
CX07Cit9OworCismYXJtX3BtdSB7CisJaW50ZXJydXB0LWFmZmluaXR5ID0gPCZjcHUwPiwgPCZj
cHUxPiwgPCZjcHUyPiwgPCZjcHUzPjsKK307Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
