Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F122C12183
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 19:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AgSDZsXmlhv7D2qTVlpykUY2e8lkG/Gm3/0srycPI0E=; b=Slv3V19VJK2nMM
	QXUHXnmQOdnP5IGMJDcsh1j+yeEhpA5J7Xt4ENSI/X2D5WkpjryPZBS9YR0f+PApPc9BD5odSpoBk
	IKg8CmjUPAx+z+7MTgIOu10N90XdXpHa/7V9llIsiUgW5nRZ6Ye5Au8rIYIh3hOStVFaOPQLHCjR1
	hD2Zv0uQkqfjDQ9JRlinXrF4Ivc0AKGEx/UpK6lCej/XFH+YXasP4Qokq3VG5h1TnUKopE7M02L5H
	uKgMABPKAt4itdvNsZKFc6uxruf9J6JJbjOxj3n/mtgjpGLY/lDKRQWLfvq24/9YTPWKG1/vP2eWU
	OPWWLb6QfksLdguwj+OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMFzQ-0003I0-BM; Thu, 02 May 2019 17:59:24 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFyX-0002E4-HD; Thu, 02 May 2019 17:58:32 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gportay) with ESMTPSA id 42CF4283490
From: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Lin Huang <hl@rock-chips.com>, Brian Norris <briannorris@chromium.org>,
 Douglas Anderson <dianders@chromium.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Derek Basehore <dbasehore@chromium.org>, Randy Li <ayaka@soulik.info>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v5 4/6] arm64: dts: rk3399: Add dfi and dmc nodes.
Date: Thu,  2 May 2019 13:58:18 -0400
Message-Id: <20190502175820.25382-5-gael.portay@collabora.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190502175820.25382-1-gael.portay@collabora.com>
References: <20190502175820.25382-1-gael.portay@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_105829_834754_834DDEDB 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTGluIEh1YW5nIDxobEByb2NrLWNoaXBzLmNvbT4KClRoZXNlIGFyZSByZXF1aXJlZCB0
byBzdXBwb3J0IEREUiBEVkZTIG9uIHJrMzM5OSBwbGF0Zm9ybS4KClNpZ25lZC1vZmYtYnk6IExp
biBIdWFuZyA8aGxAcm9jay1jaGlwcy5jb20+ClNpZ25lZC1vZmYtYnk6IEVucmljIEJhbGxldGJv
IGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9yYS5jb20+ClNpZ25lZC1vZmYtYnk6IEdh
w6tsIFBPUlRBWSA8Z2FlbC5wb3J0YXlAY29sbGFib3JhLmNvbT4KLS0tCgpDaGFuZ2VzIGluIHY1
OiBOb25lCgpDaGFuZ2VzIGluIHY0OgotIFtQQVRDSCB2MyA0LzVdIFJlbW92ZSBib2FyZCByZWxh
dGVkIEREUiBzZXR0aW5ncy4KCkNoYW5nZXMgaW4gdjM6IE5vbmUKCkNoYW5nZXMgaW4gdjI6Ci0g
W1BBVENIIDcvOF0gUmV3b3JkIHRoZSBjb21taXQgbWVzc2FnZSB0byByZWZsZWN0IHRoZSByZW1v
dmFsIG9mCiAgICAgICAgICAgICAgcmszMzkwLWRyYW0tZGVmYXVsdC10aW1pbmcuZHRzIGluIHYx
LgoKQ2hhbmdlcyBpbiB2MToKLSBbUkZDIDgvMTBdIE1vdmUgcmszMzk5LWRyYW0uaCB0byBkdC1p
bmNsdWRlcy4KLSBbUkZDIDgvMTBdIFB1dCBzZHJhbSBkZWZhdWx0IHZhbHVlcyB1bmRlciB0aGUg
ZG1jIG5vZGUuCi0gW1JGQyA4LzEwXSBSZW1vdmVkIHJrMzM5OS1kcmFtLWRlZmF1bHQtdGltaW5n
LmR0cwoKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kgfCAxOSArKysr
KysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCmluZGV4IGRiOWQ5NDhjMGIwMy4uODdl
ZTA4NGZhYzg5IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKQEAg
LTE4ODUsNiArMTg4NSwyNSBAQAogCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCX07CiAKKwlkZmk6
IGRmaUBmZjYzMDAwMCB7CisJCXJlZyA9IDwweDAwIDB4ZmY2MzAwMDAgMHgwMCAweDQwMDA+Owor
CQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1kZmkiOworCQlyb2NrY2hpcCxwbXUgPSA8
JnBtdWdyZj47CisJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMzEgSVJRX1RZUEVfTEVWRUxfSElH
SCAwPjsKKwkJY2xvY2tzID0gPCZjcnUgUENMS19ERFJfTU9OPjsKKwkJY2xvY2stbmFtZXMgPSAi
cGNsa19kZHJfbW9uIjsKKwkJc3RhdHVzID0gImRpc2FibGVkIjsKKwl9OworCisJZG1jOiBkbWMg
eworCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1kbWMiOworCQlyb2NrY2hpcCxwbXUg
PSA8JnBtdWdyZj47CisJCWRldmZyZXEtZXZlbnRzID0gPCZkZmk+OworCQljbG9ja3MgPSA8JmNy
dSBTQ0xLX0REUkM+OworCQljbG9jay1uYW1lcyA9ICJkbWNfY2xrIjsKKwkJc3RhdHVzID0gImRp
c2FibGVkIjsKKwl9OworCiAJcGluY3RybDogcGluY3RybCB7CiAJCWNvbXBhdGlibGUgPSAicm9j
a2NoaXAscmszMzk5LXBpbmN0cmwiOwogCQlyb2NrY2hpcCxncmYgPSA8JmdyZj47Ci0tIAoyLjIx
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
