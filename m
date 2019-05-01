Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C5010C70
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 19:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=x/2tX/lWEp4ig2fs7Bsujuxe81VkFiWwQPNxG9X0S6I=; b=YT3
	9S0jGlLSTGo6VfoD/HRmsV9jvhBPMz5DSprfxkYFea7FZ4UvE5Ec4m9dN1VAtJB1E4DkqFNki2sDv
	ldSJzuGTSVWTzAUTFQT2O4tuf5P0Ek17oAEU5WH2nIG8zfV7LfUaiQUdhbdzix4vXaJaaIUV6lacG
	itE7paALjfgcOA4QpqVq+AdMq/xag2JcXzJhECxgoAgBLyHxpNOalDZj7x5HoidA0Cc4claD/xaUt
	f1haYs+3Jnsi2t4teQ8S6g0zmYjL1u1MvXkEICdcZseG9JdIbXYddCsK7rt6I7F6CJkRDnZkj4msP
	EcqzHdNQPyo4KJCMfgZSyIX+23rB0PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtNo-0004em-67; Wed, 01 May 2019 17:51:04 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtNf-0004cd-RB
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 17:50:57 +0000
Received: by mail-pf1-x443.google.com with SMTP id e24so8911227pfi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 10:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=qxCs6FzODNh2fGCpGOSAA0wwTC7Uax+EQxS+DcDljiE=;
 b=SQbeXgjOUNTrqGOoNPHRDOT7e0lQ9hNalXbzMtA4T1HTDqN6L+Pryhu0zRqc/YO1EJ
 U2A61sgPGFWNg5XvsRjF14jzF304vPJnz9u+XqJ+ZrdclaN0fm0ClbLIAp5EO960hkrM
 wqhtvxLXhm7LjN5iD0p0g9hblcCIlpg6E6lFEWCQ+J3JhQf3BiFLglerh/40M7C3DMal
 kBygTnRdNXk3WgS8gBWL6NGf1XfEMF206oJ6iA0Ze34dtSwnHyEPO76ITYDmCo+tSC/q
 VRgZPqm+tf36Na0gtNUPtqHvOWvbiHoB9QTI2WvmPNeyvh4SU1i3o6xfBcGuhFzOYsJu
 OZzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qxCs6FzODNh2fGCpGOSAA0wwTC7Uax+EQxS+DcDljiE=;
 b=LCy1QcbHrvGPQr+GvBQUXmqVhbBaPihCk4wjkhe9Ml87RJm8aggswCKR35CLS30VrZ
 R5k2JiW/lIyjJYqyvNkSMetQ/eNSxfAGyDhqj/ik+Grz4mPO6w0DsVkG92a7aetHArsb
 mDJkNcpzDqaXltmIbUZdV+KkQH7wpx2AdYRBxy0YuST/pnFW+qtZ3G4imTz09ykwo4xH
 YKZfDEgcqnA4L0KQMI99pFfaXRMwU71EXDs9lHcPkRiR0gDaITQCfLgV+6syxRphxnor
 EIY0KSR0LQYnWLGKt/cQ1wesmYr/2p9fAI5eGl8WBM3vRoj3efye9Y2WHO1+YeYP+YKy
 wU4Q==
X-Gm-Message-State: APjAAAVQj8dMIntSI7ZsnlS30FZgnYYHlrcOhqkXAz9CSX6bx1xbxPGn
 dbqYugDKw3OPqvfHKXLE/knFt7mkOxw=
X-Google-Smtp-Source: APXvYqyOlq05s8FvVEVWIVmJja6sJvqEu8FvhWhHUP+LwZhszURI+PE5FKVIxIwDtgY7Yr5sB4iCzQ==
X-Received: by 2002:aa7:980e:: with SMTP id e14mr17205578pfl.142.1556733054655; 
 Wed, 01 May 2019 10:50:54 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id h189sm84126158pfc.125.2019.05.01.10.50.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 10:50:53 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/5] coresight: Fix snapshot mode 
Date: Wed,  1 May 2019 11:50:47 -0600
Message-Id: <20190501175052.29667-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_105055_906929_0C675020 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: corbet@lwn.net, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, suzuki.poulose@arm.com, acme@kernel.org,
 peterz@infradead.org, mingo@redhat.com, mike.leach@arm.com, leo.yan@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This set fix miscellaneous problems that prevented perf's snapshot
mode from working properly when CoreSight events are used.

Given the late state in the cycle, it is sent out for reviewing
purposes and is not intended for the coming merge window.

Applies cleanly to coresight next[1].

Regards,
Mathieu

[1]. https://git.linaro.org/kernel/coresight.git/log/?h=next

Mathieu Poirier (5):
  coresight: Fix buffer size in snapshot mode
  coresight: tmc-etf: Fix snapshot mode update function
  coresight: perf: Don't set the truncated flag in snapshot mode
  perf tools: Properly set the value of 'old' in snapshot mode
  docs: coresight: Document snapshot mode

 Documentation/trace/coresight.txt             | 41 ++++++++++++++++++-
 drivers/hwtracing/coresight/coresight-etb10.c | 31 +++++++++++++-
 .../hwtracing/coresight/coresight-tmc-etf.c   | 34 +++++++++++++--
 .../hwtracing/coresight/coresight-tmc-etr.c   | 16 ++++++--
 tools/perf/arch/arm/util/cs-etm.c             | 12 +++++-
 5 files changed, 124 insertions(+), 10 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
