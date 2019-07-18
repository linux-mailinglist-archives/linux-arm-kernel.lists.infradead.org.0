Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F7A6D1D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvefHiZllyUoZ9XR8rwIgVpQwfYFeqYGtT8fKZ4AF9M=; b=GE5LdULwQa+jYe
	6s/to3jLVjGcVnNLSCkIOlsMo0jbP9T7qF1PxxsTR6pTn5PrtO5J5T9oP0qx1xc2ZJ0Vq/IhkDUBR
	XEUpKnHpaWVbNPm+a/xJ5ec3RY9hqJ+upgAIdeu3hHZa3nA0tWgcVsPPoQUQC/FPQeV4P79QXcjIF
	yN93HdUb/c2S6tBjs3n/t10ZnYi7ilccYVNZNEgAvejdqpij79uS/k4FXMDTzK/ypPyyM73nBL7ix
	XJmf/xeHWb/Qr93DNEpsgXFN6MbxWGrwAcyRbX6P479lkiLM0PnT068bleAx0GatC+PX6Tv+PMWif
	vMBvogSdDACUIj4lglDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho97D-0002ua-BS; Thu, 18 Jul 2019 16:18:43 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho94F-00083L-Tf; Thu, 18 Jul 2019 16:15:41 +0000
Received: by mail-lj1-x244.google.com with SMTP id h10so27963118ljg.0;
 Thu, 18 Jul 2019 09:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=10tid0SbgLAJHLT6Dj0qLt3vQF4EYXu9iEc1Prbvqgw=;
 b=J4HaiI2YX0j86EbGPmKvLuVB5kkrIiE0JPi96w0PTtQJ+WeWorKnf0wnW+HqJlrJHy
 qSdv8E+D4s3mKf2JUwxbi4a6P4mdXz9PpqY7vzn+xQPe3zqR6ZiyipTZPLcT2I0k8qF8
 rQ3A2HUaq9nSap9dOrWxZnAly25OyGD+GbK4BBXzRKkfl/R23q0KH8smJcOanrChNrxz
 fKDfqji2nuSzVi1JOvd+scOOlXW9E+OfV9/aelFA12KAejJMYaE623VMeVj/kf76X6UO
 TGiUb/sVZ3RlJ4IVwUXT2s1y+ls+gxTsIZ8c3UksOk+MVAb1DOZL5ZdI8iKOu3BxyKg1
 mTww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=10tid0SbgLAJHLT6Dj0qLt3vQF4EYXu9iEc1Prbvqgw=;
 b=N5fw7EllSypXiOJpSyqYPguNGUrGYfA6kjnzWLah0+Qmg6TAb28LpIn3PmWvypzxiw
 kT89yBUAfS49Kg3YqmeXXaImVR8Hu04ruii4fozyMGeIhhqlOXTb/AK9hdFfCFwMjVtB
 2xWwFjbg5vsh6gHgKG04MY5iB3unv/Xkb9LFPNWoQB/ZP6nU1WsjIgCBzITTiH4GwSPN
 KgEVkfVWV/4qOAC43qL5+oZnH/OltxsDZ7K3Rm1dK8gWzdEL+/UntP3R86OYlL/WSDdI
 SysbogyrKEdi2HeEs0GDrxs+7e2wCfRFdjqwhdeEU+gi43mdBvkcNjlpG2KjgTiCZMFg
 PypA==
X-Gm-Message-State: APjAAAU4EyHs3qme9clc2ECqrdCs0wtR7kfTZ/gKr6S1WmbxKcFtIaz/
 62FBtCMvEQXHNNscr7BdY8Y=
X-Google-Smtp-Source: APXvYqyyjjeWlVtkKPLelpLxs1R+JrlmGdwZIcymn6kyrEpcWL3dqIF1rfaZdBXxlK39KQ9CMTcu6g==
X-Received: by 2002:a2e:8449:: with SMTP id u9mr7397629ljh.104.1563466537982; 
 Thu, 18 Jul 2019 09:15:37 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:37 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: [PATCH v1 09/11] drm: direct include of drm.h in drm_syncobj.c
Date: Thu, 18 Jul 2019 18:15:05 +0200
Message-Id: <20190718161507.2047-10-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718161507.2047-1-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_091540_035364_C8AD6BCB 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
 =?UTF-8?q?Christian=20K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
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
d2xsLmNoPgpDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwu
Y29tPgpDYzogQ2h1bm1pbmcgWmhvdSA8ZGF2aWQxLnpob3VAYW1kLmNvbT4KQ2M6IENocmlzdGlh
biBLw7ZuaWcgPGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9kcm1fc3luY29iai5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fc3luY29iai5jCmluZGV4IGExOTljOGQ1NmI5NS4uNzVjYjRiYjc2MTllIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vZHJtX3N5bmNvYmouYwpAQCAtNTMsNiArNTMsNyBAQAogI2luY2x1ZGUgPGxpbnV4L3N5
bmNfZmlsZS5oPgogI2luY2x1ZGUgPGxpbnV4L3VhY2Nlc3MuaD4KIAorI2luY2x1ZGUgPGRybS9k
cm0uaD4KICNpbmNsdWRlIDxkcm0vZHJtX2Rydi5oPgogI2luY2x1ZGUgPGRybS9kcm1fZmlsZS5o
PgogI2luY2x1ZGUgPGRybS9kcm1fZ2VtLmg+Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
