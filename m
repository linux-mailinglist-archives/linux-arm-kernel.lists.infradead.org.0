Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B76311B9339
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 20:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DLGCbOL+LG6mK5ICzNGEGMEYa0SwB6yoSHKrCdlnW2k=; b=UeiIwUrYwxsQ4W
	wJdNt7b/LuUL5piqoifJBuBwNvqzXQRIiOr8d0q07qrDL88WJGTlJCXcpo1XUP4vDnHCNAVQohs2y
	74YX4KKdmrTSAJSqyjyriN+t5UIY8w4ACPJ378HuIscg6Dkc6gZZXwY+tahivIEs5LQv69OnsXQTs
	hCuP8AP/Y+S4WemNeI5o6rs72J242mnY1uDByYuYKFBjEqYxPS+u6eupbC0zZ85e7MIleo0Q0soGc
	QOHlt6rcYmiC2OPSMstkbzGAPVjB4PBjygJcsOmGFbrkpOjBP4kg+S3jBXws7xWDipr/CzC0t/CWF
	nnZvzmsAs6HGS2Z2zmEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmTs-00060C-5i; Sun, 26 Apr 2020 18:58:20 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSmTf-0005ys-G6
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 18:58:08 +0000
Received: by mail-pj1-x1043.google.com with SMTP id fu13so5782306pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 11:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yuhy6+UvC2aZCI8jEGanuJkbuaQTzx/LeqqBb0/lOXs=;
 b=GgGSQ3vkuWOePQBjt3G7TfBokCk2s9i0Z/ZhVNrUnFenlI88fwqM9v8M1DKugotU0Y
 99U3UQGOOiSnNqKNDAOA0xouYx5rLfzGfGdlAuHMQSOoHDXN/hxL6IiIhzXCxI1QZMur
 AhKo21zgOl/BV+gZSWV7b4BYWf4FNZg/9VE+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yuhy6+UvC2aZCI8jEGanuJkbuaQTzx/LeqqBb0/lOXs=;
 b=iZR5wwBO6xEOLvNX0ud73xTuuaOFJ0Xl8G7Jsp4yYfgX4opc1bMoppVEMqD6Ktusew
 J1hhslTf9EfHSLzYQAwoCvQFtZ/AQ0SZ50J9+0OTTMBg8w7AZCW5CVjwhwvy3W57D1FW
 nF8jFkNZZvf9433fTtDhsF+8BHUykFsnoTC6FZYCrwR/VgDu3hJasVcIOhzBXMgAy/pc
 LUtiwFJ39KMtrLXMes8PB3wuz948Grw96twhn/na9XpCfTTIUwOW0Sa/hnbxGy4ODEXT
 USYXNrGsRslQBkY70B/ZOHxDio/Bijxp37VMgpyxy2ccjaznyUS3ygKNesTvX5Be9IZe
 klVQ==
X-Gm-Message-State: AGi0PuZXbfgyct0QVtAuQoa1Re8JmYCU9HiAbrnWEBJCd5oCoFrmHHge
 MpcFlZI5VK86bCZA75FIpdZolg==
X-Google-Smtp-Source: APiQypLHX0oiKi3Ea3EfbnPXETuY5F51bl9kiV8kC7ToakI66ch9tzV2WSIjhnTB3uhZSGFpA4QU2A==
X-Received: by 2002:a17:90a:3086:: with SMTP id
 h6mr19944816pjb.49.1587927486861; 
 Sun, 26 Apr 2020 11:58:06 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id h27sm9425153pgb.90.2020.04.26.11.58.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 11:58:06 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 0/5] coresight: Minor sparse and style fixes
Date: Sun, 26 Apr 2020 11:58:00 -0700
Message-Id: <20200426185805.14923-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_115807_562016_0E737B3B 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Douglas Anderson <dianders@chromium.org>,
 Mike Leach <mike.leach@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I got a report that kcalloc() didn't exist in coresight-cti-platform.c
on arm builds and that looked like we didn't include very many headers
to get prototypes of functions like kcalloc(), etc. The first patch fixes
this problem by including the headers and then the rest of these
patches fix minor sparse and style issues that I saw while looking
through the coresight directory.

Pathes based on v5.7-rc1.

Cc: Suzuki K Poulose <suzuki.poulose@arm.com> 
Cc: Mike Leach <mike.leach@linaro.org>
Cc: Douglas Anderson <dianders@chromium.org>

Stephen Boyd (5):
  coresight: Include required headers in C files
  coresight: Mark some functions static
  coresight: Don't initialize variables unnecessarily
  coresight: Initialize arg in sparse friendly way
  coresight: Avoid casting void pointers

 .../coresight/coresight-cti-platform.c          | 11 ++++++++---
 .../hwtracing/coresight/coresight-cti-sysfs.c   | 17 ++++++++++++-----
 drivers/hwtracing/coresight/coresight-cti.c     |  6 +++---
 drivers/hwtracing/coresight/coresight-cti.h     | 10 +++++++++-
 drivers/hwtracing/coresight/coresight-etb10.c   |  2 +-
 drivers/hwtracing/coresight/coresight-etm3x.c   |  2 +-
 drivers/hwtracing/coresight/coresight-etm4x.c   |  2 +-
 .../hwtracing/coresight/coresight-platform.c    |  4 ++--
 drivers/hwtracing/coresight/coresight-priv.h    |  9 ++++++---
 drivers/hwtracing/coresight/coresight-tmc.c     |  2 +-
 10 files changed, 44 insertions(+), 21 deletions(-)


base-commit: 8f3d9f354286745c751374f5f1fcafee6b3f3136
-- 
Sent by a computer, using git, on the internet


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
