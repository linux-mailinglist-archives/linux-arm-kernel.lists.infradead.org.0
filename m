Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CAD56B9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+ToKra+R8WZgfM99lPS6GDnLlkV98Ea1GUyZU20hmM=; b=SYXjHNSujNUUna
	NezlJ5FpXWfl8VRelL6YGJk10Oxo5UblE+y/Be6Y8suQ+PEO/eb3mK7Ae4OKRtTgaLonT5sGd7DCK
	afNRs/HhjjnG2WH8/YMdSH/XKFw1InC3XRZTO2Bwo5dlqeIEMDnjfosKSgl2BH1LyB7s6SVygTfxa
	mE31Ew8rt53N1T+pl4HA1hZBeT+H47T3zOglTK6G5wNUT2RcuLZb8XwQajY8p/OyyqGJBLl4idYJK
	8zWo1NjXqQpi4dor9yDZKPgUz8yu1xtT9J/kaBbxmf5LX52bUtd8KtcTtN+7i/kifPu6yZUSeYuqE
	+ABcDLHrdbLKQK3TKTtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8gy-0003zq-Ek; Wed, 26 Jun 2019 14:14:32 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8gk-0003xw-Dq
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:14:19 +0000
Received: by mail-lf1-x141.google.com with SMTP id x144so1677177lfa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WJuUxIWdx7E9MvnriBAYHhzNHu31FVqwrxDDMgUFPw0=;
 b=PSYYc0+B4QlGEKPAY87jv8oooLRF8PAi00CHSZQE0MfEwrUyM9o0TNWpiWUQdIiwRO
 PYHviZTIn9/KBUdf6K2vzJ1ZjrHbi9guDWkTvVIxyaIOeqxMz2YnoQSDCWEg1acfynrq
 mX+PIAw5nwfMip4Wr565dSk5slef8IMdM0Qy8bIxu2L1DDCWzCZvg6euplEJmUYfrNpY
 K3BEXcUG6iS1aE98zAeVsVInm1gS+2a0W57uUZ31jLjvb93R0famcl/e3O0un/+/VzeR
 PVGlSwH2/E/0368shAT8ticd1bPb7bUrenRSEvfaBB45PsGgkz26sYiDLG3UMJ+Blmti
 8DZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WJuUxIWdx7E9MvnriBAYHhzNHu31FVqwrxDDMgUFPw0=;
 b=Fiu5NWlahniY2u0L726KwtSYyAIvTqtm1URb+rrP0YeavMIvjaHZ1IALWiUK6RzDKV
 UbPgwRHyvTZX0fFa36mnfXCqphxMtVk7XnhDIsY+V/wpaR/jyO/eDaG0X6cBwyJr6Aus
 zT+mUCrweXPxVIbhQEVRP33s2n7jRVFb9eA1I2tRD+iEH2Og3KkRpz2yAMYO2O3BOE1f
 0sVws46pcUuAaIoZY2iTfFOJideURAtxxuxvvKsS7Y5bpZgJcXJYqXkh5Gcy6q0Ohzti
 HHvpF9/RfqwTeDs7Z1s2dP+vamzltkrkAZ0EWiHIPWMY1Gcl4vY7T5fSWbxuJcAc9qHy
 q21g==
X-Gm-Message-State: APjAAAW1huSm3rL8KyQ2wsCVl6hjroI0KNdkQHg3qH2MBFgOQMygtq0Z
 iApon27pnDWcIoMz4osuztI=
X-Google-Smtp-Source: APXvYqxc0z9OHzQhclj4HTtvYUhemdP59UMHs9KiDRvAuNViDyUoAqE676dypmM/JJBHuhpYjYQe2A==
X-Received: by 2002:a19:9156:: with SMTP id y22mr2707624lfj.43.1561558455172; 
 Wed, 26 Jun 2019 07:14:15 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id 25sm2863825ljn.62.2019.06.26.07.14.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 07:14:14 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 0/7] serial: imx: fix RTS and RTS/CTS handling
Date: Wed, 26 Jun 2019 17:11:26 +0300
Message-Id: <1561558293-7683-1-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20190614072801.3187-1-s.hauer@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_071418_493464_CF994BE3 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UlRTIHNpZ25hbCBhbmQgUlRTL0NUUyBoYW5kc2hha2UgaGFuZGxpbmcgaGFkIGEgZmV3IHByb2Js
ZW1zIHRoZXNlCnBhdGNoZXMgZml4LgoKSW4gYWRkaXRpb24sIG1pbm9yIGNsZWFudXBzIGFyZSBt
YWRlIHRvIHRoZSBpbnZvbHZlZCBjb2RlLgoKQ2hhbmdlbG9nOgoKICB2MjoKICAgICAgKiBBcHBl
bmRlZDogIlJldmlld2VkLWJ5OiIgYW5kICJUZXN0ZWQtYnk6IgogICAgICAgIFNhc2NoYSBIYXVl
ciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KCiAgICAgICogUmVtb3ZlZCAiUkZDIiBmcm9tIGhl
YWRlcgoKICB2MToKCiAgICAgICogRml4ZWQgaW4gInNlcmlhbDogaW14OiBzZXRfdGVybWlvcygp
OiBwcmVzZXJ2ZSBSVFMgc3RhdGUiCgotKwl1Y3IyID0gVUNSMl9TUlNUIHwgVUNSMl9JUlRTOwor
Kwl1Y3IyIHw9IFVDUjJfU1JTVCB8IFVDUjJfSVJUUzsKICAgICAgCiAgICAgICAgYXMgbm90aWNl
ZCBieSBMb3RoYXIgV2HDn21hbm4gPExXQEtBUk8tZWxlY3Ryb25pY3MuZGU+CgogICAgICAqIEZp
eGVkIGluICJzZXJpYWw6IGlteDogc2V0X3Rlcm1pb3MoKTogcHJlc2VydmUgUlRTIHN0YXRlIgog
ICAgICAKLSsJdWNyMiA9IG9sZF91Y3IyICYgKFVDUjJfVFhFTiB8IFVDUjJfUlhFTiB8IFVDUjJf
QVRFTiB8IFVDUjJfQ1RTQyk7CisrCXVjcjIgPSBvbGRfdWNyMiAmIChVQ1IyX1RYRU4gfCBVQ1Iy
X1JYRU4gfCBVQ1IyX0FURU4gfCBVQ1IyX0NUUyk7CgogICAgICAgIGFzIHRoZSBmaXggZm9yIHRo
ZSBwcm9ibGVtIGZvdW5kIGJ5IFNhc2NoYSBIYXVlcgogICAgICAgIDxzLmhhdWVyQHBlbmd1dHJv
bml4LmRlPgoKICAgICAgKiBSZW9yZGVyZWQ6CgogICAgICAgIHNlcmlhbDogaW14OiBzZXRfdGVy
bWlvcygpOiBwcmVzZXJ2ZSBSVFMgc3RhdGUKICAgICAgICBzZXJpYWw6IGlteDogc2V0X3Rlcm1p
b3MoKTogZG8gbm90IGVuYWJsZSBhdXRvUlRTIGlmIFJUUyBpcyB1bnNldAoKICAgICAgICBhcyB0
aGUgbGF0dGVyIG1ha2VzIHNlbnNlIG9ubHkgcHJvdmlkZWQgdGhlIGZvcm1lciBpcyBhbHJlYWR5
IGFwcGxpZWQuCiAgICAgIAoKU2VyZ2V5IE9yZ2Fub3YgKDcpOgogIHNlcmlhbDogaW14OiBmaXgg
bG9ja2luZyBpbiBzZXRfdGVybWlvcygpCiAgc2VyaWFsOiBpbXg6IHNldF90ZXJtaW9zKCk6IGZh
Y3Rvci1vdXQgJ3VjcjInIGluaXRpYWwgdmFsdWUKICBzZXJpYWw6IGlteDogc2V0X3Rlcm1pb3Mo
KTogY2xhcmlmeSBSVFMvQ1RTIGJpdHMgY2FsY3VsYXRpb24KICBzZXJpYWw6IGlteDogc2V0X3Rl
cm1pb3MoKTogcHJlc2VydmUgUlRTIHN0YXRlCiAgc2VyaWFsOiBpbXg6IHNldF90ZXJtaW9zKCk6
IGRvIG5vdCBlbmFibGUgYXV0b1JUUyBpZiBSVFMgaXMgdW5zZXQKICBzZXJpYWw6IGlteDogc2V0
X21jdHJsKCk6IGNvcnJlY3RseSByZXN0b3JlIGF1dG9SVFMgc3RhdGUKICBzZXJpYWw6IGlteDog
Z2V0IHJpZCBvZiBpbXhfdWFydF9ydHNfYXV0bygpCgogZHJpdmVycy90dHkvc2VyaWFsL2lteC5j
IHwgOTMgKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKSwgNDYgZGVsZXRpb25zKC0pCgotLQoyLjEw
LjAuMS5nNTdiMDFhMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
