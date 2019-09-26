Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAB6BF7F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 19:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WIo7EsmiSqHQC81zQ98y2MOqijNriGtZJEz84gGjd8U=; b=Qjq
	Z3K3WOONz1jMxDxhaZCqKK+6/OgsFSzU0P9ZV4tb4VCcocM8LMQe64p67Tzqp5q+P8ArclHCrOOjf
	IzRchWyTRN/O+258KDkMQXTWZO9vvI6MeT6NKHBP9l9JqpxUgLVOWR1KlBR5bqgEhRgjdxJoPDAb5
	roB1XG1tv6ofiorzHOdtgF2ALILtUe/+PmNrGpl42jA/hDfOfX8utc5R6MF6Jmg9XpZgF9LXfj0Ee
	nNCBtOLk7NXq1JkLLFVe+vGyFqOb0EO/nJ8cKa5kWoVt4vKhwZph6YNF9AZ90aPsQZPLpM5YXoigb
	ZH7QwD+nbKLmzJFNRE+ncrX2PzmmOaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDXwu-0003wB-9L; Thu, 26 Sep 2019 17:53:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDXwh-0003v8-FX
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 17:52:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A18FA142F;
 Thu, 26 Sep 2019 10:52:48 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D3D183F67D;
 Thu, 26 Sep 2019 10:52:47 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v2 0/2] Fix KSFT toplevel makefile behaviour
Date: Thu, 26 Sep 2019 18:52:17 +0100
Message-Id: <20190926175219.29805-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_105251_561316_1C557207 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tim.Bird@sony.com, dave.martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

so this series carries two small fixes to the toplevel KSelfTest makefile
which I found useful especially while attempting to run the suite in
automation.

[1/2]
While it is already possible to specify a limited list of TARGETS to run,
it is not instead easily possible to state a list of targets NOT to run
(say due to specific instability issues).
Moreover providing such a skip list through a stripped down list of TARGETS
it is cumbersome and fragile since this poses the risk to stick to an old
stale stripped TARGETS list once upstream decides to add more default
targets.
A new SKIP_TARGETS Makefile variable is provided by this patch to easily
specify a skiplist for target subsystems.

[2/2]
Currently when some target fails to build, KSFT Makefile just carries on
building as much subsystems as it can: unfortunately this is not properly
reflected also in the generation of the runlist inside run_kselftest.sh.
This patch rectifies this behaviour checking for the existence of a target
directory in the INSTALL_PATH before adding the related snippet to the
run_kselftest.sh script.


Thanks

Cristian

Changelog

v1 --> v2
- added Documentation
- various typos fixed
- added a proper override when filtering-out SKIP_TARGETS from TARGETS
  to make it work also when TARGETS is provided too from the cmdline

Cristian Marussi (2):
  kselftest: add capability to skip chosen TARGETS
  kselftest: exclude failed TARGETS from runlist

 Documentation/dev-tools/kselftest.rst | 11 +++++++++++
 tools/testing/selftests/Makefile      | 11 +++++++++++
 2 files changed, 22 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
