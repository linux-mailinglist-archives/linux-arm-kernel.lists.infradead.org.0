Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D92B96D1BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=680ouvHdn4r1W9l/IXPRyITB1y0Bo9fBVvZQwA1NYzU=; b=BWyioWPOdbBpR+
	OByRWFnlOrJgICEQmLxZ2zahKyl6X3mTtj3tr6rmPGT2RL8BryI1V3o69CxvbCax4AJ7kGeYSDkDG
	SY06zpFr+Do51G0M5gZP9alcJ6v+ilNWgnmWBk/sOXZoDg521rhSDDdlqxRQEmHqJdtrszD2Ho0po
	WlaTIOMXv3JzcB8roa5HOug5dcXJ41CoxlkYid7H9zg5LsAWCsVb2i0stbpsHJeFKc7KbYpNUYLPw
	9BlAcQd676nuSHhM5k4W82kywoUCQoWYH8lHU4Yv4Olezntk/WpvVieJMEMoooAhllC4m1m7XXTKs
	5QTH3Xs9l42lE3/xlhYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho94n-0008DP-RI; Thu, 18 Jul 2019 16:16:13 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho943-0007ku-M3; Thu, 18 Jul 2019 16:15:29 +0000
Received: by mail-lj1-x241.google.com with SMTP id y17so3354742ljk.10;
 Thu, 18 Jul 2019 09:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xuHi/x4to3SX7TRrtv62bR81bCU79XMtB/fuZqAmK/4=;
 b=ccIpMj7bhqxadUhNYMQ8D6hZbjvh1AFYYDWwpHuL4jXZxpIWt1NRNWHGGxm/4zWkRX
 OjFGkqH9blEdvYLUOfyXGZ+I5aCmIUdxkPhT78M1nxDqGFphQCPafb8D+kaFVnoxB9OF
 pjCBT8Y1UHgxZgDNYGw5y+89GY17TgS0OytKu4Bv93YoVbtU6hiC+hf00a3CNSsLasKd
 MEUK0SZrZ7yHvSQVNPdPig/hu3XSvMNtoXVNBVZdQrF4lNvyH5r6YEzisPPOVdCRv3JK
 RPbsQsokKKabA/u3yRc5DJEXGwUhjcH5bBsdJpASfO2qWGblFfltPmUDAE0hO++IeSx6
 FRLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=xuHi/x4to3SX7TRrtv62bR81bCU79XMtB/fuZqAmK/4=;
 b=V9NPad4C/zPnT95EVimLYtRbl/HCbvbFPo/RaeEI1JdA5UKeWsw1SRfUGxKApmWBei
 Mc7tdpwjHsE6UUSpBXR/OrwMZTjYbIcyz7/Ce1HFsIrkMTv8jpcJKoAYCP9Jt6KXkQLB
 F4qL6VFzDrr7B4xN00DK0kTJr9G2Ai7pTIp3p4LZ2Dby7u1BXDScx1oAarE8TPpyAXCJ
 XefnzG9ovHGA6cgpgQw51iI4zmc0qYgMlKgjIx7Yres1eiI2VRqWU9GGMllLoapYkgWV
 XGBHNbmA7R+ZHoSs56XHSwgAXFBzFJfXItTDJY8PSoOdkVKGP5+d/Ykhadj9xhbKVOLR
 Q3DQ==
X-Gm-Message-State: APjAAAWQWFsV1ngDJSwgn2CllQu/qO2qNiR+ZnkFG1LSg3oBQL/0OxhM
 AzGEKo4dEd0Lf5BfsyUwQPc=
X-Google-Smtp-Source: APXvYqxopRd2EXz7d6DIiAHotDUEDdlvCMB5sah0WnzkQlftdAyegfCZa4HP9SqflNRkyus/8Vkv5w==
X-Received: by 2002:a2e:9753:: with SMTP id f19mr24655350ljj.113.1563466525895; 
 Thu, 18 Jul 2019 09:15:25 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:25 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: [PATCH v1 01/11] drm/panel: make drm_panel.h self-contained
Date: Thu, 18 Jul 2019 18:14:57 +0200
Message-Id: <20190718161507.2047-2-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718161507.2047-1-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_091527_719433_ED37B07D 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
 Boris Brezillon <boris.brezillon@bootlin.com>,
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

RnJvbTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCkZpeCBidWlsZCB3YXJu
aW5nIGlmIGRybV9wYW5lbC5oIGlzIGJ1aWx0IHdpdGggQ09ORklHX09GPW4gb3IKQ09ORklHX0RS
TV9QQU5FTD1uIGFuZCBpbmNsdWRlZCB3aXRob3V0IHRoZSBwcmVyZXF1aXNpdGUgZXJyLmg6Cgou
L2luY2x1ZGUvZHJtL2RybV9wYW5lbC5oOiBJbiBmdW5jdGlvbiDigJhvZl9kcm1fZmluZF9wYW5l
bOKAmToKLi9pbmNsdWRlL2RybS9kcm1fcGFuZWwuaDoyMDM6OTogZXJyb3I6IGltcGxpY2l0IGRl
Y2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKAmEVSUl9QVFLigJkgWy1XZXJyb3I9aW1wbGljaXQtZnVu
Y3Rpb24tZGVjbGFyYXRpb25dCiAgcmV0dXJuIEVSUl9QVFIoLUVOT0RFVik7CiAgICAgICAgIF5+
fn5+fn4KLi9pbmNsdWRlL2RybS9kcm1fcGFuZWwuaDoyMDM6OTogZXJyb3I6IHJldHVybmluZyDi
gJhpbnTigJkgZnJvbSBhIGZ1bmN0aW9uIHdpdGggcmV0dXJuIHR5cGUg4oCYc3RydWN0IGRybV9w
YW5lbCAq4oCZIG1ha2VzIHBvaW50ZXIgZnJvbSBpbnRlZ2VyIHdpdGhvdXQgYSBjYXN0IFstV2Vy
cm9yPWludC1jb252ZXJzaW9uXQogIHJldHVybiBFUlJfUFRSKC1FTk9ERVYpOwogICAgICAgICBe
fn5+fn5+fn5+fn5+fn5+CgpGaXhlczogNWZhOGU0YTIyMTgyICgiZHJtL3BhbmVsOiBNYWtlIG9m
X2RybV9maW5kX3BhbmVsKCkgcmV0dXJuIGFuIEVSUl9QVFIoKSBpbnN0ZWFkIG9mIE5VTEwiKQpD
YzogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AYm9vdGxpbi5jb20+ClNpZ25lZC1v
ZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkFja2VkLWJ5OiBUaGll
cnJ5IFJlZGluZyA8dHJlZGluZ0BudmlkaWEuY29tPgpSZXZpZXdlZC1ieTogU2FtIFJhdm5ib3Jn
IDxzYW1AcmF2bmJvcmcub3JnPgotLS0KIGluY2x1ZGUvZHJtL2RybV9wYW5lbC5oIHwgMSArCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9k
cm1fcGFuZWwuaCBiL2luY2x1ZGUvZHJtL2RybV9wYW5lbC5oCmluZGV4IDhjNzM4YzBlNmU5Zi4u
MjYzNzc4MzYxNDFjIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fcGFuZWwuaAorKysgYi9p
bmNsdWRlL2RybS9kcm1fcGFuZWwuaApAQCAtMjQsNiArMjQsNyBAQAogI2lmbmRlZiBfX0RSTV9Q
QU5FTF9IX18KICNkZWZpbmUgX19EUk1fUEFORUxfSF9fCiAKKyNpbmNsdWRlIDxsaW51eC9lcnIu
aD4KICNpbmNsdWRlIDxsaW51eC9lcnJuby5oPgogI2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4KIAot
LSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
