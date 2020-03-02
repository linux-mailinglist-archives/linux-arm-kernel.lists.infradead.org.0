Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D671754F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 08:56:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X9WaaZ6PhKVRmBJ7W3PY3O5W6gfvEpmxIdfp/Re960A=; b=ncNoqr6mJhYsj8
	8Q/SyYmkuzxt0kUeTOQuUOQkGzFdiKaakNakyin+QKCOu9CpMKJwaI2zSCjcwz1x8p9BHnZeK5LJW
	fD9va/cxeMy0rP0sDd2KdlM/yqTOmrM1Jhd1GMQ1HbY/zCA15TwopI+gE7GtJjbcOVJqafFZwXZaE
	xKUqLyrGjipK1WtRzmBAlzGMxcjQSdoKWRdW61zkly/U5l81FWZLAitAS9rJubDfb2k0r8CeNJnoc
	lX4ptthcOrOHiA51caS/9wFT6OQXm8ZqZ62r/bqEaeiInrigqYTCjtwvxbjF4AiuHm8W9T/n/iFbt
	JY5CoicrMboRSnmU5ayg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8fwD-0006k1-L4; Mon, 02 Mar 2020 07:56:29 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8fw7-0006j5-2N
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 07:56:24 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BDACF200F0E;
 Mon,  2 Mar 2020 08:56:17 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 18EFF200F14;
 Mon,  2 Mar 2020 08:56:12 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7DEBB40299;
 Mon,  2 Mar 2020 15:56:05 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2] thermal: imx_thermal: Use __maybe_unused instead of
 CONFIG_PM_SLEEP
Date: Mon,  2 Mar 2020 15:50:10 +0800
Message-Id: <1583135410-7496-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_235623_246469_4D9A73CA 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

VXNlIF9fbWF5YmVfdW51c2VkIGZvciBwb3dlciBtYW5hZ2VtZW50IHJlbGF0ZWQgZnVuY3Rpb25z
IGluc3RlYWQKb2YgI2lmIENPTkZJR19QTV9TTEVFUCB0byBzaW1wbGlmeSB0aGUgY29kZS4KClNp
Z25lZC1vZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPgpSZXZpZXdlZC1i
eTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0t
CkNoYW5nZXMgc2luY2UgVjE6CgktIGZpeCB0eXBvIG9mIGNvbW1pdCBtZXNzYWdlLCBzaW1wbHkt
PnNpbXBsaWZ5LgotLS0KIGRyaXZlcnMvdGhlcm1hbC9pbXhfdGhlcm1hbC5jIHwgNiArKy0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy90aGVybWFsL2lteF90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvaW14
X3RoZXJtYWwuYwppbmRleCBiYjY3NTRhLi5lNzVkZGE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3Ro
ZXJtYWwvaW14X3RoZXJtYWwuYworKysgYi9kcml2ZXJzL3RoZXJtYWwvaW14X3RoZXJtYWwuYwpA
QCAtODc4LDggKzg3OCw3IEBAIHN0YXRpYyBpbnQgaW14X3RoZXJtYWxfcmVtb3ZlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIDA7CiB9CiAKLSNpZmRlZiBDT05GSUdfUE1f
U0xFRVAKLXN0YXRpYyBpbnQgaW14X3RoZXJtYWxfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYp
CitzdGF0aWMgaW50IF9fbWF5YmVfdW51c2VkIGlteF90aGVybWFsX3N1c3BlbmQoc3RydWN0IGRl
dmljZSAqZGV2KQogewogCXN0cnVjdCBpbXhfdGhlcm1hbF9kYXRhICpkYXRhID0gZGV2X2dldF9k
cnZkYXRhKGRldik7CiAJc3RydWN0IHJlZ21hcCAqbWFwID0gZGF0YS0+dGVtcG1vbjsKQEAgLTkw
MCw3ICs4OTksNyBAQCBzdGF0aWMgaW50IGlteF90aGVybWFsX3N1c3BlbmQoc3RydWN0IGRldmlj
ZSAqZGV2KQogCXJldHVybiAwOwogfQogCi1zdGF0aWMgaW50IGlteF90aGVybWFsX3Jlc3VtZShz
dHJ1Y3QgZGV2aWNlICpkZXYpCitzdGF0aWMgaW50IF9fbWF5YmVfdW51c2VkIGlteF90aGVybWFs
X3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCiB7CiAJc3RydWN0IGlteF90aGVybWFsX2RhdGEg
KmRhdGEgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKIAlzdHJ1Y3QgcmVnbWFwICptYXAgPSBkYXRh
LT50ZW1wbW9uOwpAQCAtOTE4LDcgKzkxNyw2IEBAIHN0YXRpYyBpbnQgaW14X3RoZXJtYWxfcmVz
dW1lKHN0cnVjdCBkZXZpY2UgKmRldikKIAogCXJldHVybiAwOwogfQotI2VuZGlmCiAKIHN0YXRp
YyBTSU1QTEVfREVWX1BNX09QUyhpbXhfdGhlcm1hbF9wbV9vcHMsCiAJCQkgaW14X3RoZXJtYWxf
c3VzcGVuZCwgaW14X3RoZXJtYWxfcmVzdW1lKTsKLS0gCjIuNy40CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
