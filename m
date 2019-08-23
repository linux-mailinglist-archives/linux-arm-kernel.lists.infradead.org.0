Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215FD9B06D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 15:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/Rm0LtQpXVDtorthBo77sw5Hl63F+h+Vb7YNOTyVIHA=; b=gS3D6hkbuM3gCG4w5gQ/BljKcw
	Ysozi1ehM5y/ZvADOCXfk2NCCNM/Zjxi99W1BV63zDZ/UG9TrIRij9aFzv6ssG1R64u98Yb5MkmKY
	jr91z18vxl4QFHaDzZTK9cIP0E4OS7xKhEV70e98eO3LXDk0sxJtu/RlXbw8YwR39rPBn+R4OtuDB
	Ks0D+9BVwuMSklhoXY7ydEZpdqZYca6EYJRvhsN1TnEHyMtcZZoLOwHGi2nHdediVf8oLBIen6YB6
	cIocJExfNYOkNwIyvwylqXyCzYg14aRoeu1ITealOLoHdonUhaMLUEgm1ZV9XxAotQYJYYUJMn4M5
	uEMbQyAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19KF-0005KB-Su; Fri, 23 Aug 2019 13:09:55 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19Js-00053P-Rn; Fri, 23 Aug 2019 13:09:34 +0000
Received: by mail-wr1-x434.google.com with SMTP id u16so8613798wrr.0;
 Fri, 23 Aug 2019 06:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8VCD60Jb/+pjJ/5tE2H1gE1kn+YA9VqYcdsUMqOXSco=;
 b=QDjAJEJq6ZcVuSHwU+MBKVsJ+39TQfO5zpnFhyxxytBqnvyL4EtFjYELT9Xf7dCXK5
 5YDBt6H932I+KJgHm0IVNRDSmsC1CnhEt1bf7nJxDgz2DuYJK3EC5xTVUhgZEEmrSaSE
 lkjrPV8lAUp15Kx63HaUvBsveFSORtXGfqlyfxLsxQtpSvDPq5sV41wlKFDz573i6Ka4
 me3obmuVQ6ad/KqBaS/XfDgJ4m5iX/ar6XUszx5NQBeA8FtkODNYJodgCsqKQiv6VAmN
 ZtwFTeLHVRVLtuKlvzluRoLkI7pOPKbBwPvPF09w3fQVMGwGLMahnkYMOfIYYWgaAqUV
 i1Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8VCD60Jb/+pjJ/5tE2H1gE1kn+YA9VqYcdsUMqOXSco=;
 b=eVNYowULBFYg0EuO5zUfcZzh2BWpr3Cp3Og5pC673H/RI7Mjo3zhuI5JIh+Mxi4fBP
 k/rSbnCIg9GFVwbhuowzNCMUi809MubWz+ajPBvScUWrI0HDcW/Z7zzm6t25cUa7wZq3
 Jf5fWFLfkNG9y1BoOZP8hXjGSdWak6f0qEBe4Ok+1YeWS2EAJ3TCVbjoUwGP0KmLhI6b
 v95ZFZR+XqAg9koUL5MagnASFzB5tKeUiqqWBO+0LQGp7a0rnbs/0zbYZr+4sQNiQgzt
 gDZLA2waXIrG0eEUYHk8rB6Doei+AS9kkQ2xf6eWFpxV5ULvOxqEHYpPZCHGD11DCxAa
 2HUQ==
X-Gm-Message-State: APjAAAXPbqkMkczmm8meVBb5f/PMohIIo2L2xWq0Ynpjfyn27drfRr0h
 X4BQ5DbWT1bttJq/n6glhSM=
X-Google-Smtp-Source: APXvYqxeasfLg6QmAfYNd5CxvNxF5CTrTfQn9CMhycqaL9NZ/B1NdtGXp9v0usy0mUSJePpK3pFTXA==
X-Received: by 2002:a5d:4b05:: with SMTP id v5mr5151794wrq.208.1566565771240; 
 Fri, 23 Aug 2019 06:09:31 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id m7sm4359854wmi.18.2019.08.23.06.09.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 23 Aug 2019 06:09:30 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: Add vendor prefix for Ugoos
Date: Fri, 23 Aug 2019 17:08:35 +0400
Message-Id: <1566565717-5182-2-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566565717-5182-1-git-send-email-christianshewitt@gmail.com>
References: <1566565717-5182-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_060932_897347_C41D5BD4 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ugoos Industrial Co., Ltd. are a manufacturer of ARM based TV Boxes,
Dongles, Digital Signage and Advertisement Solutions [0].

[0] (https://ugoos.com)

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6992bbb..d962be9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -965,6 +965,8 @@ patternProperties:
     description: Ubiquiti Networks
   "^udoo,.*":
     description: Udoo
+  "^ugoos,.*":
+    description: Ugoos Industrial Co., Ltd.
   "^uniwest,.*":
     description: United Western Technologies Corp (UniWest)
   "^upisemi,.*":
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
