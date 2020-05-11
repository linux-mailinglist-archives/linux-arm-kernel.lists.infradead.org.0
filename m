Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D531CE5FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 22:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=M263rv2Xb12ts+Det+MdCUSAxY4BQJtDTm6X9C54KTg=; b=iwi
	QPKV63LkpSMCSNDK+60p448MB3Jq0JLJSDm/wN9RElIxpX/r3BTdT/Qjl0b9YUtpQHPV872yC7McQ
	B8GRHmilheP28n1ryLpG1lY8jLGd0t2cTYqA1oAYcph+LSqt5WQfljGTRG18g6Ej9O1h801GBJgkT
	fJMGH9Xm81vgwyWFTVeq/bu9Fw1brk4Rnp0ePPQcGTseh3sEpsSHRK6eVnKJQaS+Dk8BPVo+xSpy2
	rj+cfcYQuovKLt1M2pT5V6hcZBF6GqkasmWpf2fEXSCmU9MJUvtITnipwyqX8j7ayKVaSMngY4eFb
	ujX5a7RcmJY0SGQ358xyMMZvaiB3+WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYFM7-0005sd-Vp; Mon, 11 May 2020 20:48:56 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYFLw-0005rI-Eb
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 20:48:45 +0000
Received: by mail-wm1-x341.google.com with SMTP id m24so9885780wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 13:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=vxRp6NV4GyO7V3zFBhOBtpEt1EUAsSB7JsLXHEJHduk=;
 b=PmE8VionF8WhPcJyKyc80Pw1Gydez+3a8QsOetv2kAZlvO/VuY9vqveNZHnmw6Bgb1
 D5yB9cz9yP2uLkcKfEImIG1eogeUqK78SEOnkpiZgNITMYnHtLOllNrElOA/ZXpHu/mK
 KELNMKLVT9foAHTHgDHxnR/AIAagA20c5md/VfCMz9TFHPPecGvvryjOkS8OeWf+2q41
 Pzf7L2MweEToBp+HuxvxUx6BREZ3RAQwe3FQLKY2QmRgah+hH+I02vuV8et7y5lqG6R3
 /Mogtb3a0uBwAxuTzrBnnwNZvxnmpH6KOe2bdx/p0R8lSUqYzwNSWeddErUJQ7KzYHse
 Zewg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vxRp6NV4GyO7V3zFBhOBtpEt1EUAsSB7JsLXHEJHduk=;
 b=NbucbeJ7vABZ0RT5AEceN/HnyRkCblmjZTLacbuSXdsoZfgxEPA18TM+0HHNvtEVr5
 i7NAjqxVoRXZa/T5l/eB6SJ353kCTotesfIefIQCP1MkOUUkRhq5/Vzja8JNgaP6xgNA
 HPkNqYyerdXeMddtVI4mk3GO4eInKJQvDJz9voeDAnBd2XEImptLUn9/i70tC8LC+lrd
 lg+4bBPxklkExr5cD2KrdCyABCvfQZNcSxQYoJkJrQTJU1Sp/4eyNgLzVhdfzhzfB+07
 EJWrbdE0jRVP8N+C/rPRh/9kpVzO5RIL/sDI5uxAbgn6HGN0nyDXe6kuP4KNO7gXDDHJ
 2+Ww==
X-Gm-Message-State: AGi0PuaqAUIvsqHNEpDTgQrQnB2fh7O+NSDwnmiej5vJ/n2Qg/t2lR8C
 zCs2XzUjXNu0Ald9Vcj8DDhfm8p3hWk=
X-Google-Smtp-Source: APiQypK4yN1Hhrmig9nSzCVM/HD16W1KCdeumHMlosyEVaxkDtqlt6mz67GSV+PuOBgmXXX3UD9CVg==
X-Received: by 2002:a1c:f012:: with SMTP id a18mr31843575wmb.116.1589230119837; 
 Mon, 11 May 2020 13:48:39 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:5c45:54b0:ab9b:20b0])
 by smtp.gmail.com with ESMTPSA id 2sm19122884wre.25.2020.05.11.13.48.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 13:48:38 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH v3 0/2] Add CPU power management for CPU bound CTI devices.
Date: Mon, 11 May 2020 21:48:34 +0100
Message-Id: <20200511204836.27870-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_134844_646972_24C75276 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: tglx@linutronix.de, Mike Leach <mike.leach@linaro.org>,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds in power management for CPU bound CTI devices:
i) CPU Hotplug - registers a new notifier for CPU start and stop events.
ii) CPU idle PM event notifier to handle PM_ENTER, PM_ENTER_FAILED and
PM_EXIT events.

Tested with DB410c on coresight/next tree (Linux 5.7-rc1)

Changes since v2:
1) removed helper functions filtering on CONFIG_CPU_PM to call cpu_pm
fns directly.
2) add check for return value from cpuhp_remove_state_nocalls().

Changes since V1: (requested by Mathieu).
1) Split into separate patches for CPU pm and CPU hotplug handling.
2) Enable on hotplug has a specific function to enable the hardware,
while leaving the enable reference counts unchanged.

Mike Leach (2):
  coresight: cti: Add CPU Hotplug handling to CTI driver.
  coresight: cti: Add CPU idle pm notifer to CTI devices.

 drivers/hwtracing/coresight/coresight-cti.c | 160 ++++++++++++++++++++
 include/linux/cpuhotplug.h                  |   1 +
 2 files changed, 161 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
