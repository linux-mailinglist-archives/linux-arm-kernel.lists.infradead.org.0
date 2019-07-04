Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8915F1A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 04:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vs8UZEptKF40cXXkP6S0qxi9VyxtuvBboYLsT5Z2RFs=; b=lZcyVTkLcH6lWw
	S97FYud6kR5JiHP2/FABzuHUV4VyduBeYg2ahYl5VG5BsEOyqQDEu5kM/iU/nq847NEYb7ekkrd3X
	yYJVmDpj9M4afi25ttPaTE60IGk6BJKGC3UCzySzp+ShRlOf7D/LfP9kI4bfAfiuldilF+S36pHNL
	UCoEKKVNA+n7q7r8YUwIuxzH0sSt25VQF22BfEED7wZiwWO6MpoC5lfDsqh9cXua4veITb+tAYu+9
	ZBpz6o8eiEGWKJE0+NYtoKRidlTpHZWF015QEOk+GS1AJ2q7fluD+OWk7UJ1Rkcp0CrU6gorYRJM0
	AhXrS2LMnFJ3IWSOAT3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiryG-0003L7-07; Thu, 04 Jul 2019 02:59:40 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hirxr-00034p-HZ
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 02:59:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id 81so2190225pfy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 19:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=cdGNxnCG0dRMJ1+NSl9LIvswxDirWPGLvHhxjBvgLBg=;
 b=Bl9EX14hsyMh1TbRFVAEiPY0YsMGwRNJWb2jOLCWtq7VYUpc+Ql3X+vnTdwsTE1Mjj
 Xw9R1qbJpqWcPybC7B/4RG5+d59sPyJCOZzCCxjhSDSApD/n6IPglHdt/fcT9ydtbEVg
 ffSFi0Jj5aV7aIMjHpL1sAI1iE84I/CbvJSfZpn6rDAaWruQmzghG4LzCpXVd3PORL2Z
 pNF0Sczh2Zjp5O8TRn+d/rAsHF/+bfpymK9A0HdTgKJoYO/lm5t/iebFplNiir/Rx5g9
 7Z2JrMpPys+PhYLJ2Kky+19jH1ijK+GvCEP5DXD35+lJDXF/M2G6/4p2QTqoI09W2hXb
 9AkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=cdGNxnCG0dRMJ1+NSl9LIvswxDirWPGLvHhxjBvgLBg=;
 b=sbOMn6xD0gIviaPjxmG6cLZOftqF1qLPE8/S09P07v7AIZ2m6qav5HvotD/VLpvQ6u
 AriIp+e0btl0iJ9DIMXpLvy5aoKlUZxjSvS7i+EmRpi2x8B+tnkIVjzCBlb9thiy/DZ7
 rDAXulqe2C2rYyDO4jP7uLHrcv5xF99lgReYEAOk2Cpmm9tF2BkUwCdwIg3ctn+xq7S3
 j0f8DKOqk2Z9V02QnYkNdd47/d1Hj8ImntrHN2AD5PDmSbHFK+z8SfG+TKP3rLlWNi58
 wiVANAuZ51b+QZcL6RRUJsJK/BppBRe0pSOcsVTtdOt1m4rtUBkXQr0TvUhpLKd6Q0j3
 U3Gg==
X-Gm-Message-State: APjAAAVzbYPOAzYnEwCTMIBbLaKwlrEFPHjN2PtcITKzsLEMKwXfXw38
 aSL4PRZyzXrtzATuVnmrFmU=
X-Google-Smtp-Source: APXvYqwY4iu+EFJOXIvAaE4uZFsF5WtzhQD09WQtvm68YZFKudL5xQwT7dxwcZl7ElVVmQ6BOF4glQ==
X-Received: by 2002:a17:90b:d82:: with SMTP id
 bg2mr16831319pjb.87.1562209153111; 
 Wed, 03 Jul 2019 19:59:13 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id i36sm3472199pgl.70.2019.07.03.19.59.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 19:59:12 -0700 (PDT)
Date: Thu, 4 Jul 2019 08:29:06 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] net: ethernet: allwinner: Remove unneeded memset
Message-ID: <20190704025906.GA20005@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_195915_614527_D6198F3D 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hariprasad.kelam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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

Remove unneeded memset as alloc_etherdev is using kvzalloc which uses
__GFP_ZERO flag

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/net/ethernet/allwinner/sun4i-emac.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/allwinner/sun4i-emac.c b/drivers/net/ethernet/allwinner/sun4i-emac.c
index 9e06dff..6253e5e 100644
--- a/drivers/net/ethernet/allwinner/sun4i-emac.c
+++ b/drivers/net/ethernet/allwinner/sun4i-emac.c
@@ -818,7 +818,6 @@ static int emac_probe(struct platform_device *pdev)
 	SET_NETDEV_DEV(ndev, &pdev->dev);
 
 	db = netdev_priv(ndev);
-	memset(db, 0, sizeof(*db));
 
 	db->dev = &pdev->dev;
 	db->ndev = ndev;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
