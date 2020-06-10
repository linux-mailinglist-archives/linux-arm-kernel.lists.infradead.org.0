Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E3F1F5A06
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+zVUa5+jTdwmy6fSpHwl3jzTe7Eqk+fSn1QRm2Ur0U=; b=AH48MBrMqEHeSs
	1bGVIWCFCc/X2DOL6fHfZsJLGSQSVi5D0IhQXr/YM9yF8StPM7XbLm/sLAe/xNIdrMFjlnzvHff8t
	aWnJK2o7IcUQA4TAleeMYp1aO+osGthzfeDm2qA5GuPMWt3VgwQ+7N1mJH0WNf3Z6O49PzGIiksAu
	pgJ6n4SCDRKg2dikHTQwYf20Fq0eMpP/Ykr6B9brQQSLXxKqFTWyvGggrPEmt9RZAKU1u8DO9J6rJ
	SKAM5GIcncnQB7c8hQthDIgqhqcEWhaxVgrPvF6EmZ6b5JlEet5O6/iWuzbEqtn6ErcNpHOfLXFh1
	uXarkHGqkATUV+Y7xoUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4Mv-0007JC-Tp; Wed, 10 Jun 2020 17:18:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4L8-0005k8-QA
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:16:41 +0000
Received: by mail-wr1-x444.google.com with SMTP id t18so3168851wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 10:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lDdshItlwdnmfzepKbPpmuAaIp6dKQ9DCj4M6A5UrdU=;
 b=siGfsk35lzH86e5aquAsfKSdN/8giMFuhHWJ0Tl1Gagq+AHLgUk+aadRSFgiSh8IxB
 cSMnQzcrmRLpy84clpq/vKIJTgHEvfPII7jNF0s4bPab0HFG6fsbJzERkJ56wCN2YCuj
 jVkqCD/qcj/9SqdSzSFO9FOOjVZ0ATVHs5ck8NbmyGX8ceB+7nN+Ln/xrdr06jBOED+o
 iDvtERms7ChgxKij4vxBIRua5fCGCoTpd0+h/RpML/AObNw7glMMHm1xN6wGw/F4HYiV
 uAFHQOGhPZL9t0pvHNM30US0mXUKC2j7dS/YUU21RaQU449mr7qdGRbjIl9NA6icRS1/
 Uk5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lDdshItlwdnmfzepKbPpmuAaIp6dKQ9DCj4M6A5UrdU=;
 b=ShlEQpI3DQi4rFeYZLb35Ef3jke0RjnO22eZe+GwidrIzoW3ZzIWOfsnuXCoNkM73N
 jlzX3h+FWPXYxP8NFCzC8YUSXTOrCUr9KPblWBVArONYFRZP9RK7SzO8j8tDiQ4nSng9
 J3WsYZXMZ5yaJQ1WPDvcSC21JW2xaF3VZvkWGAsx8Ucfi6tSfgmgU1NiqAKkrrT2HclF
 lyyO8PtmiuORMkwE73hBJpCD/RA3x3psPA2w4zh+GRGiHVBwwUP+fW6tEhZFKjmF0/Ig
 Ol+23u/hL/oSlW7CohDnIWCchHaUSSGqdkoCDb3cpWPSpyYaZw4Iz5+0+YhFYbaiBSvP
 FTDQ==
X-Gm-Message-State: AOAM532xAe0Z084se0CUAk9DV/nK3QKZf9B7jL4B8eRcLzfyNcEbVtjX
 SdD2hagqmFyi4n57sB/RRQM=
X-Google-Smtp-Source: ABdhPJx1djunj5L522CBpgGonhSBd3Wjpc1V0cz4pd18fakQ5y2c8wzX2CITkveZB2icsrf1vSIbyg==
X-Received: by 2002:a5d:68c2:: with SMTP id p2mr4809378wrw.253.1591809397002; 
 Wed, 10 Jun 2020 10:16:37 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id f11sm589048wrm.13.2020.06.10.10.16.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:16:36 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 4/9] mips: bmips: dts: add BCM63268 power domain definitions
Date: Wed, 10 Jun 2020 19:16:25 +0200
Message-Id: <20200610171630.465579-5-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610171630.465579-1-noltari@gmail.com>
References: <20200610163301.461160-1-noltari@gmail.com>
 <20200610171630.465579-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_101638_896543_01FBFEF8 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

QkNNNjMyNjggU29DcyBoYXZlIGEgcG93ZXIgZG9tYWluIGNvbnRyb2xsZXIgdG8gZW5hYmxlL2Rp
c2FibGUgY2VydGFpbgpjb21wb25lbnRzIGluIG9yZGVyIHRvIHNhdmUgcG93ZXIuCgpTaWduZWQt
b2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgotLS0K
IHYzOiBTZXBhcmF0ZSBkdC1iaW5kaW5ncyBkZWZpbml0aW9ucyBmcm9tIHBvd2VyIGRvbWFpbiAu
ZHRzaSBzdXBwb3J0LgoKIGluY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzMjY4LXBtLmggfCAy
MSArKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCsp
CiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMyNjgtcG0u
aAoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzMjY4LXBtLmggYi9p
bmNsdWRlL2R0LWJpbmRpbmdzL3NvYy9iY202MzI2OC1wbS5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDAwMDAwMDAwMDAwMC4uODRkZWQ1M2E3MzJmCi0tLSAvZGV2L251bGwKKysrIGIvaW5j
bHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMyNjgtcG0uaApAQCAtMCwwICsxLDIxIEBACisvKiBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsgKi8KKworI2lmbmRlZiBfX0RUX0JJTkRJ
TkdTX0JNSVBTX0JDTTYzMjY4X1BNX0gKKyNkZWZpbmUgX19EVF9CSU5ESU5HU19CTUlQU19CQ002
MzI2OF9QTV9ICisKKyNkZWZpbmUgQkNNNjMyNjhfUE9XRVJfRE9NQUlOX1NBUgkwCisjZGVmaW5l
IEJDTTYzMjY4X1BPV0VSX0RPTUFJTl9JUFNFQwkxCisjZGVmaW5lIEJDTTYzMjY4X1BPV0VSX0RP
TUFJTl9NSVBTCTIKKyNkZWZpbmUgQkNNNjMyNjhfUE9XRVJfRE9NQUlOX0RFQ1QJMworI2RlZmlu
ZSBCQ002MzI2OF9QT1dFUl9ET01BSU5fVVNCSAk0CisjZGVmaW5lIEJDTTYzMjY4X1BPV0VSX0RP
TUFJTl9VU0JECTUKKyNkZWZpbmUgQkNNNjMyNjhfUE9XRVJfRE9NQUlOX1JPQk9TVwk2CisjZGVm
aW5lIEJDTTYzMjY4X1BPV0VSX0RPTUFJTl9QQ00JNworI2RlZmluZSBCQ002MzI2OF9QT1dFUl9E
T01BSU5fUEVSSVBICTgKKyNkZWZpbmUgQkNNNjMyNjhfUE9XRVJfRE9NQUlOX1ZEU0xfUEhZCTkK
KyNkZWZpbmUgQkNNNjMyNjhfUE9XRVJfRE9NQUlOX1ZEU0xfTUlQUwkxMAorI2RlZmluZSBCQ002
MzI2OF9QT1dFUl9ET01BSU5fRkFQCTExCisjZGVmaW5lIEJDTTYzMjY4X1BPV0VSX0RPTUFJTl9Q
Q0lFCTEyCisjZGVmaW5lIEJDTTYzMjY4X1BPV0VSX0RPTUFJTl9XTEFOX1BBRFMJMTMKKworI2Vu
ZGlmIC8qIF9fRFRfQklORElOR1NfQk1JUFNfQkNNNjMyNjhfUE1fSCAqLwotLSAKMi4yNi4yCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
