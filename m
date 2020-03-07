Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2498C17CA79
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 02:34:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8swN4Tgy5bPRFnUQ+yKC95IKSY1E+L79WUbpAvx47ds=; b=A03z8Yajlrje9m
	SvDW/zSg4PFClFXPeq8NINihqiVx2Zt8j1GijZlM+nIVtKA8z0eI+clCQdmiaNjdFgETifa+kMkac
	v8Ih0t5Z59GSvf0xFlrpcOmnsAA54SiOqi/pQJXPdAvx/iyt1+Yy3psTvRA3maqyLJ07UP3kIKifQ
	Vw4SZtHJ/2zA212EcXzOkxiyd2as/EgnwoLb8ws659MhNIHJJ8tnvAVpYTEMRcZn6OImdBcgLwu8k
	/YeHpegYl/7X2E8WDtP3o57ex1lI3xQRO5dUoiUtqNloAfE4Ork43DUf0xdc/xIKl2SchjTLUgj82
	4FSTPaC4RXAbP0wkjVXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAOLi-0000wz-Lp; Sat, 07 Mar 2020 01:33:54 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAOKg-000068-Cl
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 01:32:51 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1BDB41A0DCE;
 Sat,  7 Mar 2020 02:32:49 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 24E7B1A0DC3;
 Sat,  7 Mar 2020 02:32:29 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2EC1A4029B;
 Sat,  7 Mar 2020 09:32:16 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, dmitry.torokhov@gmail.com, a.zummo@towertech.it,
 alexandre.belloni@bootlin.com, rui.zhang@intel.com,
 daniel.lezcano@linaro.org, amit.kucheria@verdurent.com,
 wim@linux-watchdog.org, linux@roeck-us.net, daniel.baluta@nxp.com,
 linux@rempel-privat.de, gregkh@linuxfoundation.org, tglx@linutronix.de,
 m.felsch@pengutronix.de, andriy.shevchenko@linux.intel.com, arnd@arndb.de,
 robh@kernel.org, yuehaibing@huawei.com, ronald@innovation.ch,
 krzk@kernel.org, leonard.crestez@nxp.com, aisheng.dong@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: [PATCH V2 5/7] input: keyboard: imx_sc_key: Fix build warning for
 !CONFIG_IMX_SCU case
Date: Sat,  7 Mar 2020 09:25:57 +0800
Message-Id: <1583544359-515-5-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583544359-515-1-git-send-email-Anson.Huang@nxp.com>
References: <1583544359-515-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_173250_586540_DE28AD52 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rml4IGJlbG93IGJ1aWxkIHdhcm5pbmcgd2hlbiBDT01QSUxFX1RFU1QgaXMgZW5hYmxlZCB3aGls
ZSBJTVhfU0NVIGlzIG5vdDoKCmRyaXZlcnMvaW5wdXQva2V5Ym9hcmQvaW14X3NjX2tleS5jOiBJ
biBmdW5jdGlvbiDigJhpbXhfc2NfY2hlY2tfZm9yX2V2ZW50c+KAmToKZHJpdmVycy9pbnB1dC9r
ZXlib2FyZC9pbXhfc2Nfa2V5LmM6ODc6Mjc6IHdhcm5pbmc6IOKAmG1zZy5zdGF0ZeKAmSBpcyB1
c2VkCnVuaW5pdGlhbGl6ZWQgaW4gdGhpcyBmdW5jdGlvbiBbLVd1bmluaXRpYWxpemVkXQpzdGF0
ZSA9IChib29sKShtc2cuc3RhdGUgJiAweGZmKTsKICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBeCkFSICAgICAgZHJpdmVycy9pbnB1dC9rZXlib2FyZC9idWlsdC1pbi5hCgpTaWduZWQtb2Zm
LWJ5OiBBbnNvbiBIdWFuZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4KLS0tCm5ldyBwYXRjaC4KLS0t
CiBkcml2ZXJzL2lucHV0L2tleWJvYXJkL2lteF9zY19rZXkuYyB8IDEgKwogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbnB1dC9rZXlib2FyZC9p
bXhfc2Nfa2V5LmMgYi9kcml2ZXJzL2lucHV0L2tleWJvYXJkL2lteF9zY19rZXkuYwppbmRleCA5
ZjgwOWFlLi4yNmExMmZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2lucHV0L2tleWJvYXJkL2lteF9z
Y19rZXkuYworKysgYi9kcml2ZXJzL2lucHV0L2tleWJvYXJkL2lteF9zY19rZXkuYwpAQCAtNzIs
NiArNzIsNyBAQCBzdGF0aWMgdm9pZCBpbXhfc2NfY2hlY2tfZm9yX2V2ZW50cyhzdHJ1Y3Qgd29y
a19zdHJ1Y3QgKndvcmspCiAJaGRyLT5mdW5jID0gSU1YX1NDX01JU0NfRlVOQ19HRVRfQlVUVE9O
X1NUQVRVUzsKIAloZHItPnNpemUgPSAxOwogCisJbXNnLnN0YXRlID0gMDsKIAllcnJvciA9IGlt
eF9zY3VfY2FsbF9ycGMocHJpdi0+a2V5X2lwY19oYW5kbGUsICZtc2csIHRydWUpOwogCWlmIChl
cnJvcikgewogCQlkZXZfZXJyKCZpbnB1dC0+ZGV2LCAicmVhZCBpbXggc2Mga2V5IGZhaWxlZCwg
ZXJyb3IgJWRcbiIsIGVycm9yKTsKLS0gCjIuNy40CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
