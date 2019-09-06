Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 308A0AB265
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 08:25:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w3grDYQdWwGDOzKWVaEOG4g+XO/t0MXeQywimu5+WII=; b=uVJg+PM2xrehe/
	fH96sSVWD4LaYvzAzGjl2ROEibHwJPSCSq7LxILuIIvwZAWxmij9YwobofTVXI5H+OS5PPov9Pa9k
	l78LRoKOWSQR0qsovq5mqGxEtzR6KLJTqpmkjDBy6/lcRDjsnBcBv35ypvQt7dRBGlWlHi9zgTeQB
	OhtGfahHhHvWoIGY7WmXTjlxEaekxAHNvbU2aJ8xSwzQAHPsLhvS+7C1nqz9i1YfbHEkeKV1rwfjw
	776JIs3J7fFKYmr362aZfOi8SPrzWzU6OEL1SySVu0fSyoLQo3n4GROVlBiLha1blHazZSMGSJ0ec
	fufYHy2VjLLrXzrsa2sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i67gg-0005CG-VM; Fri, 06 Sep 2019 06:25:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i67ga-0005BZ-1A
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 06:25:33 +0000
Received: by mail-pf1-x441.google.com with SMTP id y22so3676193pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 23:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tB2RNxXRErmJ9e3PrRrfYZt/4IO0/YJdN93uotJXzmg=;
 b=KHw7ngbgKFGwXSFYuiQbGQBfie880OX2vpp7L7MkL1sULSWNTS+amLlNfeUx7rmuOp
 E9CSHIH+Snd+pHoNvNkmoZPMxy2VDvQqTpqGVu6G2n6Yu2DJQ33iR4a+b1nOTbCtdCkJ
 Ut6L9cfoS+yOgTUVEvlrjqyUeOHn17ryGyo0lFFLqh/mokWzyKNTkzYqmMrymwaxFF3e
 8wFtNMlScmfR4ntuMwoNwxaxjHmJI0iqON9yO31sLfTs/v1XFrEicM7OsWR1Rdtvjce9
 WdKepwAaq6dsMxsIXT8ilMO01Lezvk7CaRhJA6DSiYSJRoGNPSlNApc3uZpDPQIdBFK8
 9knQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tB2RNxXRErmJ9e3PrRrfYZt/4IO0/YJdN93uotJXzmg=;
 b=ESW47RQqONBUUh6Z6BlTT8lyIQtsc/WenB4J3/aehMjaj3iDNBbcx5FUJ+Mcm0i6JM
 RbbvRA82bIiiCVUY9NUGYVegKzoofXmldycXXmsDoXfpX/Z6SzJkE2ggo0SDAJI4W4Rc
 4PVwM4rj6Do9w/Fgr5z8h/JawwyQP/16i4QpcKjv3hvumvPjCawUcNc3NygZwZB/Dvpq
 xwX5citX2oNdXyiPdcrYAowYfIqDNTNgVS1gdF0GqKzJFRiVGUqCDTFWTdM/Mv3cbZvz
 MteKTpS0fSDeEnEqXFm1NRqs04i2Y79yc1gUhOQDMeZaA/BXca3YVS63cFQZtiJIkIhO
 0fsQ==
X-Gm-Message-State: APjAAAWI2CTepHeHAtQHnDCCrO6Ey4OHRA+FLAkeIRntB2gqra+upTrI
 nYvFPj/uDorItSbU0HTC8h4=
X-Google-Smtp-Source: APXvYqyQA5o7Nplg7Mz6cACJYxVi92CNBUmDeAZ/6//NQuySZy9WiwRBzeJBgCrM660faJtp+bFQrg==
X-Received: by 2002:a63:6f41:: with SMTP id k62mr6650552pgc.32.1567751130676; 
 Thu, 05 Sep 2019 23:25:30 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id b5sm7950688pfp.38.2019.09.05.23.25.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 23:25:30 -0700 (PDT)
From: Rashmica Gupta <rashmica.g@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH v3 0/5] Add ast2600 gpio support
Date: Fri,  6 Sep 2019 16:25:10 +1000
Message-Id: <20190906062510.13191-1-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_232532_101436_D3E99657 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT" <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, open list <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Rashmica Gupta <rashmica.g@gmail.com>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

v3: Different ordering of patches, using ngpio property to distinguish between
the two ast2600 gpio controllers, fixed typos of 3.6V.

v2: More verbose commit messages, using DIV_ROUND_UP().

Rashmica Gupta (5):
  dt-bindings: gpio: aspeed: Update documentation with ast2600
    controllers
  gpio/aspeed: Fix incorrect number of banks
  gpio/aspeed: Setup irqchip dynamically
  gpios: Use ngpio property from device tree if available
  gpio: Add in ast2600 details to Aspeed driver

 drivers/gpio/gpio-aspeed.c                    | 52 ++++++++++++-------
 .../devicetree/bindings/gpio/gpio-aspeed.txt  |  7 ++-
 2 files changed, 39 insertions(+), 20 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
