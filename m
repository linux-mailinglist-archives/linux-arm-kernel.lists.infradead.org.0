Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A661D4EB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 15:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kEH+fxfHzhjYoMxkyyNWDrrVgTq1JzlECPe1RA4TIX0=; b=jp4hAHI9Obo+r2
	VF6s6+gc7iXcBRt3P0+LHGva2hipBiNwyF0iDNI56FMx4ATAYDqDoFDSw8RtC1OPVcHmNnX4PE1WC
	2fJW1W748jnadlXLyhzMJ9UJXjakOpliAOJELm8qAioEb05c1aj6ewJdxAT1qVwNdJm2pDloFJN2f
	CXa4K17LPCQHjBxl4GEo74t7y0gHlCfwfOOhrGtPMrQwUJUHnJ29d+eOiHWcEsoOz/gIPga0Poetq
	gBq9s3bdmeKPpwlOTDkSqaRfSHVd4nor1hVdZve0uV25xYjFeNXnL4z2JjDFvJ89n5tMuqsGvcfyf
	rLiK6s3uKX3foyGcVsfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZaAA-00025A-Ck; Fri, 15 May 2020 13:14:06 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZa8c-0000QQ-38
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 13:12:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 34B2AFB06;
 Fri, 15 May 2020 15:12:25 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0-lLz--REorz; Fri, 15 May 2020 15:12:23 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 8E898445A9; Fri, 15 May 2020 15:12:15 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Sam Ravnborg <sam@ravnborg.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Robert Chiras <robert.chiras@nxp.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 5/6] arm64: dts: imx8mq: Add NWL dsi controller
Date: Fri, 15 May 2020 15:12:14 +0200
Message-Id: <6f915d10ead271a1c155628efbc909d5eb9f4102.1589548223.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <cover.1589548223.git.agx@sigxcpu.org>
References: <cover.1589548223.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_061230_290839_31D8D0BF 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgbm9kZSBmb3IgdGhlIE5vcnRod2VzdGxvZ2ljIE1JUEkgRFNJIElQIGNvcmUsICJkaXNh
YmxlZCIgYnkKZGVmYXVsdC4KClNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2ln
eGNwdS5vcmc+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kg
fCAzMSArKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDMxIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEu
ZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCmluZGV4IDAx
NDJmMDZlYWQxMi4uNmJiYmY0NGU2YmUwIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2ZyZWVzY2FsZS9pbXg4bXEuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9pbXg4bXEuZHRzaQpAQCAtODg5LDYgKzg4OSwzNyBAQCBzZWNfanIyOiBqckAzMDAwIHsKIAkJ
CQl9OwogCQkJfTsKIAorCQkJbWlwaV9kc2k6IG1pcGktZHNpQDMwYTAwMDAwIHsKKwkJCQkjYWRk
cmVzcy1jZWxscyA9IDwxPjsKKwkJCQkjc2l6ZS1jZWxscyA9IDwwPjsKKwkJCQljb21wYXRpYmxl
ID0gImZzbCxpbXg4bXEtbndsLWRzaSI7CisJCQkJcmVnID0gPDB4MzBhMDAwMDAgMHgzMDA+Owor
CQkJCWNsb2NrcyA9IDwmY2xrIElNWDhNUV9DTEtfRFNJX0NPUkU+LAorCQkJCQkgPCZjbGsgSU1Y
OE1RX0NMS19EU0lfQUhCPiwKKwkJCQkJIDwmY2xrIElNWDhNUV9DTEtfRFNJX0lQR19ESVY+LAor
CQkJCQkgPCZjbGsgSU1YOE1RX0NMS19EU0lfUEhZX1JFRj4sCisJCQkJCSA8JmNsayBJTVg4TVFf
Q0xLX0xDRElGX1BJWEVMPjsKKwkJCQljbG9jay1uYW1lcyA9ICJjb3JlIiwgInJ4X2VzYyIsICJ0
eF9lc2MiLCAicGh5X3JlZiIsICJsY2RpZiI7CisJCQkJYXNzaWduZWQtY2xvY2tzID0gPCZjbGsg
SU1YOE1RX0NMS19EU0lfQUhCPiwKKwkJCQkJCSAgPCZjbGsgSU1YOE1RX0NMS19EU0lfQ09SRT4s
CisJCQkJCQkgIDwmY2xrIElNWDhNUV9DTEtfRFNJX0lQR19ESVY+OworCQkJCWFzc2lnbmVkLWNs
b2NrLXBhcmVudHMgPSA8JmNsayBJTVg4TVFfU1lTMV9QTExfODBNPiwKKwkJCQkJCQkgPCZjbGsg
SU1YOE1RX1NZUzFfUExMXzI2Nk0+OworCQkJCWFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDgwMDAw
MDAwPiwKKwkJCQkJCSAgICAgICA8MjY2MDAwMDAwPiwKKwkJCQkJCSAgICAgICA8MjAwMDAwMDA+
OworCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAzNCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJ
CQlyZXNldHMgPSA8JnNyYyBJTVg4TVFfUkVTRVRfTUlQSV9EU0lfUkVTRVRfQllURV9OPiwKKwkJ
CQkJIDwmc3JjIElNWDhNUV9SRVNFVF9NSVBJX0RTSV9EUElfUkVTRVRfTj4sCisJCQkJCSA8JnNy
YyBJTVg4TVFfUkVTRVRfTUlQSV9EU0lfRVNDX1JFU0VUX04+LAorCQkJCQkgPCZzcmMgSU1YOE1R
X1JFU0VUX01JUElfRFNJX1BDTEtfUkVTRVRfTj47CisJCQkJcmVzZXQtbmFtZXMgPSAiYnl0ZSIs
ICJkcGkiLCAiZXNjIiwgInBjbGsiOworCQkJCXBoeXMgPSA8JmRwaHk+OworCQkJCXBoeS1uYW1l
cyA9ICJkcGh5IjsKKwkJCQlwb3dlci1kb21haW5zID0gPCZwZ2NfbWlwaT47CisJCQkJc3RhdHVz
ID0gImRpc2FibGVkIjsKKwkJCSB9OworCiAJCQlkcGh5OiBkcGh5QDMwYTAwMzAwIHsKIAkJCQlj
b21wYXRpYmxlID0gImZzbCxpbXg4bXEtbWlwaS1kcGh5IjsKIAkJCQlyZWcgPSA8MHgzMGEwMDMw
MCAweDEwMD47Ci0tIAoyLjI2LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
