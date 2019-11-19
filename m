Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BCB102B2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 18:54:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WQP4fFIgN4uB7QacUanUNXwudfQyb8VquiBfRbxL9Vo=; b=HeKr6lAIbPT0te
	1ML2M6BXquj6lwHc/ImOoDfR/ebGD8LZJnNNB6y1k3z8d58u1KysZI7L2BX5BCoWfegRB/u4tAKE3
	Us/IIkUKcc5T3oIAlQPjZQ5K7HDwKftvZE/xOI5CE2Jlj5h4niddZRN3QAqojWtaF6ABfDDAUuGlb
	ehsje5qHZZG/pjWOgJ7MPh2PmHwuL1XxbyGPL3HGrA4aN6RkFepCntW8D6gWh64cA4X4+h+sOOiXt
	vLzSF/Kqya8kc2tS7FEfrMyt0UTZHQc7I29IHrVEs/SiaHaQTrVfMvq0XAaZq8TF5cpyiDNsmgMnt
	9RsaZR/zjqByEHSpR8kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX7iD-0008N9-5U; Tue, 19 Nov 2019 17:54:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX7gu-0007HS-8F
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 17:53:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id 8so4810509wmo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 09:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+uPwPfx0oQerpYTv3rMNbZ1we4qpdrwsuG2bGFowiTE=;
 b=HrqbTpU48LtXXGhuT1jSoBXlW4dQYaVuKNPJ6cUTawNnHjXEbsNb2n+BtrFaIT0nxg
 jO0U2HrzGfy4kyXtUC/suSyd8YuQ1lB28fbgBv/rNCKapu5Q0EmVKEVIeNLjdTj+1lOB
 UfcojpSGvn4mY8QWbvlzHdDWCtJPBuPB9aRRGscQUs79XtKLnDCvPNkkJ19xsPlJBdRB
 y76yrpvQEmgaIa9po8DcKV70OOJk2lfCDp6KoT6W+wAsBJRwe9Etn5OH4Eik9P+qn+dh
 ib0klC/9sl7FbGu3gDtebUHe43V/2zVto6ZKc3hNx/Np+vi+obLmAZ4D+qav/uAGE0tb
 utQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+uPwPfx0oQerpYTv3rMNbZ1we4qpdrwsuG2bGFowiTE=;
 b=ghl5dCWopLYP9kQw+EqRLpmZsgemiCjfOEdQpSeTJjMRaBx1mwBQFXokOrgAgyxmpa
 AbK/wlupu42k2P9ThPh41lIjup94+EUgJIvS0wsbTpVqkxykbY6Y8i9YkPU9/pDhR/zj
 aWbvRVBNiqoaLSL2RzANEAcHESsE8lQJSy9lv1bL+FOHnqgW/y+Ut1zCvTrhuwVaS1hl
 wjHR74+lMGNxFYYPdRfh8H5qQ4f9WKSeW7OReFmt4DAfFQZ9sLELVe1ROIDRJIOXYDr8
 6JAsHeKdqlAFGamXIvHEmlz0HYzb/Ua1p7iX/S36thUEcMfALkM8F9z/eieMedpolfYr
 /C1A==
X-Gm-Message-State: APjAAAV17gFO5/2qdtyZxUZRGd3LXSZtYKhYC0wsACrDR97OeRT1/yKT
 6y26tGZN/ObBw95ITNcosq8=
X-Google-Smtp-Source: APXvYqxoIbx/qLj+H9mdcAmhEdkBaM+WWALtgFxviLoGVxHH9Lkd0YrjTBQkL8yEBwpAShppBEu69w==
X-Received: by 2002:a7b:c392:: with SMTP id s18mr6609135wmj.61.1574186006521; 
 Tue, 19 Nov 2019 09:53:26 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id l13sm3772618wmh.12.2019.11.19.09.53.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 09:53:26 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v7 3/8] pwm: sun4i: Prefer "mod" clock to unnamed
Date: Tue, 19 Nov 2019 18:53:14 +0100
Message-Id: <20191119175319.16561-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191119175319.16561-1-peron.clem@gmail.com>
References: <20191119175319.16561-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_095328_292993_4EED6D4E 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TmV3IGRldmljZSB0cmVlIGJpbmRpbmdzIGNhbGxlZCB0aGUgc291cmNlIGNsb2NrIG9mIHRoZSBt
b2R1bGUKIm1vZCIgd2hlbiBzZXZlcmFsIGNsb2NrcyBhcmUgZGVmaW5lZC4KClRyeSB0byBnZXQg
YSBjbG9jayBjYWxsZWQgIm1vZCIgaWYgbm90aGluZyBpcyBmb3VuZCB0cnkgdG8gZ2V0CmFuIHVu
bmFtZWQgY2xvY2suCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1A
Z21haWwuY29tPgotLS0KIGRyaXZlcnMvcHdtL3B3bS1zdW40aS5jIHwgMjkgKysrKysrKysrKysr
KysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jIGIvZHJpdmVy
cy9wd20vcHdtLXN1bjRpLmMKaW5kZXggYzE3OTM1ODA1NjkwLi42ZDk3ZmVmNGVkNDMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40
aS5jCkBAIC0zNjIsOSArMzYyLDM0IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKElTX0VSUihwd20tPmJhc2UpKQogCQlyZXR1
cm4gUFRSX0VSUihwd20tPmJhc2UpOwogCi0JcHdtLT5jbGsgPSBkZXZtX2Nsa19nZXQoJnBkZXYt
PmRldiwgTlVMTCk7Ci0JaWYgKElTX0VSUihwd20tPmNsaykpCisJLyoKKwkgKiBBbGwgaGFyZHdh
cmUgdmFyaWFudHMgbmVlZCBhIHNvdXJjZSBjbG9jayB0aGF0IGlzIGRpdmlkZWQgYW5kCisJICog
dGhlbiBmZWVkcyB0aGUgY291bnRlciB0aGF0IGRlZmluZXMgdGhlIG91dHB1dCB3YXZlIGZvcm0u
IEluIHRoZQorCSAqIGRldmljZSB0cmVlIHRoaXMgY2xvY2sgaXMgZWl0aGVyIHVubmFtZWQgb3Ig
Y2FsbGVkICJtb2QiLgorCSAqIFNvbWUgdmFyaWFudHMgKGUuZy4gSDYpIG5lZWQgYW5vdGhlciBj
bG9jayB0byBhY2Nlc3MgdGhlCisJICogaGFyZHdhcmUgcmVnaXN0ZXJzOyB0aGlzIGlzIGNhbGxl
ZCAiYnVzIi4KKwkgKiBTbyB3ZSByZXF1ZXN0ICJtb2QiIGZpcnN0IChhbmQgaWdub3JlIHRoZSBj
b3JuZXIgY2FzZSB0aGF0IGEKKwkgKiBwYXJlbnQgcHJvdmlkZXMgYSAibW9kIiBjbG9jayB3aGls
ZSB0aGUgcmlnaHQgb25lIHdvdWxkIGJlIHRoZQorCSAqIHVubmFtZWQgb25lIG9mIHRoZSBQV00g
ZGV2aWNlKSBhbmQgaWYgdGhpcyBpcyBub3QgZm91bmQgd2UgZmFsbAorCSAqIGJhY2sgdG8gdGhl
IGZpcnN0IGNsb2NrIG9mIHRoZSBQV00uCisJICovCisJcHdtLT5jbGsgPSBkZXZtX2Nsa19nZXRf
b3B0aW9uYWwoJnBkZXYtPmRldiwgIm1vZCIpOworCWlmIChJU19FUlIocHdtLT5jbGspKSB7CisJ
CWlmIChQVFJfRVJSKHB3bS0+cnN0KSAhPSAtRVBST0JFX0RFRkVSKQorCQkJZGV2X2VycigmcGRl
di0+ZGV2LCAiZ2V0IG1vZCBjbG9jayBmYWlsZWQgJXBlXG4iLAorCQkJCXB3bS0+Y2xrKTsKIAkJ
cmV0dXJuIFBUUl9FUlIocHdtLT5jbGspOworCX0KKworCWlmICghcHdtLT5jbGspIHsKKwkJcHdt
LT5jbGsgPSBkZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwgTlVMTCk7CisJCWlmIChJU19FUlIocHdt
LT5jbGspKSB7CisJCQlpZiAoUFRSX0VSUihwd20tPnJzdCkgIT0gLUVQUk9CRV9ERUZFUikKKwkJ
CQlkZXZfZXJyKCZwZGV2LT5kZXYsICJnZXQgdW5uYW1lZCBjbG9jayBmYWlsZWQgJXBlXG4iLAor
CQkJCQlwd20tPmNsayk7CisJCQlyZXR1cm4gUFRSX0VSUihwd20tPmNsayk7CisJCX0KKwl9CiAK
IAlwd20tPnJzdCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXRfb3B0aW9uYWxfc2hhcmVkKCZwZGV2
LT5kZXYsIE5VTEwpOwogCWlmIChJU19FUlIocHdtLT5yc3QpKSB7Ci0tIAoyLjIwLjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
