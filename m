Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD905EFE2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:16:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=he0S18g8G0u8DEZCj7rfXcTwJkPnxUDznRvdP0GqgU8=; b=c3AAwqDI8M/bPp
	jJf3BDRPYGC1eVTtoDHSjR7tfmi0hhkv9DxaC5CKm28Beeoq6Zd4Muft5OGttzFz9rHiGsVJCEsQ7
	n8R+MWqEDe2DIzPajQGvmpLnooIl22RzRj1Lp/lhhPgm7oRYAPI07fu8DHuP4nzhRS6l+a+aJnCPc
	d989zn7wYoUd464JUUAbusS44yj6bB9s7pmXDM+Maui/xP9nFTeucZ7onjetOJJ65Y+fP/9NB0SHH
	hd7MqaLvyEgJxrKrAgESsYOvbTpSM+DZrOaAszdz/2k1PthJF1zznwj3VSwCKTW0rA07zAUTnuMh4
	s/SD7HgWvlAgUB9FHnSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRygj-00038c-Nj; Tue, 05 Nov 2019 13:16:01 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyfo-0001S3-Rq
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:15:06 +0000
Received: by mail-wm1-x344.google.com with SMTP id x4so9709200wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 05:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rylm49vbwAP0jTLqPJTMvxfUjjjnX0b1bndG2Prv3MM=;
 b=czvQULzeZnU/hHelxIDEbrHjoHdaiPYQD8gnbGsKhOEh19ZBw8jd8B0nls9dBjk0SH
 Tb6wvy6h9Nkzy5j/9X8SLNn166nTOTPmABsrBk0ocCLCrF+510qtKrT++c2NbY4RRtLo
 mNH5VaXaXyU5Yjdic9cvMEqDR4x8pUvL92nVY9+oGXcDYx9Du1LePiojZOnup3C5/LpZ
 s7yf7fp4OG0BqmTFjkJZ6UOrhb0LQ8W4KZ3GIiZQ5SWe8pHvaTP8aZh4ren+mwRLy2lb
 lRLVpRh92D7yC1H8DLTUShi6GLwke4L37aSDDeMQrxLwvdFhgXuefoaU/+5sYoP2znqG
 G05w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rylm49vbwAP0jTLqPJTMvxfUjjjnX0b1bndG2Prv3MM=;
 b=LHrqFOe/BQg6v0YtFbG9dOvDTYOlHPex8FfmFaXE/Ei/H1TnVenjVFwa304qe8eOXd
 9fGh6FyMNSsQ/kj456LHZj32VcUnZ68/VgD3YeXW8ahC8kc7d8TaHrshKyNwHQ0+D7Q8
 3duRJZFX5PDP4kjWpPjwArQjWc01hcgNFlstz0IdFTYGg00+pl5ArzUjYkNI6V8TyBD+
 hLObwB/FCylktzpA41v8zlenTKEUQrXDuMVhtaTsUFa5pRzhRVqpNpZ6Do/Z1EKbj5e0
 g+st5wy0Wo57oMLxJAGSmg4ypJn7ug0QM7/Ofpwh+0AOlKQ8eRWNIy/C65u7nhiHSsRG
 MwQA==
X-Gm-Message-State: APjAAAXINbiCaJRUP2gyajqatOAwUR0ijgd/jJbHJ+GNtooZvkp976kS
 7eVx5kKqePSi5qmmMd2hc9w=
X-Google-Smtp-Source: APXvYqznbNCR4gLMX1epuZh7z03kgXnDOQWlHW6f0JH8v91E8iiEzK9mKwb3zm4PfWZeD9g5ak73aw==
X-Received: by 2002:a1c:2706:: with SMTP id n6mr4432965wmn.154.1572959703335; 
 Tue, 05 Nov 2019 05:15:03 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id a6sm13549920wmj.1.2019.11.05.05.15.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 05:15:02 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?=27Uwe=20Kleine-K=C3=B6nig=27?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v3 3/7] pwm: sun4i: Add an optional probe for bus clock
Date: Tue,  5 Nov 2019 14:14:52 +0100
Message-Id: <20191105131456.32400-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105131456.32400-1-peron.clem@gmail.com>
References: <20191105131456.32400-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_051504_920410_17AD9939 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGNv
cmUgbmVlZHMgYnVzIGNsb2NrIHRvIGJlIGVuYWJsZWQgaW4gb3JkZXIgdG8gd29yay4KCkFkZCBh
biBvcHRpb25hbCBwcm9iZSBmb3IgaXQgYW5kIGEgZmFsbGJhY2sgZm9yIHByZXZpb3VzCmJpbmRp
bmdzIHdpdGhvdXQgbmFtZSBvbiBtb2R1bGUgY2xvY2suCgpTaWduZWQtb2ZmLWJ5OiBKZXJuZWog
U2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50
IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9wd20vcHdtLXN1bjRp
LmMgfCA0NSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQogMSBmaWxl
IGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwppbmRleCA5
YmE4Mzc2OWE0NzguLjU0ZTE5ZmE1NmE0ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLXN1
bjRpLmMKKysrIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKQEAgLTc4LDYgKzc4LDcgQEAgc3Ry
dWN0IHN1bjRpX3B3bV9kYXRhIHsKIAogc3RydWN0IHN1bjRpX3B3bV9jaGlwIHsKIAlzdHJ1Y3Qg
cHdtX2NoaXAgY2hpcDsKKwlzdHJ1Y3QgY2xrICpidXNfY2xrOwogCXN0cnVjdCBjbGsgKmNsazsK
IAlzdHJ1Y3QgcmVzZXRfY29udHJvbCAqcnN0OwogCXZvaWQgX19pb21lbSAqYmFzZTsKQEAgLTM2
Myw5ICszNjQsMzUgQEAgc3RhdGljIGludCBzdW40aV9wd21fcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKIAlpZiAoSVNfRVJSKHB3bS0+YmFzZSkpCiAJCXJldHVybiBQVFJfRVJS
KHB3bS0+YmFzZSk7CiAKLQlwd20tPmNsayA9IGRldm1fY2xrX2dldCgmcGRldi0+ZGV2LCBOVUxM
KTsKLQlpZiAoSVNfRVJSKHB3bS0+Y2xrKSkKKwkvKiBHZXQgYWxsIGNsb2NrcyBhbmQgcmVzZXQg
bGluZSAqLworCXB3bS0+Y2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYsICJt
b2QiKTsKKwlpZiAoSVNfRVJSKHB3bS0+Y2xrKSkgeworCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJn
ZXQgY2xvY2sgZmFpbGVkICVsZFxuIiwKKwkJCVBUUl9FUlIocHdtLT5jbGspKTsKIAkJcmV0dXJu
IFBUUl9FUlIocHdtLT5jbGspOworCX0KKworCS8qCisJICogRmFsbGJhY2sgZm9yIG9sZCBkdGJz
IHdpdGggYSBzaW5nbGUgY2xvY2sgYW5kIG5vIG5hbWUuCisJICogSWYgYSBwYXJlbnQgaGFzIGEg
Y2xvY2stbmFtZSBjYWxsZWQgIm1vZCIgd2hlcmVhcyB0aGUKKwkgKiBjdXJyZW50IG5vZGUgaXMg
dW5uYW1lZCB0aGUgY2xvY2sgcmVmZXJlbmNlIHdpbGwgYmUKKwkgKiBpbmNvcnJlY3RseSBvYnRh
aW5lZCBhbmQgd2lsbCBub3QgZ28gaW50byB0aGlzIGZhbGxiYWNrLgorCSAqLworCWlmICghcHdt
LT5jbGspIHsKKwkJcHdtLT5jbGsgPSBkZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwgTlVMTCk7CisJ
CWlmIChJU19FUlIocHdtLT5jbGspKSB7CisJCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJnZXQgY2xv
Y2sgZmFpbGVkICVsZFxuIiwKKwkJCQlQVFJfRVJSKHB3bS0+Y2xrKSk7CisJCQlyZXR1cm4gUFRS
X0VSUihwd20tPmNsayk7CisJCX0KKwl9CisKKwlwd20tPmJ1c19jbGsgPSBkZXZtX2Nsa19nZXRf
b3B0aW9uYWwoJnBkZXYtPmRldiwgImJ1cyIpOworCWlmIChJU19FUlIocHdtLT5idXNfY2xrKSkg
eworCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJnZXQgYnVzX2Nsb2NrIGZhaWxlZCAlbGRcbiIsCisJ
CQlQVFJfRVJSKHB3bS0+YnVzX2NsaykpOworCQlyZXR1cm4gUFRSX0VSUihwd20tPmJ1c19jbGsp
OworCX0KIAogCXB3bS0+cnN0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldF9vcHRpb25hbF9zaGFy
ZWQoJnBkZXYtPmRldiwgTlVMTCk7CiAJaWYgKElTX0VSUihwd20tPnJzdCkpIHsKQEAgLTM4Miw2
ICs0MDksMTcgQEAgc3RhdGljIGludCBzdW40aV9wd21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKIAkJcmV0dXJuIHJldDsKIAl9CiAKKwkvKgorCSAqIFdlJ3JlIGtlZXBpbmcg
dGhlIGJ1cyBjbG9jayBvbiBmb3IgdGhlIHNha2Ugb2Ygc2ltcGxpY2l0eS4KKwkgKiBBY3R1YWxs
eSBpdCBvbmx5IG5lZWRzIHRvIGJlIG9uIGZvciBoYXJkd2FyZSByZWdpc3RlcgorCSAqIGFjY2Vz
c2VzLgorCSAqLworCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShwd20tPmJ1c19jbGspOworCWlm
IChyZXQpIHsKKwkJZGV2X2VycigmcGRldi0+ZGV2LCAiQ2Fubm90IHByZXBhcmUgYW5kIGVuYWJs
ZSBidXNfY2xrXG4iKTsKKwkJZ290byBlcnJfYnVzOworCX0KKwogCXB3bS0+Y2hpcC5kZXYgPSAm
cGRldi0+ZGV2OwogCXB3bS0+Y2hpcC5vcHMgPSAmc3VuNGlfcHdtX29wczsKIAlwd20tPmNoaXAu
YmFzZSA9IC0xOwpAQCAtNDAyLDYgKzQ0MCw4IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIDA7CiAKIGVycl9wd21fYWRk
OgorCWNsa19kaXNhYmxlX3VucHJlcGFyZShwd20tPmJ1c19jbGspOworZXJyX2J1czoKIAlyZXNl
dF9jb250cm9sX2Fzc2VydChwd20tPnJzdCk7CiAKIAlyZXR1cm4gcmV0OwpAQCAtNDE2LDYgKzQ1
Niw3IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKKwljbGtfZGlzYWJsZV91bnByZXBh
cmUocHdtLT5idXNfY2xrKTsKIAlyZXNldF9jb250cm9sX2Fzc2VydChwd20tPnJzdCk7CiAKIAly
ZXR1cm4gMDsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
