Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC1B1D332F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQd7OP97ByfVM7tF3auA2juEJcHJsyHDELOK1L1a0qk=; b=e+TN0TqU1fylmc
	yz8scT2Af6GaDUoAr2I2mGe+hB29UOAq8hsSYXtDOUEyE2E6VePGuyyU4DeowtP3N1S4ikCI0GKjP
	sVxvk4yWlmtAAylha/Hy5p1biQV0DUhnvzeyY/TvMy1X8VtOueUmXlIQ9Ym6FK7jhpJXi4ZVXU0nb
	Z2Uohho6LDqvEdAghzu670ARasOqwp4p/HmZu7alNTTLiUzVkalZd+VGtfQjOjfGYHln8uHgt/SZ/
	tbxZKuvfqZEoCkRV5KVhpX235F+X/GjtZR3mDTO/yH3CNEExn+AoNRJHgQuLiJxSE4z1VB3zK6Z4B
	45hMuRiEtr+hue9ZQMMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEzw-0005lz-Pi; Thu, 14 May 2020 14:38:08 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEyS-0004rt-V9
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:36:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 2E8ED2A2EE6
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 2/4] ARM: dts: ims53: Group port definitions for the
 dvi-converter
Date: Thu, 14 May 2020 16:36:10 +0200
Message-Id: <20200514143612.2094-3-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
References: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_073637_304189_44978E49 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org, tomi.valkeinen@ti.com,
 kernel@collabora.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

R3JvdXAgdGhlIHBvcnQgZGVmaW5pdGlvbnMgb2YgdGhlIGR2aS1jb252ZXJ0ZXIgaW4gYSAncG9y
dHMnIG5vZGUgdG8KbWFrZSBpdCBjb21wbGlhbnQgd2l0aCB0aGUgdGksdGZwNDEwIGJpbmRpbmcu
CgpTaWduZWQtb2ZmLWJ5OiBSaWNhcmRvIENhw7F1ZWxvIDxyaWNhcmRvLmNhbnVlbG9AY29sbGFi
b3JhLmNvbT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9pbXg1My1jeDkwMjAuZHRzIHwgMjUgKysr
KysrKysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyks
IDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDUzLWN4
OTAyMC5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9pbXg1My1jeDkwMjAuZHRzCmluZGV4IDBhNDc1
YzIzNDA1NC4uY2ZiMTg4NDlhOTJiIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg1
My1jeDkwMjAuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDUzLWN4OTAyMC5kdHMKQEAg
LTU5LDIzICs1OSwyNiBAQAogCX07CiAKIAlkdmktY29udmVydGVyIHsKLQkJI2FkZHJlc3MtY2Vs
bHMgPSA8MT47Ci0JCSNzaXplLWNlbGxzID0gPDA+OwogCQljb21wYXRpYmxlID0gInRpLHRmcDQx
MCI7CiAKLQkJcG9ydEAwIHsKLQkJCXJlZyA9IDwwPjsKKwkJcG9ydHMgeworCQkJI2FkZHJlc3Mt
Y2VsbHMgPSA8MT47CisJCQkjc2l6ZS1jZWxscyA9IDwwPjsKKworCQkJcG9ydEAwIHsKKwkJCQly
ZWcgPSA8MD47CiAKLQkJCXRmcDQxMF9pbjogZW5kcG9pbnQgewotCQkJCXJlbW90ZS1lbmRwb2lu
dCA9IDwmZGlzcGxheTBfb3V0PjsKKwkJCQl0ZnA0MTBfaW46IGVuZHBvaW50IHsKKwkJCQkJcmVt
b3RlLWVuZHBvaW50ID0gPCZkaXNwbGF5MF9vdXQ+OworCQkJCX07CiAJCQl9OwotCQl9OwogCi0J
CXBvcnRAMSB7Ci0JCQlyZWcgPSA8MT47CisJCQlwb3J0QDEgeworCQkJCXJlZyA9IDwxPjsKIAot
CQkJdGZwNDEwX291dDogZW5kcG9pbnQgewotCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmZHZpX2Nv
bm5lY3Rvcl9pbj47CisJCQkJdGZwNDEwX291dDogZW5kcG9pbnQgeworCQkJCQlyZW1vdGUtZW5k
cG9pbnQgPSA8JmR2aV9jb25uZWN0b3JfaW4+OworCQkJCX07CiAJCQl9OwogCQl9OwogCX07Ci0t
IAoyLjE4LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
