Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13434E17A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5LXQHF/YHL5NnY+MThBWmj07rYroEcd3gsNDSNPsmg=; b=iq5pTwA783PGQa
	hUFDNHMZtZexPs6NTDJK9YkBX9xoV1W8CxXJQT4GMkh1MdaYBCUL1MSvsWZIxL+fAiAMkMjGTbK5O
	qm5WNgLPMMraiPGPZS7bkPzKoiFq9SnzxEZMBt7UYPY+wBdOfWgjN1JgmbgxvdIxUAMFoB00S7NEl
	3RHw9tcRjgLdWNLHd5aF4WcaQwrF3/Kn/u9isWw+ybGFVYu9nF2/UQGZcGiBMcUzFRpLyPI1jW2ai
	HpXdTnr8REHDxGVrWbUX0sLfYM8qAe+jowUFmDPt0NrNW7XDmsXEWzsn43jmTUYb/Zvx2cq3ul847
	4hkucf75HnF+/Ii194ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDgy-0000pk-Mc; Wed, 23 Oct 2019 10:16:36 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDe3-0004mn-DB; Wed, 23 Oct 2019 10:13:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3EFF2B67E;
 Wed, 23 Oct 2019 10:13:33 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 11/11] ARM: dts: rtd1195: Adopt reset constants
Date: Wed, 23 Oct 2019 12:13:17 +0200
Message-Id: <20191023101317.26656-12-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191023101317.26656-1-afaerber@suse.de>
References: <20191023101317.26656-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031335_614451_0635D46C 
X-CRM114-Status: GOOD (  10.87  )
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
b2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjI6IE5ldwog
CiBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kgfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L2Jvb3QvZHRzL3J0ZDExOTUuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaQpp
bmRleCBlMmNkY2JjZjcwZjQuLjljY2Y4ZmEwNDcxOCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9v
dC9kdHMvcnRkMTE5NS5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaQpA
QCAtMTMsNiArMTMsNyBAQAogL21lbXJlc2VydmUvIDB4MTgxMDAwMDAgMHgwMTAwMDAwMDsgLyog
bm9yICovCiAKICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0t
Z2ljLmg+CisjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcmVzZXQvcmVhbHRlayxydGQxMTk1Lmg+CiAK
IC8gewogCWNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxMTk1IjsKQEAgLTEyOCw3ICsxMjksNyBA
QAogCQkJcmVnID0gPDB4MTgwMDc4MDAgMHg0MDA+OwogCQkJcmVnLXNoaWZ0ID0gPDI+OwogCQkJ
cmVnLWlvLXdpZHRoID0gPDQ+OwotCQkJcmVzZXRzID0gPCZpc29fcmVzZXQgOD47CisJCQlyZXNl
dHMgPSA8Jmlzb19yZXNldCBSVEQxMTk1X0lTT19SU1ROX1VSMD47CiAJCQljbG9jay1mcmVxdWVu
Y3kgPSA8MjcwMDAwMDA+OwogCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJfTsKQEAgLTEzOCw3
ICsxMzksNyBAQAogCQkJcmVnID0gPDB4MTgwMWIyMDAgMHgxMDA+OwogCQkJcmVnLXNoaWZ0ID0g
PDI+OwogCQkJcmVnLWlvLXdpZHRoID0gPDQ+OwotCQkJcmVzZXRzID0gPCZyZXNldDIgMjg+Owor
CQkJcmVzZXRzID0gPCZyZXNldDIgUlREMTE5NV9SU1ROX1VSMT47CiAJCQljbG9jay1mcmVxdWVu
Y3kgPSA8MjcwMDAwMDA+OwogCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJfTsKLS0gCjIuMTYu
NAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
