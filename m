Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D261507BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 14:51:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9XIxN/wl8r7om6e3d4iM6I3heYil4fAkXoZCTyU0JL8=; b=E9IfDhpHbeiSSn
	wzbX4scT0o9S4SBBtESPydWouH6mE5l6K8nbyzdhuSRrSBTRNQZkYJI4HW/FBYiA8GG5H+nlp7oRQ
	i6WkTxrOwJYap8KAG2hwGdCIJVvp3tTRm+BqPi84vS86UWDjm5GM7YLdy5tp0cM7cDgB5bYJzLpMD
	5KrlYyTJvxflireHIfqt1xIAYOrbvL6fbi1dEGniC6P2ZBHNPFoDUzIh2991vPQvpxLiRXTs2Nj3L
	ky+YdSfye27QJG6k/bFXdTzIt/movAa++siKGEX1jNdEqYb/x0D2G2kVR0d5h6g5IX7SJhAk2nFmr
	bE8yzuHdDUisKPzq8/ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyc8E-0004x2-Eb; Mon, 03 Feb 2020 13:51:18 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyc87-0004wP-UQ
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 13:51:13 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 013DlF9f029759; Mon, 3 Feb 2020 14:51:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Ig25JM6AtLTyb9X/mlnTXxZt7Y+zkIOmGtydqVrayJs=;
 b=aSkQ4DYsgfbRahVkwk8D7CxrED9yYNQvDOnQJHucmtrL/zf+JUpP0VBGVdJn44iELHut
 tyLy54mwCouffI03OS2slRHBJ/luuxNZdzZ8Pg309EojHQiGnKuuvIse/do03yh9IrQT
 0BPWT0dlwlqARNRqxR61/czTFdYsElGpxJPpReKmKlM3dabQaOBMWeWQdbQUfxHPrNr2
 ojf8o/oIsBDIGW94igYVeE9iSdirO1aFim0N7lU4mS1qAwVnDaHy8TSOWmWOG3zeIjZK
 Pz9AbmANKFig0GOqbrPgqIXadBw3wBCuXxPg+y+CIWHBZXKEDGXBDaeYDWRrwa2kY71U BA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xw13nh9f6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 03 Feb 2020 14:51:05 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 22EC210002A;
 Mon,  3 Feb 2020 14:51:05 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 122C02BC7CF;
 Mon,  3 Feb 2020 14:51:05 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG6NODE3.st.com (10.75.127.18)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 3 Feb 2020 14:51:04 +0100
From: <patrice.chotard@st.com>
To: Mark Brown <broonie@kernel.org>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 <linux-spi@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] spi: stm32-qspi: rework probe error path
Date: Mon, 3 Feb 2020 14:50:46 +0100
Message-ID: <20200203135048.1299-1-patrice.chotard@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG6NODE3.st.com
 (10.75.127.18)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-03_04:2020-02-02,
 2020-02-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_055112_268422_FB3DAE71 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: christophe.kerello@st.com, patrice.chotard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Patrice Chotard <patrice.chotard@st.com>

This series is fixing the probe error path of spi-stm32-qspi driver: 
  - it allows to defer probe if reset controller driver is not yet probed.
  - if fixes the error path in releasing only allocated ressouces in case of error.

Etienne Carriere (1):
  spi: stm32-qspi: defer probe for reset controller

Lionel Debieve (1):
  spi: stm32-qspi: properly manage probe errors

 drivers/spi/spi-stm32-qspi.c | 31 +++++++++++++++++++------------
 1 file changed, 19 insertions(+), 12 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
