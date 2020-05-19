Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4D61D9F42
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=us8TRq6RgnstVxIrHeRxNprDIEhzxHtMpXl3E7YNx8w=; b=JCoi4SD4deeqT0L8t8nwtapi/g
	uKZd+xF6VNOqs5ryXFZoniadZejN6etHMXVi7LVobZ2UbVxc9pb1XHcTnd33F6kX7ytNpzrUK0LfY
	aQafWNDBtbGwU/I6Bnf3BoiBYHpWiwAIbvYQH4XOXlcZjcHKVB096qjgpxqTsEocjgTWDgkUjqwdt
	CqFZqFggVoNgWhkeIZ3+YSmNHZAWm4kRCEjx0HQQNaiVfUo2bJN40vVaqI0lui0PvPxreUNudvdjg
	xOOVztTaqVrOa7YukDC6B7UKk3hXsD2+DhQ+n4er5vMRcGX/LjQaWTcz3B5MBbAQ58yiIvRhtiujs
	ge0xkjIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6uK-0002B4-0X; Tue, 19 May 2020 18:24:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6tH-0001Sf-H2; Tue, 19 May 2020 18:23:07 +0000
Received: by mail-pf1-x444.google.com with SMTP id y18so279846pfl.9;
 Tue, 19 May 2020 11:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uGEwfxSdBJsa1cl2OhaQcNUabf3AWdgD6M5N7pLugTg=;
 b=ij6+bxv7fFtCxpEQ9Gr6ekFLP/RsJYV+6sbKkhvZCCXww7tao0vEz4DvtyhfyAY2Wg
 EN28jlRR3zk6z1NkVF5o1y/ACBVEeokemkFjj1inJAGM1uP+Qxn5bmSLxm//Mkh5oOds
 kU/KQRcsQTswUfSLWcKd65s5z5ZrLcnTZa/RBXINDA2EtXFWrgVKwDvQX6y/NeKK823B
 V6d9h9YVKcgenTvjqWQvOwyAygT1vwkOlC03tdtmqWEurMrqQtoLxDvY+Hn23aE6Rb7G
 Fqp6rrQEAXtVw8fBfwc9ZPlFjHsdN2FTl+3LjnROjGWxIf5UjH8NNjrBGSECS4sRPUAn
 5pbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uGEwfxSdBJsa1cl2OhaQcNUabf3AWdgD6M5N7pLugTg=;
 b=asJPtSbpc2klRIHZsWsj9g7PKmbWk0ZabNYLR71QfWMoHNi8AEQbfh1gpvcudGbEdU
 9PiUfedr7NlVxpdbf63tanJvPph78vsmPziAzUgiX7j00MKEaRV6WIBFxIkX7S1bstoV
 z6TQ7ukebGTPWFXMPA0x8nRPLzHGF0wHgNOp/I6ku+3mq0zLNyYNHaLJBvnbyd4WoGTQ
 yxtDoegP3bVN8JDNt/J5Pl9rju0Cif6tZQpAiMKwnTTngHQf2WJN7ZEQxBtQxxSWu4nu
 mgy923ngtT1hv0oD+fZVaSL4mf6yN4sTqPh7SmgyW7dyvKAck+de1nBLRaFlGMVNnDx4
 ablA==
X-Gm-Message-State: AOAM532h3AsYbfWJB2KxLfkT4iVDkkWIrcnUmwbXRzCVBdk4AapvLQM9
 RV4bZbDZdBBactBCPU5U9d4=
X-Google-Smtp-Source: ABdhPJxZ9KFCkQajAnh38GMums9lL5yY536fO7g6rycFYOQ7DRp9V8mWl/fpQGYMcK1GwcCpgGnRlw==
X-Received: by 2002:a63:e70b:: with SMTP id b11mr503149pgi.88.1589912578979;
 Tue, 19 May 2020 11:22:58 -0700 (PDT)
Received: from localhost.localdomain ([223.235.145.232])
 by smtp.gmail.com with ESMTPSA id p2sm148399pgh.25.2020.05.19.11.22.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 May 2020 11:22:58 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, vkoul@kernel.org,
 manivannan.sadhasivam@linaro.org, robh+dt@kernel.org
Subject: [PATCH v2 06/10] arm64: dts: actions: Add DMA Controller for S700
Date: Tue, 19 May 2020 23:49:24 +0530
Message-Id: <1589912368-480-7-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
References: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_112259_766930_303D5BBC 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, cristian.ciocaltea@gmail.com,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds DAM controller present on Actions S700, it differs from
S900 in terms of number of dma channels and requests.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since v1:
        * No Change.
Changes since RFC:
        * No Change.
---
 arch/arm64/boot/dts/actions/s700.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index 0397c5dd3dec..56f2f84812cb 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -245,5 +245,18 @@
 				     <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		dma: dma-controller@e0230000 {
+			compatible = "actions,s700-dma";
+			reg = <0x0 0xe0230000 0x0 0x1000>;
+			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			dma-channels = <10>;
+			dma-requests = <44>;
+			clocks = <&cmu CLK_DMAC>;
+		};
 	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
