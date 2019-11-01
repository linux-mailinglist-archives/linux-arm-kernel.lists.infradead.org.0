Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2A6EBE97
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 08:45:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Z3oHNluXfi54U4rEtQbtRiUE/7sx5uJtZULaS76puGc=; b=iTf
	w9NabG+QeadWd53H6kBNLOCnsasTIvPxnbj/Bt4It1oEU4CabknBXKb4kEdAeT8GDyX7/Q9Nr+1AB
	PfycIFtv1iVlswcdZp16ji6FYFhZ3wKjKa8ubK+1gJSGr4T96AAy/EEo4p8BsReugfqCTM6UxUuZ4
	8zwIYoC1ZrQOdCvqZ6VWzol6xI0vTKbwgAk8//k0gR8ETLxDdfWxYHoV6qMpB8I33CyWGDRFIhgfZ
	TjdPkWrEpXfnJ3tJMmoCHn+heds0UbAxVRs9+tyhAgVRVeWPA2fgY7zA9qOvOKvn/H1EV4Sn30ATw
	pVEHxgo3cyP3dmG/gPhbQ2jAShbR9aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQRd0-0008D8-DB; Fri, 01 Nov 2019 07:45:50 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRcZ-00081V-RB
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 07:45:25 +0000
Received: by mail-wr1-x442.google.com with SMTP id l10so8821025wrb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 00:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=to/Y/QniUKkmMiWX6pjQcsRGKsnCzLq5ufaQQdqWZaY=;
 b=DGeGBbSBF3XBgQkPzpHmCQeFeB+An6cAw2pADw8jObNdktR2wAJYZyaNvNypUUSyzt
 3RbLP0F6s/LWdjQ2cyscdEqHYHFEUtbMNkOfeQfvJhKU/DXlesWfI62+9UIsQ2tccQn9
 OWp/fMADkVTtJjkM8ktM5ey74wSv2owi1hbyy8xdt5E9ap2yunxrhdcyTLVaC6Skea2U
 vT8pEVhFT39RWjnZ7upwYsYng+82rk1hWMZxGOLjhx3483Anr/FcD9Z5pienGvAx8/i9
 l6gVFD1OFIVMLPnKxE1mvr0oy4Wb86BHYaxly8EacH/EQKrFNXyCqimqN6uL+JyEcqmv
 hvPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=to/Y/QniUKkmMiWX6pjQcsRGKsnCzLq5ufaQQdqWZaY=;
 b=CJgITJT0N0b2pzJDMSWRGvSdfHhS8X+S9R1bCzPgNm0CCcEmBi5JmzDXQa7zpFp7eK
 NHl/zpXPb5Geo/EvYErga2+oE25KzOiJqklwkQTXO4FklnxiXWMhhthaY28rqjX6nolS
 Qblp4sPvFZoxp2t0INpw6Lv93gyD++U6sw0LzWIxFp/11zq1lKldIcg4j2PwF10I4e69
 mNeUcCBo/8clgpAbb0JLpciI8c7hkD5d/w/wlIKgtbFqewAfgmHaQGbwe8zl5JOj6IvC
 lEwCkant9XHQqTx2SiTUxr6Xpsb5tIHE+z8eXivijvx2kjw6oKzaCidlcDD6bc+JHNRc
 3QOQ==
X-Gm-Message-State: APjAAAVqPUAFde4TNtbU03PsSk9oJftEvcRvwfSXs3kqntVFFqeqwWMY
 AWvvrlZ1KPJET8w9N227D+1RqQ==
X-Google-Smtp-Source: APXvYqyxjoV/SqOqmBnZZX6r+ePMAOXdffQ7T9WX/+gdTSuCsEL054iIAv0sY38n9RTh2JKXTN0IVg==
X-Received: by 2002:a5d:5288:: with SMTP id c8mr2412711wrv.1.1572594321520;
 Fri, 01 Nov 2019 00:45:21 -0700 (PDT)
Received: from localhost.localdomain ([2.31.163.64])
 by smtp.gmail.com with ESMTPSA id b1sm576215wrw.77.2019.11.01.00.45.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 00:45:20 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org,
	broonie@kernel.org
Subject: [PATCH v4 00/10] Simplify MFD Core
Date: Fri,  1 Nov 2019 07:45:08 +0000
Message-Id: <20191101074518.26228-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_004523_890911_A8EC4029 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MFD currently has one over-complicated user. CS5535 uses a mixture of
cell cloning, reference counting and subsystem-level call-backs to
achieve its goal of requesting an IO memory region only once across 3
consumers. The same can be achieved by handling the region centrally
during the parent device's .probe() sequence. Releasing can be handed
in a similar way during .remove().
 
While we're here, take the opportunity to provide some clean-ups and
error checking to issues noticed along the way.
 
This also paves the way for clean cell disabling via Device Tree being
discussed at [0].
 
[0] https://lkml.org/lkml/2019/10/18/612.

Lee Jones (10):
  mfd: cs5535-mfd: Use PLATFORM_DEVID_* defines and tidy error message
  mfd: cs5535-mfd: Remove mfd_cell->id hack
  mfd: cs5535-mfd: Request shared IO regions centrally
  mfd: cs5535-mfd: Register clients using their own dedicated MFD cell
    entries
  mfd: mfd-core: Protect against NULL call-back function pointer
  mfd: mfd-core: Remove mfd_clone_cell()
  x86: olpc-xo1-pm: Remove invocation of MFD's .enable()/.disable()
    call-backs
  x86: olpc-xo1-sci: Remove invocation of MFD's .enable()/.disable()
    call-backs
  mfd: mfd-core: Remove usage counting for .{en,dis}able() call-backs
  mfd: mfd-core: Move pdev->mfd_cell creation back into mfd_add_device()

 arch/x86/platform/olpc/olpc-xo1-pm.c  |   8 --
 arch/x86/platform/olpc/olpc-xo1-sci.c |   6 --
 drivers/mfd/cs5535-mfd.c              | 108 +++++++++++-------------
 drivers/mfd/mfd-core.c                | 113 +++++---------------------
 include/linux/mfd/core.h              |  20 -----
 5 files changed, 68 insertions(+), 187 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
