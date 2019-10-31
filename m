Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5BFEB57E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:55:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JiFPHwkcqnLCzC8xNbNM6LovgkVYgyQ+Xvr3wNuqBNw=; b=G53Vmyj4hd+/ul
	T/Ov1buxCVthd9Mrx8RSltWz8rIDCndEWFjpFbgAjKtZ2cQzMKdhqTWMfOW/h/LDy8nF98t7McSGH
	41IbL/YHFsQL3Pi3Wsy6N7ScBS0R5OJzjIrfl2wJ5/Fk5wZ6xS2ygETiFBIHST1DHpoIoiVPzHjEA
	WXtmyoF4APPxS5ihh79orSnsT6bL3l9tLzPmpPbsOCiG/8QWlFB+atMM+1vjwopvuM9J4mBIRAcr1
	Lkc5YyzwhllBves83hgHnziG5FpHpG1pteRjXkimZTJQqSbP6oJOQdRVwH7uzzZEDlExBQF5s6OTg
	83uliXHgNMXtEQlZosLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDjD-0005QR-3g; Thu, 31 Oct 2019 16:55:19 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDhE-0003t7-2U; Thu, 31 Oct 2019 16:53:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BE77AB30A;
 Thu, 31 Oct 2019 16:53:12 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 4/4] ARM: realtek: Enable RTD1195 arch timer
Date: Thu, 31 Oct 2019 17:53:07 +0100
Message-Id: <20191031165308.14102-5-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191031165308.14102-1-afaerber@suse.de>
References: <20191031165308.14102-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_095316_363528_6B4763E2 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2l0aG91dCB0aGlzIG1hZ2ljIHdyaXRlIHRoZSB0aW1lciBkb2Vzbid0IHdvcmsgYW5kIGJvb3Qg
Z2V0cyBzdHVjay4KClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3Vz
ZS5kZT4KLS0tCiB2MjogTmV3CiAKIGFyY2gvYXJtL21hY2gtcmVhbHRlay9ydGQxMTk1LmMgfCAx
NiArKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtcmVhbHRlay9ydGQxMTk1LmMgYi9hcmNoL2FybS9tYWNo
LXJlYWx0ZWsvcnRkMTE5NS5jCmluZGV4IDk5ZTVkM2U5NmE4ZS4uY2QxNmYxZTk5NjQ2IDEwMDY0
NAotLS0gYS9hcmNoL2FybS9tYWNoLXJlYWx0ZWsvcnRkMTE5NS5jCisrKyBiL2FyY2gvYXJtL21h
Y2gtcmVhbHRlay9ydGQxMTk1LmMKQEAgLTUsNiArNSw5IEBACiAgKiBDb3B5cmlnaHQgKGMpIDIw
MTctMjAxOSBBbmRyZWFzIEbDpHJiZXIKICAqLwogCisjaW5jbHVkZSA8bGludXgvY2xrLXByb3Zp
ZGVyLmg+CisjaW5jbHVkZSA8bGludXgvY2xvY2tzb3VyY2UuaD4KKyNpbmNsdWRlIDxsaW51eC9p
by5oPgogI2luY2x1ZGUgPGxpbnV4L21lbWJsb2NrLmg+CiAjaW5jbHVkZSA8YXNtL21hY2gvYXJj
aC5oPgogCkBAIC0yNCw2ICsyNywxOCBAQCBzdGF0aWMgdm9pZCBfX2luaXQgcnRkMTE5NV9yZXNl
cnZlKHZvaWQpCiAJcnRkMTE5NV9tZW1ibG9ja19yZW1vdmUoMHgxODEwMDAwMCwgMHgwMTAwMDAw
MCk7CiB9CiAKK3N0YXRpYyB2b2lkIF9faW5pdCBydGQxMTk1X2luaXRfdGltZSh2b2lkKQorewor
CXZvaWQgX19pb21lbSAqYmFzZTsKKworCWJhc2UgPSBpb3JlbWFwKDB4ZmYwMTgwMDAsIDQpOwor
CXdyaXRlbCgweDEsIGJhc2UpOworCWlvdW5tYXAoYmFzZSk7CisKKwlvZl9jbGtfaW5pdChOVUxM
KTsKKwl0aW1lcl9wcm9iZSgpOworfQorCiBzdGF0aWMgY29uc3QgY2hhciAqY29uc3QgcnRkMTE5
NV9kdF9jb21wYXRbXSBfX2luaXRjb25zdCA9IHsKIAkicmVhbHRlayxydGQxMTk1IiwKIAlOVUxM
CkBAIC0zMSw2ICs0Niw3IEBAIHN0YXRpYyBjb25zdCBjaGFyICpjb25zdCBydGQxMTk1X2R0X2Nv
bXBhdFtdIF9faW5pdGNvbnN0ID0gewogCiBEVF9NQUNISU5FX1NUQVJUKHJ0ZDExOTUsICJSZWFs
dGVrIFJURDExOTUiKQogCS5kdF9jb21wYXQgPSBydGQxMTk1X2R0X2NvbXBhdCwKKwkuaW5pdF90
aW1lID0gcnRkMTE5NV9pbml0X3RpbWUsCiAJLnJlc2VydmUgPSBydGQxMTk1X3Jlc2VydmUsCiAJ
LmwyY19hdXhfdmFsID0gMHgwLAogCS5sMmNfYXV4X21hc2sgPSB+MHgwLAotLSAKMi4xNi40CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
