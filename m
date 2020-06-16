Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 638D21FB400
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvNp7g2Pc9LF0wJ+H02hnxJ9/MqZlnXbKEMBxPBjnjw=; b=CR1beNRAEDej/Q
	9IpUOMVGfKuDZMyn+dI2P/crFnF0H7hdTlRK9Ac2L77fT4ZHX90UqUmf6QGOsjcMnBSkYh1wKTy5a
	jdxWTLbMrYiDlyJd19bA0nI0y+DbohPOgh53vli0kKcgGvUAjfw1XdxuQkfBdfYoBmKSV0PEv7ftz
	ANcLMYZYz4kjOfRPOlojnbsCxVphmmyn90FcK9ypUS0eZCqDPNOpVouMJa1htYsFxPutZZDyMODbM
	xMriWwYyGUZNOP4PY+LwuVGKvFE+LZaKtPEAxfKOZQJMIIM6UE/ALfpSw63O+g5kHveCU+DefPEoG
	KJNTpkFrOR4pQQgOdhfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCPG-0005tV-Ir; Tue, 16 Jun 2020 14:17:42 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3m-00059t-Hn
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:40 +0000
Received: by mail-wm1-f65.google.com with SMTP id j198so2336368wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m+Oy5TCjklnJXJnTpsKQEAS9YPNmRw7/jZUo1uh4cXY=;
 b=LxamS/MKqnBLmNYe28YdSGsQ2D8LWMfmQDzPPPrawRoo0jK+j9uVCTVLqs3pRS/lLV
 fPfBQTV4wbWNspZy2uIfTzJLjaPx88EiNXMYxUhzlj94j4q3Ua6rTaCdigGBt1p3vAED
 EsLzN8r3e7G/PmEt1aeNOjqoo63QtrqHRoEJ0NbE9VuZ9zjOQVvGH8EU6yxURx12AARe
 YTMteZDPpvpcq2c7rfr4RUc+BoMcVO73enc2RF6ANHiWUarzlVFt8MkXya37iTOScJgU
 aN4QX72MwfXU/uMzvNOrO9+IUZWhYtoLMPNs8DIZ0zePW1mYaDGMcvDLoBpMbhImHzH+
 i1OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m+Oy5TCjklnJXJnTpsKQEAS9YPNmRw7/jZUo1uh4cXY=;
 b=IeoIqHFC1Ry+da2luYutcZx8dg51uhfm+N4Dl7gzCfRUCC70WAv/XDDGE4OrFXNtQF
 dd/ogdn5MAZYT9dixZTiYNmCzBLP44zyr7Z3mBRAYobSi3T9WLfQbFC4jppsqa1ZX3Ug
 LsXdRIZJG6lbNJOV2xV14pOyJZ7vZzqeLIPxuETqGglByuM35tmseDAQmsACvKyziveW
 Hk0RihZD1qTMlmXBsbIGvxGeUpjlwNVu4PerUl3JUeIr+x6HS4E1G25SLS52T0+Htje/
 uOD6QPWfk38nW0kCRolYkzCsiFwpnCHkr4F6TLAtvgHCT8PY5hsCRhZmIa1SA7yYHD8O
 VXkA==
X-Gm-Message-State: AOAM5312VJZReqVvyE+ocgBRbvnrAz2CnCpXF/wlKzyjRNL2ctqISWMq
 h7XlGwI+Ku6aQCI8sPoLTQQ=
X-Google-Smtp-Source: ABdhPJw3jkTqJ+lgKZ6qIB5biG0YKqBZg1et2dqIrNIfkE5GKlgmyf7OxfU5uJnFQ/yiM2iWbEIe1w==
X-Received: by 2002:a7b:c10c:: with SMTP id w12mr3164846wmi.132.1592315728126; 
 Tue, 16 Jun 2020 06:55:28 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id w14sm1974388wrt.55.2020.06.16.06.55.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:27 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 68/73] arm64: tegra: Fix indentation in Tegra194 device tree
Date: Tue, 16 Jun 2020 15:52:33 +0200
Message-Id: <20200616135238.3001888-69-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065530_628246_D9FA7E63 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Properly indent subsequent lines so that they align with the first line.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index e0aa6c74073a..307f999edbf9 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -1669,7 +1669,7 @@ pcie@141a0000 {
 		pinctrl-0 = <&pex_rst_c5_out_state>, <&clkreq_c5_bi_dir_state>;
 
 		clocks = <&bpmp TEGRA194_CLK_PEX1_CORE_5>,
-			<&bpmp TEGRA194_CLK_PEX1_CORE_5M>;
+			 <&bpmp TEGRA194_CLK_PEX1_CORE_5M>;
 		clock-names = "core", "core_m";
 
 		resets = <&bpmp TEGRA194_RESET_PEX1_CORE_5_APB>,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
