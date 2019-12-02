Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA8110E8D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:30:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPIxIaA0kzwaNYMHW6mETJMYDOemChSlep/4ZfRWNdo=; b=d6gIws1zdS+Dye
	kIT/G7EP4CbxyefCI81NeacrW8riPN0XzoriuJbzMOw7+f1aV+Nsv7CjlhMzauMPT563TzeoBEmDm
	mu+z/yvzgZED7yWppWlvIpJvvjkeqxOsypFza4lzXc/uMCYD95J94/ZcGfu2ZenaZ/7vCn5YQNHFO
	rOxjSD+TALn+mcvgAZjaC2ibZ479D0vltUJmWOLsYCF9uqC5FsQ9E221vlMcNDD2WWdUBfcIq03R5
	GLTbQhB1XQAncM58nXzfRFzgwaFz8prOplwnJWqnLAL2Eho6ebQEerfW/EloVMnPeDsyXBFgGgiJk
	TA6gI5ktjQsRn8Ey76sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibiyI-0007D4-CW; Mon, 02 Dec 2019 10:30:26 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibixF-0005BD-6i; Mon, 02 Dec 2019 10:29:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id EEFA4B279;
 Mon,  2 Dec 2019 10:29:19 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 3/9] arm64: dts: realtek: rtd129x: Introduce r-bus
Date: Mon,  2 Dec 2019 11:29:04 +0100
Message-Id: <20191202102910.26916-4-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202102910.26916-1-afaerber@suse.de>
References: <20191202102910.26916-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_022921_531248_22AD4401 
X-CRM114-Status: UNSURE (   9.31  )
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
YXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiB2MSAtPiB2MjoKICogRml4ZWQgci1i
dXMgc2l6ZSBmcm9tIDB4MTAwMDAwIHRvIDB4MjAwMDAwIChKYW1lcykKICogUmVuYW1lZCBub2Rl
IGZyb20gci1idXMgdG8gYnVzIChSb2IpCiAKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9y
dGQxMjl4LmR0c2kgfCAxMzYgKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDcyIGluc2VydGlvbnMoKyksIDY0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpCmluZGV4IDhkODBjY2E5NDViYy4uNWU3NTVkZGE3
YWJiIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNp
CisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kKQEAgLTU1LDcw
ICs1NSw3OCBAQAogCQkvKiBFeGNsdWRlIHVwIHRvIDIgR2lCIG9mIFJBTSAqLwogCQlyYW5nZXMg
PSA8MHg4MDAwMDAwMCAweDgwMDAwMDAwIDB4ODAwMDAwMDA+OwogCi0JCXJlc2V0MTogcmVzZXQt
Y29udHJvbGxlckA5ODAwMDAwMCB7Ci0JCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0
IjsKLQkJCXJlZyA9IDwweDk4MDAwMDAwIDB4ND47Ci0JCQkjcmVzZXQtY2VsbHMgPSA8MT47Ci0J
CX07Ci0KLQkJcmVzZXQyOiByZXNldC1jb250cm9sbGVyQDk4MDAwMDA0IHsKLQkJCWNvbXBhdGli
bGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOwotCQkJcmVnID0gPDB4OTgwMDAwMDQgMHg0PjsKLQkJ
CSNyZXNldC1jZWxscyA9IDwxPjsKLQkJfTsKLQotCQlyZXNldDM6IHJlc2V0LWNvbnRyb2xsZXJA
OTgwMDAwMDggewotCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7Ci0JCQlyZWcg
PSA8MHg5ODAwMDAwOCAweDQ+OwotCQkJI3Jlc2V0LWNlbGxzID0gPDE+OwotCQl9OwotCi0JCXJl
c2V0NDogcmVzZXQtY29udHJvbGxlckA5ODAwMDA1MCB7Ci0JCQljb21wYXRpYmxlID0gInNucHMs
ZHctbG93LXJlc2V0IjsKLQkJCXJlZyA9IDwweDk4MDAwMDUwIDB4ND47Ci0JCQkjcmVzZXQtY2Vs
bHMgPSA8MT47Ci0JCX07Ci0KLQkJaXNvX3Jlc2V0OiByZXNldC1jb250cm9sbGVyQDk4MDA3MDg4
IHsKLQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOwotCQkJcmVnID0gPDB4OTgw
MDcwODggMHg0PjsKLQkJCSNyZXNldC1jZWxscyA9IDwxPjsKLQkJfTsKLQotCQl3ZHQ6IHdhdGNo
ZG9nQDk4MDA3NjgwIHsKLQkJCWNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxMjk1LXdhdGNoZG9n
IjsKLQkJCXJlZyA9IDwweDk4MDA3NjgwIDB4MTAwPjsKLQkJCWNsb2NrcyA9IDwmb3NjMjdNPjsK
LQkJfTsKLQotCQl1YXJ0MDogc2VyaWFsQDk4MDA3ODAwIHsKLQkJCWNvbXBhdGlibGUgPSAic25w
cyxkdy1hcGItdWFydCI7Ci0JCQlyZWcgPSA8MHg5ODAwNzgwMCAweDQwMD47Ci0JCQlyZWctc2hp
ZnQgPSA8Mj47Ci0JCQlyZWctaW8td2lkdGggPSA8ND47Ci0JCQljbG9jay1mcmVxdWVuY3kgPSA8
MjcwMDAwMDA+OwotCQkJcmVzZXRzID0gPCZpc29fcmVzZXQgUlREMTI5NV9JU09fUlNUTl9VUjA+
OwotCQkJc3RhdHVzID0gImRpc2FibGVkIjsKLQkJfTsKLQotCQl1YXJ0MTogc2VyaWFsQDk4MDFi
MjAwIHsKLQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7Ci0JCQlyZWcgPSA8MHg5
ODAxYjIwMCAweDEwMD47Ci0JCQlyZWctc2hpZnQgPSA8Mj47Ci0JCQlyZWctaW8td2lkdGggPSA8
ND47Ci0JCQljbG9jay1mcmVxdWVuY3kgPSA8NDMyMDAwMDAwPjsKLQkJCXJlc2V0cyA9IDwmcmVz
ZXQyIFJURDEyOTVfUlNUTl9VUjE+OwotCQkJc3RhdHVzID0gImRpc2FibGVkIjsKLQkJfTsKLQot
CQl1YXJ0Mjogc2VyaWFsQDk4MDFiNDAwIHsKLQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1hcGIt
dWFydCI7Ci0JCQlyZWcgPSA8MHg5ODAxYjQwMCAweDEwMD47Ci0JCQlyZWctc2hpZnQgPSA8Mj47
Ci0JCQlyZWctaW8td2lkdGggPSA8ND47Ci0JCQljbG9jay1mcmVxdWVuY3kgPSA8NDMyMDAwMDAw
PjsKLQkJCXJlc2V0cyA9IDwmcmVzZXQyIFJURDEyOTVfUlNUTl9VUjI+OwotCQkJc3RhdHVzID0g
ImRpc2FibGVkIjsKKwkJcmJ1czogYnVzQDk4MDAwMDAwIHsKKwkJCWNvbXBhdGlibGUgPSAic2lt
cGxlLWJ1cyI7CisJCQlyZWcgPSA8MHg5ODAwMDAwMCAweDIwMDAwMD47CisJCQkjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKKwkJCSNzaXplLWNlbGxzID0gPDE+OworCQkJcmFuZ2VzID0gPDB4MCAweDk4
MDAwMDAwIDB4MjAwMDAwPjsKKworCQkJcmVzZXQxOiByZXNldC1jb250cm9sbGVyQDAgeworCQkJ
CWNvbXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOworCQkJCXJlZyA9IDwweDAgMHg0PjsK
KwkJCQkjcmVzZXQtY2VsbHMgPSA8MT47CisJCQl9OworCisJCQlyZXNldDI6IHJlc2V0LWNvbnRy
b2xsZXJANCB7CisJCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7CisJCQkJcmVn
ID0gPDB4NCAweDQ+OworCQkJCSNyZXNldC1jZWxscyA9IDwxPjsKKwkJCX07CisKKwkJCXJlc2V0
MzogcmVzZXQtY29udHJvbGxlckA4IHsKKwkJCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJl
c2V0IjsKKwkJCQlyZWcgPSA8MHg4IDB4ND47CisJCQkJI3Jlc2V0LWNlbGxzID0gPDE+OworCQkJ
fTsKKworCQkJcmVzZXQ0OiByZXNldC1jb250cm9sbGVyQDUwIHsKKwkJCQljb21wYXRpYmxlID0g
InNucHMsZHctbG93LXJlc2V0IjsKKwkJCQlyZWcgPSA8MHg1MCAweDQ+OworCQkJCSNyZXNldC1j
ZWxscyA9IDwxPjsKKwkJCX07CisKKwkJCWlzb19yZXNldDogcmVzZXQtY29udHJvbGxlckA3MDg4
IHsKKwkJCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKKwkJCQlyZWcgPSA8MHg3
MDg4IDB4ND47CisJCQkJI3Jlc2V0LWNlbGxzID0gPDE+OworCQkJfTsKKworCQkJd2R0OiB3YXRj
aGRvZ0A3NjgwIHsKKwkJCQljb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTI5NS13YXRjaGRvZyI7
CisJCQkJcmVnID0gPDB4NzY4MCAweDEwMD47CisJCQkJY2xvY2tzID0gPCZvc2MyN00+OworCQkJ
fTsKKworCQkJdWFydDA6IHNlcmlhbEA3ODAwIHsKKwkJCQljb21wYXRpYmxlID0gInNucHMsZHct
YXBiLXVhcnQiOworCQkJCXJlZyA9IDwweDc4MDAgMHg0MDA+OworCQkJCXJlZy1zaGlmdCA9IDwy
PjsKKwkJCQlyZWctaW8td2lkdGggPSA8ND47CisJCQkJY2xvY2stZnJlcXVlbmN5ID0gPDI3MDAw
MDAwPjsKKwkJCQlyZXNldHMgPSA8Jmlzb19yZXNldCBSVEQxMjk1X0lTT19SU1ROX1VSMD47CisJ
CQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJCX07CisKKwkJCXVhcnQxOiBzZXJpYWxAMWIyMDAg
eworCQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7CisJCQkJcmVnID0gPDB4MWIy
MDAgMHgxMDA+OworCQkJCXJlZy1zaGlmdCA9IDwyPjsKKwkJCQlyZWctaW8td2lkdGggPSA8ND47
CisJCQkJY2xvY2stZnJlcXVlbmN5ID0gPDQzMjAwMDAwMD47CisJCQkJcmVzZXRzID0gPCZyZXNl
dDIgUlREMTI5NV9SU1ROX1VSMT47CisJCQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJCX07CisK
KwkJCXVhcnQyOiBzZXJpYWxAMWI0MDAgeworCQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1hcGIt
dWFydCI7CisJCQkJcmVnID0gPDB4MWI0MDAgMHgxMDA+OworCQkJCXJlZy1zaGlmdCA9IDwyPjsK
KwkJCQlyZWctaW8td2lkdGggPSA8ND47CisJCQkJY2xvY2stZnJlcXVlbmN5ID0gPDQzMjAwMDAw
MD47CisJCQkJcmVzZXRzID0gPCZyZXNldDIgUlREMTI5NV9SU1ROX1VSMj47CisJCQkJc3RhdHVz
ID0gImRpc2FibGVkIjsKKwkJCX07CiAJCX07CiAKIAkJZ2ljOiBpbnRlcnJ1cHQtY29udHJvbGxl
ckBmZjAxMTAwMCB7Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
