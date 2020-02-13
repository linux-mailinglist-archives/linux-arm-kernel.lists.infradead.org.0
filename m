Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F2215BBDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:42:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qurXL1KkvU11PqwMWR3n4SFppyvtvHgQoqBg4vdH840=; b=oN8
	H7jgDgJUKiydoYjcwYgKBchzRo5MnARiGv6c95IIN+OvWvw2DPrqLuGSsefwEAemoQDBiH0X87HdD
	8Wl1Wsos13t2W782w3t5c6ZruzaOf7uOiy4B0f6L3kCyxNiQxjM8q60fwo89sg40VfhBxnXqbMUsW
	CW9dLuyv3L+CNSH8HNco0MhF/V+qFaBd8ael9wyEVckfvbwDMDjWcRbq1U0QHZD/+fS0l8mz616oz
	Z2Z3c3Eud4fPptBQ6Vuep5TyJc1XxmvA4FF0AXrJdlS9EeXvWBzivJ6xLWTsFB1HB87yaDtY3vTJO
	gOVoGu8ef12PPnrFRhtbkQIOkurPivw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2B19-0007An-Mn; Thu, 13 Feb 2020 09:42:43 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2B0z-0007A3-9S
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:42:34 +0000
Received: by mail-pl1-x632.google.com with SMTP id e8so2121261plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 01:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=S/ghNKXRSZz4hGEEcpXpDQwI1tYwPeM0vOIIlfcElJU=;
 b=io6WQ6MaLhj+zbFMXA5CKhrY8GPFI6/umJNB3wHne1XogN9Dw5s8d1k004duQzmevq
 E0M9SBYOVadyleg54df3OJETqlZw4OP3CT+0ISD7Aiw1e8/9SI6FB+LXBglp5pQg/xWn
 3EroAValxQo2FhmbVUZWp56EROx8kfhAkyIClCmJqis6XGtCgUrBcsekk/FnrFM8NvWS
 8fTdtLlzLs51IkF6vfTI9NyIsg2DxwFiNASRllI56X2OgKQiJRMHGcW1shSxW1EMjk2J
 0jj1i6Uk1qdnrsUSpsU+MKmySIr+CriWYzes3IA7oAoLyYgkYTidvs/Nb0M40IdzxfpR
 IrNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=S/ghNKXRSZz4hGEEcpXpDQwI1tYwPeM0vOIIlfcElJU=;
 b=kOE/LfSPloJ6Q5ocFzewfUrnqJ4DRaiNUl8DX4QfE3fRdGrbyRh2QbwyZgmHHYzv5L
 efxwd2HT1/7hRgGT69SjYmdUMQ0UZ/Vlj/EPTGnoQDzV2oewYHpz5XGi1ZO69OoeurQE
 eL8bNHMTAlMbQX6XgiZbeMBG0kIL4DkRUvIEffOpx1+gwA3nCYpamH1skAyX+dW/+Itl
 lUWw+MaECsSJxfiLqVDz5K7AMHQGv28Ulu7+Ak24kREen3ETgZfDvNVPGJk1WD/OyuZN
 TmA7fYH7tVjvZJuqhkdoXe12oyxX4ntiBXQtULBnF4+qH0pDXaHB8xd0/eSPt/3y+OnS
 yIqQ==
X-Gm-Message-State: APjAAAXno2Gg22VtioLxFgro8BipkRwuZ7XjB+qq0A1ggBzfxZFprFcL
 P1i7bJFWlgi8/7/6wpvplKG8Dw==
X-Google-Smtp-Source: APXvYqyNzUZdPGouJRFQFTcXwQmxRIUQ8rDBZOAPaV3uOSYYi0QOE0bCORvmwHW1WdHSFC5vLa3Ynw==
X-Received: by 2002:a17:902:8642:: with SMTP id
 y2mr12499791plt.306.1581586951239; 
 Thu, 13 Feb 2020 01:42:31 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id 3sm2310277pfi.13.2020.02.13.01.42.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 01:42:30 -0800 (PST)
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
Subject: [PATCH v4 0/5] perf cs-etm: Fix synthesizing instruction samples
Date: Thu, 13 Feb 2020 17:41:59 +0800
Message-Id: <20200213094204.2568-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_014233_387980_0CF71D36 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:632 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
