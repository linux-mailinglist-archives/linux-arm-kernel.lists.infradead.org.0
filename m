Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E408E46B1A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSrwb8X4HyCNcjbPwB6xxD5voqgROU5U6+K+IaVMrww=; b=S55oCsbtPls90X
	NfSN9yEvHodaQUF5/LmWrDjFo7Aka7bHc0l5amhv33hCg+7L1btj6jYqP7Jl8OWH0RUZHgSPMqDRt
	F+eUN8RcP4K3yVogT0TxZLqHM//akrhHLGwwr6h9uOkcmPQ+u2cMEnt2ZE8119qodwDmzMAYpcv/a
	QAY7KRM8GPqajOA0F+GUhZtN4rgtIQ6p4Gj4bX1ymnOYBiuiLrwm3d2iVfAlkCzwux5iLq4gAtHYY
	sTcRFukY/EJPMz1TqGfcFepWz538SobaISNj3AxYJrTuN93P5Y9wgK2k1y64zjy6/MyZzh8u1K66D
	hUMzVgcsN/vZmFlvd5pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbszq-0006o9-GT; Fri, 14 Jun 2019 20:40:26 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswQ-0003yh-EA
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:36:56 +0000
Received: by mail-ed1-x541.google.com with SMTP id m10so5242399edv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Vlm+rv94huTn04MhgYNqn9Qe+r+R2T5g6JPxRxFgFew=;
 b=URv6OAXgbuSACR/wqNmpMG4uTxnz3YmKH29b+NByyHHXifzir7/gnX2Y4XUbydaCLO
 3ytdGd4BIq+Zf+KcBZZ0tzbRnJVNS8SkEDTxgkBtuobGwLWkALrGjHB77k4cwGFsN3ZM
 Ayb2bKnimM3veuDPuP6aAqesG6eT7FN9IDrmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vlm+rv94huTn04MhgYNqn9Qe+r+R2T5g6JPxRxFgFew=;
 b=iQCmKrTR0iBLzn4HYZr0Y+GlFgI3bEAsYYX3BkosClAzpr8zmIrKMJa3Km2IdM125+
 Weugk8kvUZ2btwXfXSKrw1H8Rlq2kD+MW8ExWhPrNDQPTfXKh+af0K9T/ONq32F65Qqo
 9lzpa8yaoyeSVh4WG4JS0l9ZCaSa47yJSV00f3T6SfFmHmFTBUC2aeltrYr83x6xHTtd
 lPrXhF8Oq8FVL79Oy31ZE6Hp6H0WDpuUIk7osqWIaZBCi1ZxAFQ8xoLZslCOpUutaIwF
 v5eGLQwUH5+daBP3XKQQ04jGuhl9FdrfxIMViq1AGEC7uc5n0EVntRhKEPGfVXrPDMtt
 FO0w==
X-Gm-Message-State: APjAAAWQWXQ3wbfW4uJDB3nMJF9zo33CtM2FI8xDhuu6z2iKnbIpVKRR
 HwM1arzQTCmKjyG1dBE9ygOS6MAEzjc=
X-Google-Smtp-Source: APXvYqz/rw+nXPEfVEGNMIVqUQ9lr23BCUcLfFlX0HI0dbMkkTCBDzcUsWQu2IaYJTDJ0IL9OADk7Q==
X-Received: by 2002:a05:6402:78c:: with SMTP id
 d12mr43018114edy.160.1560544613235; 
 Fri, 14 Jun 2019 13:36:53 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:52 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 27/59] drm/rockchip: Drop drm_gem_prime_export/import
Date: Fri, 14 Jun 2019 22:35:43 +0200
Message-Id: <20190614203615.12639-28-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133654_591952_5B22C6DE 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBTYW5keSBIdWFu
ZyA8aGpjQHJvY2stY2hpcHMuY29tPgpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNo
LmRlPgpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV9kcnYuYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2
LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCmluZGV4IDU5
MDkxYjYyNDFlYy4uNzgyOTc5ZjFiNTVhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fZHJ2LmMKQEAgLTIxOSw4ICsyMTksNiBAQCBzdGF0aWMgc3RydWN0IGRybV9k
cml2ZXIgcm9ja2NoaXBfZHJtX2RyaXZlciA9IHsKIAkuZHVtYl9jcmVhdGUJCT0gcm9ja2NoaXBf
Z2VtX2R1bWJfY3JlYXRlLAogCS5wcmltZV9oYW5kbGVfdG9fZmQJPSBkcm1fZ2VtX3ByaW1lX2hh
bmRsZV90b19mZCwKIAkucHJpbWVfZmRfdG9faGFuZGxlCT0gZHJtX2dlbV9wcmltZV9mZF90b19o
YW5kbGUsCi0JLmdlbV9wcmltZV9pbXBvcnQJPSBkcm1fZ2VtX3ByaW1lX2ltcG9ydCwKLQkuZ2Vt
X3ByaW1lX2V4cG9ydAk9IGRybV9nZW1fcHJpbWVfZXhwb3J0LAogCS5nZW1fcHJpbWVfZ2V0X3Nn
X3RhYmxlCT0gcm9ja2NoaXBfZ2VtX3ByaW1lX2dldF9zZ190YWJsZSwKIAkuZ2VtX3ByaW1lX2lt
cG9ydF9zZ190YWJsZQk9IHJvY2tjaGlwX2dlbV9wcmltZV9pbXBvcnRfc2dfdGFibGUsCiAJLmdl
bV9wcmltZV92bWFwCQk9IHJvY2tjaGlwX2dlbV9wcmltZV92bWFwLAotLSAKMi4yMC4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
