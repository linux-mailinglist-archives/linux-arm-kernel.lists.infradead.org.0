Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A201FEA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:16:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4jqW/aGiT6cxpbf18lXIG7S9yYvkM4sdcMcDeeAtos8=; b=F+8+e+rxqi2L52
	+CNsrzRDRsDvKL2c585znDTZELuZ+WxcJEM5L5aMxDxmKjZCcYrW7WeviIW/mJhEBkCp1tP1eM1O+
	9vmNWqMejyE0VXGyOGWbRb4OoinaxiLALKz0XWHx9DcnNIwYSVGTRaaH0108xca1sYP8o9+y/aGYe
	PDTd5ituc5cg8BhscXtPJvfVm4SccMFyrk6iEQYVfveJSrZ2rEQqo9wTIJDM/i68Afmq+IYdoCqaH
	3bESdIDUsoHexlb6IBTH8Ukn2U7Xn12jw3evzyFr8n+DDXaiUqxJKMYd9ZHKRYl3DuieMt8iSmoKg
	PxklAbvBwE72TxwhX7EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWMP-0002PR-RL; Tue, 30 Apr 2019 17:16:05 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWMJ-0002Os-I0
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:16:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 648BAFB03;
 Tue, 30 Apr 2019 19:15:57 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5nOpYID4nRbN; Tue, 30 Apr 2019 19:15:56 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 0F37F4027E; Tue, 30 Apr 2019 19:15:56 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: imx8mq: Add a node for irqsteer
Date: Tue, 30 Apr 2019 19:15:55 +0200
Message-Id: <72b64db0a3ae682d1c6f435fecf7876de2f57bc3.1556644355.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_101559_756895_50F2B057 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgbm9kZSBmb3IgdGhlIGlycXN0ZWVyIGludGVycnVwdCBjb250cm9sbGVyIGZvdW5kIG9u
IHRoZSBpTVg4TVEKU29DLgoKU2lnbmVkLW9mZi1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4
Y3B1Lm9yZz4KUmV2aWV3ZWQtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRl
PgoKLS0tCkNoYW5nZXMgZnJvbSB2MSBhcyBwZXIgY29tbWVudHMgZnJvbSBMdWNhcyBTdGFjaAoq
IERyb3AgaW50ZXJydXB0LXBhcmVudAoqIE1vdmUgY29tcGF0aWJsZSBzdGluZ3MgdG8gYSBzaW5n
bGUgbGluZQoKIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpIHwgMTkg
KysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaSBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCmluZGV4IDJjYzkzOWNmYmQ3
NS4uMzExZjUzNmQzYmJmIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9pbXg4bXEuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEu
ZHRzaQpAQCAtNzk4LDYgKzc5OCwyNSBAQAogCQkJfTsKIAkJfTsKIAorCQlidXNAMzJjMDAwMDAg
eyAvKiBBSVBTNCAqLworCQkJY29tcGF0aWJsZSA9ICJmc2wsaW14OG1xLWFpcHMtYnVzIiwgInNp
bXBsZS1idXMiOworCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCQkjc2l6ZS1jZWxscyA9IDwx
PjsKKwkJCXJhbmdlcyA9IDwweDMyYzAwMDAwIDB4MzJjMDAwMDAgMHg0MDAwMDA+OworCisJCQlp
cnFzdGVlcjogaW50ZXJydXB0LWNvbnRyb2xsZXJAMzJlMmQwMDAgeworCQkJCWNvbXBhdGlibGUg
PSAiZnNsLGlteDhtLWlycXN0ZWVyIiwgImZzbCxpbXgtaXJxc3RlZXIiOworCQkJCXJlZyA9IDww
eDMyZTJkMDAwIDB4MTAwMD47CisJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDE4IElSUV9UWVBF
X0xFVkVMX0hJR0g+OworCQkJCWNsb2NrcyA9IDwmY2xrIElNWDhNUV9DTEtfRElTUF9BUEJfUk9P
VD47CisJCQkJY2xvY2stbmFtZXMgPSAiaXBnIjsKKwkJCQlmc2wsY2hhbm5lbCA9IDwwPjsKKwkJ
CQlmc2wsbnVtLWlycXMgPSA8NjQ+OworCQkJCWludGVycnVwdC1jb250cm9sbGVyOworCQkJCSNp
bnRlcnJ1cHQtY2VsbHMgPSA8MT47CisJCQl9OworCQl9OworCiAJCWdwdTogZ3B1QDM4MDAwMDAw
IHsKIAkJCWNvbXBhdGlibGUgPSAidml2YW50ZSxnYyI7CiAJCQlyZWcgPSA8MHgzODAwMDAwMCAw
eDQwMDAwPjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
