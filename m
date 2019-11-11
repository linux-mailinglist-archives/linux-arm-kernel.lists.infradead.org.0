Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9CDF6D1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 04:06:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odPq1yRcjmwBcmlVWflfYND57P8BZ/F23VG5pIMDEXo=; b=fEldytDGeh4QVe
	PTHPQo0qXFmOfAd9a2y7EKPfXG+6wZ14ORdvyHfE6azl0gDc9GKKY2qXvsUQM/mf+whkJbeO3tDAS
	Wl3t3E9whGqt9rHmT3X2bSZXvURHf7JKz+EmMB+yjzf+6HFp9TbbLz8NqlTX5wkQQ5cx3alLS8SAe
	drouHzxb+9KVTJcY+MVplKaT5lwpUUBoowv6keKLftqHokOYpjnanhwfEPqI0Y6bBJIn3lii87n6B
	E/1wCU8Zz+qTRWzF0piWsX9d8y2J6J2C7lst79SJYEMgUowLqz3BbisLauzRaTza+M+QYBeZWrPGN
	WZrl++cqEGakHsZ0vrag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU01n-0004t3-Cj; Mon, 11 Nov 2019 03:06:07 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU00a-0002eT-H1; Mon, 11 Nov 2019 03:04:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B4830B150;
 Mon, 11 Nov 2019 03:04:49 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 3/7] arm64: dts: realtek: rtd129x: Introduce r-bus
Date: Mon, 11 Nov 2019 04:04:30 +0100
Message-Id: <20191111030434.29977-4-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191111030434.29977-1-afaerber@suse.de>
References: <20191111030434.29977-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_190452_852048_F5C74761 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TW9kZWwgUmVhbHRlaydzIHJlZ2lzdGVyIGJ1cyBpbiBEVC4KClNpZ25lZC1vZmYtYnk6IEFuZHJl
YXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jl
YWx0ZWsvcnRkMTI5eC5kdHNpIHwgMTM2ICsrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA3MiBpbnNlcnRpb25zKCspLCA2NCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQppbmRleCA4ZDgwY2NhOTQ1YmMuLmM0
NTMzYTI1NTVhYSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEy
OXguZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpCkBA
IC01NSw3MCArNTUsNzggQEAKIAkJLyogRXhjbHVkZSB1cCB0byAyIEdpQiBvZiBSQU0gKi8KIAkJ
cmFuZ2VzID0gPDB4ODAwMDAwMDAgMHg4MDAwMDAwMCAweDgwMDAwMDAwPjsKIAotCQlyZXNldDE6
IHJlc2V0LWNvbnRyb2xsZXJAOTgwMDAwMDAgewotCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxv
dy1yZXNldCI7Ci0JCQlyZWcgPSA8MHg5ODAwMDAwMCAweDQ+OwotCQkJI3Jlc2V0LWNlbGxzID0g
PDE+OwotCQl9OwotCi0JCXJlc2V0MjogcmVzZXQtY29udHJvbGxlckA5ODAwMDAwNCB7Ci0JCQlj
b21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKLQkJCXJlZyA9IDwweDk4MDAwMDA0IDB4
ND47Ci0JCQkjcmVzZXQtY2VsbHMgPSA8MT47Ci0JCX07Ci0KLQkJcmVzZXQzOiByZXNldC1jb250
cm9sbGVyQDk4MDAwMDA4IHsKLQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOwot
CQkJcmVnID0gPDB4OTgwMDAwMDggMHg0PjsKLQkJCSNyZXNldC1jZWxscyA9IDwxPjsKLQkJfTsK
LQotCQlyZXNldDQ6IHJlc2V0LWNvbnRyb2xsZXJAOTgwMDAwNTAgewotCQkJY29tcGF0aWJsZSA9
ICJzbnBzLGR3LWxvdy1yZXNldCI7Ci0JCQlyZWcgPSA8MHg5ODAwMDA1MCAweDQ+OwotCQkJI3Jl
c2V0LWNlbGxzID0gPDE+OwotCQl9OwotCi0JCWlzb19yZXNldDogcmVzZXQtY29udHJvbGxlckA5
ODAwNzA4OCB7Ci0JCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKLQkJCXJlZyA9
IDwweDk4MDA3MDg4IDB4ND47Ci0JCQkjcmVzZXQtY2VsbHMgPSA8MT47Ci0JCX07Ci0KLQkJd2R0
OiB3YXRjaGRvZ0A5ODAwNzY4MCB7Ci0JCQljb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTI5NS13
YXRjaGRvZyI7Ci0JCQlyZWcgPSA8MHg5ODAwNzY4MCAweDEwMD47Ci0JCQljbG9ja3MgPSA8Jm9z
YzI3TT47Ci0JCX07Ci0KLQkJdWFydDA6IHNlcmlhbEA5ODAwNzgwMCB7Ci0JCQljb21wYXRpYmxl
ID0gInNucHMsZHctYXBiLXVhcnQiOwotCQkJcmVnID0gPDB4OTgwMDc4MDAgMHg0MDA+OwotCQkJ
cmVnLXNoaWZ0ID0gPDI+OwotCQkJcmVnLWlvLXdpZHRoID0gPDQ+OwotCQkJY2xvY2stZnJlcXVl
bmN5ID0gPDI3MDAwMDAwPjsKLQkJCXJlc2V0cyA9IDwmaXNvX3Jlc2V0IFJURDEyOTVfSVNPX1JT
VE5fVVIwPjsKLQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Ci0JCX07Ci0KLQkJdWFydDE6IHNlcmlh
bEA5ODAxYjIwMCB7Ci0JCQljb21wYXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQiOwotCQkJcmVn
ID0gPDB4OTgwMWIyMDAgMHgxMDA+OwotCQkJcmVnLXNoaWZ0ID0gPDI+OwotCQkJcmVnLWlvLXdp
ZHRoID0gPDQ+OwotCQkJY2xvY2stZnJlcXVlbmN5ID0gPDQzMjAwMDAwMD47Ci0JCQlyZXNldHMg
PSA8JnJlc2V0MiBSVEQxMjk1X1JTVE5fVVIxPjsKLQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Ci0J
CX07Ci0KLQkJdWFydDI6IHNlcmlhbEA5ODAxYjQwMCB7Ci0JCQljb21wYXRpYmxlID0gInNucHMs
ZHctYXBiLXVhcnQiOwotCQkJcmVnID0gPDB4OTgwMWI0MDAgMHgxMDA+OwotCQkJcmVnLXNoaWZ0
ID0gPDI+OwotCQkJcmVnLWlvLXdpZHRoID0gPDQ+OwotCQkJY2xvY2stZnJlcXVlbmN5ID0gPDQz
MjAwMDAwMD47Ci0JCQlyZXNldHMgPSA8JnJlc2V0MiBSVEQxMjk1X1JTVE5fVVIyPjsKLQkJCXN0
YXR1cyA9ICJkaXNhYmxlZCI7CisJCXJidXM6IHItYnVzQDk4MDAwMDAwIHsKKwkJCWNvbXBhdGli
bGUgPSAic2ltcGxlLWJ1cyI7CisJCQlyZWcgPSA8MHg5ODAwMDAwMCAweDEwMDAwMD47CisJCQkj
YWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCSNzaXplLWNlbGxzID0gPDE+OworCQkJcmFuZ2VzID0g
PDB4MCAweDk4MDAwMDAwIDB4MTAwMDAwPjsKKworCQkJcmVzZXQxOiByZXNldC1jb250cm9sbGVy
QDAgeworCQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOworCQkJCXJlZyA9IDww
eDAgMHg0PjsKKwkJCQkjcmVzZXQtY2VsbHMgPSA8MT47CisJCQl9OworCisJCQlyZXNldDI6IHJl
c2V0LWNvbnRyb2xsZXJANCB7CisJCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7
CisJCQkJcmVnID0gPDB4NCAweDQ+OworCQkJCSNyZXNldC1jZWxscyA9IDwxPjsKKwkJCX07CisK
KwkJCXJlc2V0MzogcmVzZXQtY29udHJvbGxlckA4IHsKKwkJCQljb21wYXRpYmxlID0gInNucHMs
ZHctbG93LXJlc2V0IjsKKwkJCQlyZWcgPSA8MHg4IDB4ND47CisJCQkJI3Jlc2V0LWNlbGxzID0g
PDE+OworCQkJfTsKKworCQkJcmVzZXQ0OiByZXNldC1jb250cm9sbGVyQDUwIHsKKwkJCQljb21w
YXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKKwkJCQlyZWcgPSA8MHg1MCAweDQ+OworCQkJ
CSNyZXNldC1jZWxscyA9IDwxPjsKKwkJCX07CisKKwkJCWlzb19yZXNldDogcmVzZXQtY29udHJv
bGxlckA3MDg4IHsKKwkJCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKKwkJCQly
ZWcgPSA8MHg3MDg4IDB4ND47CisJCQkJI3Jlc2V0LWNlbGxzID0gPDE+OworCQkJfTsKKworCQkJ
d2R0OiB3YXRjaGRvZ0A3NjgwIHsKKwkJCQljb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTI5NS13
YXRjaGRvZyI7CisJCQkJcmVnID0gPDB4NzY4MCAweDEwMD47CisJCQkJY2xvY2tzID0gPCZvc2My
N00+OworCQkJfTsKKworCQkJdWFydDA6IHNlcmlhbEA3ODAwIHsKKwkJCQljb21wYXRpYmxlID0g
InNucHMsZHctYXBiLXVhcnQiOworCQkJCXJlZyA9IDwweDc4MDAgMHg0MDA+OworCQkJCXJlZy1z
aGlmdCA9IDwyPjsKKwkJCQlyZWctaW8td2lkdGggPSA8ND47CisJCQkJY2xvY2stZnJlcXVlbmN5
ID0gPDI3MDAwMDAwPjsKKwkJCQlyZXNldHMgPSA8Jmlzb19yZXNldCBSVEQxMjk1X0lTT19SU1RO
X1VSMD47CisJCQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJCX07CisKKwkJCXVhcnQxOiBzZXJp
YWxAMWIyMDAgeworCQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7CisJCQkJcmVn
ID0gPDB4MWIyMDAgMHgxMDA+OworCQkJCXJlZy1zaGlmdCA9IDwyPjsKKwkJCQlyZWctaW8td2lk
dGggPSA8ND47CisJCQkJY2xvY2stZnJlcXVlbmN5ID0gPDQzMjAwMDAwMD47CisJCQkJcmVzZXRz
ID0gPCZyZXNldDIgUlREMTI5NV9SU1ROX1VSMT47CisJCQkJc3RhdHVzID0gImRpc2FibGVkIjsK
KwkJCX07CisKKwkJCXVhcnQyOiBzZXJpYWxAMWI0MDAgeworCQkJCWNvbXBhdGlibGUgPSAic25w
cyxkdy1hcGItdWFydCI7CisJCQkJcmVnID0gPDB4MWI0MDAgMHgxMDA+OworCQkJCXJlZy1zaGlm
dCA9IDwyPjsKKwkJCQlyZWctaW8td2lkdGggPSA8ND47CisJCQkJY2xvY2stZnJlcXVlbmN5ID0g
PDQzMjAwMDAwMD47CisJCQkJcmVzZXRzID0gPCZyZXNldDIgUlREMTI5NV9SU1ROX1VSMj47CisJ
CQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJCX07CiAJCX07CiAKIAkJZ2ljOiBpbnRlcnJ1cHQt
Y29udHJvbGxlckBmZjAxMTAwMCB7Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
