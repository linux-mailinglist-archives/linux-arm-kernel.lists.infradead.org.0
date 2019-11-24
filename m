Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E0210845D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 18:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4C12M1m7Ahf4ap1yDIxpNKDGtqR3nZM7RZ7ctpslAg=; b=s7zj2u+akWK37W
	1+pdebldHYwqCTxqVom3qQwMiq3Ug01Qx65ddNAOdfW/7EAwRcQhkZHuUGZcMfdEdhGrO8X+jxFsG
	A0sm21r0ZWj5cKgGVHJVEwRhfkt4fOZrnVbJ9zcOezgWnogt+jqnaxKB5L7SqFllgePIWYrXYRKNe
	RlU25mgr3NS1DS1wi3ttHEs3ryrQt/qMWoLMhXOeki83UfX65XdRBSvPhPOkvvYvYe4fx9Paa9jCk
	qqqoqOTWGxVhZYer22/vZA9qv9csJDKki6XBgTH8IFyddcTUjLd+iQ2p8e3HGTtuTKyaezLqlN1eT
	t1vLlEUwPQE1aGJ+9zXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYvii-0006EF-Uj; Sun, 24 Nov 2019 17:30:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYvi1-0004kV-GG
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 17:30:06 +0000
Received: by mail-wm1-x344.google.com with SMTP id b11so12697201wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 Nov 2019 09:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=11OJgFf0c1fRpm2QKhR90dd74bTjmn3YLFrj0+iDgME=;
 b=JxvIqrQsR3EH7tVEg3Mt/EsgCifsBPlln+APafYJtr99HPNoUtYqSCBEkFbeyc9wZt
 X97dKcORrbfwyvlS4808HTu/f031TGUSxsGrbitSrqk1xKGMHlywKBKZjQTAo53+SSAr
 4AnJtK1d3ENQerbwCjewLj2UDU+9fSHMniqXxpjJg2ME6TKq8N16wqEcqnfezw7o/p4/
 DxvPqwiqHS+fBB8vUsFpSNCTw3DtE5KrZHz+joqDk/1VFhevOT5XuKXdu4ZtQmz/T+UV
 HXDVHStVlHpDndteZ1icmtJyGiWFwS6B/BkRpBVS6XGJdijuTXb/LXqN4EW615naEmB9
 wtZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=11OJgFf0c1fRpm2QKhR90dd74bTjmn3YLFrj0+iDgME=;
 b=jdJI+QedslmbxUcR/wOnzWTfHC9MiPPCkfXgmdAOKJwKs5bPoc3D924KBUQzbu9n5m
 FHP1bDnx0c0NrxchWdEUbCvABi7Tu2iMZkEXm3HiGrvTklk+T5Qerrj7Iuvf3zExaeWm
 V8MJukzo/8EXtkHH6Zg8WrJN3aNq4shYJSHq8x1pKE5L7iFVybFBh9dG5l7R4PCIa+3K
 krzrpynrzdRZRzYpsl6CZvMqCST3pb7/rpuRfoutg0Xsl5wSsgK4HxpywltLOG+EdQQC
 YsMSklq++wvNsUlK5WpVUvfDGWo7GSnorjUWRKwWMVSn3QNCHhFwe2lTl6U9FBlKJwXz
 Pmbw==
X-Gm-Message-State: APjAAAXFpMu4N/PKF1NpXsHes+uqz4myLO6YCaLva+TbCnomVcUVtvB4
 uMCe7EBE97WfaxoHQjZpeBY=
X-Google-Smtp-Source: APXvYqxCILgcleo6Lk2jlnRahagfAhZ8VPpjVIezqiUklQ+tzkHAg3+u75onarnPMn0IhMj0G1Nqkg==
X-Received: by 2002:a7b:cd86:: with SMTP id y6mr12934898wmj.30.1574616603668; 
 Sun, 24 Nov 2019 09:30:03 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id n13sm5537275wmi.25.2019.11.24.09.30.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Nov 2019 09:30:03 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v9 2/6] pwm: sun4i: Prefer "mod" clock to unnamed
Date: Sun, 24 Nov 2019 18:29:04 +0100
Message-Id: <20191124172908.10804-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191124172908.10804-1-peron.clem@gmail.com>
References: <20191124172908.10804-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_093005_560289_586D2920 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TmV3IGRldmljZSB0cmVlIGJpbmRpbmdzIGNhbGxlZCB0aGUgc291cmNlIGNsb2NrIG9mIHRoZSBt
b2R1bGUKIm1vZCIgd2hlbiBzZXZlcmFsIGNsb2NrcyBhcmUgZGVmaW5lZC4KClRyeSB0byBnZXQg
YSBjbG9jayBjYWxsZWQgIm1vZCIgaWYgbm90aGluZyBpcyBmb3VuZCB0cnkgdG8gZ2V0CmFuIHVu
bmFtZWQgY2xvY2suCgpSZXZpZXdlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtv
ZW5pZ0BwZW5ndXRyb25peC5kZT4KU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJv
bi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyB8IDI5ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYyBi
L2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCmluZGV4IDQ4Nzg5OWQ0Y2MzZi4uODAwMjYxNjcwNDRi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYworKysgYi9kcml2ZXJzL3B3bS9w
d20tc3VuNGkuYwpAQCAtMzYyLDkgKzM2MiwzNCBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmIChJU19FUlIocHdtLT5iYXNlKSkK
IAkJcmV0dXJuIFBUUl9FUlIocHdtLT5iYXNlKTsKIAotCXB3bS0+Y2xrID0gZGV2bV9jbGtfZ2V0
KCZwZGV2LT5kZXYsIE5VTEwpOwotCWlmIChJU19FUlIocHdtLT5jbGspKQorCS8qCisJICogQWxs
IGhhcmR3YXJlIHZhcmlhbnRzIG5lZWQgYSBzb3VyY2UgY2xvY2sgdGhhdCBpcyBkaXZpZGVkIGFu
ZAorCSAqIHRoZW4gZmVlZHMgdGhlIGNvdW50ZXIgdGhhdCBkZWZpbmVzIHRoZSBvdXRwdXQgd2F2
ZSBmb3JtLiBJbiB0aGUKKwkgKiBkZXZpY2UgdHJlZSB0aGlzIGNsb2NrIGlzIGVpdGhlciB1bm5h
bWVkIG9yIGNhbGxlZCAibW9kIi4KKwkgKiBTb21lIHZhcmlhbnRzIChlLmcuIEg2KSBuZWVkIGFu
b3RoZXIgY2xvY2sgdG8gYWNjZXNzIHRoZQorCSAqIGhhcmR3YXJlIHJlZ2lzdGVyczsgdGhpcyBp
cyBjYWxsZWQgImJ1cyIuCisJICogU28gd2UgcmVxdWVzdCAibW9kIiBmaXJzdCAoYW5kIGlnbm9y
ZSB0aGUgY29ybmVyIGNhc2UgdGhhdCBhCisJICogcGFyZW50IHByb3ZpZGVzIGEgIm1vZCIgY2xv
Y2sgd2hpbGUgdGhlIHJpZ2h0IG9uZSB3b3VsZCBiZSB0aGUKKwkgKiB1bm5hbWVkIG9uZSBvZiB0
aGUgUFdNIGRldmljZSkgYW5kIGlmIHRoaXMgaXMgbm90IGZvdW5kIHdlIGZhbGwKKwkgKiBiYWNr
IHRvIHRoZSBmaXJzdCBjbG9jayBvZiB0aGUgUFdNLgorCSAqLworCXB3bS0+Y2xrID0gZGV2bV9j
bGtfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYsICJtb2QiKTsKKwlpZiAoSVNfRVJSKHB3bS0+Y2xr
KSkgeworCQlpZiAoUFRSX0VSUihwd20tPnJzdCkgIT0gLUVQUk9CRV9ERUZFUikKKwkJCWRldl9l
cnIoJnBkZXYtPmRldiwgImdldCBtb2QgY2xvY2sgZmFpbGVkICVwZVxuIiwKKwkJCQlwd20tPmNs
ayk7CiAJCXJldHVybiBQVFJfRVJSKHB3bS0+Y2xrKTsKKwl9CisKKwlpZiAoIXB3bS0+Y2xrKSB7
CisJCXB3bS0+Y2xrID0gZGV2bV9jbGtfZ2V0KCZwZGV2LT5kZXYsIE5VTEwpOworCQlpZiAoSVNf
RVJSKHB3bS0+Y2xrKSkgeworCQkJaWYgKFBUUl9FUlIocHdtLT5yc3QpICE9IC1FUFJPQkVfREVG
RVIpCisJCQkJZGV2X2VycigmcGRldi0+ZGV2LCAiZ2V0IHVubmFtZWQgY2xvY2sgZmFpbGVkICVw
ZVxuIiwKKwkJCQkJcHdtLT5jbGspOworCQkJcmV0dXJuIFBUUl9FUlIocHdtLT5jbGspOworCQl9
CisJfQogCiAJcHdtLT5yc3QgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFsX3NoYXJl
ZCgmcGRldi0+ZGV2LCBOVUxMKTsKIAlpZiAoSVNfRVJSKHB3bS0+cnN0KSkgewotLSAKMi4yMC4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
