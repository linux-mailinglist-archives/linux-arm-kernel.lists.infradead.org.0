Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EE51639F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 03:19:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vApMtMfu+G3ILemCMDGSg82w9tSuGhFL4AEo+p+A6EQ=; b=q4P
	vuJkB8lBtORwzSVZdAXgGSegx1Wh5/tsMbUwByw0icAHeDB3KZheeuD7mkNaEXVEK8Xt5bIdL0vEf
	8WTW6kmZAfsEiRorpLUhwveEoUYnMx1fBLvJ4v4et71Y/5MP+0NEjrvX/3qa6RtPPGVUIxElskiPI
	DNRsUlcl6Mayvu4kgim0u38SEe0pTJNTrxuhJRB3ebjD6tmTugQUhbkdQtlRbSmjVuxC4pCgXqaoI
	qq0eBxi06oT2Ga/Gsjv9SBLnsjj72Be39uBrU7k8/KyZn3XC/t3PjyblqIWYyFdMxPHT9i7TNlyCx
	Bay5VsnYAngnwtANzjSD776ktS8mDgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Ewq-0000HV-PG; Wed, 19 Feb 2020 02:18:48 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Ewd-0000Fg-Ll
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 02:18:37 +0000
Received: by mail-pf1-x444.google.com with SMTP id k29so11661083pfp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 18:18:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=0+108IOesbRWKkXIcgZRG7vo28p7He8IXnYqkLZv3L4=;
 b=Me8zxQw/D7mHDat7NIMdMH0mLvTOK5tGJdycsXDRm9E0Kj297naPKoDg3jISIwUvaB
 8yVnzY0Lyhh2bVOb1q3XOFXqKUrjN1sp2Lw7t+a6Bch4u2UtZb+obgiMciFRRf6Sl2VV
 KC6o3N0WP/pnwJuA/CCGRiYYNcf54kvmPs4WzIaQ0MTBi+LiyjV5Md5ZF7JjzY7FdZbE
 I1hHPU/qLdIw1+zy1qzJVjZ5ucWIUdTeiy0gQr9Uw9PiEPRqehJIaoKiRJ8iOjm5sNu5
 tp62+sda/DVnDTmK3W+/1QG3r5ITe1InXu4HRZNLuuNi+2l54J0wzPdRuDJbtOl5WJrc
 4cww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=0+108IOesbRWKkXIcgZRG7vo28p7He8IXnYqkLZv3L4=;
 b=bgcXgJWssBsaexPCQUjugU/673nu9GPLjcqOmgO1Rm8Ja46Q2AqfGjiWgpFSqxQ3Wi
 bOwqymEIlADYgGQ1a2llEqAp2jwe9X+vXP6KJ08HxsU1WJb1RoEYupJbRTXQlX/pcYN8
 U3vV7smzUr6OWtCbWHkd/ZRNu81Q8upl7qw31rUKHd+4rbmjn0Xn4aCyyiW0g5OiyGU2
 GZealfu0yZ+fesGmzn8/JXKa/OE1TkNFj5pk3N6fk9/VDY1dTMGu0fDf+4WPlk46akVI
 oo7jJYYvjW2+uf+EWo6KrbykEix3NdYma0CXB/StGqq9jc2IvLRR8SyoGUGnCqXzhgZV
 xvAg==
X-Gm-Message-State: APjAAAXtzndgxQvKrDQ2XQ4hCt5hQrhE9LLMqsBg2lOC3BZrfuvEURb5
 CNNwn0bPTgSQ/Hw76/0bcKlW/A==
X-Google-Smtp-Source: APXvYqzysKpDAyIJCYxPC5lPf4a+XpuyoPJB9/89YlJ+djoiMXgkoRJZIUPvokn0XxNjLlAQP4QsGA==
X-Received: by 2002:a63:691:: with SMTP id 139mr27078821pgg.325.1582078714985; 
 Tue, 18 Feb 2020 18:18:34 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id q11sm322698pff.111.2020.02.18.18.18.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 18:18:34 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <robert.walker@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v5 0/5] perf cs-etm: Fix synthesizing instruction samples
Date: Wed, 19 Feb 2020 10:18:06 +0800
Message-Id: <20200219021811.20067-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_181835_784632_02A8CA10 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series is to address issues for synthesizing instruction
samples, especially when the instruction sample period is small enough,
the current logic cannot synthesize multiple instruction samples within
one instruction range packet.

Patch 0001 is to swap packets for instruction samples, so this allow
option '--itrace=iNNN' can work well.

Patch 0002 avoids to reset the last branches for every instruction
sample; if reset the last branches for every time generating sample, the
later samples in the same range packet cannot use the last branches
anymore.

Patch 0003 is the fixing for handling different instruction periods,
especially for small sample period.

Patch 0004 is an optimization for copying last branches; it only copies
last branches once if the instruction samples share the same last
branches.

Patch 0005 is a minor fix for unsigned variable comparison to zero.

This patch set has been rebased on the latest perf/core branch; and
verified on Juno board with below commands:

  # perf script --itrace=i2
  # perf script --itrace=i2il16
  # perf inject --itrace=i2il16 -i perf.data -o perf.data.new
  # perf inject --itrace=i100il16 -i perf.data -o perf.data.new

Changes from v4:
* Added Mike's review tag for patch 03;
* Added Mathieu's review tags for all patches.

Changes from v3:
* Refactored patch 0001 with new function cs_etm__packet_swap() (Mike);
* Refined instruction sample generation flow with single while loop,
  which completely uses Mike's suggestions (Mike);
* Added Mike's review tags for patch 01/02/04/05.

Changes from v2:
* Added patch 0001 which is to fix swapping packets for instruction
  samples;
* Refined minor commit logs and comments;
* Rebased on the latest perf/core branch.

Changes from v1:
* Rebased patch set on perf/core branch with latest commit 9fec3cd5fa4a
  ("perf map: Check if the map still has some refcounts on exit").


Leo Yan (5):
  perf cs-etm: Swap packets for instruction samples
  perf cs-etm: Continuously record last branch
  perf cs-etm: Correct synthesizing instruction samples
  perf cs-etm: Optimize copying last branches
  perf cs-etm: Fix unsigned variable comparison to zero

 tools/perf/util/cs-etm.c | 157 +++++++++++++++++++++++++++------------
 1 file changed, 111 insertions(+), 46 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
