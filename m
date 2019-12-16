Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADAD11FD5F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 04:57:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xAiBmQdUiJBau7BC55rwGmph1PoTc1ho3lGuUxGlHDQ=; b=W6R
	k/+JllC1I/aO2HEPzGwTcUd8KtbaqMngN1zEFawVqf3PAv4UyAHVOAIigfbuy2l72H030+lzpIxul
	r7R+t8pXkvk/1fqRf+gjqlU4RhENg13nH5IlYH/Ws0Omwrho8tR6HlEYlOQaaoxhcdPG3AxGb/Nw4
	NqGQHFOtTuH81tM0JdHzWx1SOg1UPlHZqhDwMXhlDxlqSkbf8f+2sL7PHmw6wLRnyLI1PXIjlgyV2
	hIYDSfvRZ198Xy5yd9cu9UCeGGSM5GBgYaXBioS1KjA51Xn8IXDG6Nwz7/zoJ8brxY3jxmygokMKl
	+Un+U1vpANtJAtPdhSBs/CIVY535rBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ighVZ-0002P9-Fp; Mon, 16 Dec 2019 03:57:21 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ighVO-0002Oo-LJ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 03:57:12 +0000
Received: by mail-pf1-x442.google.com with SMTP id y206so4850734pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 19:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=m3nAyvCHXxFQpXfe7McPTAalGJbGsoctXxiUdi5ZzoM=;
 b=YJcyw9cIdqSBvkduMEUPWG6B7wQnVVPRSjv7PcgjOE15vWVnTNA4a4YlIPgta006xp
 E5+0BVuDDFiZCnEyfUftRpJ7n2RCjhZQbGqZfHR37SBEQFmd6skfweoOxEHZ27YPgF+h
 14OnEb1gyih6/MX/fUseylF1pQ7EdJn575HYX1iPJ6S9w/cd2PBocARcO+5QOF9nyB/n
 4wFmILRse6PCJiikoI9GeV7MrH3K6ICCcvRVEMAI25IVylYy+Hc3cTuN53lhquOMSHx2
 ALYTJkSmhPrv2htH4JFM3TwbeEtudHFISIE+E3tEw79ix/3qUa8iGBeQp+q/doSW1B7M
 WADA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=m3nAyvCHXxFQpXfe7McPTAalGJbGsoctXxiUdi5ZzoM=;
 b=kX//h4VeyEst4+i4HBFh5EEJ37au1jcsJ100zi9K1K82dlHbkRmzYEcuVaObS1LEMZ
 Czh5bmdi5o8+jbtd8SNzPAD9seMa9j6PnCQXDo1jMNNeTdyI7KVtCl1iuYmuOOwaQDKz
 ZiIp+21kkl4rMUuL2lF+QvlDTcE7Xzzz4NaYHS6K0hdvJLnSeOdGRVu45GFYSWlLHPa2
 hN6RS+3KvJaElkh54U69DnsZWsxwJ9f2JTrKSnooUozIKYbFINugs5tU8S2jpsgFtcWz
 ILSbFtjYJ1kpyoHwUv4nUUgw7AuTvxi7rhIVHYHp8hEvZ6BJyhIW8A8MB19Z59v6eYCf
 Cwng==
X-Gm-Message-State: APjAAAV0YOxrnePnWNsvkZrvQVIhkchtc03tKXjKWefRxMVr0G347V7u
 J9cwuaM6yNoVZU8HRgDdUXjwvw1K
X-Google-Smtp-Source: APXvYqxuISU4NbFDsB84N/h4qfC/tX8PyAg3rGvP8kMMzFFfIKIGGknUFPNZMzTsW7qIkbR8KrtRLA==
X-Received: by 2002:a63:ea4b:: with SMTP id l11mr15526288pgk.357.1576468630057; 
 Sun, 15 Dec 2019 19:57:10 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id d85sm20124088pfd.146.2019.12.15.19.57.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 19:57:09 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/1] Broadcom soc fixes for 5.5
Date: Sun, 15 Dec 2019 19:57:01 -0800
Message-Id: <20191216035701.15534-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_195710_722059_016F7844 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "H . Nikolaus Schaller" <hns@goldelico.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 olof@lixom.net, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.5/soc-fixes

for you to fetch changes up to 59034b9d6af8ccc1de0a265ca90b3aa967bae19f:

  ARM: bcm: Add missing sentinel to bcm2711_compat[] (2019-12-15 19:32:28 -0800)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs machine fixes for
5.5-rc1, please pull the following:

- H. Nikolaus adds a missing sentinel entry to the BCM2711 machine
  descriptor compatible array which would make multiplatform kernels fail
  to boot

----------------------------------------------------------------
H. Nikolaus Schaller (1):
      ARM: bcm: Add missing sentinel to bcm2711_compat[]

 arch/arm/mach-bcm/bcm2711.c | 1 +
 1 file changed, 1 insertion(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
