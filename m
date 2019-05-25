Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB502A542
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 18:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eCvS6T1XxzxzsWXrGd1FQFKP69stmTMnfx9b3WGARls=; b=FmJcikhxj9UWVj
	qp1ZuydhbztDdunLmSfDHkyT1W1F7dMCD2Oj80w/F7bsJcTDZXaVraZy3mx1xfav/kdCX3uxvWffS
	vjqke/HS3AoaOXXNKyeGtY7EErSGjEkkIufryyWNDxtDwKNr6fsfZxzcdJgGPuAsb6HaUgYK/tV0W
	Eu+a2KvcrVLP5aQLKLaiAUvO7r+YO0r5tnPjczJJDj+Q33v3ge5rMQlNbaWkbelIcHRlyduXujvtv
	uFJMVFG6S/hAWwH4rFl4CXmfJ28C37BO95zpjU2Q2A2Ls3RE8O/VpdAntl3h9T9LA9Ju5vPLjqTrZ
	eFGIroMMovsahdxLN5uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZSo-0006Jp-28; Sat, 25 May 2019 16:24:06 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZSJ-0005ta-5r
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 16:23:37 +0000
Received: by mail-wm1-x341.google.com with SMTP id t5so11926446wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 09:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nfqUAOYPvDzhcNc+tjW6jBBWsXQUQMy7ncklrPlMEZg=;
 b=aCL66DnQKCJFGF7Sny1qI110miKIWTxt7QW1iSoRit3Mo5jspnYicZoXoQfgUflTpn
 nL6BhP1dmM+LagcQyqPghQws4BzN0DNqSTXisfQSiQF26TeDElGIYaCOXH6Xy/5djSLp
 Aea8coHm1Qg3oR0BmfdgzqYXVNUie1jX/vbcAGGcwDR7J9AcFH5sDqjUJIZrOFrLuzb4
 u0bGKcTMGLWvkKx9WubIYANjkLlsgz++UOw3dQHpff9U/sp0W9OjFqUx7L54Pf6QfBZM
 9Ti/JJvL7T1GY8wbnAxFjY7+cbqxYzr+e1HZAwznhbu/sGK+bEIjL3I46nVozFwseSEk
 UaCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nfqUAOYPvDzhcNc+tjW6jBBWsXQUQMy7ncklrPlMEZg=;
 b=bpZd//Mnglli5Hl95WLXGXQrBD50roZ06w8Nv4f60gsq/LPqceDMHvEP18mUWG8eIn
 BJUptJmK1gh5tygrdGac3zKNQvbQwL0VJ78dk0cQ8JlhJxTEAor+YrILKwn31YOucSXA
 8Nr8egS/IMa5Z4CwfSqXjfA7N8Ryd7k6ojeORC1V08qQLpHFl/Y9RSZm8iw6tGjGpr40
 5rbIrRGolSp0nPmWXiYJyj3AwxBCyIgsCrBKQ46eKw16px9TpWvso3kVGm00Vm1Mc5Vy
 D6Bey6TqMGK2NC0pibkYdU5Ooz31l3FJVHO3E+SxhCW7n6/Iyl7zM1RVMeCcsL5liN/q
 aIgA==
X-Gm-Message-State: APjAAAVKfSa8q4oZI8O261PilSQxJZJQZeXWSb0vSoBMtztACQv4iF8b
 i4zAC0eS1+YigO61A6zsDZY=
X-Google-Smtp-Source: APXvYqyXeydx+UFeVN5TqubaJQaFnJKueyJjEY/3Q6lja+t2vhfPzJbWHUyyD43HepFrNIoanUPkqw==
X-Received: by 2002:a1c:35c9:: with SMTP id c192mr3998765wma.147.1558801413382; 
 Sat, 25 May 2019 09:23:33 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id k184sm13194409wmk.0.2019.05.25.09.23.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 09:23:32 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 2/7] ASoC: sun4i-spdif: Move quirks to the top
Date: Sat, 25 May 2019 18:23:18 +0200
Message-Id: <20190525162323.20216-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525162323.20216-1-peron.clem@gmail.com>
References: <20190525162323.20216-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_092335_214178_492F36AE 
X-CRM114-Status: GOOD (  14.32  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHF1aXJrcyBhcmUgYWN0dWFsbHkgZGVmaW5lcyBpbiB0aGUgbWlkZGxlIG9mIHRoZSBmaWxl
IHdpdGgKc2hvcnQgZXhwbGFuYXRpb24uCgpNb3ZlIHRoaXMgYXQgdGhlIHRvcCBhbmQgYWRkIGEg
c2VjdGlvbiB0byBoYXZlIGNvaGVyZW5jeSB3aXRoCnN1bjRpLWkycy4KClNpZ25lZC1vZmYtYnk6
IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogc291bmQvc29jL3N1
bnhpL3N1bjRpLXNwZGlmLmMgfCAxNiArKysrKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MTEgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zb3VuZC9zb2Mv
c3VueGkvc3VuNGktc3BkaWYuYyBiL3NvdW5kL3NvYy9zdW54aS9zdW40aS1zcGRpZi5jCmluZGV4
IGI0YWY0YWFiZWFkMS4uYjZjNjZhNjJlOTE1IDEwMDY0NAotLS0gYS9zb3VuZC9zb2Mvc3VueGkv
c3VuNGktc3BkaWYuYworKysgYi9zb3VuZC9zb2Mvc3VueGkvc3VuNGktc3BkaWYuYwpAQCAtMTYx
LDYgKzE2MSwxNyBAQAogI2RlZmluZSBTVU40SV9TUERJRl9TQU1GUkVRXzE3Nl80S0haCQkweGMK
ICNkZWZpbmUgU1VONElfU1BESUZfU0FNRlJFUV8xOTJLSFoJCTB4ZQogCisvKioKKyAqIHN0cnVj
dCBzdW40aV9zcGRpZl9xdWlya3MgLSBEaWZmZXJlbmNlcyBiZXR3ZWVuIFNvQyB2YXJpYW50cy4K
KyAqCisgKiBAcmVnX2RhY190eF9kYXRhOiBUWCBGSUZPIG9mZnNldCBmb3IgRE1BIGNvbmZpZy4K
KyAqIEBoYXNfcmVzZXQ6IFNvQyBuZWVkcyByZXNldCBkZWFzc2VydGVkLgorICovCitzdHJ1Y3Qg
c3VuNGlfc3BkaWZfcXVpcmtzIHsKKwl1bnNpZ25lZCBpbnQgcmVnX2RhY190eGRhdGE7CisJYm9v
bCBoYXNfcmVzZXQ7Cit9OworCiBzdHJ1Y3Qgc3VuNGlfc3BkaWZfZGV2IHsKIAlzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2OwogCXN0cnVjdCBjbGsgKnNwZGlmX2NsazsKQEAgLTQwNSwxMSAr
NDE2LDYgQEAgc3RhdGljIHN0cnVjdCBzbmRfc29jX2RhaV9kcml2ZXIgc3VuNGlfc3BkaWZfZGFp
ID0gewogCS5uYW1lID0gInNwZGlmIiwKIH07CiAKLXN0cnVjdCBzdW40aV9zcGRpZl9xdWlya3Mg
ewotCXVuc2lnbmVkIGludCByZWdfZGFjX3R4ZGF0YTsJLyogVFggRklGTyBvZmZzZXQgZm9yIERN
QSBjb25maWcgKi8KLQlib29sIGhhc19yZXNldDsKLX07Ci0KIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
c3VuNGlfc3BkaWZfcXVpcmtzIHN1bjRpX2ExMF9zcGRpZl9xdWlya3MgPSB7CiAJLnJlZ19kYWNf
dHhkYXRhCT0gU1VONElfU1BESUZfVFhGSUZPLAogfTsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
