Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A065CDA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1I3iGFLK07Tm0dyGqACu/WUYI+TpJdioF4GJ12CPayI=; b=PUT
	NwhIb+/LnXKq8awOMJaMB5Oe0TbY82tXPxTin89Q+giqrhqoapxS/l1SkDCl0xOCK8LxxssmAwYlO
	N/2rlBR7MPlianOADbhRKpgZw0XpfXXxXCd/Db2iYqAw0N+nBpBjA80kN43fu+Eih7ixl2t8UJtcB
	nDKLo/XfvZivW6ybNYl7uiM8MHnCclXtJTbRLItXLYc7t92UnjHsYeVZOQdmZVcjRJlVwPfgQGu02
	SguDkvxrGxZa1d8EyGP/kW6JgQDSgYxpLCZ+f/RN8MrWAdufJWy+rwo/4UwNDXMAYF98JViOgDiJW
	lW+iQHeH4gKogh9t0hfnpXfuWLAYGug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiG81-0002F6-Hn; Tue, 02 Jul 2019 10:35:14 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiG7b-0002Ef-37
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 10:34:48 +0000
Received: by mail-ot1-x333.google.com with SMTP id q10so6702992otk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 03:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=yh67xhQ9He3y+H6kFlc9MYFUOr0G7P/w8hL/0JLG7q0=;
 b=ro1aoZiLphx5ycNYHWZ/hgdw2qioib3lO2AZziumfOIaMeEw6KWC4sZ6B8gnbf1KJ5
 EUwfsAVZCki/ptHXFJ4Djy/3fjdSUjT8fJOOWZ1CnYePdlhaC8j6AMXvhmtT7W8GyMzp
 Y+ww71ZYjgY0drfqEjpWvHlVUE6L0dO5MDtPmO+Xl7pnCEK/QYIIZOykA9UXFkzL20O3
 tIEf3G4WALElbBB96b59GPnU/I+yf8J6ci66dTxRaLAyXB3K0GvS6Jf/FdA6qeeC1/ZX
 S0OAd8HIfgBqG/2R4MYbXrZKm4l9xDFAqGHZPsywSswKeUEpTs0GwOeY0qEYDlXXUB49
 F+xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yh67xhQ9He3y+H6kFlc9MYFUOr0G7P/w8hL/0JLG7q0=;
 b=OyPrHsZ9Y/C93W1EOJsHeUbbgQ7fK+WCDuwU6KJ+iZmt1chTQmOYoyC87opoDg/vu1
 +Bz+AnwKYnRwY5JZQNoEDUVb8xOY0vXNDcKhJCGVzAnM8XvkhjguYLwBz+PqSUbVrL1P
 MHuk/70fKcuMEN7k+8Zc02qNEOCexg75HKcqUXHk3z+VS+OdD3J0t+L0UnSGkBUSBnqi
 BTuc1rnRrs8VwGXUStJXiGCkILeeaJDtS6kXB7GrTPYbUXXtgT/m5ga1l/xYRNROiT48
 Ne57ingw2Jur+qa9zKl+tytJgxmzrn7gtM/g4O2rFCo/wBoL954YUx8YAe8EUG7RiHOY
 dGHQ==
X-Gm-Message-State: APjAAAU/aZ4Com377lAUVjOpeDJWFBP0PGKkCJHPVsd7USWch5syZWMm
 Bpvocyxxi3qKlRmK0/HQogNS3A==
X-Google-Smtp-Source: APXvYqz0F+LZR7w7Za1W/0SVbgXXPE/RHIsbrL7w+y9m0fjgqj+wEs08VL2EYmN2ulht4JSPGawjew==
X-Received: by 2002:a9d:eb7:: with SMTP id 52mr22187581otj.70.1562063685693;
 Tue, 02 Jul 2019 03:34:45 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id 61sm5139805otx.8.2019.07.02.03.34.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 03:34:44 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Andi Kleen <ak@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Davidlohr Bueso <dave@stgolabs.net>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jin Yao <yao.jin@linux.intel.com>, Song Liu <songliubraving@fb.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Changbin Du <changbin.du@intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Thomas Richter <tmricht@linux.ibm.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 00/11] perf: Fix errors detected by Smatch
Date: Tue,  2 Jul 2019 18:34:09 +0800
Message-Id: <20190702103420.27540-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_033447_142103_C657378E 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When I used static checker Smatch for perf building, the main target is
to check if there have any potential issues in Arm cs-etm code.  So
finally I get many reporting for errors/warnings.

I used below command for using static checker with perf building:

  # make VF=1 CORESIGHT=1 -C tools/perf/ \
    CHECK="/root/Work/smatch/smatch --full-path" \
    CC=/root/Work/smatch/cgcc | tee smatch_reports.txt

I reviewed the errors one by one, if I understood some of these errors
so changed the code as I can, this patch set is the working result; but
still leave some errors due to I don't know what's the best way to fix
it.  There also have many inconsistent indenting warnings.  So I firstly
send out this patch set and let's see what's the feedback from public
reviewing.

Leo Yan (11):
  perf report: Smatch: Fix potential NULL pointer dereference
  perf stat: Smatch: Fix use-after-freed pointer
  perf top: Smatch: Fix potential NULL pointer dereference
  perf annotate: Smatch: Fix dereferencing freed memory
  perf trace: Smatch: Fix potential NULL pointer dereference
  perf hists: Smatch: Fix potential NULL pointer dereference
  perf map: Smatch: Fix potential NULL pointer dereference
  perf session: Smatch: Fix potential NULL pointer dereference
  perf intel-bts: Smatch: Fix potential NULL pointer dereference
  perf intel-pt: Smatch: Fix potential NULL pointer dereference
  perf cs-etm: Smatch: Fix potential NULL pointer dereference

 tools/perf/builtin-report.c    |  4 ++--
 tools/perf/builtin-stat.c      |  2 +-
 tools/perf/builtin-top.c       |  8 ++++++--
 tools/perf/builtin-trace.c     |  5 +++--
 tools/perf/ui/browsers/hists.c | 13 +++++++++----
 tools/perf/util/annotate.c     |  6 ++----
 tools/perf/util/cs-etm.c       |  2 +-
 tools/perf/util/intel-bts.c    |  5 ++---
 tools/perf/util/intel-pt.c     |  5 ++---
 tools/perf/util/map.c          |  7 +++++--
 tools/perf/util/session.c      |  3 +++
 11 files changed, 36 insertions(+), 24 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
