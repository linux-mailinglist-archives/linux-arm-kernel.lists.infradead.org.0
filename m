Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6045F1688DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 22:05:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GME/mFvmY/Agn5SY8AnDMWQM8y9ROUnAW8Y+VMDAi0=; b=HgbjxIyMlj4SEo
	quUzDzVekI7sHABBDh29krJT3rFNNck9Akjo4I3M70MkbA5buItSdbd9trYNo7+AwUvONRYTf60ti
	6LdHlsvjPdCULSEo0t+7Vur9IiV+SbdylKucjh5XgNJCf2C7It6jwV2DxC6bZtL6gZ3be3bFiAOPs
	g3HHPdSHTRkbWZgPtOuvCOeEsvf58Y3b97XZppMjfBb9yB9quJAS3LR9M+9OJKI5tkxZHKUb7CLN/
	dhngn9uPdOUCmgXVzQLpSpo+BLCEeBywlZxaKkp+ZuN3kE4fHuGW3lF2G2GIdZST+xwv+vwa7kQl3
	7wpHEqbi0hKPymmEGmEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5FU0-0000B8-4g; Fri, 21 Feb 2020 21:05:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5FTA-00087a-N1
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 21:04:22 +0000
Received: by mail-wr1-x441.google.com with SMTP id u6so3560752wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 13:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qTbm0c/69CuYtL7h1VQBUhwKl0DAf2UFDhLQh32phtg=;
 b=YWfUF7szQfNkncc9THeB/wv2vks19mUCp6sc274w7Eie/qBZzHK84IaV6TMfmAKrk6
 AcyWJsNuxiSWW8sUvkYwao7w0HjRjrm8fPdV2m3+phOzyhTBrazlZfT/ZZHW32u48ndh
 IEtAC0xkUNoFyLU9t8AIyT5LvMxjIh6F4NXuc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qTbm0c/69CuYtL7h1VQBUhwKl0DAf2UFDhLQh32phtg=;
 b=XVbbMVuMtLMQ6XCtONd4tPSmqFcJwIRHtKcK3KJb3FGuT1EyQD+eUVvQhm6RKgPhqE
 tBBZbQc4Ss89yJvwYcwRhjg+7CvemyHM7oXXRBE8c0RQQZhx/NDSrs0kDL9gjS9fKL+f
 oZsyL2Ws0SrZk/JJ2crrawjeI6+2RoEfl6U30HhJewDuXv7IlD1AzxmW8uKjpyTeb55j
 K7r4NQjsYqlOHM+PUTnIlIpstsyjKdKAC/oLb69sfF6hX6P+Qm4Mvj1X42dayvbrOSba
 +OLCXlpKNHZk7/cfOI1B7Und5HgLvn6fhSaxX92j7I34jr6Fzhs2yHb7B7N8YcdD/+5a
 X+kQ==
X-Gm-Message-State: APjAAAVpHGOfJMPlS0W+x6THTD423gsZSjkUfThkR2rsLFsGy7QPjQFR
 X081IZtdrctSeWLuXsukS3UA6w==
X-Google-Smtp-Source: APXvYqy5XkSVwtYslV0K5isLENuIvM76ublN4PWtiJkQYmbtWq0CSLiXMpbngACLPz8J9+EeO3JOiA==
X-Received: by 2002:adf:f507:: with SMTP id q7mr49558705wro.384.1582319057300; 
 Fri, 21 Feb 2020 13:04:17 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.04.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:04:16 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 37/51] drm/rockchip: Drop explicit drm_mode_config_cleanup call
Date: Fri, 21 Feb 2020 22:03:05 +0100
Message-Id: <20200221210319.2245170-38-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_130420_748547_282D7A21 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SXQncyAoYWxtb3N0LCB0aGVyZSdzIHNvbWUgaW9tbXUgc3R1ZmYgd2l0aG91dCBzaWduaWZpY2Fu
Y2UpIHJpZ2h0CmFib3ZlIHRoZSBkcm1fZGV2X3B1dCgpLgoKVGhpcyBpcyBtYWRlIHBvc3NpYmxl
IGJ5IGEgcHJlY2VlZGluZyBwYXRjaCB3aGljaCBhZGRlZCBhIGRybW1fCmNsZWFudXAgYWN0aW9u
IHRvIGRybV9tb2RlX2NvbmZpZ19pbml0KCksIGhlbmNlIGFsbCB3ZSBuZWVkIHRvIGRvIHRvCmVu
c3VyZSB0aGF0IGRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKCkgaXMgcnVuIG9uIGZpbmFsIGRybV9k
ZXZpY2UKY2xlYW51cCBpcyBjaGVjayB0aGUgbmV3IGVycm9yIGNvZGUgZm9yIF9pbml0KCkuCgpB
c2lkZTogQW5vdGhlciBkcml2ZXIgd2l0aCBhIGJpdCBtdWNoIGRldm1fa3phbGxvYywgd2hpY2gg
c2hvdWxkCnByb2JhYmx5IHVzZSBkcm1tX2t6YWxsb2MgaW5zdGVhZCAuLi4KCnYyOiBFeHBsYWlu
IHdoeSB0aGlzIGNsZWFudXAgaXMgcG9zc2libGUgKExhdXJlbnQpLgoKQ2M6IExhdXJlbnQgUGlu
Y2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KU2lnbmVkLW9mZi1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBTYW5keSBIdWFuZyA8
aGpjQHJvY2stY2hpcHMuY29tPgpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRl
PgpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV9kcnYuYyB8IDEwICsrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fZHJ2LmMKaW5kZXggMjBlY2IxNTA4YTIyLi5kMGViYTIxZWViYzkgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYwpAQCAtMTM1LDcgKzEzNSw5
IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHJtX2JpbmQoc3RydWN0IGRldmljZSAqZGV2KQogCWlm
IChyZXQpCiAJCWdvdG8gZXJyX2ZyZWU7CiAKLQlkcm1fbW9kZV9jb25maWdfaW5pdChkcm1fZGV2
KTsKKwlyZXQgPSBkcm1fbW9kZV9jb25maWdfaW5pdChkcm1fZGV2KTsKKwlpZiAocmV0KQorCQln
b3RvIGVycl9mcmVlOwogCiAJcm9ja2NoaXBfZHJtX21vZGVfY29uZmlnX2luaXQoZHJtX2Rldik7
CiAKQEAgLTE3NCwxMSArMTc2LDggQEAgc3RhdGljIGludCByb2NrY2hpcF9kcm1fYmluZChzdHJ1
Y3QgZGV2aWNlICpkZXYpCiBlcnJfdW5iaW5kX2FsbDoKIAljb21wb25lbnRfdW5iaW5kX2FsbChk
ZXYsIGRybV9kZXYpOwogZXJyX21vZGVfY29uZmlnX2NsZWFudXA6Ci0JZHJtX21vZGVfY29uZmln
X2NsZWFudXAoZHJtX2Rldik7CiAJcm9ja2NoaXBfaW9tbXVfY2xlYW51cChkcm1fZGV2KTsKIGVy
cl9mcmVlOgotCWRybV9kZXYtPmRldl9wcml2YXRlID0gTlVMTDsKLQlkZXZfc2V0X2RydmRhdGEo
ZGV2LCBOVUxMKTsKIAlkcm1fZGV2X3B1dChkcm1fZGV2KTsKIAlyZXR1cm4gcmV0OwogfQpAQCAt
MTk0LDExICsxOTMsOCBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9kcm1fdW5iaW5kKHN0cnVjdCBk
ZXZpY2UgKmRldikKIAogCWRybV9hdG9taWNfaGVscGVyX3NodXRkb3duKGRybV9kZXYpOwogCWNv
bXBvbmVudF91bmJpbmRfYWxsKGRldiwgZHJtX2Rldik7Ci0JZHJtX21vZGVfY29uZmlnX2NsZWFu
dXAoZHJtX2Rldik7CiAJcm9ja2NoaXBfaW9tbXVfY2xlYW51cChkcm1fZGV2KTsKIAotCWRybV9k
ZXYtPmRldl9wcml2YXRlID0gTlVMTDsKLQlkZXZfc2V0X2RydmRhdGEoZGV2LCBOVUxMKTsKIAlk
cm1fZGV2X3B1dChkcm1fZGV2KTsKIH0KIAotLSAKMi4yNC4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
