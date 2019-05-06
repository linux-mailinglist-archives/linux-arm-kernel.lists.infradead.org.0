Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DDC15616
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 00:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=r3hl44eYroAEZJ9PD7HaBDZbx/hux53V+DOh8DGrrUk=; b=Ik1
	FJ/DAfznVkoUB9anVfuEqUZXSuTVtEXFmvG6/DykD2CwcWEJz+255ieraSOms4nmaQBbecpn7v0Zi
	AZMLJCwLue9DZ3v443aKSH+z9mUPviBdZ7lBtly04W6UTPVV7uyKdequnKNIUFS7vGTXzsZqhhIz0
	FmNBwGhu5RbT5+cXRSeSsN3NBqjuxT6K5aa0ii1MGQrJlDgE9MNddsBthqWpqmMv9RU7myutirfUq
	mSkgF87t8e++lvRt2SWUTcpiw/1gjlmq9f7551g59THqTvl+m7gh0jNamwAIKyPgRmjXoA5p32xv/
	1LVvBpsf1NHQjGSJ2lauV4NfPbnZ8Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNmIW-0000lM-C2; Mon, 06 May 2019 22:41:24 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNmIP-0000kR-6S
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 22:41:18 +0000
Received: by mail-pg1-x541.google.com with SMTP id t22so7167760pgi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 15:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rpxbdKqagbkKW6bRErcLm1VGK57u1T3ItS0aEgPa12I=;
 b=IYxXCXjTt3+Quzmpq5O1q0UAtIi8l4WbNguVshSC1FO6x1jFMWFnwjdoF0N646pXc7
 afKTLrxIddOxOBDv2nfWrUYRIDm5z6vtRdWK/DGa9o0j/wwVt6koWyhJSzvk5eFU9nuI
 FOFhwV/qNwbZzm86kIdXkpj88q5fEUAsOcVMmUa0adwZlGs82KYUCdr6Q3xuvfH91jf+
 Tz5jT50v4lXaRXgq2Cv1UeXPZaQtjOrkHPtX2ztgDDshd3us3wB5qqi2Br3NxpIPYdZQ
 U/2piYAL/XFsgC0Q4hNdPB7pJKfYfKOPQFMEyVHkR9WB5wYomgmcF45xB5cffoeQqVXi
 ring==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rpxbdKqagbkKW6bRErcLm1VGK57u1T3ItS0aEgPa12I=;
 b=mFyXfDkhVTt+AXxuEH+StO4OBQMn6/TF4s/4hoR3dyzfHQhcRT0Y59HzDb2Ys3NdFQ
 g0iq2sh+6Vztnb7H2tdPx5MtWe/sk9E/1yu0qsROKizTyueIU8U3914Zuv2mfZqI7OEL
 2WwoMK7tflQzvXzB0JYFCUKZiBWBYXByo8vKOYoxdQCqUwrJ89lB8bvWKG4qsiR+so9b
 LeN2fXp+myKM+bWOBkAyHN2GfbaNNpNj305y364meLx+5oz/F3LPMhHF4nnMhkSCUxzG
 Hw4uodYSjyFS+pWoUBP74GJO8DIFmC0pap0um05FJb2qP4xrMpQ4sh5DTeghJlBydggu
 kwgw==
X-Gm-Message-State: APjAAAUa+Gbc4BKOMacnbLqJywpSA6zVo6Vh6bgVACsY3Imb6tfsj5dl
 2KXsSseZR9jYOLzuWfm02VAj0ZD6
X-Google-Smtp-Source: APXvYqyL9KgkGJ673pktlj24hvy16jhjBP24eNFCAaO7fqwyUMgtOgpvh732fHWCJyI8i0cSUME6WQ==
X-Received: by 2002:a63:c203:: with SMTP id b3mr8974823pgd.398.1557182475712; 
 Mon, 06 May 2019 15:41:15 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id s11sm19784153pga.36.2019.05.06.15.41.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 15:41:14 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] hwmon: scmi: Scale values to target desired HWMON units
Date: Mon,  6 May 2019 15:41:07 -0700
Message-Id: <20190506224109.9357-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_154117_259061_2FC1FFC2 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Thanks!

Florian Fainelli (2):
  firmware: arm_scmi: Fetch and store sensor scale
  hwmon: scmi: Scale values to target desired HWMON units

 drivers/firmware/arm_scmi/sensors.c |  7 +++-
 drivers/hwmon/scmi-hwmon.c          | 55 ++++++++++++++++++++++++-----
 include/linux/scmi_protocol.h       |  1 +
 3 files changed, 53 insertions(+), 10 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
