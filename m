Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B04D1656D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 06:28:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wq2JErScLuudg1+cR9Eo25NlO51vrcCmeYmIhB2afbI=; b=umO
	reNSkj9ov5jzFTPa7RefBMyc0a9aYHbH4d7upjni539EaUzy8wdgPAjDq2IRYP34NYCDsxrXGQZyR
	CP+lQcPJ2CheyK+xF4hZVNxodsjiHuMp8aEccDPkjqY9Kk7ghnXIymZKm38boWa+tT1+Su1wZP+rS
	NuYMtGd8olYrQ0B8Gb+RM4tZpdl6GLNKYU4nrpGwAc7w00AdQCX449X1aiQ0nSN4VSWf8hiIMEMBE
	HJXJ80TPIw6j52MPYJ65DNg8xq+UVJ1RzRepRVKG+Wkgs6tBG3epxVa9p/k34IdWkq+EUxq52hbgt
	X3+hpIE1dp0QvQPnOKrlTbdINSh8ccQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4eNR-0001Rp-CU; Thu, 20 Feb 2020 05:27:57 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4eNJ-0001RP-7z
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 05:27:51 +0000
Received: by mail-pf1-x442.google.com with SMTP id x185so1320310pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 21:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=04ICLSFyPaRkKgXzzfZdAF/oV0zsl6uwE0WtmH6Mcdk=;
 b=XBuGYG/b/9V8P+Q5lKDVG7wXvYKlEE6c8cg8kwnqOuN1rLtDOxIuvziGuSpFXf428B
 Md65FKssJ7DVWF/1boKuLxXRK+pAeD4Gstm2vncKFJpOcwXWXW6N+j/cPC6SsHN7Wolg
 fu7uFesC6aiJxSUGCUWrUe0MDIkxvcrVavo51Ye1D1P3fDWuoWF0f638ONp9Mp84Ol0B
 KlPAHJqd5JAdY1od2z0riU6LsZcvehTAI3cgijXhCUGP0uDN0xOdjCZadGSz8k1aZrU7
 Ko+vIloXARoW8UpxcOd+54MLmgbK+/5WKryR9jh8zOqpeHCun3NzyppX/mHZsOd2smgY
 V2zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=04ICLSFyPaRkKgXzzfZdAF/oV0zsl6uwE0WtmH6Mcdk=;
 b=MBExd7P5qLdMjiCEfWWhAiOHT8iSq96vaZfQbR7mI9qncH81MIP+7sCEeuf0ET8OjZ
 HHSsZSXlN/GBOXuU2hNzrRvjc19wMEPD1wyPmcI+ucz/Z9BRm1KW5upmKpWn4K+T3aIz
 XDOQZpnBwnHVUVVkG/secNlkq/WJAMZaZTbsRZyk79KynDA7bhhlsC+AkRvXFBXW3395
 DCMThfIDhuSlvWYIcqVl5iqutrodV+ZMafgPkcdZTY7AdhorLmH5aXRpWTTrVpwowlm6
 vXPCAFq4orKkSBFf0gdih4T1TW9OPbrfDF2wRGwexZsm8VhZK7vXEJyb9CKB5HJ7w8ig
 uMxg==
X-Gm-Message-State: APjAAAUbGR/igrCiykRhw8E+0yvvO88GKIFPiXo9pY5jeBkMTP5eAJ7a
 WSjALHBcmoE/j0K+LAMK8xwY34SevfX8mWjK
X-Google-Smtp-Source: APXvYqzqmDBl4j3Oyt5qjuzO7eOBzDrZWQBt45Gm39QD7zP+z5EiXPHSpNwIEibYPIkhhHERZo6Kjw==
X-Received: by 2002:a63:8c18:: with SMTP id m24mr32332005pgd.70.1582176465460; 
 Wed, 19 Feb 2020 21:27:45 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id l69sm1535663pgd.1.2020.02.19.21.27.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 21:27:44 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Mike Leach <mike.leach@linaro.org>,
 Robert Walker <robert.walker@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v5 0/9] perf cs-etm: Support thread stack and callchain
Date: Thu, 20 Feb 2020 13:26:52 +0800
Message-Id: <20200220052701.7754-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_212749_321459_EB26E0A5 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This patch series adds support for thread stack and callchain; this patch
set depends on the instruction sample fix patch set [1].

This patch set get more complex, so before divide into small groups, I'd
like to use this patch set version to include all relevant patches, hope
this can give whole context for related code change.

Briefly, this patch can be divided into three parts, which also can be
reviewed separately for every part:

Patches 01, 02 are used to fix samples for one corner case is for
accessing the branch's target address and trigger an exception.
Essentially, an extra branch sample is added to reflect this
mediate branch between the previous branch and exception entry.

Patches 03, 04, 05, 06 are coming from patch v4, which are used to
support thread stack and callchain.

Patches 07, 08, 09 are used to fixup for exception entry and exit.  This
is mainly used to fix two cases, one part is to fixup the thread stack
and callchain for the case when access branch target address and trigger
exception; another part is to fixup the thread stack for instruction
emulation (and other single step cases).

This patch set has been tested on Juno-r2 after applied on perf/core
branch with latest commit 85fc95d75970 ("perf maps: Add missing unlock
to maps__insert() error case"), and this patch set is also applied on
top of instruction sample fix patch set [1].


Test for option '-F,+callindent':

  # perf script -F,+callindent
            main  3258          1          branches:         main                                                         ffffad684d20 __libc_start_main+0xe0 (/usr/lib/aarch64-linux-gnu/libc-2.28.so)
            main  3258          1          branches:             lib_loop_test@plt                                        aaaae2c4d78c main+0x18 (/root/coresight_test/main)
            main  3258          1          branches:                 _dl_fixup                                            ffffad811b4c _dl_runtime_resolve+0x40 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main  3258          1          branches:                     _dl_lookup_symbol_x                              ffffad80c078 _dl_fixup+0xb8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main  3258          1          branches:                         do_lookup_x                                  ffffad80849c _dl_lookup_symbol_x+0x104 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main  3258          1          branches:                             check_match                              ffffad807bf0 do_lookup_x+0x238 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main  3258          1          branches:                                 strcmp                               ffffad807888 check_match+0x70 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main  3258          1          branches:             lib_loop_test@plt                                        aaaae2c4d78c main+0x18 (/root/coresight_test/main)
            main  3258          1          branches:             lib_loop_test@plt                                        aaaae2c4d78c main+0x18 (/root/coresight_test/main)
            main  3258          1          branches:             lib_loop_test@plt                                        aaaae2c4d78c main+0x18 (/root/coresight_test/main)
            main  3258          1          branches:             lib_loop_test@plt                                        aaaae2c4d78c main+0x18 (/root/coresight_test/main)

  [...]


Test for option '--itrace=g':

  # perf script --itrace=g16l64i100

main  3258        100      instructions: 
	    ffffad816a80 memcpy+0x70 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad809468 _dl_new_object+0xa8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad801840 dl_main+0x778 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad81384c _dl_sysdep_start+0x36c (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad800884 _dl_start_final+0xac (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad800b00 _dl_start+0x200 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad800048 _start+0x8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

main  3258        100      instructions: 
	    ffffad80952c _dl_new_object+0x16c (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad801840 dl_main+0x778 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad81384c _dl_sysdep_start+0x36c (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad800884 _dl_start_final+0xac (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad800b00 _dl_start+0x200 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad800048 _start+0x8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

main  3258        100      instructions: 
	    ffffad8018dc dl_main+0x814 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad81384c _dl_sysdep_start+0x36c (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad800884 _dl_start_final+0xac (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad800b00 _dl_start+0x200 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad800048 _start+0x8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

main  3258        100      instructions: 
	ffff8000100878d0 el0_sync_handler+0x168 ([kernel.kallsyms])
	ffff800010082d00 el0_sync+0x140 ([kernel.kallsyms])
	    ffffad801910 dl_main+0x848 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad81384c _dl_sysdep_start+0x36c (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad800884 _dl_start_final+0xac (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad800b00 _dl_start+0x200 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
	    ffffad800048 _start+0x8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

  [...]

Changes from v4:
* Addressed Mike's suggestion for performance improvement for function
  cs_etm__instr_addr() for quick calculation for non T32;
* Removed the patch 'perf cs-etm: Synchronize instruction sample with
  the thread stack' (Mike);
* Fixed the issue for exception is taken for branch target address
  accessing, for the branch sample and stack thread handling, the
  related patches are 01, 02, 07;
* Fixed the stack thread handling for instruction emulation and single
  step with patches 08, 09.

Changes from v3:
* Split out separate patch set for instruction samples fixing.
* Rebased on latest perf/core branch.

Changes from v2:
* Added patch 01 to fix the unsigned variable comparison to zero
  (Suzuki).
* Refined commit logs.

Changes from v1:
* Added comments for task thread handling (Mathieu).
* Split patch 02 into two patches, one is for support thread stack and
  another is for callchain support (Mathieu).
* Added a new patch to support branch filter.

[1] https://lkml.org/lkml/2020/2/18/1406


Leo Yan (9):
  perf cs-etm: Defer to assign exception sample flag
  perf cs-etm: Reflect branch prior to exception
  perf cs-etm: Refactor instruction size handling
  perf cs-etm: Support thread stack
  perf cs-etm: Support branch filter
  perf cs-etm: Support callchain for instruction sample
  perf cs-etm: Fixup exception entry for thread stack
  perf thread: Add helper to get top return address
  perf cs-etm: Fixup exception exit for thread stack

 .../perf/util/cs-etm-decoder/cs-etm-decoder.c |   1 +
 tools/perf/util/cs-etm.c                      | 290 ++++++++++++++++--
 tools/perf/util/thread-stack.c                |  10 +
 tools/perf/util/thread-stack.h                |   1 +
 4 files changed, 268 insertions(+), 34 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
