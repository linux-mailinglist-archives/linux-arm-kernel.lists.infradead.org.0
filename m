Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7762A621
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HF7KsNDZCJesGehISl+0+ajOo+H+tgVyWKrqtNYTF+w=; b=rPzTmBHAWMzEjJ
	Oz4l7Im/z13HZCn1B2jlaIegHAw3zXW1sfAIAoyDcBduDAA/nQIFl/v7C5wdJ6PQ2NtSvXu9f5i75
	5jYA1y4zNfQg4MH1zJ97T6KMSIZm+h1aNy+BMDkp5HnXmSS6gsGcfK/yGcA7mwcDTytWJa6L3CcBq
	j9y9jdyoKQChffPKtjXkIS3JbuzIBbKTOaht07bwPS5CLxDIlAZKshMgi9FVWjS0ztFy+VGdGGcTh
	NQQWtra2efUjGyf1L2yE0UKmX9sxdLhVmVyUtV0PpopcKKnDEDEfdgpQsYgB6tN6H4wk0jnT12snt
	+QLYoDhQeXiozKok00+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUb8L-00017y-A3; Sat, 25 May 2019 18:11:05 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb73-0006p9-6Z
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:09:56 +0000
Received: by mail-wm1-x343.google.com with SMTP id t5so12062444wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C9g/LoE0ZpkZVP3pL23ne066/SyPh+9LNI5RSIoN1oM=;
 b=AS/eNOcuOWZrNY5F73b3tRw6W1rm1ShvuCJ8NsyV7sck53nwFFQ1NJ9XWjtd2qbvRy
 m8zszAG1jKyqoOhnyYeycFtOik1jC+/ZIAL1Vlk9aL19WbQmZ7LXySmsTPOyW2NE1muh
 LwUEz7Iem3belCk3GnAdfIO3IMhtH5iOwUsFq09HucZJGaDkxDQElmfi0b+rTgjLEbx4
 2qu14WLti9k6TSToja1a5V6lViC87Oi6jOzLFVViOq7z/zKh6FyDgUxyxLtBBDjYMMYU
 NYfgmw8oHTK5lTxZKq0Ucz7m9THTm4wMFRoivjCsMZ8vwREWcFvWqb9UAMXlrbPeXzz6
 V2IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C9g/LoE0ZpkZVP3pL23ne066/SyPh+9LNI5RSIoN1oM=;
 b=lgMvv2FM3Z/mjldnWiWeLxYhZcy1UnENBWIqG3ZSyyZgcbdpcI/MlE+xI3jkVJRZPR
 CWPZl35pOdVOwdYJqmZZBV9K/TE9IcfPTW+pGf9yx9YWlPmjtUwzzrvrFYVQp2xoQ4yN
 M3uEUNG4ReTRPAe59cK88Se6BtDaZVawueUY30y8e5cFk+/S1Zjcl0/N3owBZlGZS4SJ
 xpU9EsnOfYfNo4bcYP4PfDZsQcIr5oVG2DGedg2VpWRqMErHj8MiwCjsCMmVCbnRyIN4
 e8HeKTCd0doJiSVspLPSvhAAiUKQsN6CWSIJ+d0FVpK65/ZVLPCuy9BFTsSYoBfjLywK
 WDKQ==
X-Gm-Message-State: APjAAAW8FSCAIOc0sZZaqxgjPOWkbQUC1B3Ut3QyWqk2OZoxOIsQCbXx
 jJ4GvAZaxJaq1zLOOAJIJZk=
X-Google-Smtp-Source: APXvYqxHLZVgAdIIsU0FKFQ49/TWoLdxUaOWJDFX8vHrq/7KokfZQneNmxMcqZEdoz0vbuvGzyTscw==
X-Received: by 2002:a7b:c8c1:: with SMTP id f1mr3762382wml.159.1558807777790; 
 Sat, 25 May 2019 11:09:37 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm5656914wmf.48.2019.05.25.11.09.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:09:37 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 08/10] arm64: dts: allwiner: h6: Add IR receiver node
Date: Sat, 25 May 2019 20:09:21 +0200
Message-Id: <20190525180923.6105-9-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525180923.6105-1-peron.clem@gmail.com>
References: <20190525180923.6105-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_110945_443661_9FB8D882 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2luZXIgSDYgSVIgaXMgc2ltaWxhciB0byBBMzEgYW5kIGNhbiB1c2Ugc2FtZSBkcml2ZXIu
CgpBZGQgc3VwcG9ydCBmb3IgaXQuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBl
cm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1oNi5kdHNpIHwgMTkgKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE5
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5l
ci9zdW41MGktaDYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni5kdHNpCmluZGV4IDE2YzVjM2QwZmQ4MS4uNjQ5Y2JkZmU0NTJlIDEwMDY0NAotLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQorKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQpAQCAtNjQ3LDYgKzY0NywyNSBAQAog
CQkJCXBpbnMgPSAiUEwwIiwgIlBMMSI7CiAJCQkJZnVuY3Rpb24gPSAic19pMmMiOwogCQkJfTsK
KworCQkJcl9pcl9yeF9waW46IHItaXItcngtcGluIHsKKwkJCQlwaW5zID0gIlBMOSI7CisJCQkJ
ZnVuY3Rpb24gPSAic19jaXJfcngiOworCQkJfTsKKwkJfTsKKworCQlyX2lyOiBpckA3MDQwMDAw
IHsKKwkJCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYtaXIiLAorCQkJCQkgICAg
ICJhbGx3aW5uZXIsc3VuNmktYTMxLWlyIjsKKwkJCQlyZWcgPSA8MHgwNzA0MDAwMCAweDQwMD47
CisJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDEwOSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJ
CQljbG9ja3MgPSA8JnJfY2N1IENMS19SX0FQQjFfSVI+LAorCQkJCQkgPCZyX2NjdSBDTEtfSVI+
OworCQkJCWNsb2NrLW5hbWVzID0gImFwYiIsICJpciI7CisJCQkJcmVzZXRzID0gPCZyX2NjdSBS
U1RfUl9BUEIxX0lSPjsKKwkJCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCQkJCXBpbmN0
cmwtMCA9IDwmcl9pcl9yeF9waW4+OworCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCX07CiAK
IAkJcl9pMmM6IGkyY0A3MDgxNDAwIHsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
