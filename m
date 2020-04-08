Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB531A2418
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 16:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A/3qYwqucK+viJ5s8Wnud20wimr08fgmGjMzzbIFixE=; b=m4K4QTF2B0NfI4
	W6t+rSLMyOlQbdvPWM4aJ/PPaCYWo6pgqiFzazjulNo9KKXrWPuQJPuQBUxj3G2yK/D3mxlaVF9lo
	LEuJQgmp+QxO5slSxR2wziSmixFrYG8Mrl7JOdUYndl81kEdkG/ltxCJFzeJhp1L4DMoFvNN5TSEn
	inn1zI+M6ALx2Kvv0zQUKxL2dVO8Kv29dPui6oPCtUdO0eR7/udL0Enz8a5NIfTckVV/yXLSTtBun
	8cio9jVH3XS2xFzpmcf3dBt9j1n0e1tLGbrt05FQOCjsu0LX4MmX2k5Hoa5INpSMW1fnIrYKzswD3
	sgHIlEecbhouZgTgbFpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMBje-00022V-PW; Wed, 08 Apr 2020 14:31:22 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMBjG-0001qV-MS
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 14:31:00 +0000
Received: by mail-wm1-x342.google.com with SMTP id e26so95355wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 07:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mLUZTMACgOdZTJqIc//IsSs4hQHzPmyw9T3yzeJY29Q=;
 b=KkEXcWTpKhPSVYHTzs9Hu9eRt2qWT3m8MI2hK4f1yUyGMa03+nMXoKTvvGd4nVhRtK
 phKxiQIoYpHfE0wCrOFreaUywWND6BBlHak6ojF8fefiNgUsVRpJcGp5kcsRiRUPWdoI
 8tG+A4VmGE9Bx4IhwSuV3qXjvRzs6oOD4/j9atnD/SScZ9uoVd6R5TqMWdc3ULO4BgsK
 BhMRRszWbbX3Ia6uaXvKS4ahUWyw+aOssaOF190au/7Fyj00O7NPFhG2FMNRulpUbvWN
 MzdNpANFtmO0dGoMDJAQsAhSPXeCKzjzH5Jez3qBQOTiWErwY+qwXKZS21oi0n78+KWP
 9M9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mLUZTMACgOdZTJqIc//IsSs4hQHzPmyw9T3yzeJY29Q=;
 b=l9YDImXPfvPSQCNHNsQOtXWEMF97J4vH0CAE60i3878QEg5+Hd8q5yzJHQ+wEnIvWK
 /P7nY0HDGYKJhPBf63DhhWEIKq35JUfJcP+dB01bPR580O7myWSQTXL62Jzr0AM/5HQq
 CNbTA6HTjsj4x5VDOBajYOj4fTrbOwZnn5nMHe32recDHw8Rsu7R6ufZvgW3ThcbJxa+
 C4/eSCtwIskrV4fnLchXR7/QSK5G6CGrgNACWBcdkROqRdIm1BanLdKbfMrfYF0VO0hn
 KbKjsr5h5yA1AV1X2Jfd6BJJFHF/0JOBnPuIylqxpLzwQLurVDl/GJoEFV/lpbUwgGdD
 STsQ==
X-Gm-Message-State: AGi0PuZrZYAxtI1CRNwBZPH6slvYOOqjNrxVg6dqbAGUTK8xo/JbADlW
 RL0GZk2+IA7ACFg769zwZSw=
X-Google-Smtp-Source: APiQypI1steOmsQ2Cf3zIOhuPmaJhyAjfO9SJ0wyXh7OuuHQzA91KBz1hqB0Sq9hVig7S+hGpQcxRw==
X-Received: by 2002:a1c:5f56:: with SMTP id t83mr4729013wmb.61.1586356255686; 
 Wed, 08 Apr 2020 07:30:55 -0700 (PDT)
Received: from linuxdev2.toradex.int (31-10-206-124.static.upc.ch.
 [31.10.206.124])
 by smtp.gmail.com with ESMTPSA id a10sm36268828wrm.87.2020.04.08.07.30.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 07:30:55 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [PATCH v2 0/5] defconfig: fix changed configs and refresh
Date: Wed,  8 Apr 2020 16:30:35 +0200
Message-Id: <20200408143040.57458-1-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_073058_755503_8C902591 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Li Yang <leoyang.li@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Vidya Sagar <vidyas@nvidia.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Three configs have been renamed and/or changed behaviour.
Clean that by using the new config name.
With the name change to DRM_SIMPLE_BRIDGE the related
DRM_DISPLAY_CONNECTOR got introduced, enable that additionally.

Then refresh the defconfig with make defconfig savedefconfig.

The refreshed defconfig does result in a not changed .config.

Applies on linux-next/master tag: next-20200407


Changes in v2:
- additional patch adding DRM_DISPLAY_CONNECTOR as recommended by Geert and Laurent
- add reviewed-by tags

Max Krummenacher (5):
  arm64: defconfig: DRM_DUMB_VGA_DAC: follow changed config symbol name
  arm64: defconfig: add DRM_DISPLAY_CONNECTOR
  arm64: defconfig: PCIE_TEGRA194: follow changed config symbol name
  arm64: defconfig: ARCH_R8A7795: follow changed config symbol name
  arm64: defconfig: refresh

 arch/arm64/configs/defconfig | 23 +++++++++++------------
 1 file changed, 11 insertions(+), 12 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
