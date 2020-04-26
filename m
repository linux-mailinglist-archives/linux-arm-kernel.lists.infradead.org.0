Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC251B8FB5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 14:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCus8A8k/ZsTjzE6DK8IW10jcr0Dln8cqRcneJhtjYw=; b=q90LqU/dtopGen
	DentrWwIbqFW4cg3p2IhgCa9tzb6Crx0aBRvZLgfpNwWHP773qZVEzBdvXUJWX2xflP+HYnRRmS+T
	z3/iIKAS3UPKiBhaVArutiJpio2SRYJIoqCengio+mNEVXUwwmjWkbtlFFDcbEfIyAE5iLcCrlGYf
	4jdrWa6D9LNOlnWLMKHrcGdEecKrB1lTAeyYzICYzAUSAirNxjr6ORPiIRzNfCphXHOgWI4xMQfda
	3lJgD+HbtcNiakXrIK6ao3H2TcJ64J3GMnm6/r0/fcuOdU88S5ZUYLGecSlxOS5+7KguwS9n4K7a+
	LbJls08brZ94WC05AM/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSg3Q-0005Z8-Th; Sun, 26 Apr 2020 12:06:36 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSg1l-0001vb-IH
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 12:04:54 +0000
Received: by mail-wm1-x344.google.com with SMTP id x4so16373448wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 05:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6FIu0CKz6K8bw/qZHzUU/qulO7p9niPo12Ocs6dso3A=;
 b=nIyo/Bmb96CC41r6Cn6/hrDqIswZRgvihoA+YRaXmQpSvcBkYcnyPwLW2/6T5WF8io
 cXrL4Rm4RhQh3end54PK+wBCPqD5dSt3wcuYZy66eNomHHqXU+j4bTqcRRyJZsjAxy2Y
 9ooxBEr9GdYVuHV5/MFH/p5LnjRA8cb5ujnTdYt+JfpxuwX+qo1YxKZoxOD3aWnAzGnL
 yyRD4lmWbx2EL+XvU+IhUtRQve3Rlwc52e6PE23EGibGfmAd9IJdEcW/7KAldSYOE3zE
 FPxYcXB6fwitkkAFGF2T1ltqCuMQrqN6fUeFmF9UKzFnxEbN2gp4YF3PtoYNjOMOJ0d3
 DqqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6FIu0CKz6K8bw/qZHzUU/qulO7p9niPo12Ocs6dso3A=;
 b=ZeNJunsk+dCooT18fiQ31yF0glhBlHYlLy8vTcqjCWc79fb+Eftk3bDSXXYAlfIJsi
 ebmzYnKVjcHF64s4keaf4RdWR7Vj2ZPLw8+QurRwYq8odQihehhSbyTQUSuwK2IWtgAD
 VwFuDBKFZLWRAKLG8kDYuksS79c8RYUJsHwmu17tFHZKYnykikArtxEItJwvHS+KQvZ6
 FOMSuPzNHcaw7zoQEqXCEtOLJTNLRMrBQsvP+t2kgEEE8WiOx4bwdkGGDsveo9eDRPg3
 8wDFfS2EBqxBiQ//8+xtEFnJSoBQLZ+JsbxSuuvzJY3pGBIpoG5FnHZa6lqAG/278lom
 CMTA==
X-Gm-Message-State: AGi0PuYRZ6TuAf6Q5bmkuFrtVjmvIpaa2FA/UYEBcvwC1cXCWXamuJEB
 LVHc7b9ZGpk2M64fJuIiov8=
X-Google-Smtp-Source: APiQypKbb8aW5E+I7IyMgkie3hkD0SZYHTn0fzk6KclUGwkr2OlHTf3t7+jC+BpE8W2ywJWC9lgZ7w==
X-Received: by 2002:a1c:6a0b:: with SMTP id f11mr20743750wmc.123.1587902692186; 
 Sun, 26 Apr 2020 05:04:52 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 s24sm11120026wmj.28.2020.04.26.05.04.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 05:04:51 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 5/7] arm: sun8i: h3: Add HDMI audio to Orange Pi 2
Date: Sun, 26 Apr 2020 14:04:40 +0200
Message-Id: <20200426120442.11560-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426120442.11560-1-peron.clem@gmail.com>
References: <20200426120442.11560-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_050453_643300_F4A88AA5 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Marcus Cooper <codekipper@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+CgpFbmFibGUgSERNSSBh
dWRpbyBvbiB0aGUgT3JhbmdlIFBpIDIuCgpTaWduZWQtb2ZmLWJ5OiBNYXJjdXMgQ29vcGVyIDxj
b2Rla2lwcGVyQGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJv
bi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9zdW44aS1oMy1vcmFuZ2Vw
aS0yLmR0cyB8IDggKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdW44aS1oMy1vcmFuZ2VwaS0yLmR0cyBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWgzLW9yYW5nZXBpLTIuZHRzCmluZGV4IDU5N2M0MjVkMDhl
Yy4uNjRlOGUyODI5ZjI3IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdW44aS1oMy1v
cmFuZ2VwaS0yLmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9zdW44aS1oMy1vcmFuZ2VwaS0y
LmR0cwpAQCAtMTQ0LDYgKzE0NCwxNCBAQAogCX07CiB9OwogCismaGRtaV9zb3VuZCB7CisJc3Rh
dHVzID0gIm9rYXkiOworfTsKKworJmkyczIgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKICZp
ciB7CiAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlwaW5jdHJsLTAgPSA8JnJfaXJfcnhf
cGluPjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
