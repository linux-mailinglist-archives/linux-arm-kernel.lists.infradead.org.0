Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C42561C3F8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JNR2QrRFyKRvNxf+9gjmIY21zsp+FY3QGAN0bdRkEHU=; b=iJ5
	3M24+pDH1O64qKDXoAsK7KsVnssMMWy61k2kL3KD7SdFHYqL0JMX9yZ7KVWeaG0xRoZEFRgRs6WDc
	YOx4XwYHjXsosykvdCxsarhdPy9pu6IWuY8zR18pQQLW+Mn1NOT9oTxfMOFQd3szXhI94iS7H3E5A
	JzRlaP+ThgNbNb/xHG9/X8Ls5vb/U/eAbiAhIoyqDXM4myJLQDxKt+X/pdIiyW2Zscojb280T+d5q
	tbebLbdNt2kEGINtZNqnwfPfxC+kkTU1lVtR2DdVFlR/RZnoVEBYK3Xz53wnN1/2qRN/QS14LHVuu
	7onu8bQ+77p2+nE1SCKUWpMAaWnBpHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVdlE-0000xv-0u; Mon, 04 May 2020 16:16:04 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVdko-0000lc-BU
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:15:39 +0000
Received: by mail-wm1-x342.google.com with SMTP id y24so117516wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 09:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=PXa+4NIuhVdKZ3Adwc3Cm7yGN1SlIAeC4Rnu92zmCns=;
 b=YHKun7bk2mjMse/08YzA2aswcw0+1hxmnynKWorZSY79B0UMeNRcY7VGDI1KiUACMO
 89rhP2n8WZ3ZXA08Q9P73f9OgusweKbt569SOeKdoA2UKOv/5W7FYzG0f6M0bC8Rqv5s
 KwGQ+IaR2uBO8BSWMYhclVOxFKwlQEDXhf3J+IEl/QasoIGOEp26TvitTNFFOGtrEcmb
 pMS5fKHJJjZ4IlWkmthKy6P5w3tCXI1FvyewUNFUDVRgeaUtJF+oHKjZQI5HzD6qnDlT
 uY/E+NpTii+mOr6IvOuSRJXZHX1rlf0iVbBxDDxJ4+PxggjdDfo858CNR5NYsvD8blCF
 folw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PXa+4NIuhVdKZ3Adwc3Cm7yGN1SlIAeC4Rnu92zmCns=;
 b=EkNmWsqC1wJvOZYZbzUZ0nEjZbz3P/X2VfcJQ/Uw+LS6WPy421Mbd9B5DEe+7rvV2h
 MnF6DRxztecglWE72g2Z6nyGEth9ODXc6DqkE0YZTPCmZZdrv1Sv/wxXGnNlxTnlatGQ
 h1M8UJFxYF560OHSOpZsBJzS8vxfeZ+1fAaT80/gHyJZW7zlYp1Gkv8FQEM2/xU9jys6
 ifi+X3rbsoMqba+I38xd2oYOnuUfbZt2ersyrndtMgrX3zi8kYzZRdOxkFheVDm3+7u7
 Ct69jbfTtpWejwYELyHf1mnRagLc/9Yue0YUO8z7zgnj57oF3uRFd9dLlMNgJmd22GJy
 mUSw==
X-Gm-Message-State: AGi0PubBHdYDS6sAjJ356V9lnKZJI6P2GVptEw5MGMPfa6dfFZyGTwzf
 kKmOakqgccy7Nxrci0lanKFIJ+wTHr0=
X-Google-Smtp-Source: APiQypKOJesI6/spWODg3n0Zs/twAS4WPT/P08X/y6ydy2LyZzABToF9iaB26M6f2jfhXejNxSP0ow==
X-Received: by 2002:a1c:4304:: with SMTP id q4mr16656497wma.152.1588608933580; 
 Mon, 04 May 2020 09:15:33 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:bc12:b74:297d:dafc])
 by smtp.gmail.com with ESMTPSA id k6sm14623756wma.19.2020.05.04.09.15.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 09:15:32 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH v2 0/2]  Add CPU power management for CPU bound CTI devices.
Date: Mon,  4 May 2020 17:15:28 +0100
Message-Id: <20200504161530.9284-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_091538_389048_CBD84172 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mike Leach <mike.leach@linaro.org>, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds in power management for CPU bound CTI devices:
i) CPU Hotplug - registers a new notifier for CPU start and stop events.
ii) CPU idle PM event notifier to handle PM_ENTER, PM_ENTER_FAILED and
PM_EXIT events.

Tested with DB410c on Linux 5.7-rc3.
Rebased onto coresight/next

Changes since V1: (requested by Mathieu).
1) Split into separate patches for CPU pm and CPU hotplug handling.
2) Enable on hotplug has a specific function to enable the hardware,
while leaving the enable reference counts unchanged.

Mike Leach (2):
  coresight: cti: Add CPU Hotplug handling to CTI driver.
  coresight: cti: Add CPU idle pm notifer to CTI devices.

 drivers/hwtracing/coresight/coresight-cti.c | 173 ++++++++++++++++++++
 include/linux/cpuhotplug.h                  |   1 +
 2 files changed, 174 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
