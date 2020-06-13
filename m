Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD3B1F81EA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 10:23:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e29bq4l9x5TionzWvsNGqnApedA8PMQ8CXXpTnwqPrA=; b=ShVruW1X9iWUhp
	JkeTMBUInzNjDUis08VfzO1YqCEHot5Z2PC+6UDgCI8BtJbRFqrpNxD3nscD5WZ3bmkWJmlJIqqHO
	+bu7l8vVUUd9risC1HXd2jcrjhFcZ98u0IL/vfjGbgnzX4gOfRADJfKLszHKXlNRObeY4b2rUaIor
	nW/I339f00Xw8YJW/t5oKXm6r+f1jzkiX8LtOudrbLJVRFUWqpDwO31eO31nxvzaMFxus+wEuMnMx
	M5eCtKDv7uLbXZuK7gP8mOUq41FdEcwApwm57aVE3W/8c2jtdDW1Oe7Uxd9wZi/xVfyVIzg2p/Uxs
	d7SIHoTD1BTUcynq5NHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk1Ry-0006xq-I2; Sat, 13 Jun 2020 08:23:38 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk1QE-0005es-OQ
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 08:21:52 +0000
Received: by mail-wm1-x331.google.com with SMTP id f185so10017390wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 01:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eFELRKlgi51zXRTgZvULoamMhty3QhBmoZ29VwRZiTs=;
 b=KfZDBbAZFKRdgc3DrMOy5US+r/xs5xOcPlRZNDrPt3zst6Mz8gOiU6Rut8NHj85onA
 MhwJdL9h4kaK6wIiNxsDrBXEIxJobpdH8i0xKrlybi43dAz8fu6DXeNzkyAGMCdIX8kg
 4getyyN3+eTxA/1b2U2w5ArrVJckk0CcKk4Tx6icB4vaIteEUFh6kPkWlKJiREpEX7Zs
 zBnZHt17GbW2UvRzUYzPYmXQfmxcenyVnp4i4lyQvRw8Z8WKuGT4FTXY4c0ErPZ+vnhn
 Wah7oGPjejzz6ULSk1yZ0faFlXyUySt5BxuMuO3GqSUv+IR9aBh5C3mVhOd3bQ2DZQ8o
 Iviw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eFELRKlgi51zXRTgZvULoamMhty3QhBmoZ29VwRZiTs=;
 b=Zg3BawZbvaUQ8ReVvOltAFTJ5vxbfzJF1nqpKXZjHbqXFzR0yFbevqb7I4zX0kXktD
 FBiq1g5dlq7PtU+hxLY2QC7yUnb+Cps/HZP+kXZZ+N3lHhoBkgDwx6glRxyTtro8QNJi
 hTHFB2iUwQKRoDNEm+Hs70tYXhS0jN4Jpo1qcI0Xsm9eaGMmZ+32Yp/Fwn+hjLbA/kZ9
 6oQu9VSm6okX2fwNwDoyWuzPDMcEhCEA2/ZyUnf0EoS2gOf2D0xzMjjVnqCBDjolPJi0
 HwwSTLwPyKZZgxc2UcUF2SEZc7zJsKoWl7S1GkRvIL5xKNUUgBV9dyYM4IL9V092WwWB
 gMDQ==
X-Gm-Message-State: AOAM5331Y6S7zWBZjinuA4mP1XNCRXC7UAaTEK8Atk2Kuz5iIkz8gFbc
 4L7TvfBBFJn/rwAEfTbfTrs=
X-Google-Smtp-Source: ABdhPJz9nU/D/VRRxp4n9kuI1XmXf+ipBXnCNKdlvJCgjqyVUG/Xb4Et2dJ3dt+soSRKl9cIvdRJdw==
X-Received: by 2002:a1c:c904:: with SMTP id f4mr2901906wmb.69.1592036509020;
 Sat, 13 Jun 2020 01:21:49 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id n189sm12243603wmb.43.2020.06.13.01.21.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 01:21:48 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 5/9] mips: bmips: add BCM6318 power domain definitions
Date: Sat, 13 Jun 2020 10:21:36 +0200
Message-Id: <20200613082140.2009461-6-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200613082140.2009461-1-noltari@gmail.com>
References: <20200610171630.465579-1-noltari@gmail.com>
 <20200613082140.2009461-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_012150_827554_CDBB03BD 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:331 listed in]
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

QkNNNjMxOCBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCmNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KClNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQog
djQ6IG5vIGNoYW5nZXMuCiB2Mzogbm8gY2hhbmdlcyAocGF0Y2ggcmVvcmRlcmVkKS4KIHYyOiBB
ZGQgQkNNNjMxOCBkdC1iaW5kaW5ncyBoZWFkZXIgZmlsZS4KCiBpbmNsdWRlL2R0LWJpbmRpbmdz
L3NvYy9iY202MzE4LXBtLmggfCAxNyArKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQs
IDE3IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdz
L3NvYy9iY202MzE4LXBtLmgKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL3NvYy9i
Y202MzE4LXBtLmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3NvYy9iY202MzE4LXBtLmgKbmV3IGZp
bGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4wNTkzMWRjZTgzMzMKLS0tIC9kZXYv
bnVsbAorKysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3NvYy9iY202MzE4LXBtLmgKQEAgLTAsMCAr
MSwxNyBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArICovCisKKyNpZm5k
ZWYgX19EVF9CSU5ESU5HU19CTUlQU19CQ002MzE4X1BNX0gKKyNkZWZpbmUgX19EVF9CSU5ESU5H
U19CTUlQU19CQ002MzE4X1BNX0gKKworI2RlZmluZSBCQ002MzE4X1BPV0VSX0RPTUFJTl9QQ0lF
CTAKKyNkZWZpbmUgQkNNNjMxOF9QT1dFUl9ET01BSU5fVVNCCTEKKyNkZWZpbmUgQkNNNjMxOF9Q
T1dFUl9ET01BSU5fRVBIWTAJMgorI2RlZmluZSBCQ002MzE4X1BPV0VSX0RPTUFJTl9FUEhZMQkz
CisjZGVmaW5lIEJDTTYzMThfUE9XRVJfRE9NQUlOX0VQSFkyCTQKKyNkZWZpbmUgQkNNNjMxOF9Q
T1dFUl9ET01BSU5fRVBIWTMJNQorI2RlZmluZSBCQ002MzE4X1BPV0VSX0RPTUFJTl9MRE8yUDUJ
NgorI2RlZmluZSBCQ002MzE4X1BPV0VSX0RPTUFJTl9MRE8yUDkJNworI2RlZmluZSBCQ002MzE4
X1BPV0VSX0RPTUFJTl9TVzFQMAk4CisjZGVmaW5lIEJDTTYzMThfUE9XRVJfRE9NQUlOX1BBRAk5
CisKKyNlbmRpZiAvKiBfX0RUX0JJTkRJTkdTX0JNSVBTX0JDTTYzMThfUE1fSCAqLwotLSAKMi4y
Ny4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
