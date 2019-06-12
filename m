Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC6143086
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 22:00:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HwypVJQgYoUZo/bJVXGuzUjzoxvFU3eTQ3bSU2C6lfM=; b=Su8EQLXae+n3z1
	jSgydwBtZMZu+GI6ReeYWxegCSQ5ZiNviwJTvcRDdZOeRzH71sWEM7p5VCR48DB8AS8pbT3TlmzEU
	nVkrJqNl3glB99AKuTmL3VTGUeRSA9seV+IjMgNLAyklyvk+I0rShGsgXHZqpJBo50NLThyZa7Io3
	z6+Ixkxb+/JQZNoSKSyxsbP5Q5khdaS7vpcGJQGqlnA5+gpeBXB6lAfvBby/xiQ5QouL5l/11z2HK
	B0kR9/t0CRCEpT2n1AOmUgknhdeFa+d+PLdm5qqSYZ30DP8uEhsXlXoWr6Th0M24wz76UNjwfTegR
	Nw36JfPWMaRI+7IAxjGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb9Pc-0005Ot-G7; Wed, 12 Jun 2019 20:00:00 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb9PB-0005Fn-1t; Wed, 12 Jun 2019 19:59:34 +0000
Received: by mail-wr1-x441.google.com with SMTP id d18so18220480wrs.5;
 Wed, 12 Jun 2019 12:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DbdAX0bV85Dko/n1L+nFmKMabI9Kh0fLOwLLV1IH53M=;
 b=i98jcwEgONXb3ZOPIzPaDduImuV0oAvjS9qfSmC5tx3AcS2Ny/sC+OFo8VMuEFDyN9
 8kO0wtjx655Rhp9mXl4zeUa2GVSWhqtq7n2yidRk4ED+WXElWp2iY11rpMjQvLzvS4rm
 VoHVs7TMtYOj7i25xCkTxoJKzPkdS8smwL7tmtAkI/LrVrplmn1MW6jkMpTmzk5PGL17
 8zn0ZraSMPZcl4EQFRuMmHyhziVAiswTUj4qoARxdWiVw8Ugj6A40BQSdzWhVHg+pF/f
 GTZaz8DuBDTGXA4qWGfQZ+Bn/+bcO3zDmCfeARHURfoOn8UAqxoydYC1adaol1wSMEW5
 snzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DbdAX0bV85Dko/n1L+nFmKMabI9Kh0fLOwLLV1IH53M=;
 b=LoVd1ocO+D7rya1+FDNTvX98PCTWIXtxxir5tMAKJ8rHLAvfBh+9a7E/sO0McqgPtx
 XiAtArWFlmKt9TtGd4pb25A0zpwF2F0RzMCydLcSwmiNlANIxV81296mTo+y1WJLA3p6
 s3QZoxTefGsc8YNkuy3ADsG0hrS47+Mh4z5SRiBce6NcTMpsyVHXG9wApxNYo1HMeinB
 SRHky+vRkUetu0ak1GTqd6irH5+4EkaC/KQphvvl6L8szq3ohvCbzimnon6YLPF+4Gad
 cfwWMC7X2gxULFaEYbfs6+fb7RE1kkFPvPXEMb7m97MnCCmpc9ga36vwTiveB1TznSxm
 +fJg==
X-Gm-Message-State: APjAAAWuPEAXDjtXjF1peEECW1Fm8p+dW6GmPJR0aczCrtKfJnZWauKd
 k7XHu9ug+Yn2w5rlzAdGC6kyaSQB
X-Google-Smtp-Source: APXvYqz8FPKyN4u6g2XV8ExWl7unahV+eyESFia516NWg/4YKZGCKK1sV/9qmYUtmXKVI4t10SWXMg==
X-Received: by 2002:adf:a38b:: with SMTP id l11mr3832905wrb.325.1560369571376; 
 Wed, 12 Jun 2019 12:59:31 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id f10sm1026745wrg.24.2019.06.12.12.59.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 12:59:30 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v3 01/14] pwm: meson: unify the parameter list of
 meson_pwm_{enable, disable}
Date: Wed, 12 Jun 2019 21:58:58 +0200
Message-Id: <20190612195911.4442-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
References: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_125933_098457_9245CF16 
X-CRM114-Status: GOOD (  12.06  )
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
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 narmstrong@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, u.kleine-koenig@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBpcyBhIHByZXBhcmF0aW9uIGZvciBhIGZ1dHVyZSBjbGVhbnVwLiBQYXNzIHN0cnVjdCBw
d21fZGV2aWNlCmluc3RlYWQgb2YgcGFzc2luZyB0aGUgaW5kaXZpZHVhbCB2YWx1ZXMgcmVxdWly
ZWQgYnkgZWFjaCBmdW5jdGlvbiBhcwp0aGVzZSBjYW4gYmUgb2J0YWluZWQgZm9yIGVhY2ggc3Ry
dWN0IHB3bV9kZXZpY2UgaW5zdGFuY2UuCgpBcyBhIG5pY2Ugc2lkZS1lZmZlY3QgdGhlIGRyaXZl
ciBub3cgdXNlcyAic3dpdGNoIChwd20tPmh3cHdtKSIKZXZlcnl3aGVyZS4gQmVmb3JlIHNvbWUg
ZnVuY3Rpb25zIHVzZWQgInN3aXRjaCAoaWQpIiB3aGlsZSBvdGhlcnMgdXNlZAoic3dpdGNoIChw
d20tPmh3cHdtKSIuCgpObyBmdW5jdGlvbmFsIGNoYW5nZXMuCgpSZXZpZXdlZC1ieTogTmVpbCBB
cm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPgpSZXZpZXdlZC1ieTogVXdlIEtsZWlu
ZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KU2lnbmVkLW9mZi1ieTog
TWFydGluIEJsdW1lbnN0aW5nbCA8bWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVtYWlsLmNvbT4K
LS0tCiBkcml2ZXJzL3B3bS9wd20tbWVzb24uYyB8IDE1ICsrKysrKystLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3B3bS9wd20tbWVzb24uYyBiL2RyaXZlcnMvcHdtL3B3bS1tZXNvbi5jCmluZGV4IDVm
ZWY3ZTkyNTI4Mi4uM2ZiYmM0MTI4Y2U4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tbWVz
b24uYworKysgYi9kcml2ZXJzL3B3bS9wd20tbWVzb24uYwpAQCAtMTgzLDE1ICsxODMsMTQgQEAg
c3RhdGljIGludCBtZXNvbl9wd21fY2FsYyhzdHJ1Y3QgbWVzb25fcHdtICptZXNvbiwKIAlyZXR1
cm4gMDsKIH0KIAotc3RhdGljIHZvaWQgbWVzb25fcHdtX2VuYWJsZShzdHJ1Y3QgbWVzb25fcHdt
ICptZXNvbiwKLQkJCSAgICAgc3RydWN0IG1lc29uX3B3bV9jaGFubmVsICpjaGFubmVsLAotCQkJ
ICAgICB1bnNpZ25lZCBpbnQgaWQpCitzdGF0aWMgdm9pZCBtZXNvbl9wd21fZW5hYmxlKHN0cnVj
dCBtZXNvbl9wd20gKm1lc29uLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtKQogeworCXN0cnVjdCBt
ZXNvbl9wd21fY2hhbm5lbCAqY2hhbm5lbCA9IHB3bV9nZXRfY2hpcF9kYXRhKHB3bSk7CiAJdTMy
IHZhbHVlLCBjbGtfc2hpZnQsIGNsa19lbmFibGUsIGVuYWJsZTsKIAl1bnNpZ25lZCBpbnQgb2Zm
c2V0OwogCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CiAKLQlzd2l0Y2ggKGlkKSB7CisJc3dpdGNoIChw
d20tPmh3cHdtKSB7CiAJY2FzZSAwOgogCQljbGtfc2hpZnQgPSBNSVNDX0FfQ0xLX0RJVl9TSElG
VDsKIAkJY2xrX2VuYWJsZSA9IE1JU0NfQV9DTEtfRU47CkBAIC0yMjgsMTIgKzIyNywxMiBAQCBz
dGF0aWMgdm9pZCBtZXNvbl9wd21fZW5hYmxlKHN0cnVjdCBtZXNvbl9wd20gKm1lc29uLAogCXNw
aW5fdW5sb2NrX2lycXJlc3RvcmUoJm1lc29uLT5sb2NrLCBmbGFncyk7CiB9CiAKLXN0YXRpYyB2
b2lkIG1lc29uX3B3bV9kaXNhYmxlKHN0cnVjdCBtZXNvbl9wd20gKm1lc29uLCB1bnNpZ25lZCBp
bnQgaWQpCitzdGF0aWMgdm9pZCBtZXNvbl9wd21fZGlzYWJsZShzdHJ1Y3QgbWVzb25fcHdtICpt
ZXNvbiwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSkKIHsKIAl1MzIgdmFsdWUsIGVuYWJsZTsKIAl1
bnNpZ25lZCBsb25nIGZsYWdzOwogCi0Jc3dpdGNoIChpZCkgeworCXN3aXRjaCAocHdtLT5od3B3
bSkgewogCWNhc2UgMDoKIAkJZW5hYmxlID0gTUlTQ19BX0VOOwogCQlicmVhazsKQEAgLTI2Niw3
ICsyNjUsNyBAQCBzdGF0aWMgaW50IG1lc29uX3B3bV9hcHBseShzdHJ1Y3QgcHdtX2NoaXAgKmNo
aXAsIHN0cnVjdCBwd21fZGV2aWNlICpwd20sCiAJCXJldHVybiAtRUlOVkFMOwogCiAJaWYgKCFz
dGF0ZS0+ZW5hYmxlZCkgewotCQltZXNvbl9wd21fZGlzYWJsZShtZXNvbiwgcHdtLT5od3B3bSk7
CisJCW1lc29uX3B3bV9kaXNhYmxlKG1lc29uLCBwd20pOwogCQljaGFubmVsLT5zdGF0ZS5lbmFi
bGVkID0gZmFsc2U7CiAKIAkJcmV0dXJuIDA7CkBAIC0yOTMsNyArMjkyLDcgQEAgc3RhdGljIGlu
dCBtZXNvbl9wd21fYXBwbHkoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2Rldmlj
ZSAqcHdtLAogCX0KIAogCWlmIChzdGF0ZS0+ZW5hYmxlZCAmJiAhY2hhbm5lbC0+c3RhdGUuZW5h
YmxlZCkgewotCQltZXNvbl9wd21fZW5hYmxlKG1lc29uLCBjaGFubmVsLCBwd20tPmh3cHdtKTsK
KwkJbWVzb25fcHdtX2VuYWJsZShtZXNvbiwgcHdtKTsKIAkJY2hhbm5lbC0+c3RhdGUuZW5hYmxl
ZCA9IHRydWU7CiAJfQogCi0tIAoyLjIyLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
