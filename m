Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCEF19368
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 22:30:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gdmdiTBioFW99UAhQxgcVIKSnE9CJ1IhtadxNuNPDF0=; b=NQ8
	E7jdLF0ZzbHRPvN25zOHGG2oxY7U+lkG3q7f+pMd4wrF+FGP/Bz7r7SAP4wyT+Zz0UC2gShy/WAeY
	MNXDwciW+GDM6h35fRwu+Bu0DGngRnf5fWWHseDouWbc2OkkVKhBz3ftOqbIRmLUKkQkybnllJOre
	mmtD/qk88deciFGPhugnRzgTlA7CM6wRps6XrsdCxzGLKWVqMOCUaPtJSXrWdMbeH/23lk+C/vbGq
	KJirFfAXxmcFOHpaaC1NrFM5/oXaA8OP67XTy8UDldFozR5gQp0WGlDcr9EWTr/Iq4jl8H1qXzb9j
	d6IFpZojOmlV4ZB37tQ4TJtTXp9/Lag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOpgH-0008Qf-8u; Thu, 09 May 2019 20:30:17 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOpgA-0008KV-92
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 20:30:11 +0000
Received: by mail-yw1-xc41.google.com with SMTP id a130so2897318ywe.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 13:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4Uc1sxWlZenzjNtw/v4Bu0vw6ThmoS5rTB+EikbKMzw=;
 b=g0xmpFiIyYDNtnP8/cR+PuL+UNRGGblsJgGR0K8vdvAZrBMnyWKNYLS0wwM/ZbaeyN
 54df6yMCkkZ+zVvQwuPDCaHQ0vO1qgsZPoLeZV9d/vNJkXdz5Jzak9cjocWm7tsLddHG
 sdR14VQ0GlXDvDnM0YMQo8jOc3c2V2KVmDbVEd/GNksGjBgWqsgTG1Mgprf0cLnm162s
 OuNWgFHVmY9/YfW11U8qxVgwgRFpxeufexjKccS8OrWFY+nOtUdiwPCREAqoZbTESVl9
 fwas8BeS3epJXxPT3tP3AG2dPgNoBUUP/OHi7kP9tM+ckVoUU2g41G9JAw7JdgvQuIYe
 Jr3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4Uc1sxWlZenzjNtw/v4Bu0vw6ThmoS5rTB+EikbKMzw=;
 b=Mr40ZVpNTiF6IRP7tuEdX4knhL5eOuDeZj5BXGr3I4ahdisjixwENUZ8E8jeH5JtWG
 Om6Zbh581AWH4NJpW+ipv9MEGwWMYjziEizt5Zg8GEz+m3BFvTpj0ba6NWp3zCixxQx9
 xGT2CHm5c8dBktX6c6aet32uIp6aLkEQMumB7/gIsHt8lVBEcv1IUSAkbGgyWoVwBT1j
 5spu+H+0Z8OvLjzV4XcC20pisTVqxCGwWSW+NzFmvFTUak6kN0LQx9zHTwrzSfn/uzNv
 0kYg04AGceNmFzmgzvVgdbDp5iOW4QlA8xiJdSSHUsDppmkwiuKZROtV2g0s77s412BH
 2Pog==
X-Gm-Message-State: APjAAAXdKOy/P9q/4Wu3pVJIVeUZPHvQpUXzl05hNhLH5aHMftf8Vj+q
 voR1Yh9QvzyRl+n8TiExc5GphFAD
X-Google-Smtp-Source: APXvYqzy38NnSBuSt1HdIcLK+5diag01BsVcL6xGPpIwXjbp51WMU2vzQXUWPwyJKxLRIno94pgVLg==
X-Received: by 2002:a81:48b:: with SMTP id 133mr1684226ywe.11.1557433807088;
 Thu, 09 May 2019 13:30:07 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id u6sm896150ywl.71.2019.05.09.13.30.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 13:30:05 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] clk: bcm: Allow CLK_BCM2835 for ARCH_BRCMSTB
Date: Thu,  9 May 2019 13:29:54 -0700
Message-Id: <20190509202956.6320-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_133010_319661_731E627A 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: stefan.wahren@i2se.com, Florian Fainelli <f.fainelli@gmail.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

This small patch series allows making use of the CLK_BCM2835 driver(s)
on ARCH_BRCMSTB since we have newer chips that make use of the CPRMAN
block that this driver supports.

Thanks!

Florian Fainelli (2):
  clk: bcm: Make BCM2835 clock drivers selectable
  clk: bcm: Allow CLK_BCM2835 for ARCH_BRCMSTB

 drivers/clk/bcm/Kconfig  | 9 +++++++++
 drivers/clk/bcm/Makefile | 4 ++--
 2 files changed, 11 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
