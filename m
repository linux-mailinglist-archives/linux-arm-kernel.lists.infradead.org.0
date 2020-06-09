Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFEB1F4466
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RpJX26K61uoipmf+kg8vWP1VSeIIpg0reFfd++It1tE=; b=HZB3MAnx3NMGwx
	O8rY6XHElIvQnajB3LEJWsSabZvO7Kb+PsRLmyiCAwuCP1JahHq4bTnjozEL9EtiUzliUMV+wVtCy
	mVX7NM36DjOeJwj8C+jbrAcSNH+s0sbHQNfCf8S4f+Tqi/B8bJvcexKQ1A5QUteULulHaZS7DttuA
	/WCHfkAhf4sCRjzj8Qlzijkx5BZglBK7SJm8hZJNntDA3/5jZ3oDZSvZGN3FMAgtWJaos8ZSwWFqW
	5H+gqNs78PjkEbgfP1NSeH9FqvM1siMq+XiTGLG1AyDwGdhUxGDMWXTSxijqzhsvTDsz013QoTlBl
	zeBy3PnBpCJYJxbKfLVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiica-0004nR-9P; Tue, 09 Jun 2020 18:05:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiicI-0004mb-KD
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 18:04:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48CF81F1;
 Tue,  9 Jun 2020 11:04:53 -0700 (PDT)
Received: from bogus (unknown [10.37.12.97])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C01A03F73D;
 Tue,  9 Jun 2020 11:04:50 -0700 (PDT)
Date: Tue, 9 Jun 2020 19:04:47 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] ARM: dts: vexpress: Fix for v5.8
Message-ID: <20200609180447.GB5732@bogus>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_110454_712690_B78C1122 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC Team,

Please pull !

Regards,
Sudeep

-->8

The following changes since commit 94cc3f1baabac5e5c4dcc6c2f070353f8315d0ee:

  arm64: dts: juno: Fix SCPI shared mem node name (2020-05-18 17:08:54 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/juno-fix-5.8

for you to fetch changes up to 38ac46002d1df5707566a73486452851341028d2:

  arm: dts: vexpress: Move mcc node back into motherboard node (2020-06-04 13:52:21 +0100)

----------------------------------------------------------------
ARMv8 Juno/Vexpress/Fast Models fix for v5.8

Partial revert of some recent fixes to silence DTC warning which broke
clocks on some Vexpress platforms resulting in boot issues.

----------------------------------------------------------------
Andre Przywara (1):
      arm: dts: vexpress: Move mcc node back into motherboard node

 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi | 146 ++++++++++++++++----------------
 1 file changed, 73 insertions(+), 73 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
