Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB35617E79F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 19:54:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:MIME-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oW9/ye93UKJmAdY4ZYYjO+BYmcZpaJ4lF7pouc2xsMI=; b=ri/MUXd45rfLJC
	Ike123X2BlPlTePsFpftKHuepGo/SQJV4IB4Dised53Uz9A8v0EQ5DRIv2YnG0z369PMSHtb2OhFc
	l2lTBDL+0ffI716tbsLW52MZIAp5UewEizrl6Ui+Ob65+1GNpGSz7C+dpHIMrvK2Grk+3JZptBm0Z
	t6EOMTmZxn/AMalj3blF8CHfEVQKdlrb9/3Sc/jG6iG6RewTZ4cpSByXN4+5FFaUt5Y5ObBhfoM8H
	zyy04wApHItfA0rIhs1dM0Gy2fs9ixCyMYx92PkpE/VT0KhYgvfzD+/S6os8YEpE78KdZBOldkaQv
	Z8nHbn8nqmNVxYjxkS2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBNY2-0002AM-Sj; Mon, 09 Mar 2020 18:54:42 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBNXv-00029z-UC
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 18:54:37 +0000
Received: by mail-qt1-x836.google.com with SMTP id 59so7845309qtb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 11:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
 h=from:mime-version:date:message-id:subject:to;
 bh=gW+iriUdtxlZCcttcADThfqktlutCqmObVsZzeSTfPY=;
 b=v2chXXaRVG5vuD5kFLHQEDXvsMGK7uIFfVzTpEx4AhLStQHihyDwaC77PFehhKa/wG
 D5EyVVhEEUautHa79a2pTHhObnj5dHWkr7paCh+GgcmJuRYzApZHvrXOHR43/a5K4J4d
 b/Y3Rnr+mTwYV5ryUhPBulYrGmMv6t2ELiC6KFi0pqgl0qy6DlyfPVNMMGhj4jxuwyBX
 NwXSLl72YQM1B12SSU8om0b2c9UML098raw/p3q2Gc7Um84j85VmGKFyuoiOgYuZJB2N
 FhHswBvNDGaC2AaCtVkEwhRw8xZj6/15iBTAMH9fggJTZhFt+vTySFcL/5ZmEJpJHHjZ
 4JTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:date:message-id:subject:to;
 bh=gW+iriUdtxlZCcttcADThfqktlutCqmObVsZzeSTfPY=;
 b=j6CS2e/zYH2kML6tyRb+XIzPN5nWBETSleY/hL6x12AOQ6XyCUdaMRuy+AYY0S9AzG
 vOx8mFCLe/VGp5d1qpaLbZgcSzmLfFLxl3c4ik+Or277/ss2zJzcEo9ld8SqEApSf1Td
 /Lj0u8zgsvOcjaCX2nTpOZZNSrXB1Ph5P59Xct8iIKWaxWJvpeZcuRR7qdvNA/6gSJBR
 iYzEZy300Naw8yACu+N4pypkXjbKd1jU1dXvPTAc2T8ZZOOvK92yxgXyhs+oNAttgUdb
 XjD2J/Sg/85Dab5To2kkyEBgDoO/VFKOyQdraw+SE1OxUl1nswKl5wmmVps/SXVWaRMY
 yOEA==
X-Gm-Message-State: ANhLgQ1Bwx5CVM1RlhRSVO7AZGDGB4won8QSiNMWpOTvTpWnuRSK3aaL
 Et9zBm4mIC51wFNDPn4HT/PJN1k2OgBClw==
X-Google-Smtp-Source: ADFU+vuLE890YFqYB3EwS5uHPS0+iOZSW6yA1aRWmqHT9vGOblGU98QQQBFMm6myMJpGVcj5OtNaLQ==
X-Received: by 2002:ac8:7508:: with SMTP id u8mr15962002qtq.163.1583780074044; 
 Mon, 09 Mar 2020 11:54:34 -0700 (PDT)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com.
 [209.85.160.174])
 by smtp.gmail.com with ESMTPSA id r20sm5882436qtt.6.2020.03.09.11.54.32
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Mar 2020 11:54:33 -0700 (PDT)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-qt1-f174.google.com with SMTP id a4so7791806qto.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 11:54:32 -0700 (PDT)
X-Received: by 2002:ac8:607:: with SMTP id d7mr15667506qth.271.1583780072098; 
 Mon, 09 Mar 2020 11:54:32 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 9 Mar 2020 15:54:20 -0300
X-Gmail-Original-Message-ID: <CAP9ODKpW=h6SVtsn-uuDQ4+TgR0NnjBW==8vwyQD4+x_dbFzRQ@mail.gmail.com>
Message-ID: <CAP9ODKpW=h6SVtsn-uuDQ4+TgR0NnjBW==8vwyQD4+x_dbFzRQ@mail.gmail.com>
Subject: SPI irq regression
To: kernel@esmil.dk, Heiko Stuebner <heiko@sntech.de>,
 Mark Brown <broonie@kernel.org>, 
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_115436_116773_023543D6 
X-CRM114-Status: UNSURE (   6.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:836 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Since commit:

commit 01b59ce5dac856323a0c13c1d51d99a819f32efe
Author: Emil Renner Berthing <kernel@esmil.dk>
Date:   Wed Oct 31 11:57:09 2018 +0100

    spi: rockchip: use irq rather than polling

    Register an interrupt handler to fill/empty the
    tx and rx fifos rather than busy-looping.

    Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
    Tested-by: Heiko Stuebner <heiko@sntech.de>
    Signed-off-by: Mark Brown <broonie@kernel.org>

SPI is no longer functional on a RV1108 Elgin board.

The error messages are:

[   46.186916] spidev spi0.0: SPI transfer timed out
[   46.187435] spi_master spi0: failed to transfer one message from queue

Reverting this commit makes SPI to work again.

Any ideas on how we can properly fix this regression?

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
