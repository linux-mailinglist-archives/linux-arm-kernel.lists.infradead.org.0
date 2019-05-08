Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE8E17EAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 19:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DH+dOZjPU/KhEsfcxwUmyQaHwh5Fxa8QnT8+thzj44s=; b=Lne
	pglCC8kxzLgBfCOXfAPziKDhpeMK0xSYSKlw2cnHDPDo6og7DPvxw9Qta7LyuWDFjZS3NBWF3mKtT
	nz4m3gwIKGr9tT3iaB65JbGS7agEAnyOJ+GGAl3FZhjpqhQAWw4T+Ur3AJz8orNACQWn/2Ahxjsw6
	40jriHYLk8JbGsScGEs+81VbE7Isw76F/0M+JmcSlgLcsYBC4Pva/W947HqordXcXhoskxXjhRvY3
	Z1vIDagywQJDg79RYXBS7psoiYIe3XPYkv+B8oMftIME7hyLKnLaEp5rROtUcZFCKWZ17P4sinjmp
	cAIwf56tr6O81x3C934l2EyT7IIHtbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOPw0-000517-VF; Wed, 08 May 2019 17:00:48 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOPvs-0004z9-Mq
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 17:00:42 +0000
Received: by mail-pf1-x442.google.com with SMTP id u17so10805054pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 10:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=reuVuInEGSPVqhLJ9GfTV+s0+z5HcOAxAjqzHbqMNXQ=;
 b=hf/JjJpboF2fHUPqQd52zL+q2Ztg6NGjvdjZBXvCpJs7Ni7ozPM0anw0BA//1DrmUd
 YXGr2x/hDjlYst07ErUwpTeEJj3FAMxmaYHilkH7RsUb1W5Y72VjJUxXJUcKbO3g8zP8
 j0zWxRF0YjHE8VbzipIj2glS0NjJ728rzsRg6gV4WmceL38CmyaETPVPhLiV8coF93Ue
 ihppFWu7EzkugKZ+zWY/j1+KyyBrB0fvfMEN+fozovuA51S7dU6u4c4FS8hLNt6ItYE4
 keczlXyBoz7S1eh20MdyJ5IW7QZkpyLUD/uATHzxvSkU+9sXwZ+dOupepzuBQkBbsZVs
 MhuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=reuVuInEGSPVqhLJ9GfTV+s0+z5HcOAxAjqzHbqMNXQ=;
 b=GHiEa9rG5aL2VprPuzbTHOO9SDn17/IqdaEAHhptEaEtwGnftal3WcUuiUtBkne61z
 nqWUt5eh5eP3iannBLi2Y8LBZ2GobFWHCqakC9lpyAzmm/zxkWLlLtAF/KkSz4dScasi
 eBMqbTp4a6fFiQLiHaMijIpgPFmnuAi/SM+KlytkJc6hQO0LJDR1Ic1lL7g9HSpdjT6f
 k+Y52DTyJC7ePoFOVfb+WvofUcBBKiP8Kt+7XAcPZo79EQK3gS27ei2fkOzjgn2TL2Uk
 jUEyeKwfuoP3OaEdK9MeaLGGCKWz/6l/cFy0QE87noI5L7sYiBilwsOyJd9iL9bTrl27
 luaw==
X-Gm-Message-State: APjAAAVKEad6zdhFJtoWMk3J/2GcgSbd4Ou/dUn0xLyvwRNr68Lb3I48
 DQSvqPNBBqM8nMqDpkpM6Ho=
X-Google-Smtp-Source: APXvYqwddnrPq2MkpKs7xjxlDXgLahFp33wBgfHSukJs3hHHDgLSDN0lv63czoL2gfgFDo1BcR1V6w==
X-Received: by 2002:a63:471d:: with SMTP id u29mr1994172pga.39.1557334839281; 
 Wed, 08 May 2019 10:00:39 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id a80sm11347773pfj.105.2019.05.08.10.00.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 10:00:38 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] hwmon: scmi: Scale values to target desired HWMON units
Date: Wed,  8 May 2019 10:00:33 -0700
Message-Id: <20190508170035.19671-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_100040_764813_2D6B9300 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Changes in v4:
- deal with overflow in the caller of __pow10() as suggested by Guenter
  which makes us rework a bit how the value argument/return value are
  passed
- don't harcode the latest power of 10 factor to be 18, just rely on
  overflowing the u64 value instead

Changes in v3:

- add a local __pow10 function to scmi-hwmon.c while a plan to provide
  a generic function is figured out.
- add check on power > 18 which would overflow a 64-bit unsigned integer
- use div64_u64() to properly divide a 64-bit quantity with an unsigned
  64-bit quantity

Changes in v2:

- added a helper function in kernel.h: __pow10()
- made the scale in scmi_sensor_info an s8 type, added defines for
  checking the sign bit and sign extending with a mask
- simplify computations in hwmon driver

Florian Fainelli (2):
  firmware: arm_scmi: Fetch and store sensor scale
  hwmon: scmi: Scale values to target desired HWMON units

 drivers/firmware/arm_scmi/sensors.c |  6 ++++
 drivers/hwmon/scmi-hwmon.c          | 46 +++++++++++++++++++++++++++++
 include/linux/scmi_protocol.h       |  1 +
 3 files changed, 53 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
