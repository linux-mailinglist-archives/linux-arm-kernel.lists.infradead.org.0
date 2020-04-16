Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5AA1ACFBC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aNNNNGgLz0DYvqeYrg/lVD5ZLrNJ7cjZulKVOEyWWJY=; b=asH1T06Kvadldl
	do8uyXx+Mt//Jp03etUreWI7vZAqVWTidRWCYDRpWeFWaAraAWWjXsCJqt7LlbkdlQObkODx/xgtf
	u5d/RM4WwuMxdnB8EYR5gJC4LfPKCYDYj7xocqvszGS9YbfySpXG8RQv4VGh3D0IXIMGRsdx3GS3L
	MCCPkX4Ck3NYQ4X+lT700HfoScbn2UIBvRUPatetGmbechM11sc1YBGUiExXnLIxGEZ356kuwJ3Or
	z53me0R3r4ugsGWjGP5vJsmi1Y1rfPe8e1zl0Fo2s2ds+RlsN7p7sSA0+Ei9sbnOaasnzINIpztba
	ech2WWK5foNf7hATuRJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP9OM-0003z1-00; Thu, 16 Apr 2020 18:37:38 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP9O8-0003nv-0F; Thu, 16 Apr 2020 18:37:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id j2so6016551wrs.9;
 Thu, 16 Apr 2020 11:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5aO4xzcD+0wNNf/PxxNiXuB2ikdc6r7QQ2PRhCRC3Yg=;
 b=FG9WLRGecEzt5yeGkGmmEEDa7GQwVbDWiOvSd9qjmkGgeQGFjYkiAo3br+2/TroUip
 dV+Ad4C2oS+YHZWy9GdT2Vxd7rXDbBW5OsT+xcDZqeO7TtT5ml+gbnoFMIkgSzs0sIjc
 jGemJiIb3YzPLELsNskzftGnUhPSnFdbwONV9Cyveq/qWS4XfW9sIwu2VoYz0P/3Gt+P
 AP1gaT/nhrXKaL4caHp6D8jQmY12FHzzSgpscu42dF8gJT/l/NcdTgkxCn/IJgjUwPax
 HdQ0GgaEHjxBjw30yu1v9b+6Xc7u/XM6XAacI/hE8p3JMIgSjwqO7rNjK/BzSqJg1P2J
 pkTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5aO4xzcD+0wNNf/PxxNiXuB2ikdc6r7QQ2PRhCRC3Yg=;
 b=W0Ccwbpk+EoXY3945w2+MKZkrC3zuR0HtXRvyNB5kpqC2K7qcIB8HrEOVa1nyVibNG
 78WZ4lP3aFIzq1MFjPhKE6aDVVaasHpF5mKotHpe0Kfv8jcZkFMIsM6RoYm2+nJCv1SS
 VaD3+/JzdBcGj4CJSqqiXcjDdJq5Y4C154EyVaCDoJdIEsfV5F6im0DUWXzB4xbrCYEW
 0x1cWC8Hpkd7rUObKkkt1KO4b6BQXbRBvdrAc/IqsGWEKIyGRCPa1KFGGPxKUkCXklid
 Gq6rz6IKVSTrW3Bk4dXwy+zoORGH3Z9LMZBCpD/mrGwOuJopVpABZcUj6eGV7th1GAdW
 ksrQ==
X-Gm-Message-State: AGi0PuZmKM3gwiWDoUdJUkst5cYZydIw7bj3xuYcH9AwcLPHIlZH4+bP
 +nVcsCWncCbBeAllAgpdV0E=
X-Google-Smtp-Source: APiQypLF69djmNWJQ16igTe3DHck+hJYapQKt6rYlnZf9gHpnpETMKxfUYg/wmGaM5Csx0GhrQ9CWw==
X-Received: by 2002:adf:ee91:: with SMTP id b17mr6072924wro.109.1587062242718; 
 Thu, 16 Apr 2020 11:37:22 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id v131sm4626434wmb.19.2020.04.16.11.37.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 11:37:22 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 linux-amlogic@lists.infradead.org
Subject: [PATCH v2 0/2] meson-mx-sdhc card busy detection fixes
Date: Thu, 16 Apr 2020 20:35:11 +0200
Message-Id: <20200416183513.993763-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_113724_088496_9570F085 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following errors were observed with Linux 5.7-rc1 and an SD card
hooked up to the meson-mx-sdio controller:
  mmc1: Card stuck being busy! __mmc_poll_for_busy
  blk_update_request: I/O error, dev mmcblk1, sector 17111080 op
   0x3:(DISCARD) flags 0x0 phys_seg 1 prio class 0


At least patch #1 should go to a -fixes branch so it can make it
into v5.7.


Changes since v1 at [0]:
- added correct Fixes tag for patch #1
- added a patch which drops the ->card_busy() implementation from
  the meson-mx-sdio driver because this is not working
- special thanks to Ulf for taking the time to provide debug
  patches, explaining things and answering my questions!


[0] https://patchwork.kernel.org/patch/11483621/


Martin Blumenstingl (2):
  mmc: meson-mx-sdio: Set MMC_CAP_WAIT_WHILE_BUSY
  mmc: meson-mx-sdio: remove the broken ->card_busy() op

 drivers/mmc/host/meson-mx-sdio.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
