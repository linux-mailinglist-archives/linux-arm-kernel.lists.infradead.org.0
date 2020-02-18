Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7FF162763
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:49:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SRvWAtBpNPAIYuGtOOF1C+4SaT/6xfu5d30AszM2xVU=; b=TkXNwopuUVlW4mOtoj/km4dGOI
	OL0a0d54/R5KlIviB7T91QeMbf+kJSmrZ+K7aqkJIDoPsfMF+Angz7xPy9zwK/bjShZY7l1mUIqx/
	UIs2GAQPLhg5lmMkOc+tZitwx73kbRWZ4eI/BN0mrzNa8Gg8kPxnN8Iulxy7Tck9WATnVQUsMiEwq
	HkXqAmSdKq9mNel4TJpWOoXdX78c4F76nGFr3H4cYpp8eLaRCaCnfZ+06611xuSD0wiD84PfzrD9r
	v45pMKhOqa80iktzBQpkzBqUkjKOG1qlLM+J+Flq3h5j8Lw5sN/q5K2qVS9zOZhjjlMjK+GG16wuV
	4asqLu6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j43Fn-00056T-7U; Tue, 18 Feb 2020 13:49:35 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43FS-0004w5-B9
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:49:15 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 05:49:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="268760966"
Received: from unknown (HELO srivasta-NUC7i7BNH.iind.intel.com)
 ([10.223.163.113])
 by fmsmga002.fm.intel.com with ESMTP; 18 Feb 2020 05:49:11 -0800
From: Shobhit Srivastava <shobhit.srivastava@intel.com>
To: daniel@zonque.org, haojian.zhuang@gmail.com, robert.jarzmik@free.fr,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] spi: pxa2xx: Enable SSP controller for CS toggle
Date: Tue, 18 Feb 2020 19:19:06 +0530
Message-Id: <20200218191752.1.I5dcc25df7fd0fda29d57f5127337348e4c447852@changeid>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200218134906.25458-1-shobhit.srivastava@intel.com>
References: <20200218134906.25458-1-shobhit.srivastava@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_054914_428163_A16DA3E9 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: furquan@google.com, rajatja@google.com, evgreen@google.com,
 andriy.shevchenko@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In some circumstances on Intel LPSS controllers, toggling the LPSS
CS control register doesn't actually cause the CS line to toggle.
This ruins SPI transactions that either rely on delay_usecs,
or toggle the CS line without sending any data.
This seems to be because the SSP controller is in disabled state.
As per the spec, the controller needs to be enabled for CS change
to take effect.
This issue is not seen in cases where there is data to be
transferred because then the SSCR0 gets enabled via
pxa2xx_configure_sscr0().

Signed-off-by: Shobhit Srivastava <shobhit.srivastava@intel.com>

---

 drivers/spi/spi-pxa2xx.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index 4c7a71f0fb3e..414afc72ef44 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -370,7 +370,7 @@ static void lpss_ssp_cs_control(struct spi_device *spi, bool enable)
 	struct driver_data *drv_data =
 		spi_controller_get_devdata(spi->controller);
 	const struct lpss_config *config;
-	u32 value;
+	u32 value, sscr0;
 
 	config = lpss_get_config(drv_data);
 
@@ -382,7 +382,18 @@ static void lpss_ssp_cs_control(struct spi_device *spi, bool enable)
 		value &= ~LPSS_CS_CONTROL_CS_HIGH;
 	else
 		value |= LPSS_CS_CONTROL_CS_HIGH;
+
+	/* To propagate CS value to output, the controller should
+	 * be enabled. This is needed for devices that just do
+	 * CS assert, wait and CS deassert without sending any data.
+	 */
+	sscr0 = pxa2xx_spi_read(drv_data, SSCR0);
+	pxa2xx_spi_write(drv_data, SSCR0, sscr0 | SSCR0_SSE);
+
 	__lpss_ssp_write_priv(drv_data, config->reg_cs_ctrl, value);
+
+	/* Restore the original SSCR0 config*/
+	 pxa2xx_spi_write(drv_data, SSCR0, sscr0);
 }
 
 static void cs_assert(struct spi_device *spi)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
