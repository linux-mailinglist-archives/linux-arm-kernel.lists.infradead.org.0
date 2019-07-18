Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D06CF6D1D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAz6YRuNHmW7DcK2l/1lU2dgR4gGn1Oe+F9caXL/xvQ=; b=IPgCdhxh3Dzeiu
	JbknTL5bhUap4n/j4OVKKRqCWxav4qSO0Ghkf/muhAxRPJV/NfnKX3DIfP2D4pamdSpVmSZnMggZ1
	yrnmhvDW6nf0z2ykvOIrkkBzb32Bih864OU6SdOXLFQ7Gg05WB12Y670pHPXB1NZrsEhxKrH74xUu
	tcrdGAxHmXL2acVV6PqnRkX+XZn8n0OjUM2aH0taEvTVSqBVj95RgwnIoAOTZMY0m/xlxXX4QXNzd
	aqwlQH40+kogqHp5kzE2f7q58Qrkp9Dludc3Fe0N9Y/3c9fBaK/hUrj1tERHSvT8W7bkHpXGBY4sX
	bIQY+5LCSe6ZN4YK5Ogg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho97V-0003An-Km; Thu, 18 Jul 2019 16:19:01 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho94E-00082A-M0; Thu, 18 Jul 2019 16:15:40 +0000
Received: by mail-lf1-x143.google.com with SMTP id x3so19711865lfc.0;
 Thu, 18 Jul 2019 09:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UMsHXLcffq4kVBGwbAWt4MyCInwVzwfnZOh0ymiPKms=;
 b=EonVsOPgtzdjOmu2KTHYu6tyqRmy1CssTiTEJ6xcS0g0zslbXsaHVrlLUZkbSwX10q
 A4hMc7QAaF7jvVQnW9PJ814v5wKMd7WQ598kCF7ofKnIb592UuQL31JF64vkxFp4A5Zh
 Ofh46skvrJJDW3WCLReJoAfP0M5vJ4iofO9Mn21638S3ul/OREU9EydPh/5jATMne+JT
 syIQ3W2U2Ko7AWDujzxl2ZwOYG4ProQeFYyWvZQx71rpyQYHC4y29pDL1en08l8LTgXF
 eOU9XfPybRSU5bMM2rVzWuxPo185Q+3Gv/RkRW4Aoz2fSy0+/PQUlAYuZnC0SypdAMA6
 d9RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=UMsHXLcffq4kVBGwbAWt4MyCInwVzwfnZOh0ymiPKms=;
 b=uNkGUP/fIS+MEAGZnxsUA5yEnWpJtjpLkysSIgxfMtUWOvD5p/alqWlOQw8j0t/j7V
 Z/qwsln4qRowAmV5gEBgNY0jEb4n1gWetPK0cA5iKdOIJ6wmwc55oLnx/GLIhvGOekjh
 loa4r44IqSoNGjTV9JvP2bnpFSWNAV64seZSgm7yduGxDLS1hvt1b4a1noO018p1fprH
 sGFxbuwCWT/AxHfde6KnfzdgonETE6fzNvAnB4nSr3eoKJM7pfpfwXLdfJ7UeBzs6KLD
 AMdg3akYYg8/ctg8MPNLwaoiTB4A4q3mW/Y5b25uMDSRUPA7btaFqxA9u4EX07DeKbBj
 fDFw==
X-Gm-Message-State: APjAAAUcrDdIAhXcBFci935e8YurvcaTCv/svEBJfDMpIJ7vfmSbJgxL
 7REZdPrs0iNVRW3Lmd4uNTI=
X-Google-Smtp-Source: APXvYqwKEyV/QURAB6l1p/PHUoaF3m5z/KSDHpTQLYRIw8SpxKMs5YpxVSZB62m5FHY1r6kO+3s/fQ==
X-Received: by 2002:ac2:51ab:: with SMTP id f11mr8745888lfk.55.1563466536490; 
 Thu, 18 Jul 2019 09:15:36 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:36 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: [PATCH v1 08/11] drm: direct include of drm.h in drm_prime.c
Date: Thu, 18 Jul 2019 18:15:04 +0200
Message-Id: <20190718161507.2047-9-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718161507.2047-1-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_091538_819333_9EE92645 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Eric Anholt <eric@anholt.net>,
 Sam Ravnborg <sam@ravnborg.org>, Rob Herring <robh@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <treding@nvidia.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chunming Zhou <david1.zhou@amd.com>, Jani Nikula <jani.nikula@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-mediatek@lists.infradead.org, Stefan Agner <stefan@agner.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG8gbm90IHJlbHkgb24gaW5jbHVkaW5nIGRybS5oIGZyb20gZHJtX2ZpbGUuaCwKYXMgdGhlIGlu
Y2x1ZGUgaW4gZHJtX2ZpbGUuaCB3aWxsIGJlIGRyb3BwZWQuCgpTaWduZWQtb2ZmLWJ5OiBTYW0g
UmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRl
bi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJp
cGFyZEBib290bGluLmNvbT4KQ2M6IFNlYW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgpDYzogRGF2
aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPgpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpD
YzogTm9yYWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+CkNjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEVyaWMgQW5ob2x0IDxlcmljQGFuaG9sdC5u
ZXQ+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jIHwgMSArCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1l
LmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKaW5kZXggMTg5ZDk4MDQwMmFkLi5lY2E0
ODQxMDZjYzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKQEAgLTMwLDYgKzMwLDcgQEAKICNpbmNsdWRlIDxs
aW51eC9kbWEtYnVmLmg+CiAjaW5jbHVkZSA8bGludXgvcmJ0cmVlLmg+CiAKKyNpbmNsdWRlIDxk
cm0vZHJtLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4KICNpbmNsdWRlIDxkcm0vZHJtX2Zp
bGUuaD4KICNpbmNsdWRlIDxkcm0vZHJtX2ZyYW1lYnVmZmVyLmg+Ci0tIAoyLjIwLjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
