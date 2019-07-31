Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B647C904
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Llzb2b2LzF14n0GLeqq6ADRKphSlewBhg3O6uX4SFpA=; b=RVPjd6h/WC5W9I
	Gb45Im5Z3fdei5iH4EnQ8F8vN/jguWlopM7evzTAqYDLwe44tFVz4Fql9aqT7xNEmWvdh0+dteLPV
	6TTSz2osI2r4XRGok7pZa69v76yNJGPwQ+r0xA0WCgk/A7T1zMkHFMMBALMp77gUCW9HM7rKz7phY
	wXnD7CpSfTA2R2+vI1pHHcr/awD28wpOSlbMYQ6FJ+JbyXJwbMhbcHfu7Mc5xhXtoUVeRwKNrXr4U
	NNHCoJKYoU5U9aEPltef8UEirDlAiVWehsvTu/MzLS1dCU03DYI20lQe6su+YNDs7FDhuGnHuxIi5
	50GGKLprWyVs/Qz8QjTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrhZ-0007Hp-K7; Wed, 31 Jul 2019 16:43:45 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrhQ-0007Gj-RX
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:43:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 44AEDFB02;
 Wed, 31 Jul 2019 18:43:35 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nZ9ndQofYGCX; Wed, 31 Jul 2019 18:43:34 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 68E2046BB5; Wed, 31 Jul 2019 18:43:31 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: reset: Fix typo in imx8mq resets
Date: Wed, 31 Jul 2019 18:43:30 +0200
Message-Id: <f4c58a4a1c7a115cb9756630535031d6e9777247.1564591352.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1564591352.git.agx@sigxcpu.org>
References: <cover.1564591352.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_094337_040783_FD46F2B7 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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

U29tZSBvZiB0aGUgbWlwaSBkc2kgcmVzZXRzIHdlcmUgY2FsbGVkCgogIElNWDhNUV9SRVNFVF9N
SVBJX0RJU19fCgppbnN0ZWFkIG9mCgogIElNWDhNUV9SRVNFVF9NSVBJX0RTSV9fCgpTaW5jZSB0
aGV5J3JlIERTSSByZWxhdGVkIHRoaXMgbG9va3MgbGlrZSBhIHR5cG8uCgpTaWduZWQtb2ZmLWJ5
OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgotLS0KIGluY2x1ZGUvZHQtYmluZGlu
Z3MvcmVzZXQvaW14OG1xLXJlc2V0LmggfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRp
bmdzL3Jlc2V0L2lteDhtcS1yZXNldC5oIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC9pbXg4
bXEtcmVzZXQuaAppbmRleCA1N2M1OTI0OThhYTAuLmJmYTQxYjBlMjRmNiAxMDA2NDQKLS0tIGEv
aW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC9pbXg4bXEtcmVzZXQuaAorKysgYi9pbmNsdWRlL2R0
LWJpbmRpbmdzL3Jlc2V0L2lteDhtcS1yZXNldC5oCkBAIC0zMSw5ICszMSw5IEBACiAjZGVmaW5l
IElNWDhNUV9SRVNFVF9PVEcyX1BIWV9SRVNFVAkJMjAKICNkZWZpbmUgSU1YOE1RX1JFU0VUX01J
UElfRFNJX1JFU0VUX0JZVEVfTgkyMQogI2RlZmluZSBJTVg4TVFfUkVTRVRfTUlQSV9EU0lfUkVT
RVRfTgkJMjIKLSNkZWZpbmUgSU1YOE1RX1JFU0VUX01JUElfRElTX0RQSV9SRVNFVF9OCTIzCi0j
ZGVmaW5lIElNWDhNUV9SRVNFVF9NSVBJX0RJU19FU0NfUkVTRVRfTgkyNAotI2RlZmluZSBJTVg4
TVFfUkVTRVRfTUlQSV9ESVNfUENMS19SRVNFVF9OCTI1CisjZGVmaW5lIElNWDhNUV9SRVNFVF9N
SVBJX0RTSV9EUElfUkVTRVRfTgkyMworI2RlZmluZSBJTVg4TVFfUkVTRVRfTUlQSV9EU0lfRVND
X1JFU0VUX04JMjQKKyNkZWZpbmUgSU1YOE1RX1JFU0VUX01JUElfRFNJX1BDTEtfUkVTRVRfTgky
NQogI2RlZmluZSBJTVg4TVFfUkVTRVRfUENJRVBIWQkJCTI2CiAjZGVmaW5lIElNWDhNUV9SRVNF
VF9QQ0lFUEhZX1BFUlNUCQkyNwogI2RlZmluZSBJTVg4TVFfUkVTRVRfUENJRV9DVFJMX0FQUFNf
RU4JCTI4Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
