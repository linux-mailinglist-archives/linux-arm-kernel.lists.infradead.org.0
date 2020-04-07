Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A701A0C0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 12:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PWyBDeza0kQpAIPDmg5sj6s5imhjMYzytU38au4xsoI=; b=rDpGbHfXF0ARy3
	4ByyHkQo5Yit+0ukCbCHMgRYqBzNJ7Ex6G1S2HNRtm2+afpmfUigJ5jVA1OYiQGH+CbzbyMg8LSSp
	A5atSloYRx1h9QfCgbl36C16yBXfUfMYfDCgjhfnWP8ZKo0ZzCxUTYEmlYqUN0+GWwwzLE/RBPuyx
	L8Ql/X7oUUqhJEHJggVOnAy74M1Dfa4NH61LJpBAEnyxSCXjULjCx0fktocz8UIhMaYGVdxpSD5Eg
	6i8oo5ZwMNg991/EM+C5nqf/KWl31iLHJOBI1u0cIOQXNwOnKlt7l47iUeLEGuTAsXH4Kvu9DJ78O
	V1Nz1P+W3va8k93s9y+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLlbg-0006aN-RS; Tue, 07 Apr 2020 10:37:24 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLlb6-0006DA-NQ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 10:36:50 +0000
Received: by mail-wm1-x344.google.com with SMTP id r26so1289050wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 03:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hso2J7opfoi1MkF9CkeZd0bKFD2GyxBW+ac7H4bJoMg=;
 b=Ro5qVrJkPFnjtYrlSuf/QfRk79xkL8m7WYpCs6ceAQ2l70aA6hP07c2uAKy4X2gwJd
 67IwMKItcK23hnZF1SlVGJMyuqUGI20px9JNeguaMI/ym//WD+OIDbOcgGWrnAlWSchz
 j3UuVvrnrwhWWuhSCVXS0alb3wnnh4dG0J30BeyiQlc4n5mTn6aVW/o4uIkkmw7Xk4rY
 /swqWwxFOg8VqPr7bec+BbDjSto4j31edxuySuag9F830z7hqnd1CkJlepdomyU/1S87
 mTEUALmihunfuZB/HvhCA+33bPBuz8ZQXRU3LxaLYFp7QMZTfh/bt1NHmljZTco0zota
 3jiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hso2J7opfoi1MkF9CkeZd0bKFD2GyxBW+ac7H4bJoMg=;
 b=TjNk11Bf7wykNa4vEQEnYTcvSb+FNrHgOrCiQILcLtWFR4dpVAqmqYRdOtBYfUT2JT
 SIYMWczdE0N0nLzLAEQRi++lx/68jQmz+m2MdODEB6hN4kpQ5mDrMmlmiisjaM7FW/nu
 /DpYf/1dlH5uZhjcYtZHbREjVjXuv5lwR30JWokNr+h4gay9+OpBGiec+e1mK4HLP1lY
 BotrIqlkbo2AbKDNkemNNzp/PUusGQbdZxlbxZEcUla4gOZlh2Puvyrn9pEraqAPrrdf
 aum4cawkj66xrvjq7B0N0P81EnFQ2Bh+k6cc0LbZdZfUu1Z+edHPvg3rgYtH1cOuT/oY
 ceng==
X-Gm-Message-State: AGi0PubptvCB6iYEMV/opBUrbggs4U7Bl3+VGLFZ0g+xGa46iO0SXV+h
 oq4fNcIn+Y1ZUaGYL6HkrQ4=
X-Google-Smtp-Source: APiQypLrTiTAAK5rH+3jpeNejuPDIwUbyTsA42840oxs2Nv7LjBiUmVXh9o1TGwDcxXRzjEWIuvMVQ==
X-Received: by 2002:a1c:b684:: with SMTP id g126mr1637639wmf.163.1586255807131; 
 Tue, 07 Apr 2020 03:36:47 -0700 (PDT)
Received: from linuxdev2.toradex.int (31-10-206-124.static.upc.ch.
 [31.10.206.124])
 by smtp.gmail.com with ESMTPSA id c17sm25016722wrp.28.2020.04.07.03.36.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 03:36:46 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [PATCH 2/4] arm64: defconfig: PCIE_TEGRA194: follow changed config
 symbol name
Date: Tue,  7 Apr 2020 12:35:35 +0200
Message-Id: <20200407103537.4138-3-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200407103537.4138-1-max.krummenacher@toradex.com>
References: <20200407103537.4138-1-max.krummenacher@toradex.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_033648_762703_1E28BE41 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [max.oss.09[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [max.oss.09[at]gmail.com]
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Anson Huang <Anson.Huang@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Vidya Sagar <vidyas@nvidia.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Will Deacon <will@kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When adding PCIE EP functionality the config symbol name logic for
PCIE RC was also changed.

Fixes commit c57247f940e8e ("PCI: tegra: Add support for PCIe endpoint
mode in Tegra194")

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>

---

 arch/arm64/configs/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index ae908c3f43c76..7e2690b449328 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -208,7 +208,7 @@ CONFIG_PCIE_QCOM=y
 CONFIG_PCIE_ARMADA_8K=y
 CONFIG_PCIE_KIRIN=y
 CONFIG_PCIE_HISI_STB=y
-CONFIG_PCIE_TEGRA194=m
+CONFIG_PCIE_TEGRA194_HOST=m
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_FW_LOADER_USER_HELPER=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
