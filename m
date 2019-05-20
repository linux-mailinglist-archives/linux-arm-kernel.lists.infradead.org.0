Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2B3238D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rhgT13hWx9RbV6QHZpnRqTcTn02gZbpL1md9yZPrj5g=; b=eEAXSYCTm5TJAt
	+NAHZ+vFZmLZbeR4Vxil96w8dnS10++wF4U3mEW/DF7m3ZVI8VuM6xS2djUCckhTDL/JqL8HHpVzD
	aiQPgJXBVY0givvQqoHB3FydvPRF1mxV3/0GL+ubwV+9WBZQ4efTuu5xcwStFPb2n78g1QzZmiBlc
	tk82jYXvYJyZD9+tE0KocWOk4zlzVw/ZJZ150tfXRVQ1LPpjjokHNv9u2nE2xRYiAEcDtS9fIzUYl
	C+qs1GjxUyJ1JcxrbAbBg2Ba2+/PJWQkbv1FuM4+/pNL7k3xbUT+eUJGInwkL7pEqm0pZAMdL778w
	Szcwdegrua2OFt8wM2IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSikA-00042N-80; Mon, 20 May 2019 13:54:22 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSijr-0003sR-Ec
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:54:05 +0000
Received: by mail-io1-xd44.google.com with SMTP id v7so11038562iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PNcQkl0sbDGXxnYuX4gXEpMWKK3coY11enMS7zPLh3A=;
 b=R5wW8lMc1iy8WX5sYIP1b1h0H4/nA/j52JRPwd4H4/d96WL7tLLiJArjqoRqRX9OPB
 FSg6TjfoAJXORsyizA3JhqGza/b2CTsNAAcuwuVQFl4C4mhXyIEo3mVGb8ZkEIVUNVDh
 L40iihL4Q3zEayB7IeYK6/ANJogh5XRzFdpYCWnBjn30ZDh/PMc1opt203xC/d2kr+Xg
 +hJKwYigYLilykiT/0P2KR03lJ0mR2+W3r/w/VuUYu39KYpJ5BvxsicRHefYns1DleK/
 FDLseKCMrYlnYZTVbqG+qY/WnjOAa1e9JgUfjK8safuRTCLVD0JF1XGvZsQ/xfYomin2
 yiEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PNcQkl0sbDGXxnYuX4gXEpMWKK3coY11enMS7zPLh3A=;
 b=mrpFtA/U9MtgHWVh9/5KfwF/t2XyinUvFVgDi/3saPZ4PG5gygNSZbZdzvFQPY10WD
 i19N+hAEdHmt5jvbH3eIV+XuMMF6RgbB93KvEMRncZclT/5W2HO0S/OZXZvcP7lc8cHi
 WbUUA+M8GfdbNdJqMdLRU+5IJUT/VbQOXMarn/Jal5EOobBzgt6OUj+clBGp6i21vBF4
 PNLSEvgjxGM7I7VTV3NNjSaz9P+g92cZ3cu3zqMwV4K4BEkYtFbUFsqumPXkKGiUosW1
 8/wAN5TrqgzuvmP4/GoHoWFThG9n6mjvaloB1XIHUNWIw53tHhLRzTZnDgmKlcIm4JKV
 E59A==
X-Gm-Message-State: APjAAAW3LWQs+BwGBdm1BOuqrbl7SFuLk55lS9otZfhOEnQtHfJz6W2z
 gd5q2UTILX2GY9MVUFXw8Kj5Vw==
X-Google-Smtp-Source: APXvYqynHsjMtF9qAVZpY1JsVPL2bqipIldd2eim0mxY31JSO0vulzprtm9VZoDN7/PUuSG67E/g/g==
X-Received: by 2002:a5d:9d07:: with SMTP id j7mr24786480ioj.39.1558360440641; 
 Mon, 20 May 2019 06:54:00 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id n17sm6581185ioa.0.2019.05.20.06.53.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 06:53:59 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: arnd@arndb.de, subashab@codeaurora.org, david.brown@linaro.org,
 agross@kernel.org, davem@davemloft.net
Subject: [PATCH 0/8] net: introduce "include/linux/if_rmnet.h"
Date: Mon, 20 May 2019 08:53:46 -0500
Message-Id: <20190520135354.18628-1-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_065403_521847_75B41C9B 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: syadagir@codeaurora.org, ejcaruso@google.com, netdev@vger.kernel.org,
 ilias.apalodimas@linaro.org, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The main objective of this series was originally to define a single
public header file containing a few structure definitions that are
currently defined privately for the Qualcomm "rmnet" driver.  In
review, Arnd Bergmann said that before making them public, the
structures should avoid using C bit-fields in their definitions.

To facilitate implementing that suggestion I rearranged some other
code, including eliminating some accessor macros that I believe
reduce rather than improve the clarity of the code that uses them.

I also discovered a bug (concievably due to non-portable behavior)
in the way one of the structures is defined, so I fixed that.  And
finally I ensured all of the fields in these structures were defined
with proper annotation of their big endianness.

A form of the code in this series was present in this patch:
  https://lore.kernel.org/lkml/20190512012508.10608-3-elder@linaro.org/
This series is available here, based on kernel v5.2-rc1:
  remote: https://git.linaro.org/people/elder/linux.git
  branch: ipa-rmnet-v1_kernel-5.2-rc1
    acbcb18302a net: introduce "include/linux/if_rmnet.h"

					-Alex

Alex Elder (8):
  net: qualcomm: rmnet: fix struct rmnet_map_header
  net: qualcomm: rmnet: kill RMNET_MAP_GET_*() accessor macros
  net: qualcomm: rmnet: use field masks instead of C bit-fields
  net: qualcomm: rmnet: don't use C bit-fields in rmnet checksum header
  net: qualcomm: rmnet: don't use C bit-fields in rmnet checksum trailer
  net: qualcomm: rmnet: get rid of a variable in
    rmnet_map_ipv4_ul_csum_header()
  net: qualcomm: rmnet: mark endianness of struct
    rmnet_map_dl_csum_trailer fields
  net: introduce "include/linux/if_rmnet.h"

 .../ethernet/qualcomm/rmnet/rmnet_handlers.c  | 11 ++--
 .../net/ethernet/qualcomm/rmnet/rmnet_map.h   | 36 ----------
 .../qualcomm/rmnet/rmnet_map_command.c        | 12 +++-
 .../ethernet/qualcomm/rmnet/rmnet_map_data.c  | 65 +++++++++----------
 .../net/ethernet/qualcomm/rmnet/rmnet_vnd.c   |  1 +
 include/linux/if_rmnet.h                      | 45 +++++++++++++
 6 files changed, 91 insertions(+), 79 deletions(-)
 create mode 100644 include/linux/if_rmnet.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
