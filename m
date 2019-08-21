Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E1296FF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3yF3YSa5SPIy8i4nFzO7OAVgBhYuTDpHWRCJkDVNZ3g=; b=h5Bd4nkT/N4A0sT8OqTcJsMzNt
	kmpUHfTShfl6VtFyBr4kIVdfZEFM5FhIt5Mzq6SwH9kxgZDgyfGMlNw56hgtcisdoq58CXjaNb1gw
	oU0ftsCvNPXM2fsPOOCWrpLtEm5Ds2v7PoZ67OGKbSb0oMWO/GMbH+7Kb1QKMJLlfCARU5rQ4GAK2
	eqG4CcaaPyXydDvnfdSu+pDt9jv6IxpVXC+XRTSR5oGRWgGXLgrMglT+lTjOIIV+YxyOcvdPsPDp3
	RWpOh/jkYWCryVOOJSdrocUT5lgn33A6IdS7KwM5KIiA6jsf/ejWVwcFzzq8QmeP6bV29Bk/xGV8O
	slEfkxTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0GpT-0006Pw-11; Wed, 21 Aug 2019 02:58:31 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Goa-0005Gt-KV
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:57:38 +0000
Received: by mail-pl1-x643.google.com with SMTP id h3so491105pls.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 19:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0YPh4ZPworY3ZEjE24wMYeyXg9KZRbq3tqWyWWQ8XlQ=;
 b=uK44JlaR1k3uAS4AX3pTDEr/vTzJzlJG3h0cfLeudtdjt2eTHBjAcnUQl+nX8E2LhN
 qCLGyyMqNg23YESt9V6DoY3pHFBGGmRlYuDnqyYX+iShevZAV/Dn4G6IDT9lBXJAHj3m
 9nBp91YmOaxbaS1aW6IK2JuDZchAGjlCHl478vqdoYAm9UMDunVKLDVy/V3v899zP9Qi
 pvMu4EarvlbOHOzVJgP1hSfPL7LSJGBbhSmY1nMwmX9s3cTwlV+fc+8tAmc+OP4bZ1lz
 lyQ0oP9/J9EAAVm8Ir1EoxS8w8tmPI2dkAjFZC8t9BGt/ILxUKrdiBnGWy4sib1utZNq
 BqrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0YPh4ZPworY3ZEjE24wMYeyXg9KZRbq3tqWyWWQ8XlQ=;
 b=Yms8NUq+IeANmNvK7T2ImmrOen+U+V9z6cqMvdZKkiag7RONXq5XlvRrXRWlp4fPkA
 DGdhcMkeqvnn+plleG4q+QeRV8rO5ZAxLZI+aSBJQl4pXuVFK9Xdf5i/+NLP2Sq9MTPY
 HA9iICriiuNhnGL5kFijo2zrjX7U+Iy85lmy9gU7Jb9+iAaz1Rczl2pHcPyskvqsEQDi
 hZTcUdz1xsXG+/ENuEgQKRBwcJ5z+RerhKdYFfD+t+QiLORH5oItJTd05MhYR4gBfl/A
 BPJbOZ2Km0UUgcXTgLPlq9qUOEAvdh1stYSM1c+b4jxSpotKZHhI6vDdwKX9bLdZC1dS
 Xk8Q==
X-Gm-Message-State: APjAAAU39MViNmP89l3f/XGSvr4y9f2PjsMtKkA+IcWZhnb5Hs6aJIPo
 vP4NoKmDW/7DKL9CVsbmzXx7
X-Google-Smtp-Source: APXvYqxWX41fVvpAy5mDzcBY4knA0x++pNqIAFAUMif6+qT59dLNFyls0cGJowbkdKkvLw/bLqAyCw==
X-Received: by 2002:a17:902:b710:: with SMTP id
 d16mr25772303pls.165.1566356255979; 
 Tue, 20 Aug 2019 19:57:35 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
 by smtp.gmail.com with ESMTPSA id
 d16sm13251682pfd.81.2019.08.20.19.57.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 19:57:35 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v3 7/7] arm64: configs: Enable Actions Semi platform in
 defconfig
Date: Wed, 21 Aug 2019 08:26:29 +0530
Message-Id: <20190821025629.15470-8-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821025629.15470-1-manivannan.sadhasivam@linaro.org>
References: <20190821025629.15470-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_195736_720235_54A1174B 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the Actions Semi platform can now boot a distro, enable it in
ARM64 defconfig.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0e58ef02880c..8e27777d6687 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -29,6 +29,7 @@ CONFIG_BLK_DEV_INITRD=y
 CONFIG_KALLSYMS_ALL=y
 # CONFIG_COMPAT_BRK is not set
 CONFIG_PROFILING=y
+CONFIG_ARCH_ACTIONS=y
 CONFIG_ARCH_AGILEX=y
 CONFIG_ARCH_SUNXI=y
 CONFIG_ARCH_ALPINE=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
