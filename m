Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1231F5A07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHWiL+93Tb7ZaOEFrrpmF+HoIJPJY7QmxDhuLmqPxHs=; b=sg47s8HOPo8aG5
	gC/hbRYURN8KQaxfE9kp9aFUJd7zRmECSGQcYOdqa411PAUrdpQrDVqn66njY0T3YQ2bVqI9smpcL
	rxi+kWKlelrgbtlc/fnuo+yXZ1uoXFJjkuUNGu+mIE69AgOnc6aUCGsahYUPDW3TaZqoYgLgixa/q
	Qr8MKr+MgnguNxdmsi80dcvB3gX1BErkrdZt6AI21HFBj4pBuBQpSrN7P5nF8D+im9TkP3Y7KR45W
	SzADCwr1ctjJwPhAwDBUqIFx4iacv429HE8V0kFB/lV2GXQv2bfCw1FkKQiUUz7D2HqKdTeki9s/S
	DPRkGGsgXxahqwFUgETQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4NG-0007W3-0G; Wed, 10 Jun 2020 17:18:50 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4LB-0005lE-1u
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:16:43 +0000
Received: by mail-wr1-x42b.google.com with SMTP id l11so3190458wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 10:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8qnrUTlruyZBfNINeLZXr9jcAeZ0GwM8qwMZYyF64O8=;
 b=hHrcQOV7s9ClQx7WJ82o5VJSvvzJkKtumIstTIIQXpH710Clhl4FTJz2S4mNdf3MWp
 j9zCDGIulHTU5v2fq6u1EyY5oc8CSVeXaW/FUQgM2kGCZ+ggehjij2KJP9GOSXE1l+71
 jFtkDaudCxhpF8gqBi4s9CcuKI1LeCZTNrLTyT8sw6OcSmYlbRDyLqiGn4Ya9Fbb0M4f
 U2hBGt02wqXZt/+XVE7S6EvlXCmOyQx6tRi1YHCjVT+g1GJlOaJknFEeiuKYFmGOea9w
 N/SvikagMRBwV/5/uAWiQDeeEsx5OwNuOWycdaUXH4/7AorC9ZzAytcjM9W8WVTbDaDi
 eABQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8qnrUTlruyZBfNINeLZXr9jcAeZ0GwM8qwMZYyF64O8=;
 b=SwjQpfalBZC0sAgrJPZS50fInAnIUuVHs6z3H3I9v7s4Zhf6QvkqoJ+3F5G8qzLVCN
 UHeIQ8AspXE6fI6W7qIOd3RcBOR51jhoyRx3FwfIsStXMKALmWIsoMKXLtlCraksG7oK
 Fbe/ZOFUifswgWKAKBvZv7HHoCMZVhytNHK4ctitrV9P1DWih3USz6j1ZRvzN7u6//L4
 UxA8otZGCe15Fb3G5pbye6AG22YmWGvg3lqDc8CwlPpzZaU/ME1RTrZuQI6uBcO1t/Di
 mjI4RajvTKuVKopiqX8AeF20J2170fF/bBm41VQwFL5e1ZiDEkQV7xjkgcLUPlGsVWGT
 +V7A==
X-Gm-Message-State: AOAM531arz1AKy/vDdDTUOKfW3XEMSBL8/dbI0iXXqzYgaBupO27dWmi
 7xDBfXZjS0Ny8vCl0I/qUfs=
X-Google-Smtp-Source: ABdhPJy5yG42+jw2onyLnrDicb3xufPchQWsadng168yCu+nX18AQlQFTfWW1LAAWEeta6RWulAgkQ==
X-Received: by 2002:adf:ef50:: with SMTP id c16mr4773543wrp.161.1591809397956; 
 Wed, 10 Jun 2020 10:16:37 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id f11sm589048wrm.13.2020.06.10.10.16.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:16:37 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 5/9] mips: bmips: add BCM6318 power domain definitions
Date: Wed, 10 Jun 2020 19:16:26 +0200
Message-Id: <20200610171630.465579-6-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610171630.465579-1-noltari@gmail.com>
References: <20200610163301.461160-1-noltari@gmail.com>
 <20200610171630.465579-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_101641_131906_3453042B 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
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

QkNNNjMxOCBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCmNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KClNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQog
djM6IG5vIGNoYW5nZXMgKHBhdGNoIHJlb3JkZXJlZCkuCiB2MjogQWRkIEJDTTYzMTggZHQtYmlu
ZGluZ3MgaGVhZGVyIGZpbGUuCgogaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMxOC1wbS5o
IHwgMTcgKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCsp
CiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMxOC1wbS5o
CgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMxOC1wbS5oIGIvaW5j
bHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMxOC1wbS5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IDAwMDAwMDAwMDAwMC4uMDU5MzFkY2U4MzMzCi0tLSAvZGV2L251bGwKKysrIGIvaW5jbHVk
ZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMxOC1wbS5oCkBAIC0wLDAgKzEsMTcgQEAKKy8qIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKyAqLworCisjaWZuZGVmIF9fRFRfQklORElOR1Nf
Qk1JUFNfQkNNNjMxOF9QTV9ICisjZGVmaW5lIF9fRFRfQklORElOR1NfQk1JUFNfQkNNNjMxOF9Q
TV9ICisKKyNkZWZpbmUgQkNNNjMxOF9QT1dFUl9ET01BSU5fUENJRQkwCisjZGVmaW5lIEJDTTYz
MThfUE9XRVJfRE9NQUlOX1VTQgkxCisjZGVmaW5lIEJDTTYzMThfUE9XRVJfRE9NQUlOX0VQSFkw
CTIKKyNkZWZpbmUgQkNNNjMxOF9QT1dFUl9ET01BSU5fRVBIWTEJMworI2RlZmluZSBCQ002MzE4
X1BPV0VSX0RPTUFJTl9FUEhZMgk0CisjZGVmaW5lIEJDTTYzMThfUE9XRVJfRE9NQUlOX0VQSFkz
CTUKKyNkZWZpbmUgQkNNNjMxOF9QT1dFUl9ET01BSU5fTERPMlA1CTYKKyNkZWZpbmUgQkNNNjMx
OF9QT1dFUl9ET01BSU5fTERPMlA5CTcKKyNkZWZpbmUgQkNNNjMxOF9QT1dFUl9ET01BSU5fU1cx
UDAJOAorI2RlZmluZSBCQ002MzE4X1BPV0VSX0RPTUFJTl9QQUQJOQorCisjZW5kaWYgLyogX19E
VF9CSU5ESU5HU19CTUlQU19CQ002MzE4X1BNX0ggKi8KLS0gCjIuMjYuMgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
