Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6787187E25
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:21:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fGmvjHBwnrxzlaoT+lXFT0hTpQfzcgKcY3dhyZKHh1o=; b=iDx4kXMV5TCwqoG6yg5wtV3m6Y
	z4HkRHN1IHhSzajkX0Rg9GvmpuiJqGMODhnNC/3lcDenMi8XU7/s/tOVLFq0B5gW5eMCxjNdl+trF
	5wx91izrjC6Z8bek9qrNy6bfPBcGrplmt16vwX0G0Vt8W3TPxQ3sbHJ5dJ+Z8E587JhH4OqLbXrwL
	7+bTNh9W7hETKbpi0qsJNosf0xwOHksupxVlcvIRK1gz7eopgfxtfn837pKYPLB22Zem9ebtbp1Yq
	Yu/W7z789B2VpTeusLbSGNnn8aoxSflc0R8fJ1oWPoMcFX1pxRUCfdQ1CFcDijEMjZAeLWsNHm93M
	c7NSl9bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9LS-0005gp-53; Tue, 17 Mar 2020 10:21:10 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9KX-00053G-RT
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:20:15 +0000
Received: by mail-lj1-x243.google.com with SMTP id r7so22122420ljp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 03:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WGynCl+wfPeR4qb/AG3pyJyPwdo3k8wHw+AwHbtPDSo=;
 b=gp5vOfr4E7mqJYwNhg7/IIR8w1lDuNJON4+f9eMbKOf/7Amusv/O2Tvh9K8HEoSlpe
 xiMIASpuj2uiVqkt6a6mTnyqETDiZoFFalrBXBnVggQYun6llahJlZ+XO7h7dwb79Rjh
 1vL+qRTUS06BicP3SfkSNZRLvdgWBEVNYPQwdHD8Fqmv1qqs67v9n/59uxtlst137v8J
 XsOSGyw2DQ9ze9cAeb3OyMMiIQGeeFsJZGp1riG6UQiRBh6AX0oPxg/YgTQjsl4Xmq7Z
 +RtoO4y8XFCs+yR5Ar7bSh04yMxFlmljjs/sNYm4NPlHHOQhsOVMPPInqh12Un2rdooc
 XFeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WGynCl+wfPeR4qb/AG3pyJyPwdo3k8wHw+AwHbtPDSo=;
 b=OV+mltU1C3yy744onevPFhO6gU4Oo4o89kmsm9A2m8i6kmbp2/mDh4DXplabeLe3pV
 mXzCEfMERVIQ6kVKeo0von5q/cgrekKuD3Ot5NroBuMliHwYQehV9p7o9W1hCgv84pOu
 eiuknjJh/sIG7x6KTxTa+CRTZR2vi/eTuy9p92vKfzkmqzPrWQz8jaA9SLzOyhXJPDpg
 xL+RlqIcpbGM9iUnQGNXMWFbrXgenwOsneICFjPLSpKqxj9YJHqLLuckOtwETRvShQAD
 zO1OhLNqBAaFpJW9O5dtIHmdfnSb6yMVfe1pUXuWmOIsy9NBF3I66A1XZ+21uYIpaVX2
 rdGg==
X-Gm-Message-State: ANhLgQ0Wn3e9DLGs4gK5Xn+LUutlOsTDMYHq6Z9CEv6GJ+uEO0Sb7QOc
 beA+usFKyu9YxzaEQCSpG0nLvSqHS5g=
X-Google-Smtp-Source: ADFU+vtY35x2PkeN39BHTb3sRwtOAYWhTE1k0pSIWTXjVyFc5Yh/KLkKzaQCsDKkUAvWZnyLNwLqRg==
X-Received: by 2002:a2e:9797:: with SMTP id y23mr2322272lji.183.1584440412020; 
 Tue, 17 Mar 2020 03:20:12 -0700 (PDT)
Received: from localhost (host-176-37-176-139.la.net.ua. [176.37.176.139])
 by smtp.gmail.com with ESMTPSA id w22sm1962649ljm.58.2020.03.17.03.20.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 17 Mar 2020 03:20:11 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v1 4/5] dt-bindings: input: Dual license input.h adding MIT
Date: Tue, 17 Mar 2020 12:19:46 +0200
Message-Id: <20200317101947.27250-4-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200317101947.27250-1-igor.opaniuk@gmail.com>
References: <20200317101947.27250-1-igor.opaniuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_032013_923842_868DD51D 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [igor.opaniuk[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Opaniuk <igor.opaniuk@toradex.com>

Dual license header adding MIT license, which will permit to re-use
dependent device tree sources that include this header
in other non-GPL OSS projects.

Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---

 include/dt-bindings/input/input.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/dt-bindings/input/input.h b/include/dt-bindings/input/input.h
index bcf0ae100f21..c3cf5d034025 100644
--- a/include/dt-bindings/input/input.h
+++ b/include/dt-bindings/input/input.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0 */
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
 /*
  * This header provides constants for most input bindings.
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
