Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 749B81A2419
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 16:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+AkijN5pfDxd0WYGpIUsEUs1GnGMdgDs70erWeeCITY=; b=rs/mUV494IU85z
	c9jrxeh93a+rCzqgOpDB4DI54EOob8Kj7lhfgbLF9bo7vTQBTHWYxJrwQ5gbCm+1Nip3t+TTk+XZw
	rMRNSTRQijiQ7QFrKEYmEIImaCQLnsP28s/fMilSWokaQQj88H6Nc7E0VU2UttEanob4XIyQFagsh
	LQR5XUDURIkHX7cGcCWglBAFNXxDAiOkNCruOd+Sa9uZJUGs4Lp/QJ4S7ct/LkmdyzZ0H76JnZWZA
	bTeKsDwG0kkzvyWsaWYbdPv51GLAzVMaHNrEVRnL9hebya3Vke30TuJ1opr7QvY71cJ4YAooxuxVu
	oCPbNbhe6nRFbzrzjlkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMBjy-0002QS-4F; Wed, 08 Apr 2020 14:31:42 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMBjJ-0001rm-9v
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 14:31:02 +0000
Received: by mail-wm1-x341.google.com with SMTP id e26so95478wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 07:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ONmipAabLXhLmacX5u5HjoyUMJN6EG+/oCFGiL0N4tA=;
 b=YOLbRq1uKj6Qvu1dEuKm76Ws3dtcc9fTrkDcyKVKEsXPmzZRcnV9Y9A7jdVdgjyvN+
 t+F8y/p70omJKuFjVooQaYAjpQV70ucxA3AaVTwCNvSx3/0TFNumXAfyf/NSdbuwqb3o
 Dcn9VIjt6ArmzsMIB2lZ9d23T3F1N1r19T8N+W6eqLBuPUWlhHnuyREpWBUzU1rRjyp+
 eQirc435qRyDJjxdgE/9OBphtSqbp98604u7lyz+93sHvIVlC0WLkRVlnmeem5uwSnmq
 dE8mBNPrGOsOkxij8PcAy7hAnuhGOg8UbbUGSwRXqP1be+Z3RrUQ2QC8j0Vzmu8Wo+n3
 hSMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ONmipAabLXhLmacX5u5HjoyUMJN6EG+/oCFGiL0N4tA=;
 b=At2IvbLxvxUxtJdp2mQsYEyPkwEBM2hwlVRAnwVVu6+Ny6mK6WsYX9adDP0NQ2PUF6
 VljgMTHki/eu3cV/KnScDs990LFIBL3DupAp3SUUjs5qWvihgYp2FmYpzWy0Q1IJvF1n
 fMlElxkPPMJi5cQFohX8BXWgcg4mLoQVm09a3y/7xSxZe8a/d4hkXi+Ein51rhQ4HJ9w
 Jp1U8RcJO5k9OF7owzjcTVfUpR65MdHl4cDk5qiHoT5jwGedRLwx/stZEIQVSXyKnVWh
 ePAvil5SVpeOt5KUjuo4Hzfe3bkQgy4fr7vAoXydy7cY77G3s1FIniWoLZLCRIT//Fv8
 WM2w==
X-Gm-Message-State: AGi0PuYabAJvH+fG6ceFpSl25lsUf8vBvXMA52zEFxoV/ndvgQUgXaqT
 GXheGyWuaebFrSFuZwag2rQ=
X-Google-Smtp-Source: APiQypLQAgnfKPromQs68QdsrIgESVtKzl4IrNXH+4yZyw1pfffbGmT0fK11SeQtWBwotYGy9vDdug==
X-Received: by 2002:a7b:c2a1:: with SMTP id c1mr4800795wmk.138.1586356258484; 
 Wed, 08 Apr 2020 07:30:58 -0700 (PDT)
Received: from linuxdev2.toradex.int (31-10-206-124.static.upc.ch.
 [31.10.206.124])
 by smtp.gmail.com with ESMTPSA id a10sm36268828wrm.87.2020.04.08.07.30.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 07:30:57 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [PATCH v2 3/5] arm64: defconfig: PCIE_TEGRA194: follow changed config
 symbol name
Date: Wed,  8 Apr 2020 16:30:38 +0200
Message-Id: <20200408143040.57458-4-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200408143040.57458-1-max.krummenacher@toradex.com>
References: <20200408143040.57458-1-max.krummenacher@toradex.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_073101_342892_81FF03CF 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [max.oss.09[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [max.oss.09[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Changes in v2: None

 arch/arm64/configs/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d765a920a20b9..ac0dd3dbbbfb6 100644
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
