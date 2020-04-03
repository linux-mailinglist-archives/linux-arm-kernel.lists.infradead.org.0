Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE6319DC6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 19:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arlznm6Syp9saUyVcgdF/iLa+eY5b0PcR+8584C/jy8=; b=iIQkaLVV6BXodo
	NAVfceR3olP/p8nuQhP8x4XjZLZYXMrRc8+q6rV/XlZ94fdgoN1Aq2v3BruSANRd9ZiRzVZiXCNn3
	iozsEf2Dy2M5vHz4/bLsA9WhvN06e85UodBwNcvYvm5dTT7aHiKBG9b71KCtugOjl10HBidfISxfz
	yv9of91yuQ7HRru75reHSbbMWAr2TpBiTeKaeRfTDo/cRA+fpieXds8KXc1rxo5zq+3YLC7oiAiFL
	dgFHOk5R3Ejs1KYD60wvOkgLnHkqbGrQTTtnPsB08JoPimVDsKtYJkYL3EzEi1hLRyJDDaMReCBCC
	YNxqQp84K8+ur+Nj6FyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKPq5-0007UG-Sx; Fri, 03 Apr 2020 17:10:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKPpz-0007Sv-Lo
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 17:10:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A21A11045;
 Fri,  3 Apr 2020 10:10:30 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0C6DD3F71E;
 Fri,  3 Apr 2020 10:10:29 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] firmware: arm_scpi: Add include guard to
 linux/scpi_protocol.h
Date: Fri,  3 Apr 2020 18:10:18 +0100
Message-Id: <20200403171018.1230-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200403171018.1230-1-sudeep.holla@arm.com>
References: <20200403171018.1230-1-sudeep.holla@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_101035_762601_BD26CDA1 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SWYgdGhpcyBoZWFkZXIgaXMgaW5jbHVkZSB0d2ljZSwgaXQgd2lsbCBnZW5lcmF0ZSBsb2FkcyBv
ZiBjb21waWxlCnRpbWUgZXJyb3Igd2l0aCB0aGUgZm9sbG93aW5nIGJlbG93IGVycm9yIHBhdHRl
cm4uIEl0IHdhcyByZXBvcnRlZCBieQowZGF5IGtidWlsZCByb2JvdCBvbiBhIGJyYW5jaCBwdXNo
ZWQgd2l0aCBkb3VibGUgaW5jbHVzaW9uIGJ5IGFjY2lkZW50LgpUaGlzIGlzIGJhc2VkIG9uIHRo
ZSBzaW1pbGFyIGNoYW5nZSBpbiBsaW51eC9zY21pX3Byb3RvY29sLmgKCiAgICAgICAgZXJyb3I6
IGNvbmZsaWN0aW5nIHR5cGVzIGZvciDigJguLi7igJkKICAgICAgICBub3RlOiBwcmV2aW91cyBk
ZWNsYXJhdGlvbiBvZiDigJguLi7igJkgd2FzIGhlcmUKICAgICAgICBlcnJvcjogcmVkZWZpbml0
aW9uIG9mIOKAmC4uLuKAmQoKQWRkIGEgaGVhZGVyIGluY2x1ZGUgZ3VhcmQganVzdCBpbiBjYXNl
LgoKUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBTdWRlZXAgSG9sbGEgPHN1ZGVlcC5ob2xsYUBhcm0uY29tPgotLS0KIGluY2x1ZGUv
bGludXgvc2NwaV9wcm90b2NvbC5oIHwgNiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3NjcGlfcHJvdG9jb2wuaCBiL2lu
Y2x1ZGUvbGludXgvc2NwaV9wcm90b2NvbC5oCmluZGV4IGVjYjAwNDcxMWFjZi4uYWZiZjgwMzdk
OGRiIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L3NjcGlfcHJvdG9jb2wuaAorKysgYi9pbmNs
dWRlL2xpbnV4L3NjcGlfcHJvdG9jb2wuaApAQCAtNCw2ICs0LDEwIEBACiAgKgogICogQ29weXJp
Z2h0IChDKSAyMDE0IEFSTSBMdGQuCiAgKi8KKworI2lmbmRlZiBfTElOVVhfU0NQSV9QUk9UT0NP
TF9ICisjZGVmaW5lIF9MSU5VWF9TQ1BJX1BST1RPQ09MX0gKKwogI2luY2x1ZGUgPGxpbnV4L3R5
cGVzLmg+CiAKIHN0cnVjdCBzY3BpX29wcCB7CkBAIC03MSwzICs3NSw1IEBAIHN0cnVjdCBzY3Bp
X29wcyAqZ2V0X3NjcGlfb3BzKHZvaWQpOwogI2Vsc2UKIHN0YXRpYyBpbmxpbmUgc3RydWN0IHNj
cGlfb3BzICpnZXRfc2NwaV9vcHModm9pZCkgeyByZXR1cm4gTlVMTDsgfQogI2VuZGlmCisKKyNl
bmRpZiAvKiBfTElOVVhfU0NQSV9QUk9UT0NPTF9IICovCi0tIAoyLjE3LjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
