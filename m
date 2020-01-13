Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56576138DA9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:23:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AoDPB9lanJsjUSct8iRqWResXpmaJQD6SVa2Q/LG408=; b=RyL3BNAmZW44yA
	/Uhz2+hVBJnB2j7nfe2T6O9Pb8k77srcZn3HyMkZ9FfkfzMqDc7Alm4muvdwtJv/SIRqCP0fNW4rJ
	jA5O/CWENOglji6C9LePZmiMAM0FY186oZI0xEWOmGNVdStoPjweILg3heYlG2FKarsO7JZsdpQh2
	0yZAWujFE90TBUVlJo6mxKggeqzwMtqL9jaiiZCEtFC6cDOl99KEUMncnPAnqI5ZX08wC4YEbWvMz
	N5WuRGWtC5GFFZ8F5BGUi8X6+iAkZwMK+LVSLughNy1jH26pj8tU7ulBLQdi2I7xh97Y+PxsO4t6U
	YWIcKQazXrK47SfvMaOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvwg-00068D-0L; Mon, 13 Jan 2020 09:23:38 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvwT-00064w-BE
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 09:23:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id z3so7739172wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 01:23:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CSFpFoFsjn6jAy+TG53ImMMGFOcZFIAFPo+oRWA0h9k=;
 b=Y5wOa+B0jyEoz6U1WZodUBGbXQqMQa2YqaIfzm972UifoEOJggbkfkCjtd7AQDiFNB
 6K6dxLDAMzQXqhWnmwer7Y9EfOd2GFINKgaeQcYRCeJnOoh1IGIK20BsQOLRfXLUgGhn
 UaEj2ebcEU2wRuLKz/Ko6sPp/qK91G/voTiGWMUwN5oVOXC8gH6362WpUJPk7Z+LzjyH
 JbrvUaP8cBziF85X+TKhL/xKeQdnSSI8Vz+k+6x4HlY+939Z/NIHe0W+Dvda6IVEz2Zq
 sROWCixh5yCFPtYjUtK+vJuZVEOrijOWdEQd1YDls2WZ3WF4uTdtkuaqUMXgas9VMvtg
 3Xmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CSFpFoFsjn6jAy+TG53ImMMGFOcZFIAFPo+oRWA0h9k=;
 b=Uv6olFCLE7S16gCA8fvm6aXLuNA5nGvO50zmyUjCKnFMUUxEPFnvL223kZQGVVraqZ
 UhUoZQmrnfzGjDl+kOF8j/wIbucciM5v0pacoiMskuItw6nPjkXAckQT9jAsDwNsILER
 BTe48ByiIvyAXKDIBGyNmelvgzi4snOddf5U5bSxS6xLT1qLhD8v9Sa+4wF8YlK9AoDs
 neKZp6s7ZqTV6gQrzXJlVQ5Wg3kRbYZyjOTHqw9ED01VZgvXfW7+hLSi+jWSeNKmxEQd
 i8lcbo12lVExrrZu9wPGe5yelHbKWM4L/h7nk7nt2n8VIqix1H5oSdv6pf9buRIVla9S
 64dA==
X-Gm-Message-State: APjAAAV/kJJwIgtSsY3i0CHUoBTaOLPJO+lMkm38eYpfMVTjwdnpCL3C
 zjHihRBpYnebVqImDSZUHYaX4nk/wXI=
X-Google-Smtp-Source: APXvYqxRn+sRQafI02NF+bw/rFd9vEpLEBqvNZGoqkfz9ox3Xda2xz1Xoy4JcXW25lad3I8fAUWxhQ==
X-Received: by 2002:adf:fd84:: with SMTP id d4mr17281818wrr.211.1578907403581; 
 Mon, 13 Jan 2020 01:23:23 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id p26sm13164466wmc.24.2020.01.13.01.23.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 01:23:23 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH v2] pwm: sun4i: Move pwm_calculate() out of spin_lock()
Date: Mon, 13 Jan 2020 10:23:13 +0100
Message-Id: <20200113092313.30382-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_012325_389838_18E451F5 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 Alexander Finger <alex.mobigo@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cHdtX2NhbGN1bGF0ZSgpIGNhbGxzIGNsa19nZXRfcmF0ZSgpIHdoaWxlIGhvbGRpbmcgYSBzcGlu
X2xvY2soKS4KClRoaXMgY3JlYXRlIGFuIGlzc3VlIGFzIGNsa19nZXRfcmF0ZSgpIG1heSBzbGVl
cC4KCk1vdmUgcHdtX2NhbGN1bGF0ZSgpIG91dCBvZiB0aGlzIHNwaW5fbG9jaygpLgoKRml4ZXM6
IGMzMmM1YzUwZDRmZSAoInB3bTogc3VuNGk6IFN3aXRjaCB0byBhdG9taWMgUFdNIikKUmVwb3J0
ZWQtYnk6IEFsZXhhbmRlciBGaW5nZXIgPGFsZXgubW9iaWdvQGdtYWlsLmNvbT4KU3VnZXN0ZWQt
Ynk6IFZhc2lseSBLaG9ydXpoaWNrIDxhbmFyc291bEBnbWFpbC5jb20+ClRlc3RlZC1ieTogQWxl
eGFuZGVyIEZpbmdlciA8YWxleC5tb2JpZ29AZ21haWwuY29tPgpSZXZpZXdlZC1ieTogVXdlIEts
ZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KU2lnbmVkLW9mZi1i
eTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCgpDaGFuZ2VzIHNp
bmNlIHYxOgogLSBGaXggQWxleGFuZGVyIGluIFJlcG9ydGVkLWJ5IHRhZwogLSBBZGQgVXdlIHJl
dmlld2VkIHRhZyBhbmQgQWxleCBUZXN0ZWQtYnkgdGFnIAoKIGRyaXZlcnMvcHdtL3B3bS1zdW40
aS5jIHwgNyArKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jIGIvZHJpdmVycy9w
d20vcHdtLXN1bjRpLmMKaW5kZXggMWFmZDQxZWJkM2ZkLi42YjIzMDAyOWRjNDkgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5j
CkBAIC0yNDgsMTkgKzI0OCwxOCBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9hcHBseShzdHJ1Y3Qg
cHdtX2NoaXAgKmNoaXAsIHN0cnVjdCBwd21fZGV2aWNlICpwd20sCiAJCX0KIAl9CiAKLQlzcGlu
X2xvY2soJnN1bjRpX3B3bS0+Y3RybF9sb2NrKTsKLQljdHJsID0gc3VuNGlfcHdtX3JlYWRsKHN1
bjRpX3B3bSwgUFdNX0NUUkxfUkVHKTsKLQogCXJldCA9IHN1bjRpX3B3bV9jYWxjdWxhdGUoc3Vu
NGlfcHdtLCBzdGF0ZSwgJmR1dHksICZwZXJpb2QsICZwcmVzY2FsZXIsCiAJCQkJICAmYnlwYXNz
KTsKIAlpZiAocmV0KSB7CiAJCWRldl9lcnIoY2hpcC0+ZGV2LCAicGVyaW9kIGV4Y2VlZHMgdGhl
IG1heGltdW0gdmFsdWVcbiIpOwotCQlzcGluX3VubG9jaygmc3VuNGlfcHdtLT5jdHJsX2xvY2sp
OwogCQlpZiAoIWNzdGF0ZS5lbmFibGVkKQogCQkJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHN1bjRp
X3B3bS0+Y2xrKTsKIAkJcmV0dXJuIHJldDsKIAl9CiAKKwlzcGluX2xvY2soJnN1bjRpX3B3bS0+
Y3RybF9sb2NrKTsKKwljdHJsID0gc3VuNGlfcHdtX3JlYWRsKHN1bjRpX3B3bSwgUFdNX0NUUkxf
UkVHKTsKKwogCWlmIChzdW40aV9wd20tPmRhdGEtPmhhc19kaXJlY3RfbW9kX2Nsa19vdXRwdXQp
IHsKIAkJaWYgKGJ5cGFzcykgewogCQkJY3RybCB8PSBCSVRfQ0goUFdNX0JZUEFTUywgcHdtLT5o
d3B3bSk7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
