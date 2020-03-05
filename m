Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54ABB17B106
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 23:00:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VxiI6NLTDZ25nRcZu5usk81OdsMeLycmfwS/1FGaCQ0=; b=E6oLdtyyR20gT7
	P50Erd7nM6eXc9XgmHEjGhsFj8wbAYdHnB4QZwXFSsky11SK3IYzstNkU8pxrKpSYDfbbAKQZ/bUC
	Iu33QEKplXdMCcdXF++u5e0f2gaDnxtTKG39AfBCsVt5WYd3cdjGkWhy0+3qdtPCJxxQylym6WrcN
	jgRiLztzARStAtQYSg068jU7M8fGy0H2n6oK/laUSe276HFmcbNWaXvxyFZfn+GFwBx/J5PGgY347
	VrsiGMIDh3cSk29indJhYqRmYVoiw2vBQXKGUjrSja8KzGU7n7ms3zCunbXN3CrG0rGQsl7ihpN86
	bJpoTiHzW34woCInzk1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9yXf-0000RD-7X; Thu, 05 Mar 2020 22:00:31 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9yXX-0000Pp-81
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 22:00:25 +0000
Received: by mail-pl1-x642.google.com with SMTP id g6so3224640plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 14:00:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wfm6ayNE4wy/7YaGXfXadlkUakLeQg3UKTG0DwefcsQ=;
 b=QT3H37b0qfM0BSUCS6IVtLykGWqqs12NwaHzXe65aJ8KVqh/60M8DBrM7FyJRW0rql
 5pDuv+cDrRc3rD9aD8KJyov/+VKdOcCaDMvQeQ+w6uHcUlAKuD7E7x5ppqr09Yw2d1Gk
 ry6t6WkWT+3SNi7DuM8iFPhhMXfHwnIzulZsDbDDH9u5KFTarbPtzVrVmXjWSyFJj6ms
 R3r/uZuKIYaK5jP4tbWDXSvpE/HPjLxABNicOKeRduk2VdaZ6+qhSTSus+VtQsQn5Y+9
 DD/4UAs11DixjZsek6XOoxt004QwGw/aB3UcCUa3tw0cuXYBL35jqqrU4BjL/egARrW2
 yUOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wfm6ayNE4wy/7YaGXfXadlkUakLeQg3UKTG0DwefcsQ=;
 b=MrnEVIcMTO/VFCRyOH8V426nDkrqcz0M3X0DeTqFmBg+7cvmcSOuI339qs8Tn8QYWY
 Srje7MSqyWDoetu8AMdjbpqAGPh8MYll/OAD2FAtO8bqn2T4Z6VojnB3EG3QvGkD5pZu
 KFCAwOCSixhlLQYPRjC91Je3slvWxQdbFEmA3n36ssV9aQ/EQU004dOHwSZm647MciSE
 unk7fKC2b+YJ8VkdSDjmftGwn6Ranrv4U35M6cVZwB8J/4/nvLOM8GiV+z6B5zPDcMyq
 0gxPKsHztxZMSzn+816D/HHJH/aptR3cvnkdkLEwj89gFqHWEr46cd9vNjClfWPfATit
 Y6AQ==
X-Gm-Message-State: ANhLgQ2vXDFN2aIcVGakHasCWFerdpomRzxGVZGmgSRC2278FuGruxyP
 7NFYrZlQNwfOZJzYPnb8SQDy8g==
X-Google-Smtp-Source: ADFU+vvFvGjwJ+dMpKZfLYrMZG2DVMlcV+NyLhGza5CGl9eZZCxGMx+E5rgekeNVYP8w9F+M+8bqaA==
X-Received: by 2002:a17:90a:c218:: with SMTP id
 e24mr233300pjt.64.1583445620935; 
 Thu, 05 Mar 2020 14:00:20 -0800 (PST)
Received: from localhost ([103.195.202.232])
 by smtp.gmail.com with ESMTPSA id d1sm32233596pgj.79.2020.03.05.14.00.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 14:00:19 -0800 (PST)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH v1 0/4] make dtbs_check fixes for cpu compatible
Date: Fri,  6 Mar 2020 03:30:11 +0530
Message-Id: <cover.1583445235.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_140024_279531_988C3487 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix them up.

Amit Kucheria (4):
  dt: psci: Fix cpu compatible property in psci binding example
  dt-bindings: arm: cpus: Add kryo280 compatible
  arm64: dts: qcom: msm8998: Fix cpu compatible
  arm64: dts: marvell: Fix cpu compatible for AP807-quad

 Documentation/devicetree/bindings/arm/cpus.yaml  |  1 +
 Documentation/devicetree/bindings/arm/psci.yaml  |  4 ++--
 .../boot/dts/marvell/armada-ap807-quad.dtsi      |  8 ++++----
 arch/arm64/boot/dts/qcom/msm8998.dtsi            | 16 ++++++++--------
 4 files changed, 15 insertions(+), 14 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
