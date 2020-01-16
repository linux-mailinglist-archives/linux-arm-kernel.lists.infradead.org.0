Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9830713EF28
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:13:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GvJbsDUgUWtiebxW70RGbFZeQ/J2rOwjljyICFPB440=; b=A3cxGSGuWBv0pXDKKUlaRMFg58
	FeNKZRRdRylQRiwDIhgpc6rfgsloehQMFhAMyC1f74jk338zqDVfVnXleY2wgmXXUv08F2nh2p2XH
	EX6EuQhv2hsps7EDWt+R6BBwi938lApeuZ6hkxKjlIBuTaxpt2oYJwsHIobpYL1CTB9NTODlA3HOB
	gYvpz6IDdYrduAmOtj9QBdZuGlLTXYxo7bPM9LM0kCczGPJX++mS3dWWURZwekTa2DOb7vmOQpDYD
	7bSYQFuIxTqpFvAnGdDyspxnCDNoxySf/sHhVDrZrW2JsQUPwV0aTavQgF6LcXeq0Tg1V0zitBkma
	5FvHM92g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9eC-0004Pl-Nq; Thu, 16 Jan 2020 18:13:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is92o-00042L-Jc
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:35:01 +0000
Received: by mail-wm1-x341.google.com with SMTP id d139so7666817wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 09:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NVh8Tpd+VJ2sJprbYPiHP3uUQ9hn8hf57WrptUKZ/aE=;
 b=bKpoGQF3WyZUNO3ki03g/km5FZI9Q23kh84JDIdiI0rLZv9DIHP7w/Vc6nTjqINn7I
 03EO+mrJxDaA74eQBcLCbYlwqTk39iG/RmQsUU6qBDbWMzGVbV8wyXcaw5yKDjjTsNag
 TWUjHjrlOvfpRVUmF+OtdG4RJSPOva4r0Dc1oiG9uZlHLHCjBQYJPiGzo7VSkj0/joRq
 k1QLSyqlcC6faUWwMhhUlI1q516jlS5YnPV9Lw6BGpkYVCKQHiu54yfkZd+3Kv3Ssoo7
 tU30TKMPNc6dyiYgR/WZvZS6uIQtodvQYx/R2xsPbB8C9dLrcPuXxKPlsT4o0JE1SD3N
 w+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NVh8Tpd+VJ2sJprbYPiHP3uUQ9hn8hf57WrptUKZ/aE=;
 b=MIsK25kOCraAr97ICqIQQ2c8va9hCJGcLhS179sGX5zfJRpLlzbBPIKcxqdgdf1ugR
 oRT3pEBszlH1G37KybbYd/YH01rGX1vmNovPIgSP5Nj2UT4K78uJcmuCICEITb+BL/Ua
 mM3H6AQcR7B/xIxCY4QFPXbvM2g9AOiu79i3GsqVjbb5UDq01U3ma+zUHfKUqD1cRsrQ
 IcNCiQUrSAdDeA8qh5KYSojFe99PvTnu5JxmFOgh6H4r8jhFh2Pw9CPR3r7WJSnWZ0GK
 56k0Vi70xrUIPvBkdJrJKt2p7UuRT+O6ZyPrVFflpObxh01L3FpPoeHvwElKX2INXWFy
 eubg==
X-Gm-Message-State: APjAAAWO7WxEzHXePwCo7QoF0hr5rQu8SIp+cOvUsh3xRheT2KBqgz32
 pQ3/Ko+KhDPoSX4VV0VdqRV+/8so
X-Google-Smtp-Source: APXvYqyBSCYGKpq+h9w4P8R0918Y74Mbs+RQAUDcfXpQyRhmlyEGaT81Hs5sMP6P7JLXTHo9ieff7w==
X-Received: by 2002:a1c:a9c6:: with SMTP id s189mr117723wme.151.1579196097226; 
 Thu, 16 Jan 2020 09:34:57 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x11sm30823040wre.68.2020.01.16.09.34.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 09:34:56 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 3/3 part 2] Broadcom maintainers changes for 5.6
Date: Thu, 16 Jan 2020 09:34:40 -0800
Message-Id: <20200116173440.10886-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200116173440.10886-1-f.fainelli@gmail.com>
References: <20200116173440.10886-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_093458_757458_F11D1D6A 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: arnd@arndb.de, khilman@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/maintainers

for you to fetch changes up to 7f4d4e232f3789bb4bd418d01cf97f195a76b2de:

  MAINTAINERS: Add brcmstb PCIe controller (2020-01-15 15:39:48 -0800)

----------------------------------------------------------------
This pull request contains Broadcom SoCs MAINTAINERS file updates for
5.6, please pull the following:

- Nicolas adds an entry for the Broadcom STB PCIe Root Complex files for
  both BCM7xxx (actual STB SoCs) and BCM2711 (Raspberry Pi 4).

----------------------------------------------------------------
Nicolas Saenz Julienne (1):
      MAINTAINERS: Add brcmstb PCIe controller

 MAINTAINERS | 4 ++++
 1 file changed, 4 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
