Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8599320D04
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1TthUfvL9hUZTrVlVfMDEA1/YrIDMcPOhNvpHdRBzs=; b=TvEV4mvGbJLuQT
	IuvwXLBSkMw3EPNqJnelW1uWnRUn2zErJf6OeZps3Voj6lqzi2kkNeUileNUJWdhi3dJ3FsRAn5FF
	sBfN1j5n4hA/fuUYgDiW4LiAw9i7Rm7irSLImvyVpXeLXlpEFxNhGcIR1/JwXYPe2bGMQ/XxEeKRD
	rLXgORNlH89rfSMMdDLorHwL1W9eA0OZreCnDLs7cedNJ2D4rslgt9Cs5hK6MqImRfgG+YNnqtpws
	b31h0bL7llyHngeq7hbQWiqIoGitFQv2De1726AHfaEd9zQIOCFmmZB7i9E8Z4BtVOuji5UCGCZXA
	sBkLMJT4DVLGAucBug0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJGr-00006j-3O; Thu, 16 May 2019 16:30:17 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJGP-0007yW-F8
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:29:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id d21so1892169plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=F+MUix4E2fzDWarwS4nmG/Em5BaLYXIJG0RnslLnuRA=;
 b=A/QcefCONy0p8hJbO0heZwLqxWZ8lsgdagrHghkE9zjmezGMvjfyieeXactlpqZRRa
 YLS81uVk2pJdVXGp9xaDmlgMq2U+xIeDeNkcu+gI4czxMzsnQt5Y7DBVdyYnqcLHRHSe
 /f/w5SMGU32q0oRor5O557Y/iSuZDQryFc1t8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=F+MUix4E2fzDWarwS4nmG/Em5BaLYXIJG0RnslLnuRA=;
 b=tWTRt983wkRCD4FLC4I36JMPvmdMj68fwpNSluDSbR4fOuS9QM7Py8AN7f38TQeIss
 6VaD2PpNzSlsUWx0usRYdWzMzE/Co0JQZsj8m/pOU4qoS70831hXUfgxMaB9osGlfhko
 bevfx5R9W/eT5WdxqB5eOAWTH0vd6CXuvrbQ6mlXfsIhekB4QK8mGsyOhfUwJuPBVEnx
 3YUnJY5OA0XC6rLRWjtGTwO4se6V42+W1pOuh5Oe1usaegeFBXjkifYC+mXA7Hg73xOy
 RNH4H8GKACFkc0cuaglsp+A1aTOcM7oku52j7V87hKkv4TDfrJDeldt8vKyqTDKkKLY5
 tv2w==
X-Gm-Message-State: APjAAAUwfYXvc9W71N0G6d4Cbm3va70qCWK+zQDe/8XCvOoHWEJYO9Yw
 9FnO5XiqP4rdvpqM3BzdqSpYSA==
X-Google-Smtp-Source: APXvYqxkK/qfoQgyJc5dgRsnMZtbcRgZDE5QF6K47Pw4/YozjwnhVzeOxcxp4uW/0m6HCYUODwDYOA==
X-Received: by 2002:a17:902:683:: with SMTP id 3mr9312171plh.209.1558024188932; 
 Thu, 16 May 2019 09:29:48 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id d85sm8140067pfd.94.2019.05.16.09.29.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:29:48 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 2/3] ARM: dts: rockchip: raise GPU trip point temperatures
 for veyron
Date: Thu, 16 May 2019 09:29:41 -0700
Message-Id: <20190516162942.154823-2-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190516162942.154823-1-mka@chromium.org>
References: <20190516162942.154823-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_092949_518099_DD461A15 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHZhbHVlcyBtYXRjaCB0aG9yc2UgdXNlZCBieSB0aGUgZG93bnN0cmVhbSBDaHJvbWUgT1Mg
My4xNAprZXJuZWwsIHRoZSAnb2ZmaWNpYWwnIGtlcm5lbCBmb3IgdmV5cm9uIGRldmljZXMuIEtl
ZXAgdGhlIGNyaXRpY2FsCnRyaXAgcG9pbnQgZm9yIHNwZWVkeSBhdCA5MMKwQyBhcyBpbiB0aGUg
ZG93bnN0cmVhbSBjb25maWd1cmF0aW9uLgoKU2lnbmVkLW9mZi1ieTogTWF0dGhpYXMgS2FlaGxj
a2UgPG1rYUBjaHJvbWl1bS5vcmc+Ci0tLQpDaGFuZ2VzIGluIHYyOgotIGFsc28gcmFpc2UgdGVt
cGVyYXR1cmUgb2YgY3JpdGljYWwgdHJpcCBwb2ludAotIGFkZCBlbnRyaWVzIGF0IHBvc2l0aW9u
IGluIGFscGhhYmV0aWNhbCBvcmRlcgotIGFkZGVkIGVudHJ5IHRvIGtlZXAgY3JpdGljYWwgdHJp
cCBwb2ludCBmb3Igc3BlZWR5IGF0IDkwwrBDCi0gdXBkYXRlZCBjb21taXQgbWVzc2FnZQotLS0K
IGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tc3BlZWR5LmR0cyB8IDQgKysrKwogYXJj
aC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi5kdHNpICAgICAgIHwgOCArKysrKysrKwogMiBm
aWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9v
dC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4
LXZleXJvbi1zcGVlZHkuZHRzCmluZGV4IGFiMmE2NmFhMzM3ZS4uM2QyNzY5ZjFiZWYyIDEwMDY0
NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLXNwZWVkeS5kdHMKKysrIGIv
YXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzCkBAIC03NSw2ICs3NSwx
MCBAQAogCWZvcmNlLWhwZDsKIH07CiAKKyZncHVfY3JpdCB7CisJdGVtcGVyYXR1cmUgPSA8OTAw
MDA+OworfTsKKwogJnBhbmVsIHsKIAlwb3dlci1zdXBwbHk9IDwmcGFuZWxfcmVndWxhdG9yPjsK
IH07CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLmR0c2kgYi9h
cmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLmR0c2kKaW5kZXggNThkYzUzOGI1ZGYzLi5h
ZWU4MzUwYjI4MDAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24u
ZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLmR0c2kKQEAgLTE0Miw2
ICsxNDIsMTQgQEAKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCismZ3B1X2FsZXJ0MCB7CisJdGVt
cGVyYXR1cmUgPSA8NzI1MDA+OworfTsKKworJmdwdV9jcml0IHsKKwl0ZW1wZXJhdHVyZSA9IDwx
MDAwMDA+OworfTsKKwogJmhkbWkgewogCWRkYy1pMmMtYnVzID0gPCZpMmM1PjsKIAlzdGF0dXMg
PSAib2theSI7Ci0tIAoyLjIxLjAuMTAyMC5nZjI4MjBjZjAxYS1nb29nCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
