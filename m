Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78520620A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+EutySlytKqjzOm7w0PT+WYmI+QAJyco/DqwWpxCIQc=; b=Fj+
	0mbCUtB1b1+dJMJ6M3ZndfTR7YQFSjVHnVLqrgzjsexVvbcVeGXOR1UDAMvmm1/FNYyNYVCu1ep5E
	/SFQhN7XoJfvZYXbCgbn1vC3LiAFMa6FcQ5D+ry+tN1ElyKHyyNVAe0rkoGXH5EAv406kpO1dRAhL
	yTdDwUGXp8SnQ/GyBCQPLzFu17+t0MlOMwndrSeveftlBrjh97tGoj7I/ivHbjpHZpKXYxolkTcvG
	vKXEdrvqVi80bHMAn6FU6URwNxylDtZulNyCWqH44Q2rOFhXy9v5ZxtscAtUhqNC7IIH+5BsFstep
	a8d5z5CSLG7LrU1ydNME+NDZgOrog5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUoT-0005pu-8S; Mon, 08 Jul 2019 14:40:17 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUoC-0005dP-DM
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:40:01 +0000
Received: by mail-ot1-x331.google.com with SMTP id q20so16459209otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 07:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=SDiQ+8VF4G7lQEr1WiQ+q4pu7BnAiOb9j0rphzoCZ8A=;
 b=m63z72u3/ha3hSHjwxVl/t7mnA/CQ/8pSssVOwxczftYFTB03o+yCUGvSF2Q3rCtYV
 IwoxVzfjEhlfe/sILAO16+vFUKChhY0kP+jkPAzBqc5RSbPENcasiEtjIt/eMCSoeUkt
 UR+0JU3fuY7QwETYy9MRuvft5eXi3KV6ed6xcoKXbKrPc3BPOV07NI4/4Sx+kZkuYj+2
 30CVmbzaz0CjCwLJ19ZvacDws+ptnxdvzDLwKJF+wk1/8bLwyDYxs3u8QT3EVUZjyL5n
 FsLFqqTJ4tivZUDq+0AZT/PszsjReMqgLI2nd35L4X04RX/1Hy2vuQkHN2+ZtrvANsWI
 N1Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=SDiQ+8VF4G7lQEr1WiQ+q4pu7BnAiOb9j0rphzoCZ8A=;
 b=ORkhcbgYBzhQLjLPd7+GqEKAxQOwa33P4pV8iPF/hCCOy7bLTyxNOqR3OYW/BRcSir
 ZAkiTh2C6UwZCSsTL673KsW8nOXoigdmhYck5+M0hoYfCjj+Q8UIrEXEDUvHqHQqpjnK
 72l7Y4ff2J/5z0iZodMT6LpAM7vj55xBg6mwwaJ2N99V5xDtMO8IDcxIdZMSzxzaQtpK
 1+WaCz52t2KbZGN55MEZM37qa6TmeTBjoRCqNxX5d6pImcmMTd19LBJLMncPIsoilgut
 EsZjv5eBRa1Qtm57FKXTEQDFQF0uIZPbbcmrh+piEU60sSTLwihqEVsxUAkWSS9OAYoA
 gqqg==
X-Gm-Message-State: APjAAAXhXmqU2RpKJMwwq3usY6QBOcQNIUeWvAI4CPrOEKpkP8wBahHS
 4n0K4UgXxjB4346WN7fXzSx0X3p7OkJC+A==
X-Google-Smtp-Source: APXvYqw+YSilI0PUAlEf1gAqmMoAHe3DA/X4BARsrtzJe9i9zFf1au9YeKZ6j24wXDlX3HkapZYZfQ==
X-Received: by 2002:a9d:5f10:: with SMTP id f16mr15005073oti.320.1562596797636; 
 Mon, 08 Jul 2019 07:39:57 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id x5sm6386021otb.6.2019.07.08.07.39.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 07:39:56 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Andi Kleen <ak@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/4] perf: Fix errors detected by Smatch
Date: Mon,  8 Jul 2019 22:39:33 +0800
Message-Id: <20190708143937.7722-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_074000_459418_6D21D594 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

Since Arnaldo has picked up several patches from patch set v1 and have
left four patches which are needed to be refined based on the feedback.
So this is patch set v2 which contains the rest four patches with
addressed the comments and suggestions.

Changes from v1:
* Added WARN_ON_ONCE(!hbt) in ui/browsers/hists.c (Jiri)
* Removed NULL test for 'session->itrace_synth_opts (Adrian)

Leo Yan (4):
  perf hists: Smatch: Fix potential NULL pointer dereference
  perf intel-bts: Smatch: Fix potential NULL pointer dereference
  perf intel-pt: Smatch: Fix potential NULL pointer dereference
  perf cs-etm: Smatch: Fix potential NULL pointer dereference

 tools/perf/ui/browsers/hists.c | 15 +++++++++++----
 tools/perf/util/cs-etm.c       |  2 +-
 tools/perf/util/intel-bts.c    |  5 ++---
 tools/perf/util/intel-pt.c     | 13 +++++--------
 4 files changed, 19 insertions(+), 16 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
