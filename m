Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258D71ADA7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 19:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXVqRuDPwgWvIerczqgxlKlc7S95N7HA9c9zMLvbZS4=; b=TPSbfevkCDsf4O
	nHSWgd7BoHEyQfJs6iOYxYefPV+CAyRJiNdiBAXef19U6ghH8udfv4ngOBrsgn2Dx66SqvnlUqhUv
	ks8WnQkkHLTE4icvaDsuDM2viYGwvnXyTJNiY43HNCE+e7MzsdCtRdZJmpdk7QLy6iCfU1meZYL46
	4UFlAxApL3ZeTdc1ULF4g4l8H9s2JYNteg8LlJ9B3gLV/ihb6nk2bcVd4imvOo6obcZqZ47vaYeGq
	SUBeueSg0kP4p5zIHFLQ4NfG3ThCMUgwWQg8Asso+kIvqVxpv8G6xFe4qsSoR4xbYwbCVkh8G2dok
	yEhJo+eRrr1tIJi11Vcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPsZQ-0007Os-KK; Sun, 12 May 2019 17:47:32 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPsYJ-00063e-BJ
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 17:46:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so12077414wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 10:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p98bYKaDXcVUZuwnIBPZ/FdFvePGsYF2RuZMRuVjYxs=;
 b=abLKdOs0RFabo5GEND0zTOZyfkPDvhghjZxq2fsWLSpwzFrhJicR9jyufdbk1CDU9L
 J3wFEG29swfiDgIU8/+h9f3ipbmM27+bznSj7jQ2/s8qArm1YJxI8X0FV78uFY2Ny4xE
 zSXX3yClrh1AF+gwiUi9rla0gY5dVKSoDl75x7sy8/GmgVjfASsokQRovThYJ+kEGeZp
 sQwZb/Ex5wZXFcwJPGqgvyBmMShzFYfMsZ2EDZWzYzYfSwZvhtGn0jinqrK4dB3L+ZB7
 x8NKbN8VeSeE77qlo4ybhdLzsmJINDE9YjebAyaAZmMUYzjSA2H1FQP98ssvV0VPA7UC
 AwVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p98bYKaDXcVUZuwnIBPZ/FdFvePGsYF2RuZMRuVjYxs=;
 b=YeYsqDyFhmQBMiPwaY4z/iAKp+mIMnxzWje16yl98UyJ/kEa6Nspsx2xmtlIjFzSMX
 8+hlCv/GeRuK+YERWHBZksqGPwbRfH7b/i9UrXqSRUfq0YoEm9RxDWIfLANJVC2Yuv46
 rbwbmftfNNrfdzeXR0nEOvjawg5e8Htgq7jPdZedLBZp/fUELwSx/ZKPUmogHXRLQcEA
 gf0HHxq0YOZvxtbKExy7thL5oYFwbZ2KmobxTO65noCJGaygIfJdn3HSzvvZMsLGEeuW
 DZe59xn7Sd3ehUpJE7gdYLZ+MwZmUsNSVmOdg8143HaDdVRwmW9e1a1t1j9j9/mM33yc
 KMqw==
X-Gm-Message-State: APjAAAXJtrH4oI0Sa72QffPbH/jsbuMFFu/+YP4IgLaBEUNvK1QTOyPe
 uQTexgUbmQL06y/4+qdy1yY=
X-Google-Smtp-Source: APXvYqxmVJMgR22Rrgiw76ZfkUKo9ruVzTo1GiQnpLImqxaLzFzVd7hGG/AexLVI7T+n/wNN3jTc9Q==
X-Received: by 2002:adf:c788:: with SMTP id l8mr9151728wrg.143.1557683181952; 
 Sun, 12 May 2019 10:46:21 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id d14sm9090558wre.78.2019.05.12.10.46.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 10:46:21 -0700 (PDT)
From: peron.clem@gmail.com
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 6/8] arm64: dts: allwinner: Add mali GPU supply for Beelink
 GS1
Date: Sun, 12 May 2019 19:46:06 +0200
Message-Id: <20190512174608.10083-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190512174608.10083-1-peron.clem@gmail.com>
References: <20190512174608.10083-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_104623_736600_AD4A9221 
X-CRM114-Status: GOOD (  12.78  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KCkVuYWJsZSBhbmQg
YWRkIHN1cHBseSB0byB0aGUgTWFsaSBHUFUgbm9kZSBvbiB0aGUKQmVlbGluayBHUzEgYm9hcmQu
CgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgot
LS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5k
dHMgfCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0
cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5k
dHMKaW5kZXggMGRjMzNjOTBkZDYwLi4yMTQ0MGQ1NzJmMGEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMKKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cwpAQCAt
NzAsNiArNzAsMTEgQEAKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCismZ3B1IHsKKwltYWxpLXN1
cHBseSA9IDwmcmVnX2RjZGNjPjsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCiAmaGRtaSB7CiAJ
c3RhdHVzID0gIm9rYXkiOwogfTsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
