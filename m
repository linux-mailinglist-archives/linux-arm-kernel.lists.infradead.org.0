Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEF51F592E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 18:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+vDbg64kIYjpToEQHHxIhkfIRZWPx60yziD3iCC6EE=; b=aWs3WAF5d78Jiz
	uYtZME3b0ZLPXl9XBSfoYdZ7+b7o7dMuqzCEFo1zUPWZjyQ/mjLz5OX40jLF9sws5lSSKvs49J2TI
	Zyr/pvfjKMQCEY8j+XcTL5THmdVKDfHSjnWuTkikOSe1P3YrqoHJt8cek43mEkH5nL/eSUalSDaLh
	YsiXYoKPJok2Pu0flE5hKW0cy8GHJ/pZc7mlpe2yrSCT+CwlSGm8XUcqNpuJUCks9M+JmfrV+dt98
	xjCrB5aESgt0oJIvz8GOkekn2Mh+4E22+RJmxLBChACuWq6fk5E5cQf971DtqoiN2odOom4I7pJkR
	VHsTu5yS0g4VXB74Sf9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj3g6-00011n-7x; Wed, 10 Jun 2020 16:34:14 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj3f3-0000Gy-EQ
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 16:33:10 +0000
Received: by mail-wr1-x430.google.com with SMTP id p5so2983291wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 09:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jah2m/tEOh9h0lymAwcC6WmsIFSaB8GDDwM5FtbgkHw=;
 b=N4VymObgfYu2zZKNYXEI88esUcP9IhzhU3xqsVmB9hjQ8OBsso8lc7kJ89e1KOp9ja
 xvyMMgEzZWKm14PmAlkivRoQdxIPdig2cplPPYQrD7nBnPklXw8SXw+EmkM4Yj9khTDK
 BDg9hPx9MYQa4tVKzrttuXCTTjVgkd+yMc98sQeDqM4fzJHWovsnpfnPHPb6M4aUo7Jo
 0RQargXjtvYF86ViSkoEytVIKAguMC12g8ntsHOswAZdGEGf+ejPeeuTd7kS9SyotoZY
 6hwYsN7YYec6yudTlcKtJGwu4AwO0VF2H5R+yTx3iH+XjZ4wpoGoGR4k+pizlt8iE2c0
 62Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jah2m/tEOh9h0lymAwcC6WmsIFSaB8GDDwM5FtbgkHw=;
 b=EK0IcDK6J8sBU0o5uTLL6L9aTbVrxgEWq0Tw5u/EAvFDz5TrIxgtr5XXlJmb2Vqvn4
 kNd394CbTVZrF5nu6y9BUsnGzjqnpwai/1TUj/uxQjLpcMdR1ceEJNHZdqOHsgyqNtrB
 WDGAA3CAJ/WXJkeXPZplmSXMlRY2oHnWTtvjGahUcCTrmhNFgN2dg3iNSMRvA4GdXdO1
 yXbWpElYN4thUSrxoqeIL1YiZbarHf52UBXtuPV9xzVgmeyHCeROZvjdmshHX6dJVOfQ
 PTuL9g0USnsEg6aGgkKv6JL/DvbIzgaLs+BXfER8LUtvBVKSiVhmOLb/yt1ShIst+0YF
 bcuQ==
X-Gm-Message-State: AOAM531t5FxEcHFyNLPo9lCYzT3tBHO8+i1HQKyLJyO4PtLlFQPx6J6+
 7Vevt3EC4chWAcM5bVigieY=
X-Google-Smtp-Source: ABdhPJzSLEhfPNTqRJ0JaCbauvlFPsvfjLp4AGNeB5lQTlHyUvPC6crt280vKGWhpZvvRWmXIsFdIQ==
X-Received: by 2002:a05:6000:4c:: with SMTP id
 k12mr4580024wrx.215.1591806787731; 
 Wed, 10 Jun 2020 09:33:07 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id t7sm414430wrq.41.2020.06.10.09.33.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 09:33:07 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/6] mips: bmips: dts: add BCM6362 power domain support
Date: Wed, 10 Jun 2020 18:32:59 +0200
Message-Id: <20200610163301.461160-5-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610163301.461160-1-noltari@gmail.com>
References: <20200609105244.4014823-1-noltari@gmail.com>
 <20200610163301.461160-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_093309_496484_01F8088A 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QkNNNjM2MiBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCmNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KClNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+CkFja2Vk
LWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0tCiB2MjogQWRk
IGR0LWJpbmRpbmdzIGhlYWRlciBmaWxlcy4KCiBhcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9iY202
MzYyLmR0c2kgfCAgNiArKysrKysKIGluY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzNjItcG0u
aCB8IDIxICsrKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAyNyBpbnNlcnRp
b25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjM2
Mi1wbS5oCgpkaWZmIC0tZ2l0IGEvYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjM2Mi5kdHNp
IGIvYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjM2Mi5kdHNpCmluZGV4IDhhZTY5ODE3MzVi
OC4uYzk4ZjkxMTFlM2M4IDEwMDY0NAotLS0gYS9hcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9iY202
MzYyLmR0c2kKKysrIGIvYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjM2Mi5kdHNpCkBAIC0x
MDgsNiArMTA4LDEyIEBAIHVhcnQxOiBzZXJpYWxAMTAwMDAxMjAgewogCQkJc3RhdHVzID0gImRp
c2FibGVkIjsKIAkJfTsKIAorCQlwZXJpcGhfcHdyOiBwb3dlci1jb250cm9sbGVyQDEwMDAxODQ4
IHsKKwkJCWNvbXBhdGlibGUgPSAiYnJjbSxiY202MzYyLXBvd2VyLWNvbnRyb2xsZXIiOworCQkJ
cmVnID0gPDB4MTAwMDE4NDggMHg0PjsKKwkJCSNwb3dlci1kb21haW4tY2VsbHMgPSA8MT47CisJ
CX07CisKIAkJbGVkczA6IGxlZC1jb250cm9sbGVyQDEwMDAxOTAwIHsKIAkJCSNhZGRyZXNzLWNl
bGxzID0gPDE+OwogCQkJI3NpemUtY2VsbHMgPSA8MD47CmRpZmYgLS1naXQgYS9pbmNsdWRlL2R0
LWJpbmRpbmdzL3NvYy9iY202MzYyLXBtLmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3NvYy9iY202
MzYyLXBtLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5kMDg3YmE2
M2M3YTEKLS0tIC9kZXYvbnVsbAorKysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3NvYy9iY202MzYy
LXBtLmgKQEAgLTAsMCArMSwyMSBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0y
LjArICovCisKKyNpZm5kZWYgX19EVF9CSU5ESU5HU19CTUlQU19CQ002MzYyX1BNX0gKKyNkZWZp
bmUgX19EVF9CSU5ESU5HU19CTUlQU19CQ002MzYyX1BNX0gKKworI2RlZmluZSBCQ002MzYyX1BP
V0VSX0RPTUFJTl9TQVIJMAorI2RlZmluZSBCQ002MzYyX1BPV0VSX0RPTUFJTl9JUFNFQwkxCisj
ZGVmaW5lIEJDTTYzNjJfUE9XRVJfRE9NQUlOX01JUFMJMgorI2RlZmluZSBCQ002MzYyX1BPV0VS
X0RPTUFJTl9ERUNUCTMKKyNkZWZpbmUgQkNNNjM2Ml9QT1dFUl9ET01BSU5fVVNCSAk0CisjZGVm
aW5lIEJDTTYzNjJfUE9XRVJfRE9NQUlOX1VTQkQJNQorI2RlZmluZSBCQ002MzYyX1BPV0VSX0RP
TUFJTl9ST0JPU1cJNgorI2RlZmluZSBCQ002MzYyX1BPV0VSX0RPTUFJTl9QQ00JNworI2RlZmlu
ZSBCQ002MzYyX1BPV0VSX0RPTUFJTl9QRVJJUEgJOAorI2RlZmluZSBCQ002MzYyX1BPV0VSX0RP
TUFJTl9BRFNMX1BIWQk5CisjZGVmaW5lIEJDTTYzNjJfUE9XRVJfRE9NQUlOX0dNSUlfUEFEUwkx
MAorI2RlZmluZSBCQ002MzYyX1BPV0VSX0RPTUFJTl9GQVAJMTEKKyNkZWZpbmUgQkNNNjM2Ml9Q
T1dFUl9ET01BSU5fUENJRQkxMgorI2RlZmluZSBCQ002MzYyX1BPV0VSX0RPTUFJTl9XTEFOX1BB
RFMJMTMKKworI2VuZGlmIC8qIF9fRFRfQklORElOR1NfQk1JUFNfQkNNNjM2Ml9QTV9IICovCi0t
IAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
