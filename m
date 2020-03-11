Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFAE1816BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 12:21:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LWYPT9owe2Opa8Mf4IO4KXdZKszrdRf53WS37MWYYUU=; b=k5mpMMh/qxxKXJ
	bAWnlhdgu9/OOuTczgavpu0Hji2/ezyPgb6pJWXzAyjeB1xM1N2Ojg1xP991lzwnTvRr2T15P0Uho
	NMeYh5+RQ5v8AM/RJEHzo3XXIkdlz9vNyQHjqkrKYtZa8qctt09ZTx3jvOESkmVaVybop+GwnTXjq
	85FGnKDOh4yzvzs7CnYA864O+Y3y1VUPKZLHLxSoUhzCuc52tsg5im0+4uOwWAYSzQWSQQx63/3Ze
	ANn7sJ1MLoSaQlK+N6iiyvVHG80eINCOYdVSONhY4unWGtShmz13DuPMwIBYYYnV8K24uvhEp7INM
	2KkkbPfhfM9KInPDbdLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzQw-00058k-Rr; Wed, 11 Mar 2020 11:21:54 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzQp-00058I-Pz
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 11:21:49 +0000
Received: by mail-pg1-x542.google.com with SMTP id s2so1033929pgv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 04:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZLOM3TZpFx1G0FHmz3svWf38OoZ6qU4SfqgmqviPrrA=;
 b=nMyvOyKn06Eu05BjFvjKHdDoGwU5OqfzypV+TNaTCAA6ghis9R4087GZKFVCDp0rD5
 /6PkMMMNG/CN2oWPce4JJBu/28jlkGMz/BkV8FjtsuA64I1YuO1hKihDe92A8NLIKNW8
 a5lX05gGYB/LQX2RUU35tSazpeA9/dat72/c8m1jm40V3I/7I2+PjsOoLr2NLFLpE3mu
 zOmCxoyWkZGEkPhvEXZtH0Fh8gURctH2Eh4AmwMOpUtcWCWhS5jTQQPPHb6uMPz5+Hqb
 n/ccwUfzJU6MYBuzY0VqXvZS/7UG7lxWvm93eEcI+LZnCDrgLeh7kFTOnEZzad8vTZ4M
 sS0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZLOM3TZpFx1G0FHmz3svWf38OoZ6qU4SfqgmqviPrrA=;
 b=BqqzFO2aXQtGqAUzL/xxpFtdJYYTk9itgGXlJcjV3Lb1gbzYLjZc1FKYiaZUetUwm3
 RP90BkLSrUn3PJPw+KbgB7TTNzrF5zanwkH62Hu4Dy4xVgFEqwD57Yy4EIACTiobKY/P
 W0pJKeSLDwOQDgtoMkoa5qhLvPamh6XDiiPVvP4RIhsXb69UFx7eP7Il8uqJ47ONwOBk
 Fz4KLgnt6+PSHbb6OrENJ3G2WKrwCj0AJDNIU8t+/zFq4b/Mum9Ed3ExGGL9D5CB8PEG
 hvoElx4o0HApJN5Nw5MGo0RyABHAy7xil1OTRGm6xSlcsDTO9M6k5XsIYQxqeLVgDHdP
 s15g==
X-Gm-Message-State: ANhLgQ0TIL5EM8OQ9DyUX8LBpB77TKDXzhHVY9e8smTAzLJSIJtfaoKe
 3LghVPqvjlOOmoK1B/iLPRM=
X-Google-Smtp-Source: ADFU+vv+UdmZRNokjNxVghhbKD3QdqV2SqqxUwK/IWZx3ccnP2eMqufHRoP5QNbhibLWisVn7B6jqA==
X-Received: by 2002:a63:6d4e:: with SMTP id i75mr2319830pgc.443.1583925706451; 
 Wed, 11 Mar 2020 04:21:46 -0700 (PDT)
Received: from ubt.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id x16sm24277019pfq.40.2020.03.11.04.21.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 04:21:45 -0700 (PDT)
From: Chunyan Zhang <zhang.lyra@gmail.com>
To: soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [RESEND PATCH] arm64: dts: specify console via command line
Date: Wed, 11 Mar 2020 19:21:20 +0800
Message-Id: <20200311112120.30890-1-zhang.lyra@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_042147_865542_51743105 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhang.lyra[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Chunyan Zhang <zhang.lyra@gmail.com>, linux-kernel@vger.kernel.org,
 Chunyan Zhang <chunyan.zhang@unisoc.com>, Baolin Wang <baolin.wang7@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chunyan Zhang <chunyan.zhang@unisoc.com>

The SPRD serial driver need to know which serial port would be used as
console in an early period during initialization, otherwise console
init would fail since we added this feature[1].

So this patch add console to command line via devicetree.

[1] https://lore.kernel.org/lkml/20190826072929.7696-4-zhang.lyra@gmail.com/

Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
---
I guess no comments on this, so resending this and add soc@kernel.org,
hope Arnd or Olof can help to merge into arch_arm tree.

Thanks,
Chunyan
---
 arch/arm64/boot/dts/sprd/sp9863a-1h10.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/sprd/sp9863a-1h10.dts b/arch/arm64/boot/dts/sprd/sp9863a-1h10.dts
index 2047f7a74265..510f65f4d8b8 100644
--- a/arch/arm64/boot/dts/sprd/sp9863a-1h10.dts
+++ b/arch/arm64/boot/dts/sprd/sp9863a-1h10.dts
@@ -28,7 +28,7 @@
 
 	chosen {
 		stdout-path = "serial1:115200n8";
-		bootargs = "earlycon";
+		bootargs = "earlycon console=ttyS1";
 	};
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
