Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDDB25517
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ExgYfd71Kk1T2QO35YDDGl83Vf46xUAHG4vXcTIkVo=; b=bm5KAFvu7FPjsz
	6hBl76riwgrWHNJEkjx8emkzBfRte9DgeU4jTjjVwdSmCcahkjP2rJFG1grfB8N4fiMhzkJLqu9ql
	/Ytn/7xGCAvrVB0paYGK76rRVnITBI84AduJVD3MibR02GHNcRK8P0ck/Rkca21XTRZhevDTI2BVl
	wsQJOHUQFxeSqUzgq59+tGL0GaJ4zHYt4j5OACdo0VGQDzeZgwdcW5ItbjzyFFMTCqEmTABy++AZ9
	qhD1WzdPqvM/5brjTcIw+U1QLS9xJQxcwbvjIBLTth19ZJNlj+t9WrwjisjL2BFlH6TebIcKUR6cy
	XvyLYlGJTeCedLvzLGxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7NS-00082G-R0; Tue, 21 May 2019 16:12:34 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7MC-0006T4-JL
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:11:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id d9so6325964wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 09:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ip1Ip/bBaI3oGl08+c/jPOf0AEvNzRwc1Jgyw/gygxk=;
 b=h+NTyOQl+TEZLatjt6/a4g2R3AMJacJWXFbf2ZmYrIGSFQCJi4uPljnwGSwgmmGSXh
 q+dpQUWud2oF76sb6BcbO5jnr/hX3M+t2lyopkcBTBo4zTkdZy1e+2qt+fzrMJ9zTofB
 aNReptxCaUUZiuLivNOiJlF6U2eWDnpacZ+APXCdXzFQcfHNVF+QQaHhauHH53xiECI6
 mhH/uPN2t54FSMwNEL+0ki3T1hOCvQkochF3w7oMvtDXDvpCJnwbboa0KJBiJCrTSAA9
 PLx83f6WUo1tjNIJjNkeNLzwfPMLQADkQqUiUP3Ga5iaUjDId+FULk5SV1wSczYgTf5p
 acVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ip1Ip/bBaI3oGl08+c/jPOf0AEvNzRwc1Jgyw/gygxk=;
 b=th2PMY8U6haXA1AoqlV1BN4iQs7bkdmV45+pQ065AMNyVAv4/7yC9YxG4EpEoQ04+y
 Y7eaFo1QZqsjW4yJW8U5+LBcCGPQhlzhiz1memALJiCF996/z6qeNkZ6E8reUJjRZZj1
 DqxJJK2Sd02WJ6HBkW672TPZOjTW8bGGmKMVK3ih30ZSesDMvRh0RAbrtEv8sJ/vKpM7
 tLFUgOYED5FHhK4/bNU9hiQIiT+ckU8F7q+bW9Fq1dJLk7qgY9CeGgW6yTy8xW1KRZpv
 8TL+h3JyE8cRFHERYyz6D0OcoVuvYS1VY8cczMbU/QfonQx3HN10Dn0QfsdXXL99ucqP
 5wGQ==
X-Gm-Message-State: APjAAAUDtaLT4c9u45j+GWLvYtm9fpad5ZyIy7f9YqZzRlgDAZSg0H6Z
 wx3FBcKkPZ6g4Y5ZKQeNZjw=
X-Google-Smtp-Source: APXvYqy20A9dEOCcgXXitDLonYuo4h0Gko7h5PXdbB6eJStF5KSNRpJPD3LRRJAFRt/SXZ1+Ym8Efg==
X-Received: by 2002:adf:e80a:: with SMTP id o10mr22701577wrm.79.1558455075148; 
 Tue, 21 May 2019 09:11:15 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id n63sm3891094wmn.38.2019.05.21.09.11.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:11:14 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Steven Price <steven.price@arm.com>
Subject: [PATCH v6 6/6] arm64: dts: allwinner: Add mali GPU supply for H6
 boards
Date: Tue, 21 May 2019 18:11:02 +0200
Message-Id: <20190521161102.29620-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190521161102.29620-1-peron.clem@gmail.com>
References: <20190521161102.29620-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_091117_041474_9123EEC9 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIGFuZCBhZGQgc3VwcGx5IHRvIHRoZSBNYWxpIEdQVSBub2RlIG9uIGFsbCB0aGUKSDYg
Ym9hcmRzLgoKUmVnYXJkaW5nIHRoZSBkYXRhc2hlZXQgdGhlIG1heGltdW0gdGltZSBmb3Igc3Vw
cGx5IHRvIHJlYWNoCml0cyB2b2x0YWdlIGlzIDMybXMuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVu
dCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMgfCA2ICsrKysrKwogYXJjaC9hcm02
NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLTMuZHRzICB8IDYgKysrKysr
CiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGkuZHRzaSAg
IHwgNiArKysrKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5l
LWg2NC5kdHMgICAgfCA2ICsrKysrKwogNCBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJl
ZWxpbmstZ3MxLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1i
ZWVsaW5rLWdzMS5kdHMKaW5kZXggMGRjMzNjOTBkZDYwLi5mZTM2YzY1ODhkOGUgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5k
dHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmst
Z3MxLmR0cwpAQCAtNzAsNiArNzAsMTEgQEAKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCismZ3B1
IHsKKwltYWxpLXN1cHBseSA9IDwmcmVnX2RjZGNjPjsKKwlzdGF0dXMgPSAib2theSI7Cit9Owor
CiAmaGRtaSB7CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKQEAgLTIwNiw2ICsyMTEsNyBAQAogCQkJ
fTsKIAogCQkJcmVnX2RjZGNjOiBkY2RjYyB7CisJCQkJcmVndWxhdG9yLWVuYWJsZS1yYW1wLWRl
bGF5ID0gPDMyMDAwPjsKIAkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4MTAwMDA+Owog
CQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEwODAwMDA+OwogCQkJCXJlZ3VsYXRvci1u
YW1lID0gInZkZC1ncHUiOwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LW9yYW5nZXBpLTMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LW9yYW5nZXBpLTMuZHRzCmluZGV4IDE3ZDQ5Njk5MDEwOC4uZWE0ODY2YjBm
YTdhIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYt
b3JhbmdlcGktMy5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBp
LWg2LW9yYW5nZXBpLTMuZHRzCkBAIC01OCw2ICs1OCwxMSBAQAogCXN0YXR1cyA9ICJva2F5IjsK
IH07CiAKKyZncHUgeworCW1hbGktc3VwcGx5ID0gPCZyZWdfZGNkY2M+OworCXN0YXR1cyA9ICJv
a2F5IjsKK307CisKICZtbWMwIHsKIAl2bW1jLXN1cHBseSA9IDwmcmVnX2NsZG8xPjsKIAljZC1n
cGlvcyA9IDwmcGlvIDUgNiBHUElPX0FDVElWRV9MT1c+OyAvKiBQRjYgKi8KQEAgLTE2NSw2ICsx
NzAsNyBAQAogCQkJfTsKIAogCQkJcmVnX2RjZGNjOiBkY2RjYyB7CisJCQkJcmVndWxhdG9yLWVu
YWJsZS1yYW1wLWRlbGF5ID0gPDMyMDAwPjsKIAkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9
IDw4MTAwMDA+OwogCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEwODAwMDA+OwogCQkJ
CXJlZ3VsYXRvci1uYW1lID0gInZkZC1ncHUiOwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGkuZHRzaQppbmRleCA2MmUyNzk0OGEzZmEu
LmVjNzcwZjA3YWE4MiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
c3VuNTBpLWg2LW9yYW5nZXBpLmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0c2kKQEAgLTU1LDYgKzU1LDExIEBACiAJc3RhdHVzID0g
Im9rYXkiOwogfTsKIAorJmdwdSB7CisJbWFsaS1zdXBwbHkgPSA8JnJlZ19kY2RjYz47CisJc3Rh
dHVzID0gIm9rYXkiOworfTsKKwogJm1tYzAgewogCXZtbWMtc3VwcGx5ID0gPCZyZWdfY2xkbzE+
OwogCWNkLWdwaW9zID0gPCZwaW8gNSA2IEdQSU9fQUNUSVZFX0xPVz47CkBAIC0xNjMsNiArMTY4
LDcgQEAKIAkJCX07CiAKIAkJCXJlZ19kY2RjYzogZGNkY2MgeworCQkJCXJlZ3VsYXRvci1lbmFi
bGUtcmFtcC1kZWxheSA9IDwzMjAwMD47CiAJCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8
ODEwMDAwPjsKIAkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMDgwMDAwPjsKIAkJCQly
ZWd1bGF0b3ItbmFtZSA9ICJ2ZGQtZ3B1IjsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L2FsbHdpbm5lci9zdW41MGktaDYtcGluZS1oNjQuZHRzCmluZGV4IDQ4MDI5MDJlMTI4Zi4uNjI1
YTI5YTI1YzUyIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktaDYtcGluZS1oNjQuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1oNi1waW5lLWg2NC5kdHMKQEAgLTg1LDYgKzg1LDExIEBACiAJc3RhdHVzID0gIm9rYXki
OwogfTsKIAorJmdwdSB7CisJbWFsaS1zdXBwbHkgPSA8JnJlZ19kY2RjYz47CisJc3RhdHVzID0g
Im9rYXkiOworfTsKKwogJmhkbWkgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CkBAIC0yMTUsNiAr
MjIwLDcgQEAKIAkJCX07CiAKIAkJCXJlZ19kY2RjYzogZGNkY2MgeworCQkJCXJlZ3VsYXRvci1l
bmFibGUtcmFtcC1kZWxheSA9IDwzMjAwMD47CiAJCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQg
PSA8ODEwMDAwPjsKIAkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMDgwMDAwPjsKIAkJ
CQlyZWd1bGF0b3ItbmFtZSA9ICJ2ZGQtZ3B1IjsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
