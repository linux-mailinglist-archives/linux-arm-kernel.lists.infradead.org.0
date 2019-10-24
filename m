Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF2CE3641
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 17:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8tXGaM6rATCRzzOfKah34Na8uiBleyDytq+tw6T9Q5E=; b=KVT
	k3cGPaKn8OuVs4+q9DgbHXHWfrWAlhZQAbdkI/kkKEuF50kCawTF36rdL7JyZ2RIWC4YFkDL/KS+G
	gidH2ogDyJiPRB/2XIDtqY8If5uo5LCbRQwx8L7TGPJBLYNSWwzEL9RXpxHipmKnRkkNqNvI43MhO
	+wDJbaZd5Ar7nI14kVeK3q67ruq2B3mz8HtlZDsPbDxNSy7SobAAMJbqYqUJc2F4agw3KOeKOlNT/
	N+Wal3QzSyPkoAmpotXWNwonMakquO7hSj8yCYErSZ7zkK7Gyr5Yq6qM227vQFz3ugFNtW81uWAGN
	00ma1rWLt8gpvynVw7bIsaNGUUPphJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNepY-0001jT-88; Thu, 24 Oct 2019 15:15:16 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNepJ-0001Lv-RB
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 15:15:03 +0000
Received: by mail-qt1-x830.google.com with SMTP id m15so38477066qtq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 08:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=4Q6XHErtHhX+1mLaNoKaQj0VUhUfS1Bgbues0FuRIG4=;
 b=kz5po7s2ieKJl5ZCmOJw+6B8XVBPG87kZe4L62Qmh3UejutibGAXbPI4Hp4WYv4UC0
 gp1fXCxov4xDtKUqySwOynQjxJJ3vB2B6ABcR8Grzs18UzlgJMUyNgcVciyDH61P61qv
 hzwCeYTDpP589ZJRK++UiPeWEhzi9Ai1DxYEa4dMr9R4F2bnhGT+B0g4Rup9Wv3S/bBx
 sqGHcDczx46vWpoym700/p+r/NIzk2LjpjM9pt2HxiT8xnv6tqt+GQiGYHC/EMC24MsL
 5Yk9g+mVXWxN4M5xH8qwBKOuRRsJnuWx3tvpBRXe9NA+ZTsHVnQMEvQ26K0ZT+eVAJQK
 z9HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4Q6XHErtHhX+1mLaNoKaQj0VUhUfS1Bgbues0FuRIG4=;
 b=cBz4hKNbSyOE4V0BySFZnyi7SkjIfW3b5Rx+KYnhYHo34K3Sorud4w5H2YQyTwHi+8
 z9wbZITVY1IGECN3Kmb6hSYB6PHCsSMD5sE11Nh8D/2YCP/Jek6wvpFKIb/ORAeG+eV2
 osmAugipS19HgdDURvLH+FHtZPz2IeMtBE2ACVFQmkzYDu+LkofamlSekKLjz/B6u79v
 8Gchku4SdOYZJz5Sn0gxkZI6OaLQwd0PBH2fE6fsnfrjXsq4QMhh7cf8ooxXTh5nWIjG
 7gZK5ShCbpWOf0HytE1HfWqKZ45m+5c4an9IsXrxrSaSCmk54hdMn+aK6RO2ArcF2oLA
 Io/w==
X-Gm-Message-State: APjAAAWIpY4pBLSl3KCkEAkxQ7ZCGFaq4ZrXNUdp1KGmgqQ6ZNVL8xaE
 jKZmtJ9z77aq+qvgJsI9QjKoGQ==
X-Google-Smtp-Source: APXvYqzV0S7dhVglLcNnMBPInsuMT4jIEBLgjOQjZvJGdNbcB2ev6s8rgp8oslwlCaUx3gfw1TschA==
X-Received: by 2002:ac8:290f:: with SMTP id y15mr4748046qty.181.1571930098546; 
 Thu, 24 Oct 2019 08:14:58 -0700 (PDT)
Received: from localhost.localdomain (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id l5sm4346073qtj.52.2019.10.24.08.14.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:14:57 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>,
 Robert Walker <robert.walker@arm.com>
Subject: [PATCH v1 0/4] perf cs-etm: Fix synthesizing instruction samples
Date: Thu, 24 Oct 2019 23:13:21 +0800
Message-Id: <20191024151325.28623-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_081501_912864_228D7637 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:830 listed in]
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series is to address the issue for synthesizing instruction
samples, especially when the instruction sample period is small enough,
the current logic cannot synthesize multiple instruction samples within
one instruction range packet.

To fix this issue, patch 0001 avoids to reset the last branches for
every instruction sample; if reset the last branches when every time
generate instruction sample, then the later samples in the same range
packet cannot use the last branches anymore.

Patch 0002 is the main patch to fix the logic for synthesizing
instruction samples; it allows to handle different instruction periods.

Patch 0003 is an optimization for copying last branches; it only copies
last branches once if the instruction samples share the same last
branches.

Patch 0004 is a minor fix for unsigned variable comparison to zero.

To verify my changing for synthesizing instruction samples, I added
some logs in the code, and reviewed the output log manually for
instuctions samples.  The below commands are tested on DB410c board:

  # perf script --itrace=i2
  # perf script --itrace=i2li16
  # perf inject --itrace=i2il16 -i perf.data -o perf.data.new
  # perf inject --itrace=i100il16 -i perf.data -o perf.data.new


Leo Yan (4):
  perf cs-etm: Continuously record last branches
  perf cs-etm: Correct synthesizing instruction samples
  perf cs-etm: Optimize copying last branches
  perf cs-etm: Fix unsigned variable comparison to zero

 tools/perf/util/cs-etm.c | 137 ++++++++++++++++++++++++++++++++-------
 1 file changed, 115 insertions(+), 22 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
