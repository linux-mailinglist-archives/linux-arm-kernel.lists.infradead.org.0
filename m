Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DD511E931
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 18:27:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQdVa0vfif6G8jFSkS6nBk42TTLLLCH4qcFAujurfPc=; b=Y5YmoZIHqY6M8p
	UggX+zo33ts00uLvf2Lb3b7dF2jKJ99Qs8sme1BVjzAM2DqRdqtHfm7FcKfjbgsTMV1P/4vx4iM3i
	sH0tgyW2/tQADJfPC7uRMOi3OxLtsx9p4gUmXi5i279H/FEyMgDQUjwtUcql9qTec6bPYN1AjIIrE
	S/v8/2QTkfn4bfUBiTHeYAvv6Yz2cpQjsGDUeVR9mCg5npGiDc/XeeqkSzMWScsyprOlc9qGUwOiO
	ui0NHjSDh7c8S+E9Svz+yanQ7w5dh6ft8f6UqdXi2Nbe8ympuMp7nwfY2YhJ6pXrqN4Bnxf5CUIqK
	Xex/UMpO9xl+AozV4a7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifoim-0006D3-16; Fri, 13 Dec 2019 17:27:20 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifoht-0005YH-9k
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 17:26:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id d16so236317wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 09:26:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gBZaJnQ4T1pfuiYbNCV33pBAl/MiKps57aCdhCCq5GA=;
 b=SgCyprn+TJhfzJrAyOElFygAGYPjDOq49M6+F+et6rfEOdkuMx54OxKa1htCbgaOvN
 XHYlumbXc2snqLMJhb/p1vhbxd2+u7uERrXewvnV9bJZZAN1XYVqQ3i95Lj/8ZnI1QbX
 wBlGUBqXY5npseRH3RKCUbJy/msPwKjx28JhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gBZaJnQ4T1pfuiYbNCV33pBAl/MiKps57aCdhCCq5GA=;
 b=EXPkT9lASky7Y1Jhq4j6ZRhimq+THvbRJnV/Q32XpkerZfi66vMCm/2vgbg8ynho83
 GcFHjJ4bnKDvgo5IPddDFX2tkFGQq/DJjOdlESGDFiUJ2lRcifHgqh/IGDWkLuHdg//k
 fP2SkTAaz5kZNGItc2q21o6XxbQcLGLgsNfFupMQ/3R4XTbmkHi6t4UaTi0TUAtm3462
 wksnYuEoPCz+7OTQAYHLBJxGL9nB0TFCGhI391frVE065AQUv4w1fV942HvzEDy5KjPF
 ipUZkkvC8fHtByoTC0pFiBInHG1P3jgck2Z+v6AGNfbGHAIU9C0ue+eKTXzt82FINRvU
 NI+w==
X-Gm-Message-State: APjAAAW/oG5ILjSSTsmGKM49psY4br5LxQpvPKioZsp2bqTJfvqsL0lE
 S+0gsZlUmeYK2F5e5BA/D/NwKA==
X-Google-Smtp-Source: APXvYqySnMsLeoZE9VQ1vmqK71rJv5VV+5cxXaKC6Jepc5ChVNTPeNt0FFqW4uks4ZmZYYpHvNA/fQ==
X-Received: by 2002:adf:e609:: with SMTP id p9mr13492290wrm.397.1576257984206; 
 Fri, 13 Dec 2019 09:26:24 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:564b:0:7567:bb67:3d7f:f863])
 by smtp.gmail.com with ESMTPSA id q15sm10689669wrr.11.2019.12.13.09.26.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 09:26:23 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 06/10] drm/xrockchip: plane_state->fb iff plane_state->crtc
Date: Fri, 13 Dec 2019 18:26:08 +0100
Message-Id: <20191213172612.1514842-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
References: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_092625_335876_1A362D19 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Daniel Vetter <daniel.vetter@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2hlY2tpbmcgYm90aCBpcyBvbmUgdG9vIG11Y2gsIHNvIHdyYXAgYSBXQVJOX09OIGFyb3VuZCBp
dCB0byBzdG9wZQp0aGUgY29weXBhc3RhLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMu
Y29tPgpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgpDYzogbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3Au
YyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCmluZGV4IGQwNGIz
NDkyYmRhYy4uY2VjYjJjYzc4MWY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX3ZvcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fdm9wLmMKQEAgLTcyNCw3ICs3MjQsNyBAQCBzdGF0aWMgaW50IHZvcF9wbGFuZV9h
dG9taWNfY2hlY2soc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiAJaW50IG1heF9zY2FsZSA9IHdp
bi0+cGh5LT5zY2wgPyBGUkFDXzE2XzE2KDgsIDEpIDoKIAkJCQkJRFJNX1BMQU5FX0hFTFBFUl9O
T19TQ0FMSU5HOwogCi0JaWYgKCFjcnRjIHx8ICFmYikKKwlpZiAoIWNydGMgfHwgV0FSTl9PTigh
ZmIpKQogCQlyZXR1cm4gMDsKIAogCWNydGNfc3RhdGUgPSBkcm1fYXRvbWljX2dldF9leGlzdGlu
Z19jcnRjX3N0YXRlKHN0YXRlLT5zdGF0ZSwgY3J0Yyk7Ci0tIAoyLjI0LjAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
