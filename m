Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3192ED4B2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 21:34:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtlaFma3oXYGT0fMD5dodgNe+IF0rt/nkm//zddpCh0=; b=FAkRfhlMCzFrZX
	ChA/RtmzT70KZc3fJHm4YZn+s+tSdCc+pGAT7xlov4ax6phNRSSb5qcm05ovPX/UVinvsezZ6VDso
	98VBOEXH7O3iN/Gr8ndC3TysBR4ylwkGtiHVaZvpMAjkdccOS0AFoNlP1K/yhW525U4jiVAJSppTg
	qjKYvFXXgFkUybIa5QuU9m8pTcW2PNChuUTdJenUUwHi4iSP7sx0Vr9+PSue6dZ6Ml7VfzmWM7Nz9
	WFtfh6h6sJtgr+eLfetgLRIbZG+zYWCNnXCL2So7bGQlbwptS0YFACINI7gOGZPhk0lXItYHFgLzv
	MvmsHm+iUPfGCDNqc7gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRMa5-0006kc-UF; Sun, 03 Nov 2019 20:34:37 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRMZL-0006FF-3E
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 20:33:53 +0000
Received: by mail-wr1-x443.google.com with SMTP id n1so14792965wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 12:33:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CQuQmd85Ia5RpOjrEh6LyCYQrdLstz30Cf07TMDdjnM=;
 b=TrdbbXY8ypON0YbPaQmrkrlR7rMjj2Qh82MRAPOCdd0paTG/Umqko8Prl9yV3KxJXm
 VtWAq3qtwR4OdW9J4+sWI47Nvpwyr8YDUEHKuFqrbtJOKQNnTaM/NgDwLh4YAvQsZ4Y4
 Ivm8GXNo9iyoJ7ZZ0Nrw/lZj1De1IIOPLLNjDK5WLT3eJZAzPVZLpUanjzKedtRS95dU
 3fpB7x5FPTGuK6ZW4i1dDWE/zd/OCIcdg8zTo8xd+NiwS+gYC5bRm7EXd+/lzgUXS1vO
 ydQurPrXkzNMWOwSb5AFDDB/7Hrw3WkN+uc4jbpL7jSWKvCI63NwIff2TXfg9/I1emlz
 hIRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CQuQmd85Ia5RpOjrEh6LyCYQrdLstz30Cf07TMDdjnM=;
 b=FJBGZw0jyQpHkcLClZ+Uh1YVEFHQzmlSm1aFMT5cAS/0e5JfqyJP6p/jQ2YXbr8hj+
 xzXIMjxA6ZpYIwYv3/PROKrD/iX0QdDuGx9IPHiID50KVozrK3wohYo+XgPxQ5G/pa9M
 FRQQoL/bz09bQW7iLiqT1axpyNxInHQ9T2aRzQ/02H+W1dKPxrJKVFXhrx12p0CXdS4r
 eBPy2zo4Zss7t0cJbEBmAG9AiFnM+D8qU8Ad0cdaOxOrYBwkIS5g7bHlEETJ9ORuCaBt
 VWfVkMeoVeaHl4VZFwEOk+cGA5Er6u2MpsGmY+wUKTqxPMNzyx5xV3uWgbWOUlN3yPE6
 9MgQ==
X-Gm-Message-State: APjAAAV3rVTUswKzSVbuZUoH/6U1x3Ke5jJ5nfH0jxEbi1xFPBPq68Gf
 O4Z7ENJJDmjD2r9tiaeSi8g=
X-Google-Smtp-Source: APXvYqz9NxelR6cYGd/bIquEkav8T9DMbDKeUx6KTsMHkh35YBDpLXPNrCIkcBfpUZsilGTzTVN0ow==
X-Received: by 2002:adf:f744:: with SMTP id z4mr11427861wrp.205.1572813228347; 
 Sun, 03 Nov 2019 12:33:48 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id x16sm13644026wrp.91.2019.11.03.12.33.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 12:33:47 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?=27Uwe=20Kleine-K=C3=B6nig=27?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 3/7] pwm: sun4i: Add an optional probe for bus clock
Date: Sun,  3 Nov 2019 21:33:30 +0100
Message-Id: <20191103203334.10539-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191103203334.10539-1-peron.clem@gmail.com>
References: <20191103203334.10539-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_123351_140071_EE8CED71 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGNv
cmUgbmVlZHMgYnVzIGNsb2NrIHRvIGJlIGVuYWJsZWQgaW4gb3JkZXIgdG8gd29yay4KCkFkZCBh
biBvcHRpb25hbCBwcm9iZSBmb3IgaXQgYW5kIGEgZmFsbGJhY2sgZm9yIHByZXZpb3VzCmJpbmRp
bmdzIHdpdGhvdXQgbmFtZSBvbiBtb2R1bGUgY2xvY2suCgpTaWduZWQtb2ZmLWJ5OiBKZXJuZWog
U2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50
IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9wd20vcHdtLXN1bjRp
LmMgfCAzNiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCAzNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLXN1bjRp
LmMgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwppbmRleCBkMTk0YjhlYmRiMDAuLmI1ZTdhYzM2
NGY1OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKKysrIGIvZHJpdmVycy9w
d20vcHdtLXN1bjRpLmMKQEAgLTc4LDYgKzc4LDcgQEAgc3RydWN0IHN1bjRpX3B3bV9kYXRhIHsK
IAogc3RydWN0IHN1bjRpX3B3bV9jaGlwIHsKIAlzdHJ1Y3QgcHdtX2NoaXAgY2hpcDsKKwlzdHJ1
Y3QgY2xrICpidXNfY2xrOwogCXN0cnVjdCBjbGsgKmNsazsKIAlzdHJ1Y3QgcmVzZXRfY29udHJv
bCAqcnN0OwogCXZvaWQgX19pb21lbSAqYmFzZTsKQEAgLTM2Nyw2ICszNjgsMzEgQEAgc3RhdGlj
IGludCBzdW40aV9wd21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlpZiAo
SVNfRVJSKHB3bS0+Y2xrKSkKIAkJcmV0dXJuIFBUUl9FUlIocHdtLT5jbGspOwogCisJLyogR2V0
IGFsbCBjbG9ja3MgYW5kIHJlc2V0IGxpbmUgKi8KKwlwd20tPmNsayA9IGRldm1fY2xrX2dldF9v
cHRpb25hbCgmcGRldi0+ZGV2LCAibW9kIik7CisJaWYgKElTX0VSUihwd20tPmNsaykpIHsKKwkJ
ZGV2X2VycigmcGRldi0+ZGV2LCAiZ2V0IGNsb2NrIGZhaWxlZCAlbGRcbiIsCisJCQlQVFJfRVJS
KHB3bS0+Y2xrKSk7CisJCXJldHVybiBQVFJfRVJSKHB3bS0+Y2xrKTsKKwl9CisKKwkvKiBGYWxs
YmFjayBmb3Igb2xkIGR0YnMgd2l0aCBhIHNpbmdsZSBjbG9jayBhbmQgbm8gbmFtZSAqLworCWlm
ICghcHdtLT5jbGspIHsKKwkJcHdtLT5jbGsgPSBkZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwgTlVM
TCk7CisJCWlmIChJU19FUlIocHdtLT5jbGspKSB7CisJCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJn
ZXQgY2xvY2sgZmFpbGVkICVsZFxuIiwKKwkJCQlQVFJfRVJSKHB3bS0+Y2xrKSk7CisJCQlyZXR1
cm4gUFRSX0VSUihwd20tPmNsayk7CisJCX0KKwl9CisKKwlwd20tPmJ1c19jbGsgPSBkZXZtX2Ns
a19nZXRfb3B0aW9uYWwoJnBkZXYtPmRldiwgImJ1cyIpOworCWlmIChJU19FUlIocHdtLT5idXNf
Y2xrKSkgeworCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJnZXQgYnVzX2Nsb2NrIGZhaWxlZCAlbGRc
biIsCisJCQlQVFJfRVJSKHB3bS0+YnVzX2NsaykpOworCQlyZXR1cm4gUFRSX0VSUihwd20tPmJ1
c19jbGspOworCX0KKwogCXB3bS0+cnN0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldF9vcHRpb25h
bCgmcGRldi0+ZGV2LCBOVUxMKTsKIAlpZiAoSVNfRVJSKHB3bS0+cnN0KSkgewogCQlpZiAoUFRS
X0VSUihwd20tPnJzdCkgPT0gLUVQUk9CRV9ERUZFUikKQEAgLTM4MSw2ICs0MDcsMTMgQEAgc3Rh
dGljIGludCBzdW40aV9wd21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJ
cmV0dXJuIHJldDsKIAl9CiAKKwkvKiBFbmFibGUgYnVzIGNsb2NrICovCisJcmV0ID0gY2xrX3By
ZXBhcmVfZW5hYmxlKHB3bS0+YnVzX2Nsayk7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKCZwZGV2
LT5kZXYsICJDYW5ub3QgcHJlcGFyZV9lbmFibGUgYnVzX2Nsa1xuIik7CisJCWdvdG8gZXJyX2J1
czsKKwl9CisKIAlwd20tPmNoaXAuZGV2ID0gJnBkZXYtPmRldjsKIAlwd20tPmNoaXAub3BzID0g
JnN1bjRpX3B3bV9vcHM7CiAJcHdtLT5jaGlwLmJhc2UgPSAtMTsKQEAgLTQwMSw2ICs0MzQsOCBA
QCBzdGF0aWMgaW50IHN1bjRpX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQogCXJldHVybiAwOwogCiBlcnJfcHdtX2FkZDoKKwljbGtfZGlzYWJsZV91bnByZXBhcmUocHdt
LT5idXNfY2xrKTsKK2Vycl9idXM6CiAJcmVzZXRfY29udHJvbF9hc3NlcnQocHdtLT5yc3QpOwog
CiAJcmV0dXJuIHJldDsKQEAgLTQxNSw2ICs0NTAsNyBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9y
ZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlpZiAocmV0KQogCQlyZXR1cm4g
cmV0OwogCisJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHB3bS0+YnVzX2Nsayk7CiAJcmVzZXRfY29u
dHJvbF9hc3NlcnQocHdtLT5yc3QpOwogCiAJcmV0dXJuIDA7Ci0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
