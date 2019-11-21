Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD4E105AC5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 21:00:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sH8G83mVgI7xZjxGjMSjekjrKmZObCUWDkb/Wsa1oPs=; b=YqQN1B5PUbq+A4
	USOV3sPQl2P4UgkReYDiTPMCbkBpwNuVQKYiUFm9u182Pf6jpmql5mwdjZ+/VdJ3GTt/HN/qab3qX
	3/oj5NePvFdnK9fvVY3Q3K5RvJfGaHCQJhkV+ULLpzspxytvhzeN9e07xRm3/WsxkabkfE2UfY/yM
	v+m5c/QjNwqVsQD5PxIM9G2ZcpnvCPBtMJIJo/Ym3oP5UGzKb/ECgIRsfO50PYCAU5lqUm2eMkQPx
	jbPOBd7RMey342sKLD6JNhvkGuv6e6w2r9UQSkLn+oqxsQ19h/jM0/W4yVRPwlwfGrNCmSK4QlFSQ
	uh6V9Vw5QtRTNIa6TURA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXscX-0001fj-EG; Thu, 21 Nov 2019 20:00:05 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXsbi-0001Bn-2d
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 19:59:15 +0000
Received: by mail-wr1-x441.google.com with SMTP id 4so2636486wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 11:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IWDES4H6FK9m7SMVyLGPZhTPZo+2N/nXcrBq8GxN+no=;
 b=EtkFtF8CBsyuucSxiIa/b0wzIAJkqo0ayTpBwFGhoOff674C94s/a9kNTBEi8s/tiF
 UVeFzrTS1024HfPlBsdYpUIkzBFSFdcqNa9ZMpob14BfvV9iwxHCiSxJXxUaug241dSU
 3y3kLuFSqQ/Ot5VJZ2U9Ru2zHTkK7NgPVQcLmRMTSmemtIEKnS4leeLwEsIhO01/xxPf
 aJkN85hmqBRynBBiOW8ocTvMDArMMdDJ2956VVZZ82eZxgQOJkDg397ve1gaEGQ5fBhK
 IidtqFLMMxL6UmmtnJUL4tvHbLuf98xnqvFnlzMiM7USLGVRm7Av8RXFUdPFfKLvnkHF
 Kz7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IWDES4H6FK9m7SMVyLGPZhTPZo+2N/nXcrBq8GxN+no=;
 b=IhY0DKVr7wn2Ep/QhpBlsKW+/DCLUNtalP3wpZPAMi/RaPg/2fmTj2AZ/FsbP/9A4M
 XjtJe0D0xkJJPcZEVyz09LrUiJDTy+C0lFi3W2+a9T9wqhgjQqyqNYs+4MoI5FtnGYpG
 66WCC0kVWed2VM0yfagw6r2Zklyazg45GwSlaoKsmcii3BvGZ4CROHoDH3wcKh3SlR5d
 laCEc+sAoE1Djq841MFZifsq2T8Dm96PHEHjoI7/3kUxRmdN8nl0hgWQj2veSY3Occvv
 9iDK6fxgBhDVuyMLiTSBeS1r50dT2ReE2Iu+5dbKWqjY2ss1lDV6rRjcG0yhFW7ne9jl
 juzw==
X-Gm-Message-State: APjAAAW3btcsp3mr++cWQ08KSo+4RDWUxx9XbreDuu4RabpI6cuxrqyI
 syxyNTf/utrtLzLg1z+Z53Y=
X-Google-Smtp-Source: APXvYqzxnV1R6FQNd3QC0/8HqDTTJeYDU0/5hlp7oOWfU+vuXUM7WtJED6UShlFOpfkJH1TQUAkQbQ==
X-Received: by 2002:adf:f744:: with SMTP id z4mr13248893wrp.205.1574366352692; 
 Thu, 21 Nov 2019 11:59:12 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id l4sm747124wme.4.2019.11.21.11.59.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 11:59:11 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v8 2/6] pwm: sun4i: Prefer "mod" clock to unnamed
Date: Thu, 21 Nov 2019 20:58:58 +0100
Message-Id: <20191121195902.6906-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191121195902.6906-1-peron.clem@gmail.com>
References: <20191121195902.6906-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_115914_145419_68DEF5B0 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
L2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCmluZGV4IGUzNTNhMDNlYzYxNC4uMzY5OTkwYWU3ZDA5
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
