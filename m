Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE861F933D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:23:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ii/B/5+4lH4wLrSYHQSQ8Ztg3gPJGrHSvnU68kAwLcE=; b=SaD1wpSuCciebG
	rkfwTHJMhm289U+BpDFOHKISsObxjmF7BLp7DnYjjpmeRXlil7JGvvifz9O8Im+XaZ9VLXjHYYN9Z
	gLFEAMmIO8WHlbCSUo5d8h1k0Tn2x86619QaGUSKQCYpdBON84fuuoUdjINt63Wy2yGCUyt9cmrAT
	xLjF6a690gfsBfsgDtPgqsTbCHpvERUH/Eqoy4bHUtMzxPj6oGMWQuABDwhVzN2C7IXPqFi9axGfA
	v+g6ucKn4bgqlIrsCJXfj/l8S+TBQwmwCapkncVeURabmPxfEKgNXugk2n3J8XC2dvY6ft3YxPS/E
	SSgtpKyw+LBF28KxUL+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklKk-0008Lj-2d; Mon, 15 Jun 2020 09:23:14 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl7m-0006rG-OB
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:10:02 +0000
Received: by mail-wm1-x342.google.com with SMTP id c71so13817962wmd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KnGbf5grf0IkRGVHz6T6Je/lqrthZMXPB4yMEA/nohU=;
 b=Eh8ZUSh5wrn9ZW4a7Ao9x1tY3fRR/5c0ilkslt79XE8NFFHpQm8QvWeU5rFr2aYp1E
 tEej/CjmTV83cI49kr5d7hr7EJwG36KsyEOmftDFG0dpSZvO5oOsMv1V2Am6ZeoqB7V6
 eCDXv9BIroOC6si3ck1daFL8VW3igDakwwbQcmVXT/HqHDmnwm9DpurEjBg/y4kBsBO+
 GSnypJEESzOJvEnezdhlKZ3Uh7EQgRMKILVv2xGSmWO7+9LvRvpVViVTPgmZu396fXPk
 TJAjAdTqdzpllqpuLyhP0E3a/0EPvmXjY5cC4wslASEZIvhmB3wRWvdVhWpvPeez7id2
 5vcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KnGbf5grf0IkRGVHz6T6Je/lqrthZMXPB4yMEA/nohU=;
 b=NSIW5WBbx3inQCbEnrBQeAimu269JOn/Uokc1BPMwrQLjou9c2ybym68/lgjz6O+2a
 Ui1v3Y5h/qyHo6iN+nGInSlVom2WDQe9w58mMbSSmuvpn//jkFfunXwdyda7Fy7f+JUE
 eBURuCQ33qq4IukWE7WXFALWDO5osOgXYLZXfIiGNih4EaiEQ1NQ4Hj6tusLc23bO7DK
 mFzvUZ9EOKk7ofqp5zc+Ct+9F3XXqw2Jz9kHi0XzlmCNeOMMC+BfupcuXFlkIz/3YTvm
 cIjeaZZGMxEdEB/ncTnGHjKqzluczoLGTzXrpiiIwimgXYXigq7oMl7dg+M+T9Uh3qel
 Pqfw==
X-Gm-Message-State: AOAM531SqXR0C6DhdruGyo2wGd/CfiQAk3nuT+IwXDGqJCVBV8NwSeJM
 0UA0PTxzPu6XwwRN2XzcqeIdMKX73j7Zpw==
X-Google-Smtp-Source: ABdhPJzfERI69ORfwOl4kiXFJAzXSSL2kMnLwByHcC0R8ycGyZA/K2B7Xgr6QOiZjOxn4jcAjIoU8w==
X-Received: by 2002:a7b:c393:: with SMTP id s19mr12026304wmj.92.1592212189426; 
 Mon, 15 Jun 2020 02:09:49 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id z7sm23109370wrt.6.2020.06.15.02.09.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:09:48 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/4] spi: bcm63xx-hsspi: allow building for BMIPS
Date: Mon, 15 Jun 2020 11:09:43 +0200
Message-Id: <20200615090943.2936839-5-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615090943.2936839-1-noltari@gmail.com>
References: <20200615080309.2897694-1-noltari@gmail.com>
 <20200615090943.2936839-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020950_827670_E79F4A9E 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YmNtNjN4eC1oc3NwaSBjb250cm9sbGVyIGlzIHByZXNlbnQgb24gc2V2ZXJhbCBCTUlQUyBTb0Nz
IChCQ002MzE4LCBCQ002MzI4LApCQ002MzYyIGFuZCBCQ002MzI2OCkuCgpTaWduZWQtb2ZmLWJ5
OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgotLS0KIHYyOiBu
byBjaGFuZ2VzCgogZHJpdmVycy9zcGkvS2NvbmZpZyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3BpL0tj
b25maWcgYi9kcml2ZXJzL3NwaS9LY29uZmlnCmluZGV4IGE5ODk2ZTM4ODM1NS4uNTAwNzc0ZmUx
MzUxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9LY29uZmlnCisrKyBiL2RyaXZlcnMvc3BpL0tj
b25maWcKQEAgLTE1NSw3ICsxNTUsNyBAQCBjb25maWcgU1BJX0JDTTYzWFgKIAogY29uZmlnIFNQ
SV9CQ002M1hYX0hTU1BJCiAJdHJpc3RhdGUgIkJyb2FkY29tIEJDTTYzWFggSFMgU1BJIGNvbnRy
b2xsZXIgZHJpdmVyIgotCWRlcGVuZHMgb24gQkNNNjNYWCB8fCBBUkNIX0JDTV82M1hYIHx8IENP
TVBJTEVfVEVTVAorCWRlcGVuZHMgb24gQkNNNjNYWCB8fCBCTUlQU19HRU5FUklDIHx8IEFSQ0hf
QkNNXzYzWFggfHwgQ09NUElMRV9URVNUCiAJaGVscAogCSAgVGhpcyBlbmFibGVzIHN1cHBvcnQg
Zm9yIHRoZSBIaWdoIFNwZWVkIFNQSSBjb250cm9sbGVyIHByZXNlbnQgb24KIAkgIG5ld2VyIEJy
b2FkY29tIEJDTTYzWFggU29Dcy4KLS0gCjIuMjcuMAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
