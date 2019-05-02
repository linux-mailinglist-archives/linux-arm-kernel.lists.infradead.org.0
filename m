Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5387D12186
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 19:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOOA92jMtx6uYDfxqrETMe0v4RQpA3uJ4B3i2n7AEuA=; b=Y84NuXKGKk/592
	/b8Wei6ZroUN4klL0Yyv7FnhlZTgc9zfTEoVbrFTRIUd2GmasAiEhmJ7UcZQpN1jC1oepPgtIPthG
	a71RGZ6JJe/R1mPLp1q0q0R/lHJPwUmUHFczfTcB8gMvshba0Agyad2i7J8wQDcjfiNMeD7PWxBAv
	WwQg+Mqtl3GXWA8Cfa7wtSFm62yaf7irZkHzpvZvLxCZ8xUY6Z08T6MbvO4C09w7yFcl85NEIkrU4
	2/kVIvmLYjMJj5kUbbevoNyXPW0pXMLyrIWoIU60QCXJNg7YBi33Sk98NYOQkrMDKPGkK/+LV2jps
	z83bNUWXk1eVmOaiPupA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMFzZ-0003Yd-9G; Thu, 02 May 2019 17:59:33 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFyZ-0002HD-Jp; Thu, 02 May 2019 17:58:38 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gportay) with ESMTPSA id 7C0FA2834A8
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
Subject: [PATCH v5 5/6] arm64: dts: rockchip: Enable dmc and dfi nodes on gru.
Date: Thu,  2 May 2019 13:58:19 -0400
Message-Id: <20190502175820.25382-6-gael.portay@collabora.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190502175820.25382-1-gael.portay@collabora.com>
References: <20190502175820.25382-1-gael.portay@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_105832_266321_8FA725A3 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

RnJvbTogTGluIEh1YW5nIDxobEByb2NrLWNoaXBzLmNvbT4KCkVuYWJsZSB0aGUgRE1DIChEeW5h
bWljIE1lbW9yeSBDb250cm9sbGVyKSBhbmQgdGhlIERGSSAoRERSIFBIWQpJbnRlcmZhY2UpIG5v
ZGVzIG9uIGdydSBib2FyZHMgc28gd2UgY2FuIHN1cHBvcnQgRERSIERWRlMuCgpTaWduZWQtb2Zm
LWJ5OiBMaW4gSHVhbmcgPGhsQHJvY2stY2hpcHMuY29tPgpTaWduZWQtb2ZmLWJ5OiBFbnJpYyBC
YWxsZXRibyBpIFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgpTaWduZWQtb2Zm
LWJ5OiBHYcOrbCBQT1JUQVkgPGdhZWwucG9ydGF5QGNvbGxhYm9yYS5jb20+Ci0tLQoKQ2hhbmdl
cyBpbiB2NToKLSBbUEFUQ0ggdjQgNS81XSBSZW1vdmUgdXNlIG9mIERSQU0gc2V0dGluZyBkZWZp
bmVzLgoJCSBSZW1vdmUgbmV3IERSQU0gc2V0dGluZyBoZWFkZXIuCgpDaGFuZ2VzIGluIHY0Ogot
IFtQQVRDSCB2MyA1LzVdIEFkZCBib2FyZCByZWxhdGVkIEREUiBzZXR0aW5ncyAobW92ZWQgZnJv
bSA0LzUpLgoKQ2hhbmdlcyBpbiB2MzoKLSBbUEFUQ0ggdjIgNS81XSBSZW1vdmUgZGlzcGxheV9z
dWJzeXN0ZW0gbm9kZXMuCgpDaGFuZ2VzIGluIHYyOgotIFtQQVRDSCA4LzhdIE1vdmUgY2VudGVy
LXN1cHBseSBhdHRyaWJ1dGUgb2YgZG1jIG5vZGUgaW4gZmlsZQogICAgICAgICAgICAgIHJrMzM5
OS1ncnUtY2hyb21lYm9vay5kdHNpICh3aGVyZSBwcHZhcl9jZW50ZXJsb2dpYyBpcwoJICAgICAg
ZGVmaW5lZCkuCgpDaGFuZ2VzIGluIHYxOiBOb25lCgogLi4uL2R0cy9yb2NrY2hpcC9yazMzOTkt
Z3J1LWNocm9tZWJvb2suZHRzaSAgIHwgIDQgKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LWdydS5kdHNpICB8IDQ1ICsrKysrKysrKysrKysrKysrKysKIC4uLi9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTktb3AxLW9wcC5kdHNpICAgICB8IDI5ICsrKysrKysrKysrKwogMyBm
aWxlcyBjaGFuZ2VkLCA3OCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktZ3J1LWNocm9tZWJvb2suZHRzaSBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWdydS1jaHJvbWVib29rLmR0c2kKaW5kZXggOTMxNjQw
ZTlhZWQ0Li5jZmI4MTM1NmM2MWUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LWdydS1jaHJvbWVib29rLmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTktZ3J1LWNocm9tZWJvb2suZHRzaQpAQCAtNDAwLDMgKzQwMCw3IEBA
IGFwX2kyY190cDogJmkyYzUgewogCQlyb2NrY2hpcCxwaW5zID0gPDAgOCBSS19GVU5DX0dQSU8g
JnBjZmdfcHVsbF9ub25lPjsKIAl9OwogfTsKKworJmRtYyB7CisJY2VudGVyLXN1cHBseSA9IDwm
cHB2YXJfY2VudGVybG9naWM+OworfTsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LWdydS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktZ3J1LmR0c2kKaW5kZXggZGEwM2ZhOWM1NjYyLi5mM2ZmM2RkNjg5YzcgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWdydS5kdHNpCisrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWdydS5kdHNpCkBAIC0yODksNiArMjg5
LDEyIEBACiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAorJmRtY19vcHBfdGFibGUgeworCW9wcDA0
IHsKKwkJb3BwLXN1c3BlbmQ7CisJfTsKK307CisKIC8qCiAgKiBTZXQgc29tZSBzdXNwZW5kIG9w
ZXJhdGluZyBwb2ludHMgdG8gYXZvaWQgT1ZQIGluIHN1c3BlbmQKICAqCkBAIC00ODksNiArNDk1
LDQ1IEBAIGFwX2kyY19hdWRpbzogJmkyYzggewogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKKyZk
ZmkgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKKyZkbWMgeworCXN0YXR1cyA9ICJva2F5IjsK
Kwl1cHRocmVzaG9sZCA9IDwyNT47CisJZG93bmRpZmZlcmVudGlhbCA9IDwxNT47CisJcm9ja2No
aXAsZGRyM19zcGVlZF9iaW4gPSA8MjE+OworCXJvY2tjaGlwLHBkX2lkbGUgPSA8MHg0MD47CisJ
cm9ja2NoaXAsc3JfaWRsZSA9IDwweDI+OworCXJvY2tjaGlwLHNyX21jX2dhdGVfaWRsZSA9IDww
eDM+OworCXJvY2tjaGlwLHNycGRfbGl0ZV9pZGxlCT0gPDB4ND47CisJcm9ja2NoaXAsc3RhbmRi
eV9pZGxlID0gPDB4MjAwMD47CisJcm9ja2NoaXAsZHJhbV9kbGxfZGlzX2ZyZXEgPSA8MzAwMDAw
MDAwPjsKKwlyb2NrY2hpcCxwaHlfZGxsX2Rpc19mcmVxID0gPDEyNTAwMDAwMD47CisJcm9ja2No
aXAsYXV0b19wZF9kaXNfZnJlcSA9IDw2NjYwMDAwMDA+OworCXJvY2tjaGlwLGRkcjNfb2R0X2Rp
c19mcmVxID0gPDMzMzAwMDAwMD47CisJcm9ja2NoaXAsZGRyM19kcnYgPSA8NDA+OworCXJvY2tj
aGlwLGRkcjNfb2R0ID0gPDEyMD47CisJcm9ja2NoaXAscGh5X2RkcjNfY2FfZHJ2ID0gPDQwPjsK
Kwlyb2NrY2hpcCxwaHlfZGRyM19kcV9kcnYgPSA8NDA+OworCXJvY2tjaGlwLHBoeV9kZHIzX29k
dCA9IDwyNDA+OworCXJvY2tjaGlwLGxwZGRyM19vZHRfZGlzX2ZyZXEgPSA8MzMzMDAwMDAwPjsK
Kwlyb2NrY2hpcCxscGRkcjNfZHJ2ID0gPDM0PjsKKwlyb2NrY2hpcCxscGRkcjNfb2R0ID0gPDI0
MD47CisJcm9ja2NoaXAscGh5X2xwZGRyM19jYV9kcnYgPSA8NDA+OworCXJvY2tjaGlwLHBoeV9s
cGRkcjNfZHFfZHJ2ID0gPDQwPjsKKwlyb2NrY2hpcCxwaHlfbHBkZHIzX29kdCA9IDwyNDA+Owor
CXJvY2tjaGlwLGxwZGRyNF9vZHRfZGlzX2ZyZXEgPSA8MzMzMDAwMDAwPjsKKwlyb2NrY2hpcCxs
cGRkcjRfZHJ2ID0gPDYwPjsKKwlyb2NrY2hpcCxscGRkcjRfZHFfb2R0ID0gPDQwPjsKKwlyb2Nr
Y2hpcCxscGRkcjRfY2Ffb2R0ID0gPDQwPjsKKwlyb2NrY2hpcCxwaHlfbHBkZHI0X2NhX2RydiA9
IDw0MD47CisJcm9ja2NoaXAscGh5X2xwZGRyNF9ja19jc19kcnYgPSA8ODA+OworCXJvY2tjaGlw
LHBoeV9scGRkcjRfZHFfZHJ2ID0gPDgwPjsKKwlyb2NrY2hpcCxwaHlfbHBkZHI0X29kdCA9IDw2
MD47Cit9OworCiAmc2RoY2kgewogCS8qCiAJICogU2lnbmFsIGludGVncml0eSBpc24ndCBncmVh
dCBhdCAyMDAgTUh6IGFuZCAxNTAgTUh6IChERFIpIGdpdmVzIHRoZQpkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktb3AxLW9wcC5kdHNpIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktb3AxLW9wcC5kdHNpCmluZGV4IDY5Y2M5YjA1YmFh
NS4uYzllNzAzMmIwMWE4IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1vcDEtb3BwLmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktb3AxLW9wcC5kdHNpCkBAIC0xMTAsNiArMTEwLDMxIEBACiAJCQlvcHAtbWljcm92b2x0
ID0gPDEwNzUwMDA+OwogCQl9OwogCX07CisKKwlkbWNfb3BwX3RhYmxlOiBkbWNfb3BwX3RhYmxl
IHsKKwkJY29tcGF0aWJsZSA9ICJvcGVyYXRpbmctcG9pbnRzLXYyIjsKKworCQlvcHAwMCB7CisJ
CQlvcHAtaHogPSAvYml0cy8gNjQgPDIwMDAwMDAwMD47CisJCQlvcHAtbWljcm92b2x0ID0gPDkw
MDAwMD47CisJCX07CisJCW9wcDAxIHsKKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8NDAwMDAwMDAw
PjsKKwkJCW9wcC1taWNyb3ZvbHQgPSA8OTAwMDAwPjsKKwkJfTsKKwkJb3BwMDIgeworCQkJb3Bw
LWh6ID0gL2JpdHMvIDY0IDw2NjYwMDAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdCA9IDw5MDAwMDA+
OworCQl9OworCQlvcHAwMyB7CisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDgwMDAwMDAwMD47CisJ
CQlvcHAtbWljcm92b2x0ID0gPDkwMDAwMD47CisJCX07CisJCW9wcDA0IHsKKwkJCW9wcC1oeiA9
IC9iaXRzLyA2NCA8OTI4MDAwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQgPSA8OTAwMDAwPjsKKwkJ
fTsKKwl9OwogfTsKIAogJmNwdV9sMCB7CkBAIC0xMzksMyArMTY0LDcgQEAKICZncHUgewogCW9w
ZXJhdGluZy1wb2ludHMtdjIgPSA8JmdwdV9vcHBfdGFibGU+OwogfTsKKworJmRtYyB7CisJb3Bl
cmF0aW5nLXBvaW50cy12MiA9IDwmZG1jX29wcF90YWJsZT47Cit9OwotLSAKMi4yMS4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
