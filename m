Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFD916B8E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 06:14:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qA/gwBFHQmwDbECTBAV2+AvLSP/MECgV0Fo2grCSw6A=; b=biTMMj1cCQBlmm
	Vj3Q6eeIDUbFEpfzDxIAgEiL7I/iQmWYF/lbex8nlEhFB/+Bc25/gZhd31m88NU7QGWnkEeLtppzz
	MaF0U2m6vd+Bjtzhb9FDmwfn8p1pYW+hP64fqieRet2CrKM6Nrr5ZerN4WgXWHb3HY9BtpWkB8vtk
	Z16eiMdXeY19qGSUo2DiAsZLRXIRM1ReyyQLeSdC8gGvTwHNjE8XV3c7v/pK50wjaZEatbQYOuQOh
	dQVUq3N7xTedCPSx7ssN9MZIGrUhnnRBiLVFGbbb3La6YrxY7QJjPANK0Q4GwmtMm8aYEMtrzoNCC
	kUmfQO6QNtC/r57YKXSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6SXz-0007EF-2z; Tue, 25 Feb 2020 05:14:19 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6SWy-0006bH-ME
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 05:13:17 +0000
Received: by mail-pg1-x543.google.com with SMTP id w21so6274573pgl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 21:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KFgEd5ihB5mpYJHgTJ73YmLe+8HUk6ELkCILmCi0oOk=;
 b=FNMuINYqjkWcMKmsC54Bq/gTZBk8TfWE/kHSeHazPaZ6Qsgq4UEwtaKxNjx3U/LSOL
 lSxriB94mOtmP7ZumY1pLpyXNh1eiELD+deo2AfzoltvtXbJresnxC13IfnGI7/zF0u8
 gfw7+zy+BpP4vi9hf0mYsgj0+sBmXM2UX7Dlk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KFgEd5ihB5mpYJHgTJ73YmLe+8HUk6ELkCILmCi0oOk=;
 b=iB6D9NhyoyZqj+BgAI2D4VdJat6Th5L0lc4q6yJeoE8DuoO4Dg/gxUBC+KcVg8aZpZ
 KYtacP9sykLD8ByMFddUHCGwjE8krmSNBtsBWkuecDoRQ2XnB1FlfkYydUl9RPeTH8tI
 d5k0eCjODz6/HDjnaoDLxr4VRCSrAz6qcTGH/oXVmylk4TjX7YrUS71oeoYzccNesYTR
 9iOT1o9YTnT7CYfhIXqf+Af/k7XmlpEJjETYBb9shlFNTikUOxd4hk2Immou/Xh0FNIF
 9v2F8au7q7QxmNCkCjav4ScM6RB8xe2kVUOL1WvKJpYVPUyjkEv/MTiCEcznYHL6u9Xd
 gl4A==
X-Gm-Message-State: APjAAAV952GMqqEKgzaq1r/HAhCsV8T7Q57QenSUfNIwnnP+Q/xUgXTh
 tqB1dtIQSXTThI4L7pSzo2eLYg==
X-Google-Smtp-Source: APXvYqwchftXeveUuXJHknSGejturvoBpu91/DIibP3TqJfUAAo+U3HXFzD6DGyObdeKZ5MP3RURPQ==
X-Received: by 2002:a63:5b54:: with SMTP id l20mr19043243pgm.324.1582607596247; 
 Mon, 24 Feb 2020 21:13:16 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j17sm14695804pfa.16.2020.02.24.21.13.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 21:13:15 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v4 6/6] arm64,
 elf: Disable automatic READ_IMPLIES_EXEC for 64-bit address spaces
Date: Mon, 24 Feb 2020 21:13:07 -0800
Message-Id: <20200225051307.6401-7-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200225051307.6401-1-keescook@chromium.org>
References: <20200225051307.6401-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_211316_728364_85E1EE5C 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Hector Marco-Gisbert <hecmargi@upv.es>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Jason Gunthorpe <jgg@mellanox.com>, kernel-hardening@lists.openwall.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2l0aCBhcm02NCA2NC1iaXQgZW52aXJvbm1lbnRzLCB0aGVyZSBzaG91bGQgbmV2ZXIgYmUgYSBu
ZWVkIGZvciBhdXRvbWF0aWMKUkVBRF9JTVBMSUVTX0VYRUMsIGFzIHRoZSBhcmNoaXRlY3R1cmUg
aGFzIGFsd2F5cyBiZWVuIGV4ZWN1dGUtYml0IGF3YXJlCihhcyBpbiwgdGhlIGRlZmF1bHQgbWVt
b3J5IHByb3RlY3Rpb24gc2hvdWxkIGJlIE5YIHVubGVzcyBhIHJlZ2lvbgpleHBsaWNpdGx5IHJl
cXVlc3RzIHRvIGJlIGV4ZWN1dGFibGUpLgoKU3VnZ2VzdGVkLWJ5OiBIZWN0b3IgTWFyY28tR2lz
YmVydCA8aGVjbWFyZ2lAdXB2LmVzPgpTaWduZWQtb2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29r
QGNocm9taXVtLm9yZz4KUmV2aWV3ZWQtYnk6IEphc29uIEd1bnRob3JwZSA8amdnQG1lbGxhbm94
LmNvbT4KUmV2aWV3ZWQtYnk6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5j
b20+Ci0tLQogYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9lbGYuaCB8IDQgKystLQogZnMvY29tcGF0
X2JpbmZtdF9lbGYuYyAgICAgICB8IDUgKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvaW5jbHVkZS9h
c20vZWxmLmggYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2VsZi5oCmluZGV4IDAzYWRhMjk5ODRh
Ny4uZWE5MjIxZWQ2OGExIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2VsZi5o
CisrKyBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vZWxmLmgKQEAgLTEwNSw3ICsxMDUsNyBAQAog
ICogwqAgwqAgwqAgwqAgwqAgwqDCoENQVSo6IHwgYXJtMzLCoCDCoCAgIHwgYXJtNjQgICAgICB8
CiAgKiBFTEY6IMKgIMKgIMKgIMKgIMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAg
wqAgwqAgwqAgwqB8CiAgKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tfC0tLS0tLS0t
LS0tLXwKLSAqIG1pc3NpbmcgR05VX1NUQUNLIHwgZXhlYy1hbGwgwqAgfCBleGVjLWFsbCDCoCB8
CisgKiBtaXNzaW5nIEdOVV9TVEFDSyB8IGV4ZWMtYWxsIMKgIHwgZXhlYy1ub25lwqAgfAogICog
R05VX1NUQUNLID09IFJXWCDCoHwgZXhlYy1zdGFjayB8IGV4ZWMtc3RhY2sgfAogICogR05VX1NU
QUNLID09IFJXIMKgIHwgZXhlYy1ub25lICB8IGV4ZWMtbm9uZSAgfAogICoKQEAgLTExNyw3ICsx
MTcsNyBAQAogICogICphbGwgYXJtNjQgQ1BVcyBzdXBwb3J0IE5YLCBzbyB0aGVyZSBpcyBubyAi
bGFja3MgTlgiIGNvbHVtbi4KICAqCiAgKi8KLSNkZWZpbmUgZWxmX3JlYWRfaW1wbGllc19leGVj
KGV4LHN0aykJKHN0ayA9PSBFWFNUQUNLX0RFRkFVTFQpCisjZGVmaW5lIGNvbXBhdF9lbGZfcmVh
ZF9pbXBsaWVzX2V4ZWMoZXgsIHN0aykJKHN0ayA9PSBFWFNUQUNLX0RFRkFVTFQpCiAKICNkZWZp
bmUgQ09SRV9EVU1QX1VTRV9SRUdTRVQKICNkZWZpbmUgRUxGX0VYRUNfUEFHRVNJWkUJUEFHRV9T
SVpFCmRpZmYgLS1naXQgYS9mcy9jb21wYXRfYmluZm10X2VsZi5jIGIvZnMvY29tcGF0X2JpbmZt
dF9lbGYuYwppbmRleCBhYWFkNGNhMTIxN2UuLjMwNjhkNTc0MzZiMyAxMDA2NDQKLS0tIGEvZnMv
Y29tcGF0X2JpbmZtdF9lbGYuYworKysgYi9mcy9jb21wYXRfYmluZm10X2VsZi5jCkBAIC0xMTMs
NiArMTEzLDExIEBACiAjZGVmaW5lCWFyY2hfc2V0dXBfYWRkaXRpb25hbF9wYWdlcyBjb21wYXRf
YXJjaF9zZXR1cF9hZGRpdGlvbmFsX3BhZ2VzCiAjZW5kaWYKIAorI2lmZGVmCWNvbXBhdF9lbGZf
cmVhZF9pbXBsaWVzX2V4ZWMKKyN1bmRlZgllbGZfcmVhZF9pbXBsaWVzX2V4ZWMKKyNkZWZpbmUJ
ZWxmX3JlYWRfaW1wbGllc19leGVjIGNvbXBhdF9lbGZfcmVhZF9pbXBsaWVzX2V4ZWMKKyNlbmRp
ZgorCiAvKgogICogUmVuYW1lIGEgZmV3IG9mIHRoZSBzeW1ib2xzIHRoYXQgYmluZm10X2VsZi5j
IHdpbGwgZGVmaW5lLgogICogVGhlc2UgYXJlIGFsbCBsb2NhbCBzbyB0aGUgbmFtZXMgZG9uJ3Qg
cmVhbGx5IG1hdHRlciwgYnV0IGl0Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
