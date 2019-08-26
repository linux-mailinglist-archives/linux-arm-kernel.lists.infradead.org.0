Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8508A9D6F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 21:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=51YoC22qXZsiMMb3XGqIjr5Sa4LeL5PwtnW6zYYqwg4=; b=lDB
	RtovsO9PQXobYbF50Ju/ZY7550COeH6zVs7EyIN8h+reg+JH0NqlKEW8to4YZQbJhjWrZVJmGrAeR
	LnmkiHgROPJfssYGVSGTEDfo04aoUEgQz/ZdXUG8xqhwuHs0jRhoPOHOybDADn98V6ToO/TOOEQi8
	1ZTriB6VIg1etsMobwY58TgXxogygWDvXJxyiRiANFeiD5CmNSZLMoNEpMgV6p7qQTcnDIinrZnjI
	xGFkQn6RU3RSqOnbQKAU1MCTpSyJ1QDkNxgqd9cYq2b6rZ75z65iedpnN3yep4kENaS+yZJEavJ2B
	6h2jM8fU+6sWD6mPjQKpHCNBuWBm6ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KwW-0008J8-NQ; Mon, 26 Aug 2019 19:46:20 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KwK-0008Ha-7r
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 19:46:09 +0000
Received: by mail-pl1-x631.google.com with SMTP id d3so10550967plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 12:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=qMpP0MgShBQ+Pe6ISqup2rRvNK7sBJVKGzHYTIV6ZnQ=;
 b=l7sJH1kyE+MeklaUOVqk93JQJS9lLUqeyPcIRpMyDtZH/3DmYcsR0RnqkmB7II5YO8
 wH03/UzYjG6K4m6cqKgTSSiytDQYWC8mccd5QCYgy8iUu6+NousnkGzzTY0Of6b0VSAD
 QYxaCA6obMGor10rrTVZkM3j2LR5GCMQk12d7318PdYf1o8f0s7TuNsi9VT4xeQFqEz7
 GaocepPIhJlSy3Axc1UEoz6Lc4CH0JZMyrIbXJTT0p28lwWmTLZCpwjsZemCITHlpjmc
 Y4pRXdqpWcNuRzF6Vjm8Iy62PazNgwdRwUVpTcy41YBJpBQMdyr9dQBHP5Uhh9M9zZsr
 iAHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qMpP0MgShBQ+Pe6ISqup2rRvNK7sBJVKGzHYTIV6ZnQ=;
 b=aIWdQc7top2pTiAcXcAMPnp0ysz0I9MbVWh6z8CJaq61U/Xe5F8KvcFbb2xDg1d7Yx
 e4UB0WHmmT0MOM/6jv2QHy1onRUNqvwyjYEMXbuW7LQ1Zi/Fya2nd9jDkgwsUV1IrJ34
 sGewFN7Tzgr0fw1OPRNAMdF3XcTsgJw4brP5uK66ZEcG8+qQRVsY3XfhDcVw3znng4V5
 rh1xfVhAM4GX6sBFDvoSUJaxXRN8U1SfZmjiVBrJcBHLmA/SYlK379atFFbpHxq7vov1
 ua5nv2AGXxITvT1gZ+WwVQwVNbZq/PYyz3FNAQJECs0X2c76sVse4fHrWPxxRrwX87K+
 88mw==
X-Gm-Message-State: APjAAAUOC8GDXf6WZJ65v6o5X9rxF+CAJpVxHsMuFx6DhU5FGEYg4S3Z
 WYJMVmGsoe0T3lO/6mJfZKhoJg==
X-Google-Smtp-Source: APXvYqwJgW9p5d6lqmBLWSOn0KbFlJ2MZBxLif5mU5pNMrb/4c+qlzMdTjm39DN9LeG62T1DKxyQ0g==
X-Received: by 2002:a17:902:166:: with SMTP id
 93mr20949583plb.195.1566848767073; 
 Mon, 26 Aug 2019 12:46:07 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c35sm13214789pgl.72.2019.08.26.12.46.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 12:46:06 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: suzuki.poulose@arm.com,
	leo.yan@linaro.org,
	mike.leach@arm.com
Subject: [PATCH v2 0/3] coresight: Add barrier packet when moving offset
 forward 
Date: Mon, 26 Aug 2019 13:46:02 -0600
Message-Id: <20190826194605.3791-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_124608_297704_CED78DFC 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:631 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexander.shishkin@linux.intel.com, yabinc@google.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This set builds on top of an original patch by Yabin Cui[1] that deals with
cases where the ETR buffer it bigger than the space available in the perf
ring buffer.  The work herein complements Yabin's by inserting barrier
packets after the head of the memory buffer has been moved forward in order
for the trace decoder to still synchronise with the trace stream.  

Applies cleanly to the coresight next branch.

Thanks,
Mathieu

[1]. https://lkml.org/lkml/2019/8/14/1336

New to V2:
- Added Yabin's Tested-by.
- Addressed Leo's comment about extending the solution to the sysfs
  interface.
- Split the work in 3 patches rather than 2.

Mathieu Poirier (3):
  coresight: tmc: Make memory width mask computation into a function
  coresight: tmc-etr: Decouple buffer sync and barrier packet insertion
  coresight: tmc-etr: Add barrier packets when moving offset forward

 .../hwtracing/coresight/coresight-tmc-etf.c   | 23 +--------
 .../hwtracing/coresight/coresight-tmc-etr.c   | 47 ++++++++++++++-----
 drivers/hwtracing/coresight/coresight-tmc.c   | 28 +++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   |  1 +
 4 files changed, 67 insertions(+), 32 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
