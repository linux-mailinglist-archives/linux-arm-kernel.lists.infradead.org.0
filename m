Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EDCDC4E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=s3M3iRUwWDL8d107fUlOdphloIQpjTN0p3InnHttf4g=; b=bsA
	/WtLaE2eTFCtFT/10Hhza0TA7b45o9e6vyziK5h2puKm2fJmJvZIQaoyuLBJmJACiiyPmUXr+p1cW
	Jiv3wFyO8+PdtKxNWnn/+LQPidJt6if7FzgRokybFcgyaD8N5ENv082V1+mh6dd6Xat1zJ0qjV5ph
	daXep7FbkOXywY3nXLMja/etb60MIev0xhBYUBSD/kb9XiYEgEvf6oTWVj7Oc0jbgY5sVEDLhsj3z
	U7xzsc3l44G4rdsifBM/luNt6hVzjAdiy4aRsDtrNR/8oHXbBJJrw9F3rmiWUwRg5ry9CRGoTHbO1
	0yd3eBUOEqzApdyE+v2jC2B1z/C2iQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRNT-0003co-3P; Fri, 18 Oct 2019 12:29:07 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRNL-0003bw-Bn
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:29:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id b9so6083848wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 05:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=yVZsL1k6xiwxuV3Dn1WgaEOAdbpoPkfatJaTm2/Mp3w=;
 b=nJzaiiNURnwmCDzi+HEDjAoCrZm2BiaHVd4DbjtibweAWdBba7y8Cm5Cul1GhvS884
 b9Z3DWTZI36Wslys6q1QlPw4r9V+tUfrUVdoszjEWrajnwwOWFegyFTKWXDROe7lRL2l
 zUMF+Dv6XlZvr1G6c8vnGIgtSQ8QSXY94A6vAdt5kBNKUlAq+PFSWVrzeMQFazNuw4V+
 mAob2CIzkAm8Orq/2RYhFQ8y0hMXHRHrWS1q24L5UpsH+Uwvx5FjchpwkYNt1AdffcRU
 QH2/nuCdP5UU8SxmV2LtpfD2NJSpo22IPRoMKpoywjR3Iw9mOlE8wmeh/rzvokYeRvpK
 Mwcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yVZsL1k6xiwxuV3Dn1WgaEOAdbpoPkfatJaTm2/Mp3w=;
 b=GojXbJLXLFqgeOGHwiDJxAaX/HiBuosfLODNhaMqtiscNKTDjSqU9FJLu2TllhlUk6
 R4f/IvYSjApOHiowZVUhkQiiA8sZiuqkCEFtaXbotlzDH1pBcsMtcMTRiFav9KtJaC/I
 NJ0RXHsAEKmlJOfcytdtdD1X/pOjoeatIC5Zv9Zc90UmgCHyB7mcEpg3zI3pUjgDlg7r
 1J0506BuPG+c4nO3JKHNK4Ur2vHK7dOUGKEJZ6N0nFqFhugCHRLdwikKz1+HKLRntjSB
 7M4BnNQrt3ydqZBduva8Tu4AXOaJfgS8is8P3wa8LLtKk9avDns72AkkX9atty8xMstd
 /GfQ==
X-Gm-Message-State: APjAAAUzsT97TtKoR8/ABZeSkF9zhttN7jnlUxJMjRsuiEMrt1dObkQX
 zmueRDZsAx0/7Lf1Hbn3rPZwqUs1kNM=
X-Google-Smtp-Source: APXvYqyGTv4W7YZ+dBPzILPhJC0MpqlESvgAkV0FwdTo8BGAUnbZ+ATDcZpR+y3qVcTvWL0yH7hg9A==
X-Received: by 2002:a5d:6992:: with SMTP id g18mr8044446wru.237.1571401737135; 
 Fri, 18 Oct 2019 05:28:57 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.47])
 by smtp.gmail.com with ESMTPSA id e3sm5033820wme.39.2019.10.18.05.28.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 05:28:56 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: broonie@kernel.org, linus.walleij@linaro.org, daniel.thompson@linaro.org,
 arnd@arndb.de
Subject: [PATCH 0/2] mfd: mfd-core: Honour disabled devices 
Date: Fri, 18 Oct 2019 13:26:45 +0100
Message-Id: <20191018122647.3849-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_052859_406550_D82CB655 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lee Jones <lee.jones@linaro.org>, baohua@kernel.org, stephan@gerhold.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This set ensures that devices set to 'disabled' in DT are not registered.

It comes about after 2 seperate reports.

 https://www.spinics.net/lists/arm-kernel/msg366309.html
 https://lkml.org/lkml/2019/8/22/1350

Lee Jones (2):
  mfd: mfd-core: Allocate reference counting memory directly to the
    platform device
  mfd: mfd-core: Honour Device Tree's request to disable a child-device

 drivers/mfd/mfd-core.c | 47 +++++++++++++++++++++---------------------
 1 file changed, 23 insertions(+), 24 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
