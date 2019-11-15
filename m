Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F070FD8C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 10:22:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dx70+TgDyvL4+yRPpn+LcPdi8ADs0fc3E1B24ge7jtg=; b=GoA79wo3THKuUf
	ujXSSrtw69/pOXJ6vLyzubN8gADa2NI29xvOT/VStVzcp8f6YTpTQqxAhmerb1CL32mcysIMqDu+b
	Ag1bDozUELYUGNv6kbfnLAIdskOmmvMTH3snQFaB3kcqmzzY9Cadxod3W4EsREC3GQCMN8IAs6oda
	6eF+yMh7QsxLbodD32oWQ78bRG4LeHsvZk5F2HXB2JleQKsefjDC5Q2M7QIyjTlOsoyf5D86Lsbfg
	ufuGCWHyl3Ho3S5MrKp4VCMOnfnRbfKM1a54OIEtBooxMlj3/1LQuIxeO4iR06k3tFZuFDhRNkcKe
	MBH7KyFJTAWS0IOoGleQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVXni-0007cv-Vy; Fri, 15 Nov 2019 09:21:59 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVXnI-0007NO-AD
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 09:21:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id b18so8673945wrj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 01:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ofNJ8QQd5sGKrd+MvK2ikuebIJLqvpUQ1kyGZQwtx/I=;
 b=Om/NhQzSdKpM6y/70DSZwXeDQIzy3oww63dVXF+OkGU5AZ0pB+zj8FG7NKM/EXiRWC
 tsVz9AeWnDSaawt4fCt6LuYisC6aoim0bUIYwOgMWHoKxnN/px9yPhnVw6hqWCdYnapQ
 5K/8mdZ77+F6o0wD71fQz9k/MvOSGh1krio6I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ofNJ8QQd5sGKrd+MvK2ikuebIJLqvpUQ1kyGZQwtx/I=;
 b=fi63a9Ru7bb12EV6ERy56qErQ6hw7cJUDI3B8R9fOTS7V90JDHQUDWfvrM57Kkzx1T
 uDQIEp17QxL3FK0VW97+mQax9cUDntSsYEI7SoPIYwQncI5O6znW+DI88Rg8bHoS2xgj
 Yd+bvfefjzoiU4cP5/4c6kHqDr2SqtfxQvreqC5B82pqOanmuwQVt1zwKhKMUFssUc+8
 q+qHv7e7bToBa5EBAJKdiI9vx0AmUVgtoAhVEpkc4yb7W7JhxwQWWRWrle3AZkU6lnv+
 uqF4XjvJza1h31zINv6OOEfwAwewcr1g0EKM0yrq2a4XbutgB/H6rkw2zba1EBOHMWxY
 c2Hg==
X-Gm-Message-State: APjAAAVz/zHBZQ/QwlKrL8R05naxRGSVpHBJRptDuoz/sC+ZD81LF5A4
 CQf3FsVjB403mBKpashL7F7jdQ==
X-Google-Smtp-Source: APXvYqyQKoodCSy68a/nZvolemA/RUEMw97i8haQjEdjkNAIk+Di+W/dIlbZO269UWOLN4VoIfMQEA==
X-Received: by 2002:adf:f44a:: with SMTP id f10mr13999917wrp.63.1573809691156; 
 Fri, 15 Nov 2019 01:21:31 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id 11sm8987506wmi.8.2019.11.15.01.21.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 01:21:30 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 4/8] drm/rockchip: Use drm_gem_fb_create_with_dirty
Date: Fri, 15 Nov 2019 10:21:16 +0100
Message-Id: <20191115092120.4445-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_012132_356739_E7E4D785 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

SWYgcm9ja2NoaXAgd291bGQgc3dpdGNoIG92ZXIgdG8gdGhlIGdlbmVyaWMgZmJkZXYgc2V0dXAg
d2UgY291bGQKZ3JhYmFnZSBjb2xsZWN0IGV2ZW4gbW9yZSBvZiBhbGwgdGhpcyBjb2RlIChhbGwg
b2YgdGhlIHJlbWFpbmluZyBmYgpoYW5kbGluZyBjb2RlIHJlYWxseSkuCgpTaWduZWQtb2ZmLWJ5
OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFNhbmR5IEh1YW5n
IDxoamNAcm9jay1jaGlwcy5jb20+CkNjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2gu
ZGU+CkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX2ZiLmMgfCA1NCArLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDUzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYyBiL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYwppbmRleCBjYTAxMjM0YzAzN2MuLjA4MWRiZGFhMGIw
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9mYi5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYwpAQCAtNTMs
NjQgKzUzLDEyIEBAIHJvY2tjaGlwX2ZiX2FsbG9jKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIGNv
bnN0IHN0cnVjdCBkcm1fbW9kZV9mYl9jbWQyICptb2RlX2NtCiAJcmV0dXJuIGZiOwogfQogCi1z
dGF0aWMgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqCi1yb2NrY2hpcF91c2VyX2ZiX2NyZWF0ZShz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdiwKLQkJCWNv
bnN0IHN0cnVjdCBkcm1fbW9kZV9mYl9jbWQyICptb2RlX2NtZCkKLXsKLQljb25zdCBzdHJ1Y3Qg
ZHJtX2Zvcm1hdF9pbmZvICppbmZvID0gZHJtX2dldF9mb3JtYXRfaW5mbyhkZXYsCi0JCQkJCQkJ
CSBtb2RlX2NtZCk7Ci0Jc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmI7Ci0Jc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpvYmpzW1JPQ0tDSElQX01BWF9GQl9CVUZGRVJdOwotCXN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqb2JqOwotCWludCBudW1fcGxhbmVzID0gbWluX3QoaW50LCBpbmZvLT5udW1fcGxh
bmVzLCBST0NLQ0hJUF9NQVhfRkJfQlVGRkVSKTsKLQlpbnQgcmV0OwotCWludCBpOwotCi0JZm9y
IChpID0gMDsgaSA8IG51bV9wbGFuZXM7IGkrKykgewotCQl1bnNpZ25lZCBpbnQgd2lkdGggPSBt
b2RlX2NtZC0+d2lkdGggLyAoaSA/IGluZm8tPmhzdWIgOiAxKTsKLQkJdW5zaWduZWQgaW50IGhl
aWdodCA9IG1vZGVfY21kLT5oZWlnaHQgLyAoaSA/IGluZm8tPnZzdWIgOiAxKTsKLQkJdW5zaWdu
ZWQgaW50IG1pbl9zaXplOwotCi0JCW9iaiA9IGRybV9nZW1fb2JqZWN0X2xvb2t1cChmaWxlX3By
aXYsIG1vZGVfY21kLT5oYW5kbGVzW2ldKTsKLQkJaWYgKCFvYmopIHsKLQkJCURSTV9ERVZfRVJS
T1IoZGV2LT5kZXYsCi0JCQkJICAgICAgIkZhaWxlZCB0byBsb29rdXAgR0VNIG9iamVjdFxuIik7
Ci0JCQlyZXQgPSAtRU5YSU87Ci0JCQlnb3RvIGVycl9nZW1fb2JqZWN0X3VucmVmZXJlbmNlOwot
CQl9Ci0KLQkJbWluX3NpemUgPSAoaGVpZ2h0IC0gMSkgKiBtb2RlX2NtZC0+cGl0Y2hlc1tpXSAr
Ci0JCQltb2RlX2NtZC0+b2Zmc2V0c1tpXSArCi0JCQl3aWR0aCAqIGluZm8tPmNwcFtpXTsKLQot
CQlpZiAob2JqLT5zaXplIDwgbWluX3NpemUpIHsKLQkJCWRybV9nZW1fb2JqZWN0X3B1dF91bmxv
Y2tlZChvYmopOwotCQkJcmV0ID0gLUVJTlZBTDsKLQkJCWdvdG8gZXJyX2dlbV9vYmplY3RfdW5y
ZWZlcmVuY2U7Ci0JCX0KLQkJb2Jqc1tpXSA9IG9iajsKLQl9Ci0KLQlmYiA9IHJvY2tjaGlwX2Zi
X2FsbG9jKGRldiwgbW9kZV9jbWQsIG9ianMsIGkpOwotCWlmIChJU19FUlIoZmIpKSB7Ci0JCXJl
dCA9IFBUUl9FUlIoZmIpOwotCQlnb3RvIGVycl9nZW1fb2JqZWN0X3VucmVmZXJlbmNlOwotCX0K
LQotCXJldHVybiBmYjsKLQotZXJyX2dlbV9vYmplY3RfdW5yZWZlcmVuY2U6Ci0JZm9yIChpLS07
IGkgPj0gMDsgaS0tKQotCQlkcm1fZ2VtX29iamVjdF9wdXRfdW5sb2NrZWQob2Jqc1tpXSk7Ci0J
cmV0dXJuIEVSUl9QVFIocmV0KTsKLX0KLQogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fbW9kZV9j
b25maWdfaGVscGVyX2Z1bmNzIHJvY2tjaGlwX21vZGVfY29uZmlnX2hlbHBlcnMgPSB7CiAJLmF0
b21pY19jb21taXRfdGFpbCA9IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF90YWlsX3JwbSwKIH07
CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnX2Z1bmNzIHJvY2tjaGlwX2Ry
bV9tb2RlX2NvbmZpZ19mdW5jcyA9IHsKLQkuZmJfY3JlYXRlID0gcm9ja2NoaXBfdXNlcl9mYl9j
cmVhdGUsCisJLmZiX2NyZWF0ZSA9IGRybV9nZW1fZmJfY3JlYXRlLAogCS5vdXRwdXRfcG9sbF9j
aGFuZ2VkID0gZHJtX2ZiX2hlbHBlcl9vdXRwdXRfcG9sbF9jaGFuZ2VkLAogCS5hdG9taWNfY2hl
Y2sgPSBkcm1fYXRvbWljX2hlbHBlcl9jaGVjaywKIAkuYXRvbWljX2NvbW1pdCA9IGRybV9hdG9t
aWNfaGVscGVyX2NvbW1pdCwKLS0gCjIuMjQuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
