Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08B8771A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 20:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hP8G+qiiZTMvyAweV3x+305nnF8Wvu5B4dP0WGu14/8=; b=V5AAQxpnbJtPva
	m922zbybsaybpkXhtKFVtpJSHzLjy/9iFLpzNgT3q4DpGudFDMcco8BL7ab5AK9wACiyC9b7o0oo5
	0RWP+S4n9gJ/ii05AcKAt6IPWuANVwX6cCiiCzzCMTljQwRptwuTZ0t8QvFnGpOvaRyLuLms8FcS/
	pcxzWpSgCkn8IcOopE8NsVTWtx4XjK7sQJ68uJ/DI1YubyFalkKNS3QE40fJ+Cck17wB/N/EDN5X0
	5Yn0cwdM9FP0I6rd+o+ojwC9pCpYJ2zpD5kuDbyOvRFQm8ZJQTib+/UH8Yrc0jVV5D32dUcepGfEp
	S10rhTjOzVH3NjqlA5NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr5LR-0000Ni-Nc; Fri, 26 Jul 2019 18:53:33 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr5LE-0000MM-3a
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 18:53:21 +0000
Received: by mail-lj1-x242.google.com with SMTP id d24so52423383ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 11:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G0pHjtARnD3Hiwz8gSdS85wwMBwqGQevX+xPBDAniJs=;
 b=qCghrCzQKAGpYOOOHD7PDVhM5Ss6B8u2HhhzDVPLZuUGLBtDgr9yO4JqBzxECygNzu
 tG48/gg2oizX/6DKgJaWrw+2oCvZT5NLMo+pmW14r7GPFpeWdPOCRZp4eMhpGaAI2CH8
 Y7Z5uQfiSut6q0xEEM+vkv+deYQ4cdNf1UCmmZqIpUi6z60Qn4zXVEj6KdE2IJH7711I
 N9+b+PZWTaBnbq4XDDivmieh795B+uGGeIcbUNoMNlnQz9bdgP+4xvG+mFiFEnDSQdCv
 lYLgShRT4WSrfqrzeVctEm7nGodUSl99ejeCQQEYcC1K/IeAx6hegsoqLfatWlyJ9hNG
 5D+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G0pHjtARnD3Hiwz8gSdS85wwMBwqGQevX+xPBDAniJs=;
 b=NpwT0xZ8FdIGVCAW0R+7W7jji1RgzsC+ZXINjEutEDDFG0QvYyomOpen6aRQauttF/
 BoTSMyNQCJhKqy46qSnBwOGOKlFS5nM+BZtUMXx7S0Yp/JdXMStq+/qw5y96n/ZVfYcZ
 DV5hb5bpMvnmNL53o8dx/4eZd7yvBfs0JIoGoE70FsdXa6v8ckNI25cmSDG5KBSinBjV
 inE2z/XQuKyKgM9WgQRWBANqUvXSwj93FjfUMAzB8B46nkDuZsc8P1ztUUosrzLyhlK6
 u9UJcE29NEyp7XjsocnUXLjLRTc+jAd48hACtfKi7ni2pm0weySGXQYykf2C1dsw/YtJ
 hJ4Q==
X-Gm-Message-State: APjAAAVkvtynsGV0mBJIOrUQJXu3s5Bh/y9Y2h8HIhm8HF727qDwWvCH
 DBPzaZyWYyKrixrtW2Ii6HM=
X-Google-Smtp-Source: APXvYqykUbpm1J2/esFYVf8rB4ei0UaA7a3QsZK/bSaOQhmiQdwfK7jxuVHXla21NvBQTuI3gkhn0Q==
X-Received: by 2002:a2e:7013:: with SMTP id l19mr51336336ljc.141.1564167197848; 
 Fri, 26 Jul 2019 11:53:17 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id u15sm10254810lji.61.2019.07.26.11.53.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 26 Jul 2019 11:53:17 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v7 0/3] serial: imx: fix RTS and RTS/CTS handling
Date: Fri, 26 Jul 2019 21:52:38 +0300
Message-Id: <1564167161-3972-1-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20190614072801.3187-1-s.hauer@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_115320_179108_C2FBFBF9 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBpcyByZWJhc2Ugb2YgdjMgb24gdG9wIG9mICd0dHktbmV4dCcsIHRvIGdldCByaWQgb2Yg
Y29tbWl0cyB0aGF0CmFyZSBhbHJlYWR5IGFkb3B0ZWQgdG8gbWFpbmxpbmUuCgpSVFMgc2lnbmFs
IGFuZCBSVFMvQ1RTIGhhbmRzaGFrZSBoYW5kbGluZyBoYWQgYSBmZXcgcHJvYmxlbXMgdGhlc2UK
cGF0Y2hlcyBmaXguCgpJbiBhZGRpdGlvbiwgbWlub3IgY2xlYW51cHMgYXJlIG1hZGUgdG8gdGhl
IGludm9sdmVkIGNvZGUuCgpDaGFuZ2Vsb2c6CgogIHY3OgoKICAgICAqIHJlbW92ZWQgIkFja2Vk
LWJ5OiIgVXdlIEtsZWluZS1Lw7ZuaWcgZnJvbQogICAgICAgdHdvIGxhc3QgcGF0Y2hlcyB3aGVy
ZSB0aGV5IHdlcmUgcHV0IGJ5IG1pc3Rha2UuCgogIHY2OgoKICAgICAqIGNoYW5nZWQgIlJldmll
d2VkLWJ5OiIKICAgICAgIFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0
cm9uaXguZGU+CiAgICAgICB0byAiQWNrZWQtYnk6IiBoaW0sIGFjY29yZGluZyB0byBoaXMgcmVx
dWVzdAoKICB2NToKCiAgICAgKiBpbXByb3ZlZCBjb21taXQgZGVzY3JpcHRpb24gYW5kIGFkZGVk
IG1vcmUgY29tbWVudHMgZm9yCiAgICAgICAic2VyaWFsOiBpbXg6IHNldF90ZXJtaW9zKCk6IGRv
IG5vdCBlbmFibGUgYXV0b1JUUyBpZiBSVFMgaXMKICAgICAgIHVuc2V0IiBhcyBzdWdnZXN0ZWQg
YnkKICAgICAgIFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXgu
ZGU+CiAgICAgICBhbmQgYWRkZWQgY29ycmVzcG9uZGluZyAiUmV2aWV3ZWQtYnk6IgoKICB2NDoK
CiAgICAgICogcmViYXNlZCBvbiB0b3Agb2YgJ3R0eS1uZXh0JywgdG8gZ2V0IHJpZCBvZiBjb21t
aXRzIHRoYXQKICAgICAgICBhcmUgYWxyZWFkeSBhZG9wdGVkIHRvIG1haW5saW5lLgoKICB2MzoK
CiAgICAgICogSW1wcm92ZWQgY29tbWVudHMgaW4gInNlcmlhbDogaW14OiBzZXRfbWN0cmwoKTog
Y29ycmVjdGx5CiAgICAgICAgcmVzdG9yZSBhdXRvUlRTIHN0YXRlIiwgYXMgc3VnZ2VzdGVkIGJ5
IFV3ZSBLbGVpbmUtS8O2bmlnCiAgICAgICAgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5k
ZT4KCiAgdjI6CgogICAgICAqIEFwcGVuZGVkOiAiUmV2aWV3ZWQtYnk6IiBhbmQgIlRlc3RlZC1i
eToiCiAgICAgICAgU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgoKICAgICAg
KiBSZW1vdmVkICJSRkMiIGZyb20gaGVhZGVyCgogIHYxOgoKICAgICAgKiBGaXhlZCBpbiAic2Vy
aWFsOiBpbXg6IHNldF90ZXJtaW9zKCk6IHByZXNlcnZlIFJUUyBzdGF0ZSIKCi0rCXVjcjIgPSBV
Q1IyX1NSU1QgfCBVQ1IyX0lSVFM7CisrCXVjcjIgfD0gVUNSMl9TUlNUIHwgVUNSMl9JUlRTOwoK
ICAgICAgICBhcyBub3RpY2VkIGJ5IExvdGhhciBXYcOfbWFubiA8TFdAS0FSTy1lbGVjdHJvbmlj
cy5kZT4KCiAgICAgICogRml4ZWQgaW4gInNlcmlhbDogaW14OiBzZXRfdGVybWlvcygpOiBwcmVz
ZXJ2ZSBSVFMgc3RhdGUiCgotKwl1Y3IyID0gb2xkX3VjcjIgJiAoVUNSMl9UWEVOIHwgVUNSMl9S
WEVOIHwgVUNSMl9BVEVOIHwgVUNSMl9DVFNDKTsKKysJdWNyMiA9IG9sZF91Y3IyICYgKFVDUjJf
VFhFTiB8IFVDUjJfUlhFTiB8IFVDUjJfQVRFTiB8IFVDUjJfQ1RTKTsKCiAgICAgICAgYXMgdGhl
IGZpeCBmb3IgdGhlIHByb2JsZW0gZm91bmQgYnkgU2FzY2hhIEhhdWVyCiAgICAgICAgPHMuaGF1
ZXJAcGVuZ3V0cm9uaXguZGU+CgogICAgICAqIFJlb3JkZXJlZDoKCiAgICAgICAgc2VyaWFsOiBp
bXg6IHNldF90ZXJtaW9zKCk6IHByZXNlcnZlIFJUUyBzdGF0ZQogICAgICAgIHNlcmlhbDogaW14
OiBzZXRfdGVybWlvcygpOiBkbyBub3QgZW5hYmxlIGF1dG9SVFMgaWYgUlRTIGlzIHVuc2V0Cgog
ICAgICAgIGFzIHRoZSBsYXR0ZXIgbWFrZXMgc2Vuc2Ugb25seSBwcm92aWRlZCB0aGUgZm9ybWVy
IGlzIGFscmVhZHkKICAgICAgICBhcHBsaWVkLgoKU2VyZ2V5IE9yZ2Fub3YgKDMpOgogIHNlcmlh
bDogaW14OiBzZXRfdGVybWlvcygpOiBkbyBub3QgZW5hYmxlIGF1dG9SVFMgaWYgUlRTIGlzIHVu
c2V0CiAgc2VyaWFsOiBpbXg6IHNldF9tY3RybCgpOiBjb3JyZWN0bHkgcmVzdG9yZSBhdXRvUlRT
IHN0YXRlCiAgc2VyaWFsOiBpbXg6IGdldCByaWQgb2YgaW14X3VhcnRfcnRzX2F1dG8oKQoKIGRy
aXZlcnMvdHR5L3NlcmlhbC9pbXguYyB8IDMyICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgot
LQoyLjEwLjAuMS5nNTdiMDFhMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
