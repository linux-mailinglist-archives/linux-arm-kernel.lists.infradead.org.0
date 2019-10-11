Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B1FD4B2F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 01:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XMnfE9td51+11jlHVWI2X4u3zIjCmM+b881Hc324wEI=; b=SKJqjY+Kf/o6D4
	QwcJukWIkD7aDSlsarz1d0F6MlSwcLnkzGQvwmxIWP4Nd7hucsM5pp9Sc+VljD49Jhe4Iidk9cf9A
	dfHq5y7enF7EBiXRlOzcgEOSECUKMLXzNoSSgUXdKgZLfeYZFjupfqOfqv5Xzra5s+fnVidHlJ9te
	4WiTq1flO778TYkUuT2MvIkkNdhK7EPl+3dZj49+KRb6/2IhEt7JoyzU0maz2dPNE9mYcYGc+hHej
	gcZRg1VoPqnd5QrGFC2UP8sm4Y12Mg97O6B1AST8I7BxGJWt6woQTDcdMb2XMOKSUUdVrBnuTUdI+
	l7gy/jZf0ZrnDpI6M4xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ4eG-0001WR-Ga; Fri, 11 Oct 2019 23:48:40 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ4e9-0001W3-Jd
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 23:48:34 +0000
Received: by mail-pg1-x542.google.com with SMTP id i76so6661424pgc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 16:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AmsaWR6UIYQFsskmsBUdb3fnHuvmiQm3ZQiAWL6V5Qc=;
 b=jllI4sbRj/cCNWxGttqdKesUD1HiYXaKIvs794DXXkc+PoCdkcM6erto6iQpJ2rVud
 8x8uYDcnaphLecfMmemcLRSW39ZOAsiY1fpX57AgoFA76OdqMj/YC0hmd4h+OiH4iynt
 jy7YCSb1g1byOhT7+4nEcBeBc9rVr9YUKFpTFGTtrTxVmTOlwQDIvcSmMdvAyNLBEniY
 zsaFaa8R6uL7KmJQMdTWGJv6LsPDDGctdIyqL7lENT9fX9FmOIFJyFBpld8huwIfhQDb
 LqKAHiLoKH5XlxH+7NG4g7NzAeUnTviUWArEsPTKSF7qeUbLlSAEJWfBAp78UEmB30Ps
 8Tqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AmsaWR6UIYQFsskmsBUdb3fnHuvmiQm3ZQiAWL6V5Qc=;
 b=P0wvmIZtBfvgKD419LR5Dt0GO/n0GtCPardoeBQJKVcR3IqiRyxBOmNvz8b+1jdAS/
 lVHaAeKyXwF+0OYIy8cAiU+v4bKoeSOKVuSIxjmFpct/LLfrWYhqwvSvHnrFx/oDIZjE
 KGa6YMXt6KgmYMiKGdsMfzc21EGIyKYBFrX3e0GpQjcLGW4twEVJHI+v18l9WzTW7omg
 4GVF/cfARYfUhDeZFMuZj2FX+v1TBNBxpv+BsrqWYzttj4M9uosSjW3kfTQKBhfo9bFl
 yzAYt0teeM5zPTJcW+y2OCPW64nVFMMqaXMkr4oKVxq0z5zZiSHjIHcqzEoX94XTrNiy
 dlKA==
X-Gm-Message-State: APjAAAUQJgzc8TDzQ7qsDjeJUTxOa3XxRLP98/Zv0IsZ7/+FLJSRQpbU
 gz97ex/bhPE+VrpIaCya/SH/Ig==
X-Google-Smtp-Source: APXvYqzQQMfZB/vfwkNtGeT6aWfRdgIU/ygvDWyu2BePS2QK+kJUi1HassUgKqK1qK042mIzuwELyg==
X-Received: by 2002:a17:90a:d793:: with SMTP id
 z19mr20089752pju.140.1570837711757; 
 Fri, 11 Oct 2019 16:48:31 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id m102sm8477015pje.5.2019.10.11.16.48.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 16:48:31 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Olof Johansson <olof@lixom.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Maxime Ripard <mripard@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Jagan Teki <jagan@amarulasolutions.com>, Anson Huang <Anson.Huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Dinh Nguyen <dinguyen@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH] arm64: defconfig: Enable Qualcomm socinfo driver
Date: Fri, 11 Oct 2019 16:48:28 -0700
Message-Id: <20191011234828.374419-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_164833_650903_42725E0A 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Qualcomm socinfo driver provides SoC information to userspace using
the standard soc interface as well as a number of debugfs entries.

Enable this to allow certain user space tools to acquire this
information, as well as getting developers access to the information in
debugfs that is useful when reporting bugs.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 45e55dfe1ee4..a5953b0b382d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -744,6 +744,7 @@ CONFIG_QCOM_SMEM=y
 CONFIG_QCOM_SMD_RPM=y
 CONFIG_QCOM_SMP2P=y
 CONFIG_QCOM_SMSM=y
+CONFIG_QCOM_SOCINFO=m
 CONFIG_ARCH_R8A774A1=y
 CONFIG_ARCH_R8A774C0=y
 CONFIG_ARCH_R8A7795=y
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
