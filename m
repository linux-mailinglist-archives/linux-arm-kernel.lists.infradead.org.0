Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E70D1B919B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 18:17:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/p8PMeoxC3OVk6V419AEO+OmDm+Zj/rWgoaNG8jW2b8=; b=B2SujZwWUFtt5D
	1onkkL6A7raaq722zfBgO7yd1SShLOkecym5V1O42MvLPZ2GmQcEDBPoqoyGlpx5g1MNqWvz8AwY3
	N4sxFEXk31HcNnLB6P0axmkd4h3PIbu7h4OvkisDEMzlHNiVOCdsuXca0hScVxLAfctlZHEGTXoj1
	qpbKYEW4FzzDcH/0V1L5v8z+IYjhE/TbrmcMNqO8QMvwwMXb2nibZx8Ystco+2YZi/r87UzFnkxGv
	CUMDAfSIVYVzmqptg8amBL24W+oRGwRFunynxkNz7hTzdpruznqhFfO8Za8/aaAPQaaGZ5TgCf3Sa
	aYQbxxLyabnapoxx6UVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSjxy-00040W-0F; Sun, 26 Apr 2020 16:17:14 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSjxn-0003z4-Uu; Sun, 26 Apr 2020 16:17:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 6771C2612F5
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: cdn-dp-core: Make cdn_dp_core_suspend/resume
 static
Date: Sun, 26 Apr 2020 18:16:53 +0200
Message-Id: <20200426161653.7710-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_091704_137190_2C366168 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmcgZGV0ZWN0ZWQgd2hlbiBydW5uaW5nIG1h
a2Ugd2l0aCBXPTEKCiAgICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvL2Nkbi1kcC1jb3JlLmM6
MTExMjo1OiB3YXJuaW5nOiBubyBwcmV2aW91cwogICAgcHJvdG90eXBlIGZvciDigJhjZG5fZHBf
c3VzcGVuZOKAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdCgogICAgZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwLy9jZG4tZHAtY29yZS5jOjExMjY6NTogd2FybmluZzogbm8gcHJldmlvdXMKICAgIHBy
b3RvdHlwZSBmb3Ig4oCYY2RuX2RwX3Jlc3VtZeKAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdCgpT
aWduZWQtb2ZmLWJ5OiBFbnJpYyBCYWxsZXRibyBpIFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xs
YWJvcmEuY29tPgotLS0KCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYyB8
IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCmluZGV4IGVlZDU5NGJkMzhkMy4u
NGZhMDBhZjg5Y2NhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRw
LWNvcmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYwpAQCAt
MTEwOSw3ICsxMTA5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBjb21wb25lbnRfb3BzIGNkbl9k
cF9jb21wb25lbnRfb3BzID0gewogCS51bmJpbmQgPSBjZG5fZHBfdW5iaW5kLAogfTsKIAotaW50
IGNkbl9kcF9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKK3N0YXRpYyBpbnQgY2RuX2RwX3N1
c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQogewogCXN0cnVjdCBjZG5fZHBfZGV2aWNlICpkcCA9
IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwogCWludCByZXQgPSAwOwpAQCAtMTEyMyw3ICsxMTIzLDcg
QEAgaW50IGNkbl9kcF9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKIAlyZXR1cm4gcmV0Owog
fQogCi1pbnQgY2RuX2RwX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCitzdGF0aWMgaW50IGNk
bl9kcF9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQogewogCXN0cnVjdCBjZG5fZHBfZGV2aWNl
ICpkcCA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwogCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
