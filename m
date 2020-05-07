Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1881C87CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:15:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TtRhHAXtmYPB+4avYxSJP1lPbSJqaLrkits5tNm3Tbw=; b=phB
	/YODVQBUON7b+86+zxdrmIiIUlL/yeFu5yqG0EJ1YSNopLobPQ1QCwx4oCIkayhNuygyrXGzGSayg
	MWvMnXhV3CZBPjXSS/qo/NucSzsIksEZp1gbaS54XooUO8GacvfGDfjc0xrHf2JYs/+gHh6+JxXLj
	dNqfdoNVBzQHDUbb04e9KzPZt58WK0yGTUslkhWoMis3SaKb5PN/ASG/PfrhcJLiGirD1tVbf89NP
	qyDi5V0ta1+JpZF5QLF2QUWhH7BsqVQltsxrRI1IKM3/P7wcKBR7oBuwRAf2w4OW0sRQNey4m0UuO
	XbcMNLgdb/nmgfnVos6RKgFz1qEYoxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeUa-0007Fs-Ml; Thu, 07 May 2020 11:15:04 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeUQ-0007DY-Ov
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:14:56 +0000
Received: by mail-pl1-x62a.google.com with SMTP id k19so1933099pll.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 04:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=+rp0hHwgqIdfgMKxOUzphxxo4JDZCcfnfLUjyAdUEiI=;
 b=S7E9vxwgne3IjONysfCfx0M3VX2AbXVhOXdey3dogNGV2F9OwqcBy3oTnxsMV7KGHv
 +C0iOQhkPwhJuz3mhviDDa7H5Hy+OffpMWdD4yp1YJ750RC0BNC7bBwXGYRxEzN3/sWq
 dBvNuWJmqhUgJIScldGp5wGxTV0vfwtEQnuOCvP9ellFEIiR7tvUi9pyVNUdeT/2vPlU
 KCUfperFTOp1Q5Xn0pNcdhUCPmcvZakvQuFhVNTXsgGPfgTBHCDqsl3IAJVb8PDH7A09
 jp8W9Il/Ex9De7qbCIerpVY3XezcvMHQq4qxT6KdR0kUaw9cP5USOO7TNMnkNjABweta
 wrsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+rp0hHwgqIdfgMKxOUzphxxo4JDZCcfnfLUjyAdUEiI=;
 b=WrOdoxfdnqtybnQGlFPOIwulfxi+OJ0HFDY5RTOTRuXw05ndyTbPIMh/eKTYdKxaUg
 9F6NTJlaWDiZwLPnU6pu03Sy+O/9l5jHT5IjJi7h1gTjbuClhL4eZ594Wx8sVisxMevN
 MLSdkKnZThY8IgSSOWusv/kCeMabbWk2WV/ifUbpHlgy72ciLmfp3v9A3Vca2yEne0+H
 sfgvZCi7jXhzA18a57VJCRbegiMVXUgemMaIwBgbMmlPYUmUOwYW4gz08elAAczyp3C9
 h9z3BPO4M6TGznRROVS+8YKblCOmUD40i1ZvtydXD3qQlxHy4f7UQN6lqFQ/ZHytT7rD
 imRQ==
X-Gm-Message-State: AGi0PuazvLdpmdv6ZkJhd62+/DfnhW7mcq8FF5JfFzRoEl8RVfrawpQV
 /ANCh8J3AIovnj4e/jRVmFU=
X-Google-Smtp-Source: APiQypLaeQmfMqENPb7tQLhoxQC3jxPkAodQ3l/6XIitoKL8eDkg01q/ii73kk1m0Mx56maZ5k9kDg==
X-Received: by 2002:a17:902:bf46:: with SMTP id
 u6mr12316877pls.318.1588850093478; 
 Thu, 07 May 2020 04:14:53 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id l30sm7304041pje.34.2020.05.07.04.14.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 04:14:52 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH V2] Enable stmpe811 on stm32f429-disco board
Date: Thu,  7 May 2020 19:14:45 +0800
Message-Id: <1588850086-24169-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_041454_812925_5DC110A9 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This patchset has following one patchs changed in V2 based on V1

Changes in V2:

[Patch V2 3/4]: remove id, blocks, irq-trigger from dts node.

Changes in V1:

[Patch 1/4]: add I2C3 support on STM32F429 SoC
[Patch 2/4]: Add pin map for I2C3 controller on stm32f4
[Patch 3/4]: enable stmpe811 on stm32429-disco board
[Patch 4/4]; Fix stmpe811 get xyz data timeout issue

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
