Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D1F134B4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:11:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Fy6y123ZCBa3sbwe+Me21vH9kXNTQ49GsTZUnj8odwU=; b=ngIRDe8lH0oSUS1tSdrMV/c0kS
	fRJBYtRgIYyFFxgvxlepH5X3q7J35A3xR5WObRAzvOZujWMNOOKrVBvKvoWILnW+zPBuhTwITTvr4
	/lyRFuH6yDnginrjOpRvdBdyb3owNMtH0dmT71s0mPzwhoaNf+bTdt8JSTV6fa5t4foW4ZhM5qkvV
	aHwAWjmEZkSF50JBEWhIN1/GMh3PKuP5Dw0njm0sSM2hLfur06QXE6eFl+Fysfm/pdhgB9MboHvul
	4E3SeUF6c2Z//7J1RuGzrNfZKsqIUxlG1Bqn2QFfFbChuvnxpPrEKVNiG8b5QNjt8S/+owNWoqKFi
	zUa/eU5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGk8-0001rG-H2; Wed, 08 Jan 2020 19:11:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGjj-0001ff-Ag
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 19:11:24 +0000
Received: by mail-wm1-x343.google.com with SMTP id b19so75812wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 11:11:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IZIYC0ZvX9yuDi1e5SXV0bzWVO2A6yDpTNWubrCqKwM=;
 b=Xw6DkCejCAniSuZtBvzHIGUB+3OkCWhKv53GEWeGVtls3kU//+APNHH6nOi/BWsN5+
 yqs6Ut/vEsApq5eD43Nja9vos3gU1KGksULq+3zjtSu73B8Q47873KBPv0A9Pq4dYFSb
 flqr3JMSPqVT49xsv0P99xCM3MgYPyS8NP/kbcS2eUI/U0E5XMhTBauAiw0D81MXTYw4
 nswSdpyfMEAWmbNqbNUgN1/dPLc9i4tgOTlTPT6F7qjbJV2DHEQETpEAy9kcXY8v6Rdx
 HL6e9poD5x9VM4t4SNoyh2NY2zEXFx2mZllqp0CeaZmTixXZbG96cdcrd0Rpg6keLS3a
 cCGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IZIYC0ZvX9yuDi1e5SXV0bzWVO2A6yDpTNWubrCqKwM=;
 b=UEBxsD9VlHgadpWUKAPXUjYucQIH8WkdkTu8DrWdYhhgtltCClOBfDYxEf3rbETHfs
 HrmdXcL5P1+wumBZXWv+xNAyi5URWKYiKp7fgjO1D88ZOSK1JZcJOzhie9G/vzKjjSmt
 UnyAB23J0RN6/nVxfEiwNPz+d5OlJ2YP5/XHZ0ypKp8kcsUI8UEFIjYT/AN2J6IvK4zk
 LPMjb3AvhTZvA66UUrFWKEriKbM1VIoMytzWlUA8BtfbU82JDTAt8zil8Ko0slI27jYX
 tq4fUrVZH1+7MX8vQayUtRhCqQ2+IXMK7k9zJqd2JmRA7h/GwADaUde+oPNYbYTuUBa5
 26Wg==
X-Gm-Message-State: APjAAAWH1vYkt/V5ah0DP5haMfK6nnXU9nI5iveO0bu7evv/72aHmfbJ
 rvZxvvoSLbmUxZ7ThNYdqrA=
X-Google-Smtp-Source: APXvYqzmL1YjsNZ4iLXlSrBG97qsGQvytO3dHzcP7upglkxpE8+z+B5fOHX6o1YTGkbwL5ShEwzwYg==
X-Received: by 2002:a1c:ddc5:: with SMTP id u188mr96949wmg.83.1578510681816;
 Wed, 08 Jan 2020 11:11:21 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id t12sm5243270wrs.96.2020.01.08.11.11.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 11:11:21 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 2/3] Broadcom drivers changes for 5.6
Date: Wed,  8 Jan 2020 11:11:13 -0800
Message-Id: <20200108191114.15987-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108191114.15987-1-f.fainelli@gmail.com>
References: <20200108191114.15987-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_111123_368798_E728105C 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/drivers

for you to fetch changes up to add427c49e92c78519d0ff1728ea66d9e52f1fc9:

  soc: bcm: brcmstb: biuctrl: Update programming for 7211 (2020-01-05 13:44:04 -0800)

----------------------------------------------------------------
This pull request contains Broadcom ARM/ARM64/MIPS-based SoCs drivers
changes for 5.6, please pull the following:

- Florian provides a set of updates to the Bus Interface Unit control to
  tune it appropriately for the most recent chips: 7255, 7260, 7216, 7211

----------------------------------------------------------------
Florian Fainelli (4):
      soc: bcm: brcmstb: biuctrl: Tune 7260 BIU interface
      soc: bcm: brcmstb: biuctrl: Tune interface for 7255 and 7216
      soc: bcm: brcmstb: biuctrl: Update layout for A72 on 7211
      soc: bcm: brcmstb: biuctrl: Update programming for 7211

 drivers/soc/bcm/brcmstb/biuctrl.c | 30 ++++++++++++++++++++++--------
 1 file changed, 22 insertions(+), 8 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
