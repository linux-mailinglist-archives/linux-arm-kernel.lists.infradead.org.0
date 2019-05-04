Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8DF13AC3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 16:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fZZS/uR6F3VH+89tXH/5luzUAXnBbIfu8UyBfHAGnZw=; b=O5q
	s69+NmtSaHJJ81yLNfJGOP+kjTgl/vdZNgUJsjvCGFsJUf8gKE7Dap69DSdFFAxaMawua6D3gbbo1
	/YyNqLT2A6qRCo9xhNSf2p+hwQTPzNX6Yw0o38A2iv8RAQ2rADCXpKTeSikSPYV6RyZ4tckjGIlia
	6m2nlOJCW4sld0IJ5g/q8M0FDahSZnVijR11vzjrF72hs3A++nOLTdMnqCXmUlU827te2nwbmjEWd
	NQ75p4+cboBPfmHZErN4B/4TWaNNfoMWzCs3RemYY1rXJebtw1huQ0GzwFi23aqFAvTFDGkx+yoHP
	ufKbPLjfMTiyTbGOH4gN3S0w1xYHCuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMvwN-0004VK-17; Sat, 04 May 2019 14:47:03 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMvwG-0004Us-L7
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 14:46:57 +0000
Received: by mail-qt1-x844.google.com with SMTP id c13so10036019qtn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 07:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=NrYZiyAylt6izKT0JP58LPPlYggyMkdqPMz1VP35jj0=;
 b=Jlm14QvA5eq8GhEQXyfSaoYmznYfS5hKuffrc4QLAfHLZJx8r7p6qUW3z+oj7XXLn3
 JI3B+MNhgkwsOTf+eGpL6dV632Qai1EcOe4ru/pcoGX+ozuZ6nsNRWLrCSzKRObg8KVN
 yP7/Uw6ULHTPUiZpk9Ji5m/gFGPV6ctd807bfxd6xZIwQDLexv7DdVD8YyNty8TchtdV
 tyGiQDtFv9yWbz8FBm6zhpMG4lIzUJbQ5NAVug0rQikNEG1Vz8VobflhPnBSwdQuOlXb
 dSvtvc6pkL3CGN2z8w2dvGzzyg0WzpY8UcpMcac46Mi4yxCSujvg5ykpqtcSb/cwedNM
 bb1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NrYZiyAylt6izKT0JP58LPPlYggyMkdqPMz1VP35jj0=;
 b=WuYCmpPVDPu63Z2G2+e5dcjMF/eeEk9WJwPTgviuHijAUTYcaLbLH6pcgD540v2byd
 6JN88yqk6dTtc6I8fJnDVXgcS+ag83stabeblDkxKj6g7TiFh9TXFd3haRh9DQvJ9Wyz
 0/UCmWMgfsLKmKiWDCR2K1Zqshk+/GkRvlVxX7dzPXOafWvQ5fE1oj5XfhlBVaqDvJDH
 h7OOsrCqZIaJ1n2P7zFWDlfldWx3JNO/yOo8G+r6GJuLK8ebQNo3MzhkZ2RhUH2w2xyr
 BrA3Ua39DkrNAmg0hnOv6bmX3D8sTnmBR16xu5uOld65OTRSkmDiYwLY7V8Zm4tXDHnl
 olrQ==
X-Gm-Message-State: APjAAAU7UTLE9mj4r4szBn0+KvE4e//VcrOTMYH5owEzfEvWM3x4Dm6t
 DTSy/fuP+r+bGjFTpvV0GWB7ot0loyM=
X-Google-Smtp-Source: APXvYqz3JKAK/VzgGiKdp9YMPc+/PJE7dhbBx+8FM2glvc8IQ1350AT461lZz4XTgIyaxSL9Yc8hwg==
X-Received: by 2002:aed:3a04:: with SMTP id n4mr14109265qte.162.1556981214926; 
 Sat, 04 May 2019 07:46:54 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id
 h30sm7248455qth.49.2019.05.04.07.46.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 07:46:53 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: imx_v6_v7_defconfig: Enable the OV2680 camera driver
Date: Sat,  4 May 2019 11:46:45 -0300
Message-Id: <20190504144645.32725-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_074656_686868_0C0D5FB2 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Fabio Estevam <festevam@gmail.com>, rui.silva@linaro.org,
 linux-arm-kernel@lists.infradead.org, otavio@ossystems.com.br
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the OV2680 camera driver as it is used on the imx7s-warp board.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index 765003ac7053..9a34ab210275 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -268,6 +268,7 @@ CONFIG_VIDEO_CODA=m
 CONFIG_VIDEO_IMX_PXP=y
 # CONFIG_MEDIA_SUBDRV_AUTOSELECT is not set
 CONFIG_VIDEO_ADV7180=m
+CONFIG_VIDEO_OV2680=m
 CONFIG_VIDEO_OV5640=m
 CONFIG_IMX_IPUV3_CORE=y
 CONFIG_DRM=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
