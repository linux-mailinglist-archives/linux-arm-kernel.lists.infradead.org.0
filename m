Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A611389B64
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OW830pE2mEWzdFWH3F9r2KnbvsdkCtv5iI89nXzwFec=; b=MUlJJLWPWyQjB8
	eFeDp80pkXYelPyuCRSujDwmOy5M0a0b37DtccCB14G4Gry9OA1iz1CGcCTJuKVVfEnua7wSRt+x8
	JjXAlJ5mokbEvHoygATvNVTy96ILspoBrCgOlwJzN9WWMRYZEsQAMuY/QH2pFnr2oasymGQxgpwWe
	tmCD4MbHgrTfcGJnWciApE5zrycojW/6cSdVYm6lEGCMQunCZeyCs1bvRa8IU6M47If0BH2xOp6rn
	QKvZesUH1lVoCTkGW7Vpqec098XASyt5vgAviAtqWdIsGDP1FSszQOFi4aGG+uRwYgpPhG60ss36v
	5oG0NbGXhk/PVM+ROreA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7Uy-0005WU-6f; Mon, 12 Aug 2019 10:24:20 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7Um-0005W8-Vq
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:24:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id z23so11278343wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 03:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=leQKXV9eObw1B0I49mhXBKbma5hQQg2ooGymI/Kposc=;
 b=CDzDlCwDugVO3v/5b5DZa4euPVcNJc9+CiNigfarnqreK8qsfVKswk1WRdXu1S4HZo
 jsWt1kG55brszkJUE3DAjbEB9dGdIMcSb/yglzZ7yDUxfVnKyQzKAeD8772Mp31MbX+3
 AqPLPA9wZjXXF4ncBlH8juJHHiBAh5jEpMFkjjX78kLepq9MvjCHfNsD9F9+/cmKNoOh
 gGBC458Z472HAf0lm/Ntntbrm1PoxEc+/rDPh07GQ6DMu543fDhn/9lVRQT2aPf57seW
 Tfb1FqEr1+q0S0PTC5Z/JrfjrHVyTOcN6Nt4R3/wrtS2frzs+ru4m7bumZZYfmD2StWL
 FWbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=leQKXV9eObw1B0I49mhXBKbma5hQQg2ooGymI/Kposc=;
 b=bdz2QbAN2k6OIQ4nfU8iAmG95+WaPbh1CcTaCENnj2W+bl51tga05AQYmsCmzxe85Z
 YSmgpHX06S2r3PNVyAeTxnfrQQVX+TCMj9C+r/2AQ/SaPokKP3kc4r2nbc26cosTo1Uy
 LqO8ZL8wxAEGIXKYqI4gvt30VwGrp8us48RYa+sb8OUZmDFGUIptLIBgUhxoSMjMpQbV
 ELhEaf71Le+zOThGcWwo1XJrwwC8CKmMAOedN5t9KWfWuP3ZKBj217hb/1ofC61aqlkX
 27KCLCmWuP9uruqZXp68b7YT6j9hL/l33bdDIkKU6E4uxrfQesPEZtYbH7GMn1segdT4
 +tGA==
X-Gm-Message-State: APjAAAW3I193CPsWc8waAuagBHKtlQ5/10ZHtdeNH8dPKV9IGZqZgTf/
 4AkfV1t3sRIS7W1/PApkgd0=
X-Google-Smtp-Source: APXvYqz1jijw0uZP64vCh3InF/IsyZo5uqWc27iWdS7bwVEMvduY/stvempGP3w4sWKCNdvWlmT2XA==
X-Received: by 2002:a05:600c:28c:: with SMTP id
 12mr8198240wmk.157.1565605447378; 
 Mon, 12 Aug 2019 03:24:07 -0700 (PDT)
Received: from localhost.localdomain
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id f197sm14517240wme.22.2019.08.12.03.24.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 03:24:06 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] arm64: dts: allwinner: Enable DDC regulator for Beelink GS1
Date: Mon, 12 Aug 2019 12:23:55 +0200
Message-Id: <20190812102355.22586-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_032409_020821_11184F6E 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QmVlbGluayBHUzEgaGFzIGEgRERDIEkyQyBidXMgdm9sdGFnZSBzaGlmdGVyLiBUaGlzIGlzIGFj
dHVhbGx5IG1pc3NpbmcKYW5kIHZpZGVvIGlzIGxpbWl0ZWQgdG8gMTAyNHg3NjggZHVlIHRvIG1p
c3NpbmcgRURJRCBpbmZvcm1hdGlvbi4KCkFkZCB0aGUgRERDIHJlZ3VsYXRvciBpbiB0aGUgZGV2
aWNlLXRyZWUuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21h
aWwuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVs
aW5rLWdzMS5kdHMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdz
MS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1n
czEuZHRzCmluZGV4IDY4MGRjMjljYjA4OS4uNjdkN2YyNjljNWRhIDEwMDY0NAotLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzCisrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMK
QEAgLTI1LDYgKzI1LDcgQEAKIAljb25uZWN0b3IgewogCQljb21wYXRpYmxlID0gImhkbWktY29u
bmVjdG9yIjsKIAkJdHlwZSA9ICJhIjsKKwkJZGRjLWVuLWdwaW9zID0gPCZwaW8gNyAyIEdQSU9f
QUNUSVZFX0hJR0g+OyAvKiBQSDIgKi8KIAogCQlwb3J0IHsKIAkJCWhkbWlfY29uX2luOiBlbmRw
b2ludCB7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
