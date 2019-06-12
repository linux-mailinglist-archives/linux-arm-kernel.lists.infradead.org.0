Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C8E4308A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 22:00:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+2bnL1x26RJ27BP/LKTqRUUcZ1S0r1fMfCx+E+58S8=; b=ff95GPbtn5c4fT
	AgAVHZymD5Towu1wazedACE31+sZC5/WCabomzzw4f4Pbfqi33ib/JZP5QfmYmaZk0eIvhUh2DsgA
	h4dnT1tnv7F9RRhh0CwQ5bbKspEme+WxHCoN1M4fy3RntLdvZFgfXQJ4N5rKNIaezFg37jBmu+A7+
	rfEy6Au4wIjmjw77eQUfRjcLzV3mnZO6Q3kyQDLjkbtL555DAfWhuS7LxpU43tzv5BSDtRf+rwpT0
	sxvOImNyhkYyS08/kDnDHdDxEOHDBfmkinsUdJgtX3MSbTb3NjMTpGd9Mvmy97TOb/HC8ql2zHEvo
	TwGeAdrUZ8xcZMXKjCTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb9QY-0007G2-0t; Wed, 12 Jun 2019 20:00:58 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb9PE-0005GQ-7m; Wed, 12 Jun 2019 19:59:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id d18so18220592wrs.5;
 Wed, 12 Jun 2019 12:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KG5NgbEDvB0IWCaREHnEKhv/7oNCiEy8ooK1MlRzIPs=;
 b=CHleG6FA879in8tltHJpvsgIsf5EZHkqvpt/fkvG7bN3tzs+3eV9pxxdayzsj3bWPE
 6phqQcl5xXzRfzen7XMRLmPQoqsw2FYntWAColSUhMZHk4WSuBEMlunBhNnY36o7AcRq
 WugutDifp774LpTT8xW7NZnh8Xm1iHcIvs9NgjqJAJ5UWz3qbqtUCq3lXXVPlnEODES7
 MA7sWXkp/3NuDFYVD7GuA2NZEis7efWRa3g+InIacSbt0C9UxZusIzRT6xaJwL1T5F3k
 kgwnjIKVV+apPIiNxTmT+Iz73IjPY/4Is0TPkJCyKX4XPvFzts81bNm9C3UP5uItrcH9
 Qjyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KG5NgbEDvB0IWCaREHnEKhv/7oNCiEy8ooK1MlRzIPs=;
 b=eY84RGCHcJE2TuGOWqxJpOAZ9t62ksw/V2TCs/doWKOQh+6JKKZ+TUTLKtQzzG7IJs
 myhEuqtbSBiBHlR3WeSHc2rp9EBEYliuVnq8qFEkvOOXAxfIOojEoJxdyZzV0Wfdr/f9
 YAx9tqP4m7Pk7NusRzhwRy6pvHUDP8LPzyHP87veT3ugiZ4z5FRSfGO0vfo6Au5Nt/hJ
 oJu/322FEE9DHb64jqhiLAVljqcq/aCGNpPnWJ7VM4mbe3V21PhRF9wIHA3yr4E4SYX/
 qKYe+JxrTw8qSATxk1qXow90Vt+IdMKDA7kFkGS2JLN3HJx9ZMehNeYG6QJCvw8TzNnn
 MPaQ==
X-Gm-Message-State: APjAAAXn3xamqWxK7G8tsUb060A7lzhl5Q2maD2SMDoSt6cgk05o8nOX
 iBLsDDWFgEZigQDugSCqTidAK+Dk
X-Google-Smtp-Source: APXvYqy/wh0jbkT+eAUNg4R4m3wc3iCjuVQTA417SP7ImsnL978LUI+5DY8GjJq0y4lA6mp22EcdFA==
X-Received: by 2002:a5d:4bd0:: with SMTP id l16mr26414553wrt.141.1560369573815; 
 Wed, 12 Jun 2019 12:59:33 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id f10sm1026745wrg.24.2019.06.12.12.59.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 12:59:33 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v3 03/14] pwm: meson: use GENMASK and FIELD_PREP for the lo
 and hi values
Date: Wed, 12 Jun 2019 21:59:00 +0200
Message-Id: <20190612195911.4442-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
References: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_125936_282353_F9335943 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

bWVzb25fcHdtX2NhbGMoKSBlbnN1cmVzIHRoYXQgImxvIiBpcyBhbHdheXMgbGVzcyB0aGFuIDE2
IGJpdHMgd2lkZQoob3RoZXJ3aXNlIGl0IHdvdWxkIG92ZXJmbG93IGludG8gdGhlICJoaSIgcGFy
dCBvZiB0aGUgUkVHX1BXTV97QSxCfQpyZWdpc3RlcikuClVzZSBHRU5NQVNLIGFuZCBGSUVMRF9Q
UkVQIGZvciB0aGUgbG8gYW5kIGhpIHZhbHVlcyB0byBtYWtlIGl0IGVhc2llciB0bwpzcG90IGhv
dyB3aWRlIHRoZXNlIGFyZSBpbnRlcm5hbGx5LiBBZGRpdGlvbmFsbHkgdGhpcyBpcyBhIHByZXBh
cmF0aW9uCnN0ZXAgZm9yIHRoZSAuZ2V0X3N0YXRlKCkgaW1wbGVtZW50YXRpb24gd2hlcmUgdGhl
IEdFTk1BU0soKSBmb3IgbG8gYW5kCmhpIGJlY29tZXMgaGFuZHkgYmVjYXVzZSBpdCBjYW4gYmUg
dXNlZCB3aXRoIEZJRUxEX0dFVCgpIHRvIGV4dHJhY3QgdGhlCnZhbHVlcyBmcm9tIHRoZSByZWdp
c3RlciBSRUdfUFdNX3tBLEJ9IHJlZ2lzdGVyLgoKTm8gZnVuY3Rpb25hbCBjaGFuZ2VzIGludGVu
ZGVkLgoKUmV2aWV3ZWQtYnk6IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNv
bT4KUmV2aWV3ZWQtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0
cm9uaXguZGU+ClNpZ25lZC1vZmYtYnk6IE1hcnRpbiBCbHVtZW5zdGluZ2wgPG1hcnRpbi5ibHVt
ZW5zdGluZ2xAZ29vZ2xlbWFpbC5jb20+Ci0tLQogZHJpdmVycy9wd20vcHdtLW1lc29uLmMgfCA4
ICsrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1tZXNvbi5jIGIvZHJpdmVycy9wd20vcHdt
LW1lc29uLmMKaW5kZXggMzViMzhjNzIwMWMzLi5jNjJhM2FjOTI0ZDAgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvcHdtL3B3bS1tZXNvbi5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1tZXNvbi5jCkBAIC01
LDYgKzUsOCBAQAogICogQ29weXJpZ2h0IChDKSAyMDE0IEFtbG9naWMsIEluYy4KICAqLwogCisj
aW5jbHVkZSA8bGludXgvYml0ZmllbGQuaD4KKyNpbmNsdWRlIDxsaW51eC9iaXRzLmg+CiAjaW5j
bHVkZSA8bGludXgvY2xrLmg+CiAjaW5jbHVkZSA8bGludXgvY2xrLXByb3ZpZGVyLmg+CiAjaW5j
bHVkZSA8bGludXgvZXJyLmg+CkBAIC0yMCw3ICsyMiw4IEBACiAKICNkZWZpbmUgUkVHX1BXTV9B
CQkweDAKICNkZWZpbmUgUkVHX1BXTV9CCQkweDQKLSNkZWZpbmUgUFdNX0hJR0hfU0hJRlQJCTE2
CisjZGVmaW5lIFBXTV9MT1dfTUFTSwkJR0VOTUFTSygxNSwgMCkKKyNkZWZpbmUgUFdNX0hJR0hf
TUFTSwkJR0VOTUFTSygzMSwgMTYpCiAKICNkZWZpbmUgUkVHX01JU0NfQUIJCTB4OAogI2RlZmlu
ZSBNSVNDX0JfQ0xLX0VOCQlCSVQoMjMpCkBAIC0yMTcsNyArMjIwLDggQEAgc3RhdGljIHZvaWQg
bWVzb25fcHdtX2VuYWJsZShzdHJ1Y3QgbWVzb25fcHdtICptZXNvbiwgc3RydWN0IHB3bV9kZXZp
Y2UgKnB3bSkKIAl2YWx1ZSB8PSBjbGtfZW5hYmxlOwogCXdyaXRlbCh2YWx1ZSwgbWVzb24tPmJh
c2UgKyBSRUdfTUlTQ19BQik7CiAKLQl2YWx1ZSA9IChjaGFubmVsLT5oaSA8PCBQV01fSElHSF9T
SElGVCkgfCBjaGFubmVsLT5sbzsKKwl2YWx1ZSA9IEZJRUxEX1BSRVAoUFdNX0hJR0hfTUFTSywg
Y2hhbm5lbC0+aGkpIHwKKwkJRklFTERfUFJFUChQV01fTE9XX01BU0ssIGNoYW5uZWwtPmxvKTsK
IAl3cml0ZWwodmFsdWUsIG1lc29uLT5iYXNlICsgb2Zmc2V0KTsKIAogCXZhbHVlID0gcmVhZGwo
bWVzb24tPmJhc2UgKyBSRUdfTUlTQ19BQik7Ci0tIAoyLjIyLjAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
