Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD74E17A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXs4eOqyYVqHmslxvIridR+wCTlgAuFe5gbfzuetz5s=; b=oOFuB2CxGDIhAq
	hMuLrsQsCEpqs4SJYIql/ZdnGv0Ms6ISEujfP0KdYToad4Mjk9wE2J8qVE51sP4Yu20WqaVffZ/mR
	QhZxYQ3EG3ndw87hXeLzwtDOfSXmzLzObcbxoSAjijWIuOvzAS3t8X+t7HMYQxThKJrIU4Dr24r3H
	ncWSydqLkYoecewNrRsvi413tSbDcR3G5gWWlRea0umCqpSHfgwOx9rUOqvR/TmP2MLQw4dn5bVHZ
	6t2pXaWQiMcejHmFhZI8utMqDf7RGP3VSyl2M1p1hyAbHd0NRLHIvfUuqll6V/4PvP5Jfg7akt8Zf
	ZFyoA3FBgYr8rNVp20Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDgp-0000Wp-7t; Wed, 23 Oct 2019 10:16:27 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDe3-0004mi-BE; Wed, 23 Oct 2019 10:13:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 62114B664;
 Wed, 23 Oct 2019 10:13:32 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 10/11] arm64: dts: realtek: Adopt RTD129x reset constants
Date: Wed, 23 Oct 2019 12:13:16 +0200
Message-Id: <20191023101317.26656-11-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191023101317.26656-1-afaerber@suse.de>
References: <20191023101317.26656-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031335_561636_7B16DB3E 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVwbGFjZSByZXNldCBjb250cm9sbGVyIGluZGljZXMgd2l0aCBjb25zdGFudHMuCgpTaWduZWQt
b2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjEgLT4gdjI6
IFVuY2hhbmdlZAogCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpIHwg
NyArKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpCmluZGV4IDE1ZDMyMWQ5
NTE1Yy4uNDQzMzExNDQ3NmY1IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0
ZWsvcnRkMTI5eC5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4
LmR0c2kKQEAgLTEyLDYgKzEyLDcgQEAKIC9tZW1yZXNlcnZlLwkweDAwMDAwMDAwMDFmZmUwMDAg
MHgwMDAwMDAwMDAwMDA0MDAwOwogCiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNv
bnRyb2xsZXIvYXJtLWdpYy5oPgorI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0ZWss
cnRkMTI5NS5oPgogCiAvIHsKIAlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+OwpAQCAtNzksNyAr
ODAsNyBAQAogCQkJcmVnLXNoaWZ0ID0gPDI+OwogCQkJcmVnLWlvLXdpZHRoID0gPDQ+OwogCQkJ
Y2xvY2stZnJlcXVlbmN5ID0gPDI3MDAwMDAwPjsKLQkJCXJlc2V0cyA9IDwmaXNvX3Jlc2V0IDg+
OworCQkJcmVzZXRzID0gPCZpc29fcmVzZXQgUlREMTI5NV9JU09fUlNUTl9VUjA+OwogCQkJc3Rh
dHVzID0gImRpc2FibGVkIjsKIAkJfTsKIApAQCAtODksNyArOTAsNyBAQAogCQkJcmVnLXNoaWZ0
ID0gPDI+OwogCQkJcmVnLWlvLXdpZHRoID0gPDQ+OwogCQkJY2xvY2stZnJlcXVlbmN5ID0gPDQz
MjAwMDAwMD47Ci0JCQlyZXNldHMgPSA8JnJlc2V0MiAyOD47CisJCQlyZXNldHMgPSA8JnJlc2V0
MiBSVEQxMjk1X1JTVE5fVVIxPjsKIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCX07CiAKQEAg
LTk5LDcgKzEwMCw3IEBACiAJCQlyZWctc2hpZnQgPSA8Mj47CiAJCQlyZWctaW8td2lkdGggPSA8
ND47CiAJCQljbG9jay1mcmVxdWVuY3kgPSA8NDMyMDAwMDAwPjsKLQkJCXJlc2V0cyA9IDwmcmVz
ZXQyIDI3PjsKKwkJCXJlc2V0cyA9IDwmcmVzZXQyIFJURDEyOTVfUlNUTl9VUjI+OwogCQkJc3Rh
dHVzID0gImRpc2FibGVkIjsKIAkJfTsKIAotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
