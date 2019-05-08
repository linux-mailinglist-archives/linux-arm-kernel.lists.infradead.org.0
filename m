Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F1018001
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 20:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FYRowAR+SPIcz8JdYYOp+LRzCp9ydw20nZdkvpbsGA0=; b=D4M
	BX7WTktmi3fYSTpWcXYhMqhrPfrRjkEeNeWicq/eiKoOqM0j5ew0HaZrfH02grl6w7cUxSLiPyRkb
	ZbTP8n8FN69Q8fDNxYGgiMyGpalqWbbSQy0NA4CdvVKJy/qjDFUU8hiomnw/8a4gDFf8HjlZD2v3g
	3rCiG8w2cfnswqvTcLRXOzm2/4RxmPNJ5myDAEeaD5P2Hl7POYdUwUdUH2FIfUwnjyb4Fl5Hy2Yw3
	rbmw5VF1WbS1xuFAOHKEbFYQvw/94XeL+nCWIJVDeGjgJQ+WqmYbrYzt/QLMaBri4IO9bTR5y8qG1
	FlHh4zAHqz2DBbUoP7etFB9DuI/xvnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hORab-0000kq-OY; Wed, 08 May 2019 18:46:49 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hORaT-0000k3-Hy
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 18:46:42 +0000
Received: by mail-pf1-x442.google.com with SMTP id z28so10955982pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 11:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=EEIALcFEhNF+WL2qzyLPm5x2lHhfDb/Qp5qzDZrKchA=;
 b=ED6Jc0y/rtA42Jk4s0/banDWfr2InZNBnE5IZQvmzqg0VUJkJntsNao4IhCL8FLN52
 FADam1XGvUx+ZLYVxJAj1wHDGzwGiH1Uwmt41QuFL15kLXvwiQJUUaIVux0DWKnMd2Jf
 9yaR/UHVIcNoO91XxgYAlxb0HluY3EGM+UTgCA1RY0q6gW1wbp0sjdmeEKpBCnHMaNZe
 kkSL40A1B8HFK+v3B59224xhwe/2bhPbiTWscuexqMTdjKsjYg2cBo0wkqUELtQv2O/w
 ql4ngjOjOJrp6/+QpDlinxa/RsN6fOKwOmSa+N+BpTNoMxM8ImyQ7bPhv4yKNjrnCwml
 4dNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=EEIALcFEhNF+WL2qzyLPm5x2lHhfDb/Qp5qzDZrKchA=;
 b=A4mOxBeBbmua9eUdByJ4GImokFHV91aOJX8N3cuTHUTJGMQ4z1BAqrvOeRoN8U+pRk
 bmRCuRMAwaY+W4wnZUbFTejSmbbdiEhlZTG+WNFEvG8tAcxpncaMHMPfSgYoA1pU5Fac
 s2oqnW6PorHsW7dgpeW+xLrD9Zifa0GXYbA2miNQT9yoHDPMIe7xOkiDYbqa6HSrzj+1
 ktNUgRvhaKQzeY/aEyT9z2owN2ZUAAcpOBKa4mMrDurrtm45UoQMEclgt2XPFuADux/t
 HfXPsSkkxcs0mB5oynMFIN834mZc4woolu5WjfJR7VobfaEFsC1XWyFmie5h/1sDwMsr
 z53Q==
X-Gm-Message-State: APjAAAWBw5UFUYHttrOCxQcBS+0HkVwDkYY5ocAwPetR5x2Ao8AwXvtT
 8Jk7dR180Z+43bXhGkSzG7k=
X-Google-Smtp-Source: APXvYqwdjxSZUPLBY7Xi7DbEBJHWjC57QwVVpV6zk5Y45uNkDlR4U6Vsbxb+TmsZfc3t/3Suf+vngw==
X-Received: by 2002:a65:5248:: with SMTP id q8mr32321120pgp.92.1557341200675; 
 Wed, 08 May 2019 11:46:40 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id o66sm23257953pfb.184.2019.05.08.11.46.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 11:46:39 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/2] hwmon: scmi: Scale values to target desired HWMON units
Date: Wed,  8 May 2019 11:46:33 -0700
Message-Id: <20190508184635.5054-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_114641_624474_31E7DAD3 
X-CRM114-Status: GOOD (  13.60  )
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

Changes in v5:
- overflow check would not work, so check specifically for an absolute
  scale being greater than 19 to avoid returning an incorrect power of
  10 factor
- fixed incorrect value argument passed to scmi_hwmon_scale().
- Added Guenter's Reviewed-by tag on the first patch

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
 drivers/hwmon/scmi-hwmon.c          | 45 +++++++++++++++++++++++++++++
 include/linux/scmi_protocol.h       |  1 +
 3 files changed, 52 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
