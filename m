Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A85E9E68
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 16:08:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbkRnzL91P5vDMFymtsdzdjXeNUbMWiLSpBwGakMxdU=; b=QOcXZO+GucmHF4
	rg2qme5cwrXVs3UzESio5IU4A2UCClWzaXjGZNYxw1w8C7G6PDrbEc0jc40wTdFXDfL06XL6KIAjF
	b7J/HrI33VZAI81bU0AoGZNewvlZ/TzDTsBtCqufti1MSo+devabC65LR8UuBGE7s7lnaG9CMmBru
	lkgvZgxmKzBfDS48GzC2sxLR8eqHGE/8lJ028wI4SJk8SqHsWs5t8PDHj52s9TCl3GqMBarV4R49c
	WSwp1uXor/CBwZtu5FJAewML7vYEzHm53TMZBF7mwLPMOVfFhp7vpkADoG9lN0nWF+OcmQ3ePXdHa
	eIDn9D4G6Sy2gVLD9pOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpaK-00050B-7e; Wed, 30 Oct 2019 15:08:32 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpZf-0004X5-GG
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 15:07:53 +0000
Received: by mail-wr1-x444.google.com with SMTP id p4so2698047wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 08:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lW9R1Kjh4RqLaQFjxo3y/Pqm10kL9MGXivj+gFRn3PI=;
 b=c556bP4DDtkg+ELPCznE0M/Y+gf6kR7x6CVyAA6DIBn5fNHWQbggK+owE0IqN9u5IP
 YGVPGBsRUqsSbr1HUP1eQdyXtcYoam8ytGKbYWsuzVzo7GhhrQ3NZJnEHLySORbw/2b0
 25UEJasNAZ4N6cNTNYGcplRLT4HysyKrUxNHbL9hziyIKKnVJjON/5O5hufIPQxQvcG7
 YABcBHQkCDo/ZljUXJ6Z1ShXxudkQ2+p4HsPma34mWCwxSztaPRHCHlDsjWklLNOOYBx
 pgkdsVaRsZfPT2j/uzPJt+Y67oxCzkl4XeE3zeYpR6olZax12Nu/9YONf/6vNOTdMN06
 Knbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lW9R1Kjh4RqLaQFjxo3y/Pqm10kL9MGXivj+gFRn3PI=;
 b=MrnxaO+U8t20VTUZkaIVQPGU9cYGAB2s0bQk1zoGvLXht3vMKpCK1qw2cxirZ5xyzF
 r2MmC1pw5sA5enSMmYQNL6k6c5tctx/CpiWeuiEINVeNEdifsQDP7GlGTn8CpoDJLrSb
 E6W2+V1j8K3SsbOwCSxe3cEzWcXxdqxrjaszV6nzS3wTmHqS4NUey6zW59zy3rEDmod9
 g8fIPTb77on3V07djQ1VDQ0ryNWbwzmF4zlztTpgiDl/O8B+ThCubVjq7ZGki5YTzFRr
 eYQru3SALX/53+TVq3P+Jt5qvRIwFxqZzhpWFIjN5pbBCGV9JNozRosrK1Z3ol94ntOh
 k0qA==
X-Gm-Message-State: APjAAAX/Af9OvvwK23aQo8Y9mUd4LeKaUteIKhvwq0qBGALAA3txVjVi
 g2odaTRMfQsNWCqYkKiyl7o=
X-Google-Smtp-Source: APXvYqzy7lMkIQLrrDyKXi4Da54CMcnQllR3Q6YYCu8EDXUhAAooVuppJ9HI7xIDZiqeViRj0d9IyA==
X-Received: by 2002:a05:6000:1048:: with SMTP id
 c8mr271231wrx.349.1572448069737; 
 Wed, 30 Oct 2019 08:07:49 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id 11sm278074wmg.36.2019.10.30.08.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 08:07:49 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
Subject: [PATCH v7 2/2] arm64: dts: allwinner: Add mali GPU supply for H6
 boards
Date: Wed, 30 Oct 2019 16:07:42 +0100
Message-Id: <20191030150742.3573-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191030150742.3573-1-peron.clem@gmail.com>
References: <20191030150742.3573-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_080751_538839_39BFA33A 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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
ZWVsaW5rLWdzMS5kdHMKaW5kZXggMWQwNWQ1NzAxNDJmLi5lNWVkMWQ0YmZlZjggMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5k
dHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmst
Z3MxLmR0cwpAQCAtODksNiArODksMTEgQEAKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCismZ3B1
IHsKKwltYWxpLXN1cHBseSA9IDwmcmVnX2RjZGNjPjsKKwlzdGF0dXMgPSAib2theSI7Cit9Owor
CiAmaGRtaSB7CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKQEAgLTIyNSw2ICsyMzAsNyBAQAogCQkJ
fTsKIAogCQkJcmVnX2RjZGNjOiBkY2RjYyB7CisJCQkJcmVndWxhdG9yLWVuYWJsZS1yYW1wLWRl
bGF5ID0gPDMyMDAwPjsKIAkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4MTAwMDA+Owog
CQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEwODAwMDA+OwogCQkJCXJlZ3VsYXRvci1u
YW1lID0gInZkZC1ncHUiOwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LW9yYW5nZXBpLTMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LW9yYW5nZXBpLTMuZHRzCmluZGV4IGViMzc5Y2Q0MDJhYy4uZjVhZTUxODJm
MGM1IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYt
b3JhbmdlcGktMy5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBp
LWg2LW9yYW5nZXBpLTMuZHRzCkBAIC0xMDIsNiArMTAyLDExIEBACiAJc3RhdHVzID0gIm9rYXki
OwogfTsKIAorJmdwdSB7CisJbWFsaS1zdXBwbHkgPSA8JnJlZ19kY2RjYz47CisJc3RhdHVzID0g
Im9rYXkiOworfTsKKwogJmhkbWkgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CkBAIC0yMzcsNiAr
MjQyLDcgQEAKIAkJCX07CiAKIAkJCXJlZ19kY2RjYzogZGNkY2MgeworCQkJCXJlZ3VsYXRvci1l
bmFibGUtcmFtcC1kZWxheSA9IDwzMjAwMD47CiAJCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQg
PSA8ODEwMDAwPjsKIAkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMDgwMDAwPjsKIAkJ
CQlyZWd1bGF0b3ItbmFtZSA9ICJ2ZGQtZ3B1IjsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNpIGIvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0c2kKaW5kZXggZWM5YjZhNTc4ZTNm
Li5kZjRjYmQ3ZWY5NmMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNpCkBAIC01NSw2ICs1NSwxMSBAQAogCXN0YXR1cyA9
ICJva2F5IjsKIH07CiAKKyZncHUgeworCW1hbGktc3VwcGx5ID0gPCZyZWdfZGNkY2M+OworCXN0
YXR1cyA9ICJva2F5IjsKK307CisKICZtbWMwIHsKIAl2bW1jLXN1cHBseSA9IDwmcmVnX2NsZG8x
PjsKIAljZC1ncGlvcyA9IDwmcGlvIDUgNiBHUElPX0FDVElWRV9MT1c+OwpAQCAtMTYzLDYgKzE2
OCw3IEBACiAJCQl9OwogCiAJCQlyZWdfZGNkY2M6IGRjZGNjIHsKKwkJCQlyZWd1bGF0b3ItZW5h
YmxlLXJhbXAtZGVsYXkgPSA8MzIwMDA+OwogCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0g
PDgxMDAwMD47CiAJCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTA4MDAwMD47CiAJCQkJ
cmVndWxhdG9yLW5hbWUgPSAidmRkLWdwdSI7CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FsbHdpbm5lci9zdW41MGktaDYtcGluZS1oNjQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0
cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LmR0cwppbmRleCAzMDEwMmRhZjgzY2MuLjc0
ODk5ZWRlMDBmYiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LXBpbmUtaDY0LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9z
dW41MGktaDYtcGluZS1oNjQuZHRzCkBAIC04NSw2ICs4NSwxMSBAQAogCXN0YXR1cyA9ICJva2F5
IjsKIH07CiAKKyZncHUgeworCW1hbGktc3VwcGx5ID0gPCZyZWdfZGNkY2M+OworCXN0YXR1cyA9
ICJva2F5IjsKK307CisKICZoZG1pIHsKIAlzdGF0dXMgPSAib2theSI7CiB9OwpAQCAtMjIxLDYg
KzIyNiw3IEBACiAJCQl9OwogCiAJCQlyZWdfZGNkY2M6IGRjZGNjIHsKKwkJCQlyZWd1bGF0b3It
ZW5hYmxlLXJhbXAtZGVsYXkgPSA8MzIwMDA+OwogCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0
ID0gPDgxMDAwMD47CiAJCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTA4MDAwMD47CiAJ
CQkJcmVndWxhdG9yLW5hbWUgPSAidmRkLWdwdSI7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
