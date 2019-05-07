Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC99316B7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 21:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YJpn1f+iDG53/Ce4I2jOnQ0/tP5D5S4JbcoPyaOWfkQ=; b=gYP
	LPijKcUof5PaofjYy4HEudS5yqZIe/FD2cY62fdV8leG2dLceYDklhCcQqW2yPJ20lD96gYN9IRDt
	/klRrcjA3XKwTGR7g0Md/yDQwtVxGwXvulN1vCE1fi4nKWf7iZDFbtRRn+IZt3tbfigHfwB/QiHGh
	t3CgY7f5zoKQqSLsxcVfkPk6OL2b35KQYCThZPCXIXAzPTeqLIfQTC68Fkk5y6gsNxhlmvkB38VOy
	MhYy+JWiJTIM07snAjthcztjpEcArrbO8KceRmxXUSmcNRkw9Vs7u7Uuv9OGm/nb0BuX2MBHNVNJl
	eUIde42Q6aJByEMfVC4CszhLveqj/Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5uw-0005Ed-N3; Tue, 07 May 2019 19:38:22 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5up-0005Dh-Cp
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 19:38:16 +0000
Received: by mail-pg1-x543.google.com with SMTP id z3so5108840pgp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 12:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=sC/+NY9vNRdIe9N8awakKaLNDu11yUQCUMakYQMWUBk=;
 b=edCfTr60W9kD+WVkXBcM19S0e2usB7m+SrxnRi1Qi+/QHbw6c5vE75E4uK0zW9FJ3u
 hscskKOYoBfaGOf2pGnIigDj8CjnnOK6VpfQUYFDz56BOlujpguZUhLVtnKhRujUde9q
 onWgRfe3beZ+enpnR8U901oLW15LyzB4HDBMlf+4Cuo9e/ZRr7WMFSjIdNlJRPxxQ7XJ
 y3JU6v3vuM5+vh2uJqGmAbybj3BkfZwbgFEFixMtcgq7K8MWlHgBm5N+HepbThduYXUN
 iTWMPLIgg2+t28s5ghdrSLcTR/sPHGYMwkYJVbsDZUtUKs/Qzx4VJuNDfONTXNuYD5Rf
 G6Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sC/+NY9vNRdIe9N8awakKaLNDu11yUQCUMakYQMWUBk=;
 b=HZyaRglyQ7r79eyPAkgqiejuD0qw8aFJEdY45LMEcRCR+JAiLIIhVc8uvruzpPyT/7
 ZqlhZ35oetQmi5EEK0J+whxaAhLbN+XxBeSuQk7ciS1VEiE/NUlqJOKxSSfciCZSkMZ4
 AfOlZTfGNMzL4ZUMaV4UyLoQOjVkRGN7UX8KRp7n7bWcnxpxNiDRxYVZ5G1rKMRPEiga
 wTrqiE4XVxsXASzlYOWm6ou2cyhujJdTASvxQGzOrgeYmE7yLj+FvKDXM8R39wIHtvon
 oau1P1OvYeyZbo12OJ0Exnxs7/eDi4K9OVr4u3Qf6pqd17AF+sg27vZtYygqpvCi6Ptj
 hyLQ==
X-Gm-Message-State: APjAAAX3D+kdWh1XJ23IDiKhaThYI0A+mqUgFxuElPQhpLtvlDhPeShc
 2mA6EtsRfqGdq+1TKdrtvh0=
X-Google-Smtp-Source: APXvYqxwRJZ7Dy7UxedXvqeozShpNdo8JgcXtCXvnqrOfuid/1+Qr8Kk+wFyhVz0N7aIPSx6FwcSjA==
X-Received: by 2002:a63:2ac5:: with SMTP id
 q188mr32742805pgq.388.1557257894294; 
 Tue, 07 May 2019 12:38:14 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id l21sm5964658pff.40.2019.05.07.12.38.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 12:38:13 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] hwmon: scmi: Scale values to target desired HWMON units
Date: Tue,  7 May 2019 12:35:01 -0700
Message-Id: <20190507193504.28248-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_123815_473391_577F83B7 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Guenter Roeck <linux@roeck-us.net>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep, Guenter,

This patch series adds support for scaling SCMI sensor values read from
firmware. Sudeep, let me know if you think we should be treating scale
== 0 as a special value to preserve some firmware compatibility (not
that this would be desired).

Changes in v2:

- added a helper function in kernel.h: __pow10()
- made the scale in scmi_sensor_info an s8 type, added defines for
  checking the sign bit and sign extending with a mask
- simplify computations in hwmon driver

Florian Fainelli (3):
  kernel: Provide a __pow10() function
  firmware: arm_scmi: Fetch and store sensor scale
  hwmon: scmi: Scale values to target desired HWMON units

 drivers/firmware/arm_scmi/sensors.c |  6 ++++++
 drivers/hwmon/scmi-hwmon.c          | 30 ++++++++++++++++++++++++++++-
 include/linux/kernel.h              | 11 +++++++++++
 include/linux/scmi_protocol.h       |  1 +
 4 files changed, 47 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
