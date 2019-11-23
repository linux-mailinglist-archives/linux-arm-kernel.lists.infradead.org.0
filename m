Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DE610807E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 21:40:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2vO6sUYcZ8KfKXjoZCf4tVmjF79egCByPHznKSmBRc=; b=cIb6+kXleQbcJv
	NC7WOY121d3/YM0HDpdpY7MyWHQeP5EjnR2jz7RiXujgqpX63uCt7D8CF6woxrsLtenI+guVrqIoh
	0tN4ZdMUMDkJiaouBzG7cLuzvXZLRdojHlyHWggU6iYd5Cs7A/fuudg1SqqeDFwS1zCUIZzJs1TeT
	1SFuX9OtMnb7xyHm5fLmlDA0/nOOwmymH/yz0e506oqaJNIHjew0tJKllrKznBdAIZ7RN5PVMZ9xt
	OxgDG7ZHFBug629rBYMBVXUSezZEsHzWMLYos95u0benffOhJBs0B8lt+I2H4I9gCIqhUdIagR8XL
	0RzswJ7V1HmQOd5TfKcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYcCU-0006CL-VJ; Sat, 23 Nov 2019 20:40:14 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYcAZ-0004YX-8w; Sat, 23 Nov 2019 20:38:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 84761B166;
 Sat, 23 Nov 2019 20:38:12 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v4 8/8] ARM: realtek: Enable RTD1195 arch timer
Date: Sat, 23 Nov 2019 21:37:59 +0100
Message-Id: <20191123203759.20708-9-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191123203759.20708-1-afaerber@suse.de>
References: <20191123203759.20708-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_123815_506556_E8AA040A 
X-CRM114-Status: UNSURE (   9.55  )
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
Cc: Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2l0aG91dCB0aGlzIG1hZ2ljIHdyaXRlIHRoZSB0aW1lciBkb2Vzbid0IHdvcmsgYW5kIGJvb3Qg
Z2V0cyBzdHVjay4KClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3Vz
ZS5kZT4KLS0tCiBXaGF0IGlzIHRoZSBuYW1lIG9mIHRoZSByZWdpc3RlciAweGZmMDE4MDAwPwog
SXMgMHgxIGEgQklUKDApIHdyaXRlLCBvciBob3cgYXJlIHRoZSByZWdpc3RlciBiaXRzIGRlZmlu
ZWQ/CiBJcyB0aGlzIGEgcmVzZXQgb3IgYSBjbG9jayBnYXRlPyBIb3cgc2hvdWxkIHdlIG1vZGVs
IGl0IGluIERUPwogCiB2MyAtPiB2NDoKICogVXNlIHdyaXRlbF9yZWxheGVkKCkgaW5zdGVhZCBv
ZiB3cml0ZWwoKQogCiB2MiAtPiB2MzogVW5jaGFuZ2VkCiAKIHYyOiBOZXcKIAogYXJjaC9hcm0v
bWFjaC1yZWFsdGVrL3J0ZDExOTUuYyB8IDE2ICsrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCAxNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1yZWFsdGVr
L3J0ZDExOTUuYyBiL2FyY2gvYXJtL21hY2gtcmVhbHRlay9ydGQxMTk1LmMKaW5kZXggMDM4MWE0
NDQ3Mzg0Li44ZDRkZTBjMjMwOGQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtcmVhbHRlay9y
dGQxMTk1LmMKKysrIGIvYXJjaC9hcm0vbWFjaC1yZWFsdGVrL3J0ZDExOTUuYwpAQCAtNSw2ICs1
LDkgQEAKICAqIENvcHlyaWdodCAoYykgMjAxNy0yMDE5IEFuZHJlYXMgRsOkcmJlcgogICovCiAK
KyNpbmNsdWRlIDxsaW51eC9jbGstcHJvdmlkZXIuaD4KKyNpbmNsdWRlIDxsaW51eC9jbG9ja3Nv
dXJjZS5oPgorI2luY2x1ZGUgPGxpbnV4L2lvLmg+CiAjaW5jbHVkZSA8bGludXgvbWVtYmxvY2su
aD4KICNpbmNsdWRlIDxhc20vbWFjaC9hcmNoLmg+CiAKQEAgLTI3LDYgKzMwLDE4IEBAIHN0YXRp
YyB2b2lkIF9faW5pdCBydGQxMTk1X3Jlc2VydmUodm9pZCkKIAlydGQxMTk1X21lbWJsb2NrX3Jl
bW92ZSgweDE4MTAwMDAwLCAweDAxMDAwMDAwKTsKIH0KIAorc3RhdGljIHZvaWQgX19pbml0IHJ0
ZDExOTVfaW5pdF90aW1lKHZvaWQpCit7CisJdm9pZCBfX2lvbWVtICpiYXNlOworCisJYmFzZSA9
IGlvcmVtYXAoMHhmZjAxODAwMCwgNCk7CisJd3JpdGVsX3JlbGF4ZWQoMHgxLCBiYXNlKTsKKwlp
b3VubWFwKGJhc2UpOworCisJb2ZfY2xrX2luaXQoTlVMTCk7CisJdGltZXJfcHJvYmUoKTsKK30K
Kwogc3RhdGljIGNvbnN0IGNoYXIgKmNvbnN0IHJ0ZDExOTVfZHRfY29tcGF0W10gX19pbml0Y29u
c3QgPSB7CiAJInJlYWx0ZWsscnRkMTE5NSIsCiAJTlVMTApAQCAtMzQsNiArNDksNyBAQCBzdGF0
aWMgY29uc3QgY2hhciAqY29uc3QgcnRkMTE5NV9kdF9jb21wYXRbXSBfX2luaXRjb25zdCA9IHsK
IAogRFRfTUFDSElORV9TVEFSVChydGQxMTk1LCAiUmVhbHRlayBSVEQxMTk1IikKIAkuZHRfY29t
cGF0ID0gcnRkMTE5NV9kdF9jb21wYXQsCisJLmluaXRfdGltZSA9IHJ0ZDExOTVfaW5pdF90aW1l
LAogCS5yZXNlcnZlID0gcnRkMTE5NV9yZXNlcnZlLAogCS5sMmNfYXV4X3ZhbCA9IDB4MCwKIAku
bDJjX2F1eF9tYXNrID0gfjB4MCwKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
