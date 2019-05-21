Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B2E254CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51k99WHXfDa6ybDEo6Q1Y3XmZSvq2rNPDoYObY5qxKo=; b=hNgfsVNBB+kEBX
	Ize3zoNsBevriBDx6uiOJPdrIS7SgI4XF9ay8wWPep18OwVI67jGIiWu3ZNoBGtMi1WOUwS3Vq0m0
	AJuPSsgmNGXNa0Cn/4ZjmB5Fpd3TOZv5wc99mz2t8ik8SXCL4AqtRLNbRZWxb9Fa1A4Hz+1j4YYgu
	8psiw4olj1l/2kPL9GSSa48vI5SuNgx1/regZJ/erl4+IbWglG6RHEI1g8DL4NXl9dea1TQ/1Ah+x
	w4MU5jKjT4hPrPDCJTOJZ25tfbkdjwD2QKaebhbGl92y3tmx37vst7kKsjowb1vte81I+iAcDVRbR
	ZgmUTctxdIRZ0WenrcwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7Fg-0001QQ-E6; Tue, 21 May 2019 16:04:32 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7Eu-0000Z9-59
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:03:46 +0000
Received: by mail-wm1-x341.google.com with SMTP id q15so3472950wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 09:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cXUpOzTXRkpXF5rHOHPBRJ/bn1tvIHFvWTlLeYQuAWI=;
 b=F2MQg2yI+JdMgmQAbMUQyS6rfaoDCM9OvmTaAz4A21RNul+JS/Pq5eV0KCHkNz22x0
 s1GHlAgY4qLHU/ErzOsGOSApC7CJdVebXqJoc0L5YxqZYOCAU0oLAli05bhnlot/NP33
 7gf8oKiQ5HxAarStxDMp46aMeibzxwgXqQ3QXEzvNNzOQFCv0Ly41gNO27Sn8nw3ZiR7
 qOCNg40+wgiSRb8lQTsEUBI6ieMIEj0r8ibTH+I4xnJ0GZLtoGr1zaetdFK8fuI+Ulso
 nN2pEf7TbguOEJeMEF1/HXbP7nLRpNVMKCcTOhDt+ECFvslyv/dE8MpX+s9Nj9s5HBBk
 aQEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cXUpOzTXRkpXF5rHOHPBRJ/bn1tvIHFvWTlLeYQuAWI=;
 b=r46HTcsxTEIF2KFqVvcwMsA1tZp+izUhdwOmv6sQCcCqnRfzOBjSpmsnbc7FZgx0Q4
 lkoXI5c5yBWjNi4qLKLfN0FlTgQcJEGrB06ygVNc+ifGJolV1FuRD1+/sdnILB1PkPcB
 X2aPCxFICKfdelWySfO5pOza75D2Kfme2kevYElGVdmM4oKNPSBky+2rOWNKVYy7lijN
 4r+oFiu9C6kn6tn9skU0dXSzklLS3dR0jsP2yrkpcDUlXmrq+IIYxOtooonxySzo12sm
 FM9c34U0KB4Y9OvZAveY3D5ObraSA66zvPQ+ZY5/VEMvhXnolZJKcux9Nsk7ASb4VNIS
 2v1w==
X-Gm-Message-State: APjAAAXJlqNzzxGq92o5ne2tZd0uR95gjBKYe6D2u+P6rXDkWnTV1G6M
 eFMfKF4inp/av0PmbOToxbw=
X-Google-Smtp-Source: APXvYqy4CuLUUMUkQHqzH/rtwoT1Ng0BDlq8tNehJfpoMqikNeIiPCAC4aW/BnOT95vGQKRxH+LKDA==
X-Received: by 2002:a1c:9616:: with SMTP id y22mr3963336wmd.73.1558454622519; 
 Tue, 21 May 2019 09:03:42 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id g11sm6853811wrq.89.2019.05.21.09.03.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:03:41 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 4/5] arm64: dts: allwinner: h6: add r_watchog node
Date: Tue, 21 May 2019 18:03:29 +0200
Message-Id: <20190521160330.28402-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190521160330.28402-1-peron.clem@gmail.com>
References: <20190521160330.28402-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_090344_369681_8B2C4A49 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IGhhcyBhIHJfd2F0Y2hkb2cgc2ltaWxhciB0byBBNjQuCgpEZWNsYXJlIGl0
IGluIHRoZSBkZXZpY2UtdHJlZS4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVy
b24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LmR0c2kgfCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCmluZGV4IDEz
ZTcwYWViZGRiZS4uNjY4OTc4ODBjNzIyIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktaDYuZHRzaQpAQCAtNjMxLDYgKzYzMSwxMyBAQAogCQkJI3Jlc2V0LWNlbGxz
ID0gPDE+OwogCQl9OwogCisJCXJfd2F0Y2hkb2c6IHdhdGNoZG9nQDcwMjA0MDAgeworCQkJY29t
cGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXItd2R0IiwKKwkJCQkgICAgICJhbGx3aW5u
ZXIsc3VuNmktYTMxLXdkdCI7CisJCQlyZWcgPSA8MHgwNzAyMDQwMCAweDIwPjsKKwkJCWludGVy
cnVwdHMgPSA8R0lDX1NQSSAxMDMgSVJRX1RZUEVfTEVWRUxfSElHSD47CisJCX07CisKIAkJcl9p
bnRjOiBpbnRlcnJ1cHQtY29udHJvbGxlckA3MDIxMDAwIHsKIAkJCWNvbXBhdGlibGUgPSAiYWxs
d2lubmVyLHN1bjUwaS1oNi1yLWludGMiLAogCQkJCSAgICAgImFsbHdpbm5lcixzdW42aS1hMzEt
ci1pbnRjIjsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
