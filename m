Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4A310845C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 18:30:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHCexr86yLU1a56uutSWDEapNK+WldmzLsJtgV5eHek=; b=UjCwR6D8oM4tyW
	0+6d9x1wP+DbQQC8+bv/dPTefippvMbYHS3+OYGIbU45smwViff/DzbY+IwdmgmNEXW5U3svzp4hJ
	EjhEX7n19nO0wPDX1fJYVKa5Tv6QAdNr4F9iS7Lf25SHl3bEgQeTA2mns3xo7yharad2zSq7JV7KB
	fKelEMxbwgFm8xXH/QLwGYrmTtzYB4Lz74WV3mxRO6tdMrCn7K5csXVlBpBDXRenWNmvxFktvNC/0
	M5OEeP0Q4QtFgRAmBzJ6D2kvCy3OOTUxw18z73sae2SRZARWpxrA6VjI0RMFacIgVoUTkr7Hg+h9k
	RHGUbr14aFJ6VHFns2cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYviR-0005vG-Sw; Sun, 24 Nov 2019 17:30:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYvhz-0004aa-Ed
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 17:30:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id b18so14667583wrj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 Nov 2019 09:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZYFwEIE1V4FYviy3HfGWOu1YC137BU6qFV2JCNaspsM=;
 b=R4nVdGmbxb/sU9t4pMb9ieOCb0Ig3onMEUMKW67rm055djQFNNus9F8m6tppSUZrKf
 7k1DLC0T1bLyQAvrNNYM7A3w8a/7USxIeMNo+2zv3Sznhunnkxz9IAtkXkqbJJMBH+mI
 GKbvmeFuf+wwge4w4XFh+Ycuh7Adx5t3+Etr0qgz5WRDb81N3CJ07M+/lzuL5t1y5q6E
 ERyec0nPt5gDm90ld+tuD8rtRoPJpb9eEDMt1uHwbSw4fu/0rl9deUSLH5YcT8OtErfS
 qJbExGUdP0ZbHFoDoyhu5xK/mPSty0f3qtIeHxEFYk6RpO+LYRob54X/OJD1bBnX6gk7
 zUvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZYFwEIE1V4FYviy3HfGWOu1YC137BU6qFV2JCNaspsM=;
 b=uPlwAnp7WJLkMI7pkIbQWciaVwRiSPqIxw6UQXdsDs/dkUAMo6LhT6hGCPLjrAgcmR
 yU0jwjCkjAGXo2d88Meg25uSaDtEobxnPf787Gx6X4ZAJspBlCWl6uj/i6qDl2QxZJKT
 GJh8tzY8T9aqjTDXHJ2r0JP8mf2K1VDjJ+spS6ePE42h2Q/VlOGzakflWTKhoR5p9RBr
 7UwXP4fikfhF4eiAhcnTgNLDbfjMp0aj4/6PPkQ01IWPlWIhM2A4MrGbaIUECqM/V2AQ
 aFI7AHa3HXCjexhlkUMh6zzdSYXPEBSxPzFVSQ3gWAn+omzwavdUb0PUZPd4wcxo4YUD
 2S/g==
X-Gm-Message-State: APjAAAV4O947QcXl6UQXVjlYb6VlJNLDsbI3lWoMHyjRT5An8gYwPxe9
 UBvLZJCFGo81ebpj4oSX8Eo=
X-Google-Smtp-Source: APXvYqy28wuYUH31pkTeF6gqI821J6tzCh9ACuT8BpF1tD5bYMQvaf6TVGG/7ORii+bAKQDExzXHmQ==
X-Received: by 2002:adf:e550:: with SMTP id z16mr4175991wrm.315.1574616601645; 
 Sun, 24 Nov 2019 09:30:01 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id n13sm5537275wmi.25.2019.11.24.09.29.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Nov 2019 09:30:01 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v9 1/6] pwm: sun4i: Add an optional probe for reset line
Date: Sun, 24 Nov 2019 18:29:03 +0100
Message-Id: <20191124172908.10804-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191124172908.10804-1-peron.clem@gmail.com>
References: <20191124172908.10804-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_093003_501046_2E851EDB 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGNv
cmUgbmVlZHMgZGVhc3NlcnRlZCByZXNldCBsaW5lIGluIG9yZGVyIHRvIHdvcmsuCgpBZGQgYW4g
b3B0aW9uYWwgcHJvYmUgZm9yIGl0LgoKU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGpl
cm5lai5za3JhYmVjQHNpb2wubmV0PgpSZXZpZXdlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOp
cm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyB8
IDM0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAz
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdt
L3B3bS1zdW40aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKaW5kZXggNTgxZDIzMjg3MzMz
Li40ODc4OTlkNGNjM2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCisrKyBi
L2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCkBAIC0xNiw2ICsxNiw3IEBACiAjaW5jbHVkZSA8bGlu
dXgvb2ZfZGV2aWNlLmg+CiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+CiAjaW5j
bHVkZSA8bGludXgvcHdtLmg+CisjaW5jbHVkZSA8bGludXgvcmVzZXQuaD4KICNpbmNsdWRlIDxs
aW51eC9zbGFiLmg+CiAjaW5jbHVkZSA8bGludXgvc3BpbmxvY2suaD4KICNpbmNsdWRlIDxsaW51
eC90aW1lLmg+CkBAIC03OCw2ICs3OSw3IEBAIHN0cnVjdCBzdW40aV9wd21fZGF0YSB7CiBzdHJ1
Y3Qgc3VuNGlfcHdtX2NoaXAgewogCXN0cnVjdCBwd21fY2hpcCBjaGlwOwogCXN0cnVjdCBjbGsg
KmNsazsKKwlzdHJ1Y3QgcmVzZXRfY29udHJvbCAqcnN0OwogCXZvaWQgX19pb21lbSAqYmFzZTsK
IAlzcGlubG9ja190IGN0cmxfbG9jazsKIAljb25zdCBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEgKmRh
dGE7CkBAIC0zNjQsNiArMzY2LDIyIEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKElTX0VSUihwd20tPmNsaykpCiAJCXJldHVy
biBQVFJfRVJSKHB3bS0+Y2xrKTsKIAorCXB3bS0+cnN0ID0gZGV2bV9yZXNldF9jb250cm9sX2dl
dF9vcHRpb25hbF9zaGFyZWQoJnBkZXYtPmRldiwgTlVMTCk7CisJaWYgKElTX0VSUihwd20tPnJz
dCkpIHsKKwkJaWYgKFBUUl9FUlIocHdtLT5yc3QpICE9IC1FUFJPQkVfREVGRVIpCisJCQlkZXZf
ZXJyKCZwZGV2LT5kZXYsICJnZXQgcmVzZXQgZmFpbGVkICVwZVxuIiwKKwkJCQlwd20tPnJzdCk7
CisJCXJldHVybiBQVFJfRVJSKHB3bS0+cnN0KTsKKwl9CisKKwkvKiBEZWFzc2VydCByZXNldCAq
LworCXJldCA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocHdtLT5yc3QpOworCWlmIChyZXQpIHsK
KwkJZGV2X2VycigmcGRldi0+ZGV2LCAiY2Fubm90IGRlYXNzZXJ0IHJlc2V0IGNvbnRyb2w6ICVw
ZVxuIiwKKwkJCUVSUl9QVFIocmV0KSk7CisJCXJldHVybiByZXQ7CisJfQorCiAJcHdtLT5jaGlw
LmRldiA9ICZwZGV2LT5kZXY7CiAJcHdtLT5jaGlwLm9wcyA9ICZzdW40aV9wd21fb3BzOwogCXB3
bS0+Y2hpcC5iYXNlID0gLTE7CkBAIC0zNzYsMTkgKzM5NCwzMSBAQCBzdGF0aWMgaW50IHN1bjRp
X3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJldCA9IHB3bWNoaXBf
YWRkKCZwd20tPmNoaXApOwogCWlmIChyZXQgPCAwKSB7CiAJCWRldl9lcnIoJnBkZXYtPmRldiwg
ImZhaWxlZCB0byBhZGQgUFdNIGNoaXA6ICVkXG4iLCByZXQpOwotCQlyZXR1cm4gcmV0OworCQln
b3RvIGVycl9wd21fYWRkOwogCX0KIAogCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIHB3bSk7
CiAKIAlyZXR1cm4gMDsKKworZXJyX3B3bV9hZGQ6CisJcmVzZXRfY29udHJvbF9hc3NlcnQocHdt
LT5yc3QpOworCisJcmV0dXJuIHJldDsKIH0KIAogc3RhdGljIGludCBzdW40aV9wd21fcmVtb3Zl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IHN1bjRpX3B3bV9jaGlw
ICpwd20gPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKKwlpbnQgcmV0OworCisJcmV0ID0g
cHdtY2hpcF9yZW1vdmUoJnB3bS0+Y2hpcCk7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKwor
CXJlc2V0X2NvbnRyb2xfYXNzZXJ0KHB3bS0+cnN0KTsKIAotCXJldHVybiBwd21jaGlwX3JlbW92
ZSgmcHdtLT5jaGlwKTsKKwlyZXR1cm4gMDsKIH0KIAogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9k
cml2ZXIgc3VuNGlfcHdtX2RyaXZlciA9IHsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
