Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1D976481
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:30:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+DBlnxFjOeQYcZxjdNA8r7FU3IfZ1Z7CrvdsTi8DFas=; b=Nkt8JqgsbK+rM0
	Y5UbWtx0G9g6hmUCaTGYH6mKxfvfdqF0kyXiQjE0N6WCWX8//3Mw4EYZEqTc0IyIeVl85vIAzxt4j
	wieVH2ixsE4l+LAlhZ48Nl/DvlnfozYddtZBcsFYqk4NYj0lTIaEwQjoAe2iC1CepF3zHNj5IO9UO
	RSkLtcc56HOGNmlBZQ9YhdtpOx4hn7s1mJRb5qIcWac5aJ0uKWvRKcrtuUqrHH9zhtwsY31yeYXnA
	G7xztHpWsCdMvqODiLX8ygzBX4TkpsnxcOHMHc4XfLvmII8iF0WmLI3Y1tFT+9hlLAzeUJMI9TZf7
	UW97lTgWSQEPSbcoLM8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyQJ-0003Ru-Qj; Fri, 26 Jul 2019 11:30:07 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyOO-0002Df-Gq
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:28:10 +0000
Received: by mail-lf1-x144.google.com with SMTP id b17so36865973lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 04:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RBXqC7DkQwKqkOuJceKqqWGtbn5TCwbm7RbUyvhZTFE=;
 b=S+2C7W+37ohe6bGgtuXYTdXJGM8T5ohSQlHPAzmsrvk398LEdPoWhPV/m/nzghQI5v
 W/ynOWka+ROdXjq3wZx0SU5bXSkI8xsvR7m9JeSogoFZ9okwuGEnqPEjlGjROjHjGIva
 mB1VipwLDzpthrV0Oe/nYMqcKcnKgfaK0ocaFXs9wuRQrGEiGE8p5MAwmLKboL370EQ/
 7HsqDSPXh0uLWTzNzKXAhZdPAy50RxUyeN8iSN7WJUVHNXAAbGEFRYbwtye13r4H0RN6
 d1O6oWzPXvPJVyEhSHBHvBtoWervTtRey3wpMXYA9PJrRYUAwaiQ/LmzqdeBN4YwXTPw
 dL3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RBXqC7DkQwKqkOuJceKqqWGtbn5TCwbm7RbUyvhZTFE=;
 b=VUzThQDIsc+00yEm2DfbYMOr4ErE3HHCIdebjHTJLjt+DdGp9wPcjRzdN/xyYJ69NV
 1IRNa0yvT+pQv2lJbYMQ20wUICSCBZpuFeBg6amdRG7dSm8O/y3ypf5UIBZfSx+CsVI1
 pKDTFF62zA9RG5mwurMIGseZuYVRaZsMexOnOaAnGW5ZHB6n9k8+B8PALF6+uTM/38jq
 iGZaGTzVf5KkTdSH0esbHODGXRyPJS0kLNfAM4o2Wn3/xoKkxXrKZgprf4gIa/ohIEYo
 B064bzMXrJOgsK94uyrNsnrmHDEWDd7DNSTfAfVw9L1hHOHzIsrwDmIdHHnDzkjny8HX
 uKDw==
X-Gm-Message-State: APjAAAXnJNkhEUki6ZbIiMNLZji85PPxsSEHhxPYVO9GEgVBAmVd9MB8
 m822E6ZlOLKG0XpOFZMj0vL1rQ==
X-Google-Smtp-Source: APXvYqylnBrvToUHEFBagkx2prc/Tv4T9RQ3PARODD6GUeEx7QMqJ1gF8b+lZNvDISocpsu3GK6MPA==
X-Received: by 2002:ac2:48a5:: with SMTP id u5mr45521185lfg.62.1564140487096; 
 Fri, 26 Jul 2019 04:28:07 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id z25sm8306560lfi.51.2019.07.26.04.28.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 04:28:06 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: airlied@linux.ie,
	daniel@ffwll.ch,
	wens@csie.org
Subject: [PATCH 1/2] drm: sun4i: sun6i_mipi_dsi: Mark expected switch
 fall-through
Date: Fri, 26 Jul 2019 13:28:02 +0200
Message-Id: <20190726112802.19563-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_042808_997492_F43A67D6 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anders Roxell <anders.roxell@linaro.org>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiBmYWxsLXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCB0aGUgZm9s
bG93aW5nIHdhcm5pbmcKd2FzIHN0YXJ0aW5nIHRvIHNob3cgdXA6CgouLi9kcml2ZXJzL2dwdS9k
cm0vc3VuNGkvc3VuNmlfbWlwaV9kc2kuYzogSW4gZnVuY3Rpb24K4oCYc3VuNmlfZHNpX3RyYW5z
ZmVy4oCZOi4uL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW42aV9taXBpX2RzaS5jOjk5Mjo2OiB3
YXJuaW5nOgogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxs
dGhyb3VnaD1dCiAgIGlmIChtc2ctPnJ4X2xlbiA9PSAxKSB7CiAgICAgIF4KLi4vZHJpdmVycy9n
cHUvZHJtL3N1bjRpL3N1bjZpX21pcGlfZHNpLmM6OTk3OjI6IG5vdGU6IGhlcmUKICBkZWZhdWx0
OgogIF5+fn5+fn4KClJld29yayBzbyB0aGF0IHRoZSBjb21waWxlciBkb2Vzbid0IHdhcm4gYWJv
dXQgZmFsbC10aHJvdWdoLiBDaGFuZ2UKdGhlIGlmLXN0YXRlbWVudCBzbyB0aGF0IHdlIGNhbiBt
b3ZlIG91dCAnYnJlYWs7JyBvbmUgbGV2ZWwuCgpGaXhlczogZDkzNTEyZWYwZjBlICgiTWFrZWZp
bGU6IEdsb2JhbGx5IGVuYWJsZSBmYWxsLXRocm91Z2ggd2FybmluZyIpClNpZ25lZC1vZmYtYnk6
IEFuZGVycyBSb3hlbGwgPGFuZGVycy5yb3hlbGxAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vc3VuNGkvc3VuNmlfbWlwaV9kc2kuYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9zdW40aS9zdW42aV9taXBpX2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjZpX21p
cGlfZHNpLmMKaW5kZXggNDcyZjczOTg1ZGViLi40MGVkMjFlNTI3ZjkgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9zdW40aS9zdW42aV9taXBpX2RzaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9zdW40aS9zdW42aV9taXBpX2RzaS5jCkBAIC05OTIsOCArOTkyLDEwIEBAIHN0YXRpYyBzc2l6
ZV90IHN1bjZpX2RzaV90cmFuc2ZlcihzdHJ1Y3QgbWlwaV9kc2lfaG9zdCAqaG9zdCwKIAljYXNl
IE1JUElfRFNJX0RDU19SRUFEOgogCQlpZiAobXNnLT5yeF9sZW4gPT0gMSkgewogCQkJcmV0ID0g
c3VuNmlfZHNpX2Rjc19yZWFkKGRzaSwgbXNnKTsKLQkJCWJyZWFrOworCQl9IGVsc2UgeworCQkJ
cmV0ID0gLUVJTlZBTDsKIAkJfQorCQlicmVhazsKIAogCWRlZmF1bHQ6CiAJCXJldCA9IC1FSU5W
QUw7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
