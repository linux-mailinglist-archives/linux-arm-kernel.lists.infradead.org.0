Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 647C219ED03
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 19:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aI9+dsFv8kQnKytFM+7r2o5t38BA8TuEZLsy4WK1A68=; b=C6TCpmR4Ca3Plw
	ETFoXHBGa9JzO55H0dYIFeRDIQ+0cXpeGaok1XJgUy5UxOTZWIkyCsyxr4IHdOoI5Zadx2WgAMjPL
	nWXqKW6/5WJaisKsQoK3BYIA0WZOdzcWcTEE87Zf6nHxFcTao4hpPsXUnfmwVy3HnwdVO707C8ud0
	1Ik/0l74LWBNnnPllj+G2X+MPXJxZZP426qyVAfR7RXefloKmz0sAmAG7RKpYeWlAWP9w8Bichu8J
	/GMnWTNo4AtTgX0AkKRA5Jr2h5JFZrXZfb4lVc/0FbHe3uDM9ZLfipG1aM3STGTKNGJl41uaL4j32
	5tLbxiUEF7mS4WNAzVEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL9CE-0001lK-EY; Sun, 05 Apr 2020 17:36:34 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL9Bq-0001Xp-8H
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 17:36:11 +0000
Received: by mail-wm1-x342.google.com with SMTP id x25so1280087wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 10:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=953t16PaqsK6LcXl7SedQvIrbO2yGs6c/tDrXm7TIhc=;
 b=INC92HEziM9mI7F9DsK0oDiYSAUcj61mUM8QOERk6Pzc3RsAR9n5EvgY19wVTuuVJW
 KUdW4Pw9qQTehhyANrM6Y/7tIrdr8IQ5puN+/SYfboKxMPTycx7/JIWUsvHG94Zi1UjD
 QgMC22w8FBqy6/D+Ce0SZWlY3xfQBuPljKmyS+JPy41U4iTSnjExPt/csQDBypU8rkll
 tT3X54jPxnPZ25hlCDArG/0Z5iJ/yqhBQp52wlYlZ+EQVviDPToZINJUgwSvCfP75cOj
 IBEL9uCueNVqRvrRq62rHGwtbfK9Wc5poVN2YNDZtXQhjl7gwjn4ZvFaXz69l5mrz6Y7
 4PiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=953t16PaqsK6LcXl7SedQvIrbO2yGs6c/tDrXm7TIhc=;
 b=hOTLB8WNnQyKeItwyAgAxDsnYlS6RUuxuT7VMYK6baqPDuoiBRSJQyMG0mZLfZKEon
 pt830o3w/ZJoq8+UIW34t2l3cXrYViQ+rEcDDiWFjKKYRUKnuKwHiFqF3Y6Rejfz7GaC
 H+XbAsF+ZEE/ec7DD/uPGhfQDpEGCKBL4ySF3GghMzoeZ1+dHh0mJ48veTLdMU7Hs8Tz
 EnvYy5jNeijTJdwBeKz+wS4fnlbKIucByPNdLwp+TSEtnAb8qAC0iLbMy4tpx4blcYWV
 g5vw+y5R7e4ZLUxuApuQpuL1B5SHEqA+IDRo0JxmxJ0sNUe2gCu1sUv/ZbJmPr2i3CVM
 S3iQ==
X-Gm-Message-State: AGi0PuY1deKShZ2wxPcuuWx53be75NUGEe+8E+ihafa3KNfQGkmH+OQ7
 Ikx7jUtlCfcLGi7TB+BNQiw=
X-Google-Smtp-Source: APiQypJrXfDDMcyPXVi9s8+wzP9CVxUi8k0MrgpcBSdXs0lTPfVzTDwTJhHxIg22NnyET3Xt6c/8yQ==
X-Received: by 2002:a1c:4409:: with SMTP id r9mr4398898wma.165.1586108166066; 
 Sun, 05 Apr 2020 10:36:06 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id s13sm6031669wrw.20.2020.04.05.10.36.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 10:36:05 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 1/7] arm64: dts: allwinner: h6: Add clock to CPU cores
Date: Sun,  5 Apr 2020 19:35:55 +0200
Message-Id: <20200405173601.24331-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200405173601.24331-1-peron.clem@gmail.com>
References: <20200405173601.24331-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_103610_293627_196C2154 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogWWFuZ3RhbyBMaSA8dGlueS53aW5kenpAZ21haWwuY29tPgoKVGhlIEFSTSBDUFUgY29y
ZXMgYXJlIGZlZCBieSB0aGUgQ1BVIGNsb2NrIGZyb20gdGhlIENDVS4gQWRkIGEKcmVmZXJlbmNl
IHRvIHRoZSBjbG9jayBmb3IgZWFjaCBDUFUgY29yZSwgYWxvbmcgd2l0aCB0aGUgY2xvY2sKdHJh
bnNpdGlvbiBsYXRlbmN5LgoKU2lnbmVkLW9mZi1ieTogWWFuZ3RhbyBMaSA8dGlueS53aW5kenpA
Z21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21h
aWwuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNp
IHwgOCArKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKaW5kZXggMzMyOTI4M2UzOGFi
Li5hZWY0YWU3NjBkNWUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNi5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi5kdHNpCkBAIC0yNSw2ICsyNSw4IEBACiAJCQlkZXZpY2VfdHlwZSA9ICJjcHUiOwogCQkJ
cmVnID0gPDA+OwogCQkJZW5hYmxlLW1ldGhvZCA9ICJwc2NpIjsKKwkJCWNsb2NrcyA9IDwmY2N1
IENMS19DUFVYPjsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVy
aW9kcyAqLwogCQl9OwogCiAJCWNwdTE6IGNwdUAxIHsKQEAgLTMyLDYgKzM0LDggQEAKIAkJCWRl
dmljZV90eXBlID0gImNwdSI7CiAJCQlyZWcgPSA8MT47CiAJCQllbmFibGUtbWV0aG9kID0gInBz
Y2kiOworCQkJY2xvY2tzID0gPCZjY3UgQ0xLX0NQVVg+OworCQkJY2xvY2stbGF0ZW5jeS1ucyA9
IDwyNDQxNDQ+OyAvKiA4IDMyayBwZXJpb2RzICovCiAJCX07CiAKIAkJY3B1MjogY3B1QDIgewpA
QCAtMzksNiArNDMsOCBAQAogCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKIAkJCXJlZyA9IDwyPjsK
IAkJCWVuYWJsZS1tZXRob2QgPSAicHNjaSI7CisJCQljbG9ja3MgPSA8JmNjdSBDTEtfQ1BVWD47
CisJCQljbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47IC8qIDggMzJrIHBlcmlvZHMgKi8KIAkJ
fTsKIAogCQljcHUzOiBjcHVAMyB7CkBAIC00Niw2ICs1Miw4IEBACiAJCQlkZXZpY2VfdHlwZSA9
ICJjcHUiOwogCQkJcmVnID0gPDM+OwogCQkJZW5hYmxlLW1ldGhvZCA9ICJwc2NpIjsKKwkJCWNs
b2NrcyA9IDwmY2N1IENMS19DUFVYPjsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0Pjsg
LyogOCAzMmsgcGVyaW9kcyAqLwogCQl9OwogCX07CiAKLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
