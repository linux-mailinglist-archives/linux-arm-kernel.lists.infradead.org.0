Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C66107E4D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 13:09:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0SpEh7EP887Mf3O8e7GIpO+I4oZhI+J6KFTQKeovqlk=; b=nKCfkVm4R1XbcM
	J+g/Sprf7taqudDGz8U30JQKTB+Ml29JkVRrjfRXgPeDKoBdF61ehPnEapocdfp7jvdu+iRLQIR3A
	n2Gv2noTqn3LJ8smzcTRtxFB4ezrBXQNWgazU7Ms5bl8EMoeWDTH7dcCBi84Ir3FxejMAKY8IOAgX
	pxz464VfZFn/csVR8pdeKPlvkn09J81eD6x3MV20nv2oQE5O9WKI6wnBKGUZi1T6PFen+gHv3xGI5
	MsJJxpUwQjme873N2M6CiQLF0bUIQJ7dKTvge6yl12uZi312xHoTQBIKvJmLPwwGF5+JOLqf6CVla
	XUH5RWYIuonVYyeZVPtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYUE7-00052r-Dy; Sat, 23 Nov 2019 12:09:23 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYUDx-00051g-90
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 12:09:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 7E59CFB03;
 Sat, 23 Nov 2019 13:09:07 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BqkUEUH1Kz7V; Sat, 23 Nov 2019 13:09:06 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 6C0AE489BF; Sat, 23 Nov 2019 13:08:02 +0100 (CET)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Anson Huang <Anson.Huang@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Carlo Caione <ccaione@baylibre.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mq: Add eLCDIF controller
Date: Sat, 23 Nov 2019 13:08:02 +0100
Message-Id: <59793b1ae533636528942b2cec14ec68b9830fcf.1574510649.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_040913_482003_88CDCA54 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgbm9kZSBmb3IgdGhlIGVMQ0RJRiBjb250cm9sbGVyLCAiZGlzYWJsZWQiIGJ5IGRlZmF1
bHQuCgpTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgotLS0K
V2l0aCBzb21lIG1pbmltYWwgc3VwcG9ydCBvbiBpbXg4bXEgd2UgbWlnaHQgYXMgd2VsbCBhZGQg
aXQgdG8gdGhlIERUCgogYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kg
fCAxNyArKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCmluZGV4IDdmOTMxOTQ1
MmI1OC4uMDBhYTYzYmZkODE2IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4bXEuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bXEuZHRzaQpAQCAtNDQ4LDYgKzQ0OCwyMyBAQAogCQkJCWZzbCxzZG1hLXJhbS1zY3JpcHQtbmFt
ZSA9ICJpbXgvc2RtYS9zZG1hLWlteDdkLmJpbiI7CiAJCQl9OwogCisJCQlsY2RpZjogbGNkaWZA
MzAzMjAwMDAgeworCQkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDhtcS1sY2RpZiIsICJmc2wsaW14
MjgtbGNkaWYiOworCQkJCXJlZyA9IDwweDMwMzIwMDAwIDB4MTAwMDA+OworCQkJCWludGVycnVw
dHMgPSA8R0lDX1NQSSA1IElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJCWNsb2NrcyA9IDwmY2xr
IElNWDhNUV9DTEtfTENESUZfUElYRUw+OworCQkJCWNsb2NrLW5hbWVzID0gInBpeCI7CisJCQkJ
YXNzaWduZWQtY2xvY2tzID0gPCZjbGsgSU1YOE1RX1ZJREVPX1BMTDFfUkVGX1NFTD4sCisJCQkJ
CQkgIDwmY2xrIElNWDhNUV9WSURFT19QTEwxX0JZUEFTUz4sCisJCQkJCQkgIDwmY2xrIElNWDhN
UV9DTEtfTENESUZfUElYRUw+LAorCQkJCQkJICA8JmNsayBJTVg4TVFfVklERU9fUExMMT47CisJ
CQkJYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmY2xrIElNWDhNUV9DTEtfMjVNPiwKKwkJCQkJ
CSAgPCZjbGsgSU1YOE1RX1ZJREVPX1BMTDE+LAorCQkJCQkJICA8JmNsayBJTVg4TVFfVklERU9f
UExMMV9PVVQ+OworCQkJCWFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDA+LCA8MD4sIDwwPiwgPDU5
NDAwMDAwMD47CisJCQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJCX07CisKIAkJCWlvbXV4Yzog
aW9tdXhjQDMwMzMwMDAwIHsKIAkJCQljb21wYXRpYmxlID0gImZzbCxpbXg4bXEtaW9tdXhjIjsK
IAkJCQlyZWcgPSA8MHgzMDMzMDAwMCAweDEwMDAwPjsKLS0gCjIuMjMuMAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
