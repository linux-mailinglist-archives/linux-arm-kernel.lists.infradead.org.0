Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C261DE1F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 04:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkKsmLHuPIutvPvdF8U2hDaIMaOjkzQF/eMhIUHFYLI=; b=pVwSctCeXMQG7j
	zqSP+tNb7wFmjxdYWzT8I3JVDz153d59xspxg6cqnqMrnInH49pTaO6G8LCH5NzJDpkII20p0F3q8
	eWhvG/ZaxAL9t8xEj/XqM68HFJQ2TNVWhLxGmEQh7NoiiMHeifG7vJU0Yk/aY790ToH2p4L4rcjMn
	RdtYlaFmKf7fY2Ku8nfh4v0z0dEwvmoamC4RcGFCRTSfBklUbwVJGnGJluinOd+odmIaieU6wYR6/
	f8QpmNlaT9e4gWSnTtDahAgyD7C8RUGCoEYgMO6TNOpMMcBnY6kUFY4pLnWbZ315ZPBzWEAh9K+5a
	Ln5Kf2vQ1NzZz2VtkR8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMNAe-0008RK-VW; Mon, 21 Oct 2019 02:11:44 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMN9i-0007io-DN; Mon, 21 Oct 2019 02:10:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 27E4CB294;
 Mon, 21 Oct 2019 02:10:45 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 3/3] ARM: dts: Prepare Realtek RTD1195 and MeLE X1000
Date: Mon, 21 Oct 2019 04:10:35 +0200
Message-Id: <20191021021035.7032-4-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191021021035.7032-1-afaerber@suse.de>
References: <20191021021035.7032-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_191046_745539_638AB2EC 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIERldmljZSBUcmVlcyBmb3IgUmVhbHRlayBSVEQxMTk1IFNvQyBhbmQgTWVMRSBYMTAwMCBU
ViBib3guCgpSZXVzZSB0aGUgZXhpc3RpbmcgUlREMTI5NSB3YXRjaGRvZyBjb21wYXRpYmxlIGZv
ciBub3cuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+
Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAgMiArCiBh
cmNoL2FybS9ib290L2R0cy9ydGQxMTk1LW1lbGUteDEwMDAuZHRzIHwgIDMwICsrKysrKysrCiBh
cmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kgICAgICAgICAgIHwgMTI4ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMTYwIGluc2VydGlvbnMoKykK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LW1lbGUteDEwMDAu
ZHRzCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUgYi9hcmNoL2FybS9ib290L2R0
cy9NYWtlZmlsZQppbmRleCA3M2QzMzYxMWMzNzIuLjg5YTk1MTQ4NWRhOCAxMDA2NDQKLS0tIGEv
YXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZp
bGUKQEAgLTg1OCw2ICs4NTgsOCBAQCBkdGItJChDT05GSUdfQVJDSF9RQ09NKSArPSBcCiBkdGIt
JChDT05GSUdfQVJDSF9SREEpICs9IFwKIAlyZGE4ODEwcGwtb3JhbmdlcGktMmctaW90LmR0YiBc
CiAJcmRhODgxMHBsLW9yYW5nZXBpLWk5Ni5kdGIKK2R0Yi0kKENPTkZJR19BUkNIX1JFQUxURUsp
ICs9IFwKKwlydGQxMTk1LW1lbGUteDEwMDAuZHRiCiBkdGItJChDT05GSUdfQVJDSF9SRUFMVklF
VykgKz0gXAogCWFybS1yZWFsdmlldy1wYjExNzYuZHRiIFwKIAlhcm0tcmVhbHZpZXctcGIxMW1w
LmR0YiBcCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LW1lbGUteDEwMDAu
ZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS1tZWxlLXgxMDAwLmR0cwpuZXcgZmlsZSBt
b2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmNlOWEyNTU5NTBkMwotLS0gL2Rldi9udWxs
CisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUtbWVsZS14MTAwMC5kdHMKQEAgLTAsMCAr
MSwzMCBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9yLWxhdGVyIE9S
IEJTRC0yLUNsYXVzZSkKKy8qCisgKiBDb3B5cmlnaHQgKGMpIDIwMTcgQW5kcmVhcyBGw6RyYmVy
CisgKi8KKworL2R0cy12MS87CisKKyNpbmNsdWRlICJydGQxMTk1LmR0c2kiCisKKy8geworCWNv
bXBhdGlibGUgPSAibWVsZSx4MTAwMCIsICJyZWFsdGVrLHJ0ZDExOTUiOworCW1vZGVsID0gIk1l
TEUgWDEwMDAiOworCisJYWxpYXNlcyB7CisJCXNlcmlhbDAgPSAmdWFydDA7CisJfTsKKworCWNo
b3NlbiB7CisJCXN0ZG91dC1wYXRoID0gInNlcmlhbDA6MTE1MjAwbjgiOworCX07CisKKwltZW1v
cnkgeworCQlkZXZpY2VfdHlwZSA9ICJtZW1vcnkiOworCQlyZWcgPSA8MHgwIDB4NDAwMDAwMDA+
OworCX07Cit9OworCismdWFydDAgeworCXN0YXR1cyA9ICJva2F5IjsKK307CmRpZmYgLS1naXQg
YS9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9ydGQx
MTk1LmR0c2kKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi40NzU3NDBj
NjdkMjYKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kK
QEAgLTAsMCArMSwxMjggQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1v
ci1sYXRlciBPUiBCU0QtMi1DbGF1c2UpCisvKgorICogQ29weXJpZ2h0IChjKSAyMDE3IEFuZHJl
YXMgRsOkcmJlcgorICovCisKKy9tZW1yZXNlcnZlLyAweDAwMDAwMDAwIDB4MDAwMGMwMDA7IC8q
IGJvb3QgY29kZSAqLworL21lbXJlc2VydmUvIDB4MDAwMGMwMDAgMHgwMDBmNDAwMDsKKy9tZW1y
ZXNlcnZlLyAweDAxYjAwMDAwIDB4MDA0MDAwMDA7IC8qIGF1ZGlvICovCisvbWVtcmVzZXJ2ZS8g
MHgwMWZmZTAwMCAweDAwMDA0MDAwOyAvKiBycGMgcmluZ2J1ZiAqLworL21lbXJlc2VydmUvIDB4
MTAwMDAwMDAgMHgwMDEwMDAwMDsgLyogc2VjdXJlICovCisvbWVtcmVzZXJ2ZS8gMHgxN2ZmZjAw
MCAweDAwMDAxMDAwOworL21lbXJlc2VydmUvIDB4MTgwMDAwMDAgMHgwMDEwMDAwMDsgLyogcmJ1
cyAqLworL21lbXJlc2VydmUvIDB4MTgxMDAwMDAgMHgwMTAwMDAwMDsgLyogbm9yICovCisKKyNp
bmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+CisKKy8g
eworCWNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxMTk1IjsKKwlpbnRlcnJ1cHQtcGFyZW50ID0g
PCZnaWM+OworCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCSNzaXplLWNlbGxzID0gPDE+OworCisJ
Y3B1cyB7CisJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkjc2l6ZS1jZWxscyA9IDwwPjsKKwor
CQljcHUwOiBjcHVAMCB7CisJCQlkZXZpY2VfdHlwZSA9ICJjcHUiOworCQkJY29tcGF0aWJsZSA9
ICJhcm0sY29ydGV4LWE3IjsKKwkJCXJlZyA9IDwweDA+OworCQkJY2xvY2stZnJlcXVlbmN5ID0g
PDEwMDAwMDAwMDA+OworCQl9OworCisJCWNwdTE6IGNwdUAxIHsKKwkJCWRldmljZV90eXBlID0g
ImNwdSI7CisJCQljb21wYXRpYmxlID0gImFybSxjb3J0ZXgtYTciOworCQkJcmVnID0gPDB4MT47
CisJCQljbG9jay1mcmVxdWVuY3kgPSA8MTAwMDAwMDAwMD47CisJCX07CisJfTsKKworCXJlc2Vy
dmVkLW1lbW9yeSB7CisJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkjc2l6ZS1jZWxscyA9IDwx
PjsKKwkJcmFuZ2VzOworCisJCXNlY3VyZUAxMDAwMDAwMCB7CisJCQlyZWcgPSA8MHgxMDAwMDAw
MCAweDEwMDAwMD47CisJCQluby1tYXA7CisJCX07CisKKwkJcmJ1c0AxODAwMDAwMCB7CisJCQly
ZWcgPSA8MHgxODAwMDAwMCAweDEwMDAwMD47CisJCQluby1tYXA7CisJCX07CisKKwkJbm9yQDE4
MTAwMDAwIHsKKwkJCXJlZyA9IDwweDE4MTAwMDAwIDB4MTAwMDAwMD47CisJCQluby1tYXA7CisJ
CX07CisJfTsKKworCWFybS1wbXUgeworCQljb21wYXRpYmxlID0gImFybSxjb3J0ZXgtYTctcG11
IjsKKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQ4IElSUV9UWVBFX0xFVkVMX0hJR0g+LAorCQkJ
ICAgICA8R0lDX1NQSSA0OSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJaW50ZXJydXB0LWFmZmlu
aXR5ID0gPCZjcHUwPiwgPCZjcHUxPjsKKwl9OworCisJdGltZXIgeworCQljb21wYXRpYmxlID0g
ImFybSxhcm12Ny10aW1lciI7CisJCWludGVycnVwdHMgPSA8R0lDX1BQSSAxMworCQkJKEdJQ19D
UFVfTUFTS19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAorCQkJICAgICA8R0lDX1BQ
SSAxNAorCQkJKEdJQ19DUFVfTUFTS19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAor
CQkJICAgICA8R0lDX1BQSSAxMQorCQkJKEdJQ19DUFVfTUFTS19SQVcoMHhmKSB8IElSUV9UWVBF
X0xFVkVMX0xPVyk+LAorCQkJICAgICA8R0lDX1BQSSAxMAorCQkJKEdJQ19DUFVfTUFTS19SQVco
MHhmKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+OworCQljbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAw
MDA+OworCX07CisKKwlvc2MyN006IG9zYyB7CisJCWNvbXBhdGlibGUgPSAiZml4ZWQtY2xvY2si
OworCQljbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+OworCQkjY2xvY2stY2VsbHMgPSA8MD47
CisJCWNsb2NrLW91dHB1dC1uYW1lcyA9ICJvc2MyN00iOworCX07CisKKwlzb2MgeworCQljb21w
YXRpYmxlID0gInNpbXBsZS1idXMiOworCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJI3NpemUt
Y2VsbHMgPSA8MT47CisJCXJhbmdlczsKKworCQl3ZHQ6IHdhdGNoZG9nQDE4MDA3NjgwIHsKKwkJ
CWNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxMjk1LXdhdGNoZG9nIjsKKwkJCXJlZyA9IDwweDE4
MDA3NjgwIDB4MTAwPjsKKwkJCWNsb2NrcyA9IDwmb3NjMjdNPjsKKwkJfTsKKworCQl1YXJ0MDog
c2VyaWFsQDE4MDA3ODAwIHsKKwkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7CisJ
CQlyZWcgPSA8MHgxODAwNzgwMCAweDQwMD47CisJCQlyZWctc2hpZnQgPSA8Mj47CisJCQlyZWct
aW8td2lkdGggPSA8ND47CisJCQljbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+OworCQkJc3Rh
dHVzID0gImRpc2FibGVkIjsKKwkJfTsKKworCQl1YXJ0MTogc2VyaWFsQDE4MDFiMjAwIHsKKwkJ
CWNvbXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7CisJCQlyZWcgPSA8MHgxODAxYjIwMCAw
eDEwMD47CisJCQlyZWctc2hpZnQgPSA8Mj47CisJCQlyZWctaW8td2lkdGggPSA8ND47CisJCQlj
bG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+OworCQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJ
fTsKKworCQlnaWM6IGludGVycnVwdC1jb250cm9sbGVyQGZmMDExMDAwIHsKKwkJCWNvbXBhdGli
bGUgPSAiYXJtLGNvcnRleC1hNy1naWMiOworCQkJcmVnID0gPDB4ZmYwMTEwMDAgMHgxMDAwPiwK
KwkJCSAgICAgIDwweGZmMDEyMDAwIDB4MjAwMD47CisJCQlpbnRlcnJ1cHQtY29udHJvbGxlcjsK
KwkJCSNpbnRlcnJ1cHQtY2VsbHMgPSA8Mz47CisJCX07CisJfTsKK307Ci0tIAoyLjE2LjQKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
