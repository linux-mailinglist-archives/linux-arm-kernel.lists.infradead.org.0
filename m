Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 841221A4CD0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 02:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLFYuEIsAnXHcAgscfFFNv98IdziMA3ArCDQT5fjfLs=; b=XZpliaS6tB8Lpa
	OKse+Kiy1OkD1hEYG9NOywJX/jmT7xD96cPJHiYyo4mnTZZtiotRqbYLAoLZMSn0lg9IHvTFpWWoz
	4HfdsNcXjinU93vzHaqW7DJKIuda7TTmL0rwUyhBah3HeLrdRjFlCq9zzbMyRTAs1JpirEKnxa/qK
	shi2bKgil80EoKRJflWdweZ8yYAWE1eIGGSiqa8zaXCmlpyzPLNWmUahE1ViDzBDltdjg+ljp8Jre
	6AkrvLHJOUVEX/iRGLAvPvnPA6fv+qZrmGcZuSjav8o4JrBqUfbc6oAoztAz3ZaMk5uLVT3fqNOSm
	JPsHjqUoqBwTXJG1AW8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN3sg-0002pu-Ey; Sat, 11 Apr 2020 00:20:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN3sW-0001kg-EG; Sat, 11 Apr 2020 00:20:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id w10so4070692wrm.4;
 Fri, 10 Apr 2020 17:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sRH3JFUeptItyC/byHDQ4iblgMkc70TZ02v71lNx8bU=;
 b=h9YsHLT94sq1B7Gd2m9vfQjDDjwuRywJ6stYTd2AoaMifIgbj8aPHmg3MZc3BoP9P/
 /7aTVdr0M1eFeFPMZPgzkCLcaU3Af5Qk0i3U8sfgF+Jz1nc9aOALSLSTJ5z4cDSX4dq1
 pJwUO/LPz8t8NcEQHLC7LwmlHKHxASvXLrfG3w0nXVEujoAuWmD6VFQdANXtkTlx9Ryr
 08WOcyi/i/5aXV6mT6jV7xD4XhcsMidJAkhTEO4LxHRqeko6zaIS54HUyhxC72JRV0l2
 mz8FwRIXLGvWNpBqpPXVK0BYzsWmkRKct0qN8QKv/C09UbSBe0cwC3mFxwmuvhmYqlKS
 igwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sRH3JFUeptItyC/byHDQ4iblgMkc70TZ02v71lNx8bU=;
 b=MzmuE5AapYg8Gd5BJXqaKD0j7Nn6m4PZWNyrBhoxQHlAxKG0l4wTfi6ZCpgYbcJ5S1
 J2oopvsMRBhSb5gPGqdqX9iYdq21+/sgsvdpEXva055+dYPeB+FrpHfp3kT9afgUIgpi
 nNRuzO8yHO9LTZKTlGfXW/1cSCrTkb0BuRMQQZNpl6ZwzgiPeQGzDSOBwD9MH9rXguzH
 UJeJX/RZ4WMiiNHl+21ihtiB8sPoNyOx8WKl42aggIpjDebk7XgRkVL8dwZWo7eLTHiY
 KV9TbszkixHzAGovQfL0WXxeOyCnX6K2w1tM4pblkZCwx8pm4kYCfUIQqNRVWjaxlmf3
 Lltg==
X-Gm-Message-State: AGi0PuYphoS/3WFettH1Vy+cfr2E+pGZoG795k0tYK51cg6uxpXElYak
 qWrXdzS3OY+vF7pbjHul8/Lqqby6wg==
X-Google-Smtp-Source: APiQypJv/An5qeP9XsEFImZSPQ2G5er0IpFLyFLLqbKFf4+MQFDstxbiXVJ03iqQxAJ7vjr2p8J8og==
X-Received: by 2002:a5d:49c7:: with SMTP id t7mr6744639wrs.22.1586564406327;
 Fri, 10 Apr 2020 17:20:06 -0700 (PDT)
Received: from ninjahost.lan (host-2-102-14-153.as13285.net. [2.102.14.153])
 by smtp.gmail.com with ESMTPSA id b191sm5091594wmd.39.2020.04.10.17.20.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 17:20:05 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/9] Lock warning cleanups
Date: Sat, 11 Apr 2020 01:19:24 +0100
Message-Id: <20200411001933.10072-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <0/9>
References: <0/9>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_172008_529542_14618C96 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbi.octave[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>, boqun.feng@gmail.com,
 "moderated list:ARM/Mediatek SoC support"
 <linux-mediatek@lists.infradead.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds missing annotations to various functions,
that register warnings of context imbalance when built with Sparse tool.
The adds fix the warnings, improve on readability of the code
and give better insight or directive on what the functions are actually
doing.

Jules Irenge (9):
  dm snapshot: Add missing annotation for dm_exception_table_lock() and
    dm_exception_table_unlock()
  mt76: remove unnecessary annotations
  hostap: Add missing annotations for prism2_bss_list_proc_start() and
    prism2_bss_list_proc_stop
  mac80211: Add missing annotation for brcms_rfkill_set_hw_state()
  mac80211: Add missing annotation for brcms_down()
  scsi: libsas: Add missing annotation for sas_ata_qc_issue()
  scsi: bnx2fc: Add missing annotation for bnx2fc_abts_cleanup()
  power: wakeup: Add missing annotation for
    wakeup_sources_stats_seq_start() and wakeup_sources_stats_seq_stop()
  power: wakeup: Add missing annotation for wakeup_sources_read_lock()
    and wakeup_sources_read_unlock()

 drivers/base/power/wakeup.c                                   | 4 ++++
 drivers/md/dm-snap.c                                          | 4 ++++
 .../net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c    | 2 ++
 drivers/net/wireless/intersil/hostap/hostap_proc.c            | 2 ++
 drivers/net/wireless/mediatek/mt76/tx.c                       | 4 +---
 drivers/scsi/bnx2fc/bnx2fc_io.c                               | 1 +
 drivers/scsi/libsas/sas_ata.c                                 | 1 +
 7 files changed, 15 insertions(+), 3 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
