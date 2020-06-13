Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A901F81E7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 10:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQ1QTpFDTSvGLaFoPHfBMeeNRzz4ULRiGy3BckDqFyA=; b=SZDyAJA1BheSka
	jZoe6Axuoe+Nmga3Nj7b+/imOlK64nuqMQx7YirBzG29sOvqTklX2SV69k74qwBU7waBGc8oVFNH8
	OPJZQPiuvzeOBit6pvWIe2nI67czT69OgqssAW/YbdEb8hLUQus6IV2wOEuh0JMHwV3FbBMCEVzpw
	GICw6kYNoph9BkjZ4e98PRjbrRJ8fdkb/yZEWfSldfyJt+auQGnWnhAgHSC/XGMvuq+ZmIy5GxjIR
	hC00Pac/7exeqOUT9lNCRlCyhSA4PvuoBwjYHXF75PCEZNfS02qup/14lIFjB+rB74e7V7afMZIdI
	OQwttjsvhBl7I36Dnvvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk1RS-0006PB-PK; Sat, 13 Jun 2020 08:23:06 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk1QC-0005ct-5U
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 08:21:50 +0000
Received: by mail-wr1-x431.google.com with SMTP id c3so12096703wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 01:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DoN3E570Tgck4JHoiO1BCeh8lVyob2ymeZAqeFZLRCw=;
 b=KomVBFFEY01cn8qSaSpGn2bs8xen61b+GAcvHrWP+OfLcrS6sP1Phif43oers7ruDb
 T2wlM1GJUgypfJiDuo48Flonu/oIoA7rcqXZQSGxku5/WUPPHz1PuniJ6yy7Tmu41usc
 zgBa5H9UVIOwVd4+UAZAbq+K4lplYo4k2bQGQrg0qRAj8FoB/yZuPDqN//vW6Qhj7sVn
 b9VyVNZwi8Li3wlcaJv5dCxlGUlpXyzA5p+oMNv02yku0mm/roOY7qMwcP76PmwtQjo6
 Gy/TAdVzLbLDtztYvhynIIahb+SxlgHpACpvqRqLPxJZAvkzm9Lsz5+7rmXrMahhNf3G
 vkcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DoN3E570Tgck4JHoiO1BCeh8lVyob2ymeZAqeFZLRCw=;
 b=oIFr3AFcKM0g3xCnjNn715uPo3t77np31Gm8/cfQ3qAshtfisgYzxnATKNnFiS+4y/
 9rYdg0v+G0GXFiF+jZhdenaWrp/xsp/j6oashIUwkwE7y81R3MpMTNhDisGM2ELF75eY
 yAz2r6TV2mXcdMPmqX4joyBSIMQV2oz4tJZlVrNNEtyGD6fj0ejKwH2IrBsyqm2LhbEc
 zHtCz2DhiyID4LLORy5JArLUV5uabbKPX5JYrPGIyFg8FsEaP8XCuL14xCY14Wq1qilW
 7LjFLYmGy1annlMr7cyJOFt4bwAk/aeAugpTrmzZhjSuqK6NcmcZkiorOIN4NINOn9Px
 jXTQ==
X-Gm-Message-State: AOAM530aiuL4Ic93NK+KYPT7q+1SlmXi5eh44Mf8QdrnfrqTkRwWV2AU
 ofXDtj3PtPpYBVLOEYFatE0=
X-Google-Smtp-Source: ABdhPJxVr3xsef7IJjNafvsri58MYOPMlv8KhrwExQB+Z43DqwlLLdXVJPToW24b08dF7kNNarUJjg==
X-Received: by 2002:a5d:4c4b:: with SMTP id n11mr17856525wrt.381.1592036506938; 
 Sat, 13 Jun 2020 01:21:46 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id n189sm12243603wmb.43.2020.06.13.01.21.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 01:21:46 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 3/9] mips: bmips: add BCM6362 power domain definitions
Date: Sat, 13 Jun 2020 10:21:34 +0200
Message-Id: <20200613082140.2009461-4-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200613082140.2009461-1-noltari@gmail.com>
References: <20200610171630.465579-1-noltari@gmail.com>
 <20200613082140.2009461-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_012148_214014_01B77010 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QkNNNjM2MiBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCmNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KClNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQog
djQ6IFJlbW92ZSAiZHRzOiAiIGZyb20gY29tbWl0IHRpdGxlLgogdjM6IFNlcGFyYXRlIGR0LWJp
bmRpbmdzIGRlZmluaXRpb25zIGZyb20gcG93ZXIgZG9tYWluIC5kdHNpIHN1cHBvcnQuCgogaW5j
bHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjM2Mi1wbS5oIHwgMjEgKysrKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0
IGluY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzNjItcG0uaAoKZGlmZiAtLWdpdCBhL2luY2x1
ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzNjItcG0uaCBiL2luY2x1ZGUvZHQtYmluZGluZ3Mvc29j
L2JjbTYzNjItcG0uaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmQw
ODdiYTYzYzdhMQotLS0gL2Rldi9udWxsCisrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2Jj
bTYzNjItcG0uaApAQCAtMCwwICsxLDIxIEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMCsgKi8KKworI2lmbmRlZiBfX0RUX0JJTkRJTkdTX0JNSVBTX0JDTTYzNjJfUE1fSAor
I2RlZmluZSBfX0RUX0JJTkRJTkdTX0JNSVBTX0JDTTYzNjJfUE1fSAorCisjZGVmaW5lIEJDTTYz
NjJfUE9XRVJfRE9NQUlOX1NBUgkwCisjZGVmaW5lIEJDTTYzNjJfUE9XRVJfRE9NQUlOX0lQU0VD
CTEKKyNkZWZpbmUgQkNNNjM2Ml9QT1dFUl9ET01BSU5fTUlQUwkyCisjZGVmaW5lIEJDTTYzNjJf
UE9XRVJfRE9NQUlOX0RFQ1QJMworI2RlZmluZSBCQ002MzYyX1BPV0VSX0RPTUFJTl9VU0JICTQK
KyNkZWZpbmUgQkNNNjM2Ml9QT1dFUl9ET01BSU5fVVNCRAk1CisjZGVmaW5lIEJDTTYzNjJfUE9X
RVJfRE9NQUlOX1JPQk9TVwk2CisjZGVmaW5lIEJDTTYzNjJfUE9XRVJfRE9NQUlOX1BDTQk3Cisj
ZGVmaW5lIEJDTTYzNjJfUE9XRVJfRE9NQUlOX1BFUklQSAk4CisjZGVmaW5lIEJDTTYzNjJfUE9X
RVJfRE9NQUlOX0FEU0xfUEhZCTkKKyNkZWZpbmUgQkNNNjM2Ml9QT1dFUl9ET01BSU5fR01JSV9Q
QURTCTEwCisjZGVmaW5lIEJDTTYzNjJfUE9XRVJfRE9NQUlOX0ZBUAkxMQorI2RlZmluZSBCQ002
MzYyX1BPV0VSX0RPTUFJTl9QQ0lFCTEyCisjZGVmaW5lIEJDTTYzNjJfUE9XRVJfRE9NQUlOX1dM
QU5fUEFEUwkxMworCisjZW5kaWYgLyogX19EVF9CSU5ESU5HU19CTUlQU19CQ002MzYyX1BNX0gg
Ki8KLS0gCjIuMjcuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
