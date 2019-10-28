Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24251E7794
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 18:29:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3Uz0ugfxwX5j4t+v3ohDMz+Mo3kIeYTxQyzqRqJ5CSk=; b=PsW
	7uMbIOUsNeQ/e5VTZvPKv9OGXh8g3+Nyjyd9ccbPNN8aRTqgO5Zz343uoZSgULQ2Eoj1MUssjpOdQ
	nc/spdX9ffZrlaDpZHx2mNfGtrSBigZCKwbCnN0sgSx4Nga5Yeft33GgkgGfc1v3tOOXyo1+mkxwi
	QeJfRj/32o0xqwFHX5FSD0wfVCIRj14IwqvjkAzVrR8NBzLDPtuKP+rK/QwKEV2Oq2RZ+jwyz+B3B
	08shL3zhoP9LpOqeRWgTXWCC1Ya2RA2QGkPRj6pdb6wY9TVUmwofTr8693Ddtj4/lfCFEiaoZ9XH8
	bkJnRccl0a1mHVEnRVrP+R8mHdZC3kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8pv-0004Yf-N0; Mon, 28 Oct 2019 17:29:47 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8pj-0004XM-CW
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 17:29:36 +0000
Received: by mail-wr1-x433.google.com with SMTP id r1so10778243wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 10:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=4h0j1y2DktN68cOwekrIvX7jwMz9RtEdu7NiWvIBj+I=;
 b=UNycCq4T9++5SpxfhlzKUrQcEJ2MW9XCLYxLXprqK7P78e4Li0WacOJmgUozVa6JZE
 H0CG5nHPGsh2NczLP0vU5vz3E1FNMgsPVd4OHrSshAtmFMiNrwAyvjArsiWR1eN0GwUX
 w4LKnnZWFCcPvNkPt1/EvL4n2Uc5S+vcmibMoL+/fPYFNISlCVqR9/Sc3cgaWu3hRjY+
 YkUUJBYISQJiFK/52/EMRxD8RBUAtXTHKT5CGi2Nkg53foAUdTIP0YwH9ieD93EQzZ3H
 DPnkukaVoMAD5vGpN9LjHvtXa38J82BRdU9hQ+Sz80Il1NpWfphaLh1eaWWPDeupYB6x
 2kSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4h0j1y2DktN68cOwekrIvX7jwMz9RtEdu7NiWvIBj+I=;
 b=BymsksfDSgtGNmIrAXVcbKxHT/6q4h6+JeAww9Mi6PvtG6hQ2RdKTfdbUUEmQksH7y
 4KEL5LsSvb0yN5qOnzQqNA7jCTgsD+g7SR75OWySubY5MnjFHsPj7l4d7vsgVwZT3Ytg
 Ut/Pr0nSRHPxrB7zRAIQled37HmnGyBglNeWezxOSI3oSn12oZuCROCmKUSJ1/0lp9jC
 OiGC/dM/SCsPwbrcUuvH8bwXxlP8hheFlT/DpaY17tHWObBvoLtDozoAZTzsTpbLoY8R
 CnY5XlV9d70A2F9C330TqSiq9CNhyD/CPMzoXIWELpT7DqcMuW+rI5UVOa28w5LmGmXZ
 uExw==
X-Gm-Message-State: APjAAAWz8NecJW2iNLyEetMkiEL9PXrSGNcX9oqYcbFeDgk/+hc5/rv9
 VjhvX2EhB0JHOfnP12Xw7j+4dA==
X-Google-Smtp-Source: APXvYqzj0ah01Wc2PstZV4U7mwqqyvoxYeN2HSfBJjs0fAyazqXH9zMDKR/Xrx7HTVPPjFVa+bXexg==
X-Received: by 2002:a5d:4b51:: with SMTP id w17mr3330012wrs.357.1572283771618; 
 Mon, 28 Oct 2019 10:29:31 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:a072:1d10:8dba:cbb])
 by smtp.gmail.com with ESMTPSA id r19sm14273295wrr.47.2019.10.28.10.29.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 10:29:31 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-doc@vger.kernel.org,
	corbet@lwn.net
Subject: [PATCH v4 0/4] coresight: etm4x: docs: sysfs API doc updates
Date: Mon, 28 Oct 2019 17:29:15 +0000
Message-Id: <20191028172919.19662-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_102935_442832_9735F659 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
 mathieu.poirier@linaro.org, Mike Leach <mike.leach@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Review of ETMV4 sysfs code resulted in a number of minor issues being
discovered. Patchset fixed these and updated docs.

Applies to coresight/next

Changes since v3
  First 8 patches of v3 have been accepted onto coresight/next. The patch
  series is now documents only
  Docs .txt files changed to .rst by unrelated patch. This set reflects
  this change and updates the added docs to match.
  Indexing changed for new coresight docs directory.

Changes since v2 (reviews from Mathieu and Leo):-
  Patch 0002 now adds stable tag. Tested on 4.9, 4.14, 4.19
  Applies to coresight/next (5.4-rc1)
  Documentation changed to .rst format to match recent updates that
  converted other CoreSight .txt files.
  Misc typo / comment changes.

Changes since v1 (from reviews by Mathieu and Leo):-
  Usability patch split into 2 separate functional patches.
  Docs patch split into 3 patches.
  Misc style and comment typo fixes.

Mike Leach (4):
  coresight: etm4x: docs: Update ABI doc for new sysfs name scheme.
  coresight: etm4x: docs: Update ABI doc for new sysfs etm4 attributes
  coresight: docs: Create common sub-directory for coresight trace.
  coresight: etm4x: docs: Adds detailed document for programming etm4x.

 .../testing/sysfs-bus-coresight-devices-etm4x | 183 ++--
 .../{ => coresight}/coresight-cpu-debug.rst   |   0
 .../coresight/coresight-etm4x-reference.rst   | 798 ++++++++++++++++++
 .../trace/{ => coresight}/coresight.rst       |   2 +-
 Documentation/trace/coresight/index.rst       |   9 +
 Documentation/trace/index.rst                 |   3 +-
 MAINTAINERS                                   |   3 +-
 7 files changed, 925 insertions(+), 73 deletions(-)
 rename Documentation/trace/{ => coresight}/coresight-cpu-debug.rst (100%)
 create mode 100644 Documentation/trace/coresight/coresight-etm4x-reference.rst
 rename Documentation/trace/{ => coresight}/coresight.rst (99%)
 create mode 100644 Documentation/trace/coresight/index.rst

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
