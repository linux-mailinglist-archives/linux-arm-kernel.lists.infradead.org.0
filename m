Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D25710E2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Y/cohiCcoqKkQ/tyOfmj0Q0wMlcqNZJ05iEZ9kIq5Ic=; b=WMf
	V/uoLcUJrCDCCzq6RJKKOvQPE0oJe3WuFOWwJeGabPQicRAcQKV4oxe/jGim87ORfPo8+6plk/Xd8
	1k+WH3vNvgw4L7++SaqNrNbLUN8fxlJ9PjioSFsy0VqnbfyulTJPbXi/lYZyjHNONM7/483HaFCKK
	COuJEpMr8AARkExAQsc5328AUkNR3csdwQiTBR/jQkN8NI3iXhrsz9rzx+DB3KvQ6pvYgWv8xnLy5
	gTQySAU0fwhP6mXxZ+RBI1QxVj6ZTStvp54rz8UmXZfK7wir0Jhcpoeyjx0poCmvhRXbOhj+zKpJj
	LPXamlrSVeFRq52UFPpFJpoEfx8c14A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLw3T-0000Zl-LG; Wed, 01 May 2019 20:42:15 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvzF-0007VH-04
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 20:42:01 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 31E52200068;
 Wed,  1 May 2019 22:37:49 +0200 (CEST)
Received: from smtp.na-rdc02.nxp.com (inv1260.us-phx01.nxp.com [134.27.49.11])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id EDEE420002A;
 Wed,  1 May 2019 22:37:48 +0200 (CEST)
Received: from someleo.am.freescale.net (someleo.am.freescale.net
 [10.81.32.93])
 by inv1260.us-phx01.nxp.com (Postfix) with ESMTP id 376E640A63;
 Wed,  1 May 2019 13:37:48 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: arm@kernel.org
Subject: [GIT PULL] fixes to soc/fsl drivers for v5.1
Date: Wed,  1 May 2019 15:37:48 -0500
Message-Id: <20190501203748.5393-1-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_134159_445570_D6E00ED9 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: shawnguo@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi arm-soc maintainers,

Please help to merge the following fix for soc/fsl drivers.

Thanks,
Leo

The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:

  Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/leo/linux.git tags/soc-fsl-fix-v5.1

for you to fetch changes up to 5674a92ca4b7e5a6a19231edd10298d30324cd27:

  soc/fsl/qe: Fix an error code in qe_pin_request() (2019-04-02 18:02:48 -0500)

----------------------------------------------------------------
NXP/FSL soc driver fixes for v5.1

QE drivers
- Fix an error path in qe_pin_request()

----------------------------------------------------------------
Dan Carpenter (1):
      soc/fsl/qe: Fix an error code in qe_pin_request()

 drivers/soc/fsl/qe/gpio.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
