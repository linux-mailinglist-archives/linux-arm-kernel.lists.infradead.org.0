Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B531E175C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 23:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=goC8mVuw9mswIWehtVyA6o2JTDCBoiXA2ycxtCeXYu0=; b=T9GP8xbQuvwpud
	aACcfWrOGWi0y5NFrfGY/ScuBVpfgaqX9vjqepJ7b+91SwzB50BKf3e5Bc6wXM9jhkEBluu2vxXW2
	R8lRBB3kdpN0LFifsjaf/f0GpxS8naoXl0wYFCf73a/a8Tr3pSaW02AWTxyaeeAf8VMW3/VYeGOb8
	afrTzYdbrKxK9tn4DWoXAdck5tnVmbeGfYmOUB5UbWQxYXi+W4FGce3PxbRIw+StyLg46pSJzXkKd
	5KUec8/jOUf8zfBAGwDt6UYvpGLTu+mSzlUOuTw4GumI4bk+IMakB2w1LScax5uO3+cwKZtrZi9jg
	iyYGd/zze+aUnuRB58pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdKzI-0000OI-QO; Mon, 25 May 2020 21:50:24 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdKzA-0000NH-EQ
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 21:50:17 +0000
Received: by mail-lj1-f195.google.com with SMTP id v16so22192684ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 14:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SN+dpM083Q42WyxXGNQ6xV5UDjJbvXB3xjH8Bfi3+R4=;
 b=iNPRVl1+0sXuFo5rG2XVtbvjpacafwwSP9/HHJnuwh78ckDWfgnyiZtoN8D79+H04L
 lBo4mzux5NhMOXTMZ9+0mZQmU9FkdFhKDbiFSjXWOLq2XZ22HfmikY7OK67WjWgsCiwU
 erBDnzlqYd1nNgSOwSkIYkhZNU2H1nK+/g3awgjOMwWcK7HAABBFoAuC/sJwItRZT0su
 7z0d+hgxWhI4j4Oop9DWoPFXeNjrW3W9TW0vKmpx8sxH0ffJiSLgLTj4RI9/Xa6V8xHY
 centR91Xm2qya/eiDtv8aPXy6SDfJVJL1x3liEYifA7kaPMKwjufG6g0jxoe2XQp4Ifb
 006A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SN+dpM083Q42WyxXGNQ6xV5UDjJbvXB3xjH8Bfi3+R4=;
 b=WxrPKubKYk4MCYwHbo5y6505hfAIBohK1GrJ8cIsmdwPe1aVmie64qJ3rXt/w2c356
 +DzZ9fVCvfkDANnjsAkDjnNlP7hcTUPqqikUsl6Jz6yz5xN82w4y1eNLgtWaB5mY+fIv
 mvqpLeZqO4jvik9YSWroaisqqjtPPKxY+KR8CcgN3X9uUhgCrg9VruMUp4POgPgYjR82
 glMxMtkKooDLqdsGwORjTBFBAJTt1z7zQWDcekCGKHKwl9GpTU12x9pNgsIKLZNjhSFP
 wRNSwhCoPdcqCOPJkb2kizG9bukKJMi1ALbF1P1BYc8JuaNATf2IvxaAvZaAz3NjNvwk
 zkvg==
X-Gm-Message-State: AOAM532OHdGXsvMS44VVGD3eUQKXezxZ83W+smjSsBkC2/Ld8KEHwdSH
 WhFiNrIXNOUJV7FZvwbSgZA=
X-Google-Smtp-Source: ABdhPJxnTbunGio3cdXh+qjthmCHup2QsAXievRHBLyH46bK73IEPo4+D9loPtgYWGKOYBGDBCRTMw==
X-Received: by 2002:a2e:a318:: with SMTP id l24mr13657060lje.45.1590443407765; 
 Mon, 25 May 2020 14:50:07 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-22.NA.cust.bahnhof.se.
 [158.174.22.22])
 by smtp.gmail.com with ESMTPSA id e21sm3893338ljj.86.2020.05.25.14.50.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 May 2020 14:50:07 -0700 (PDT)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH 0/2] drivers/iommu: Constify structs
Date: Mon, 25 May 2020 23:49:56 +0200
Message-Id: <20200525214958.30015-1-rikard.falkeborn@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_145016_486961_D56F0749 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rikard.falkeborn[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
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
Cc: Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 linux-hyperv@vger.kernel.org, Haiyang Zhang <haiyangz@microsoft.com>,
 linux-kernel@vger.kernel.org, Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, iommu@lists.linux-foundation.org,
 Maxime Ripard <mripard@kernel.org>, "K. Y. Srinivasan" <kys@microsoft.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Constify some structs with function pointers to allow the compiler to
put them in read-only memory. There is not dependency between the
patches.

Rikard Falkeborn (2):
  iommu/hyper-v: Constify hyperv_ir_domain_ops
  iommu/sun50i: Constify sun50i_iommu_ops

 drivers/iommu/hyperv-iommu.c | 2 +-
 drivers/iommu/sun50i-iommu.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
