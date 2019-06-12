Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 536CF428E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=d5q0wU7tcPKOaWzAYHgCzmW5TOekreaaEaiqCtY01jk=; b=jRm
	X48M5XINuyqeyaANTcyedDzmJ+xZvtAOp4mqKnJ8fJ2E3vQFBrXX8emP1Jgm6MqurXvk1/aoMyDDb
	9FMBgVU1UUC+IXOi1eDYpbk4KbKWKO16AJEBypA5pfA6Zu7jFnQnObSRTu/odHXGspKjKD/WGsYZX
	OTePM9gQkchS2wOv7LmteftaslpHxyxc6baWhU4X6WtDJUkenqx0WmCQbo0ruXzXl+SmyM1AVYiAK
	yJ3S5n+2uLbqknoIiozWJxbi6nVV95GjXKpgk0/64YMhP9AEGEMRyHLR5p0V3PmwJ8udF9fa1OmkS
	u0PtZNL98qmdbWhxOMqm8TMxhpMmfHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4Da-0005FT-UN; Wed, 12 Jun 2019 14:27:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4DM-0005EC-7d
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 14:27:02 +0000
Received: by mail-wm1-x344.google.com with SMTP id w9so4419018wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 07:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=9RG/fmGuMFz1uOaOz5ph/6qVFWhsvvm2ZWfHtq97fow=;
 b=U3aIc/V9L3ZOTcT3ZWJ5NsF/6YJWWwbbm7Swu0+HXiDryJ0hzaoC0d599o5c02/wfB
 txsPmg5vnRsDnpHii3K7CcH9tVtBuEIkdV9yk511gxV2IUu/hByTGdjLnEToK/XiJHE7
 bYZcR54RCc6PrTpqyWwk7GJrQbSS5LtM+vafuV6wypMDmfZcQoFrz6K6R8I+ykp0Rt4y
 8lM3cxTB+ITbOMGxQ5pXG+QdGDoe6vDIeH6USCgqcUPtBUcR0QdM8FBxohykFAa8lpM/
 MY6HXggENdNPtU2hgdyGDNiA19XvUd6/l3/AKJjHZikq1HOfB80J0UWPwDChonFerPvx
 eX9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9RG/fmGuMFz1uOaOz5ph/6qVFWhsvvm2ZWfHtq97fow=;
 b=BoCnEMhtP+GqzcnxQrSCxgIZpQFhlaXkMGu67rPr6LgiEdsFgqBFEQ2r5AAqkCADco
 BjzakGetWZPepahWODU2W0rd+8jPUGXodtBGmc8iEH8XdUIPG+yjr1NyADk8skrpXnW2
 BEnD//YXgYwlsWQR2v++P6F/9+D7GF/LjVOBWbW//XzeuocMOv36aC9aoBRa0G0HJlNl
 xR9lU+4sC5a/xKcSsfvsoE+WhIudkw5O8HKtJlq7egVd2M4khOTzBdUBO7LQXMGz6jx2
 7VvAF9a9ouLXl4OMPI/5pYxVcS+c7xl7AijBUzKqjcwBAlCWviSlZtYK4RQxk2an8MBU
 tgdA==
X-Gm-Message-State: APjAAAXy9ERMgphNtRxJCLCqpxzAHQQ4CG5i+GD5XdchVEjEG+8PLRyp
 rtb69/zZ2v77pHoahtKW/Apksg==
X-Google-Smtp-Source: APXvYqy1cLtAIc09aYE/pTZ4C8baAoSIE+X5aqrXpGYtR24fXNVBaYjQ4r2OFfrIZUCykHgpUQaBCA==
X-Received: by 2002:a7b:cb84:: with SMTP id m4mr23894630wmi.50.1560349618344; 
 Wed, 12 Jun 2019 07:26:58 -0700 (PDT)
Received: from dell.watershed.co.uk ([185.80.132.160])
 by smtp.gmail.com with ESMTPSA id y18sm203959wmd.29.2019.06.12.07.26.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 07:26:57 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 balbi@kernel.org, gregkh@linuxfoundation.org, ard.biesheuvel@linaro.org,
 jlhugo@gmail.com
Subject: [PATCH v4 0/6] I2C: DWC3 USB: Add support for ACPI based AArch64
 Laptops
Date: Wed, 12 Jun 2019 15:26:48 +0100
Message-Id: <20190612142654.9639-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_072701_693598_75A5889D 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-i2c@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-usb@vger.kernel.or
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch-set ensures the kernel is bootable on the newly released
AArch64 based Laptops using ACPI configuration tables.  The Pinctrl
changes have been accepted, leaving only I2C (keyboard, touchpad,
touchscreen, fingerprint, etc, HID device) and USB (root filesystem,
camera, networking, etc) enablement.

v4:
 * Collecting Acks
 * Adding Andy Gross' new email
 * Removing applied Pinctrl patches
 
Lee Jones (6):
  i2c: i2c-qcom-geni: Provide support for ACPI
  i2c: i2c-qcom-geni: Signify successful driver probe
  soc: qcom: geni: Add support for ACPI
  usb: dwc3: qcom: Add support for booting with ACPI
  usb: dwc3: qcom: Start USB in 'host mode' on the SDM845
  usb: dwc3: qcom: Improve error handling

 drivers/i2c/busses/i2c-qcom-geni.c |  17 ++-
 drivers/soc/qcom/qcom-geni-se.c    |  21 ++-
 drivers/usb/dwc3/Kconfig           |   2 +-
 drivers/usb/dwc3/dwc3-qcom.c       | 221 +++++++++++++++++++++++++----
 4 files changed, 225 insertions(+), 36 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
