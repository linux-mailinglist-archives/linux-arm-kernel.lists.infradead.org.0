Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C55D1BDC26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 14:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qgXDJnnQrFhbJdGkM7MOSwGwzI+teBa5hCPtYIoi+oo=; b=KxSxb3Gn4Hr7WW
	5oE2eT83ixcy31ZiYv1OxbNGS3mvGGAK956hhseGbRPMBAz3oHBEwFL5EK7+QHS9pVlWzN1oKaC4q
	3V5r8jNKHQVVpXlLzIgOr5OdXP6FNSHtgiIWRoI78xPVktbfV/suBBg8M9TrdN6v3wRmra5+EgzVH
	7IIZD0FY04VhMnYvQVuqAlaqbVmuMGYGjBqO8r/c7G+RDYpvGCGMhpCNt/HReWL0ZlAdYnKBCmMf8
	KkpggsQOst0xbXUM6VhA1X//wEXnCyMVFQllsx/6OlTkLfliKEwHrRe9PpiHGjWrU3ClcD+EbNcWp
	sOv4qnjrMMtEHdL9WkPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTlqR-00040P-2S; Wed, 29 Apr 2020 12:29:43 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlqB-0003zN-VD
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 12:29:30 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03TCKSXu013757; Wed, 29 Apr 2020 14:29:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=pilen/wBsf89ww4XsI4xQOKQHe32n2wJXShWQN4oLKE=;
 b=WnWAfPgmeQ7nJDF2iWXoMR9oJVZgj47kEM4eiIQcQslEaOD+GbrYcpv11ao0MWwU+XLD
 gc2H0Sy4phLMYv+H+DnLSMkSIkrfWRGois7LIbg9ftaYnLoJiJGErDajYcuzRQCnrxjw
 MexvDyXYlqDdxopUy5+Z5POZ9lf8EER+SU8S857DXxpmLgp5dFb+jhQ1ktC0q4Vv/UAR
 sZk3Gmhf5NOj3EVOcg79ukAMn0o9sCih+T/v6ziyu00y6dz/Iv3WUi+FdHaoKpABWFkJ
 /JZodHtiskTXJwwyJPBUILd4LasgLOdyBkwp8kdmbKs66qSB8Wu5hWemUlgIQGmp1GDS xw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30n4j62ffu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Apr 2020 14:29:19 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AF06E100045;
 Wed, 29 Apr 2020 14:29:18 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9D20021BAA0;
 Wed, 29 Apr 2020 14:29:18 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 29 Apr 2020 14:29:17 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH v2] iio: adc: stm32-adc: fix runtime autosuspend delay when
 slow polling
Date: Wed, 29 Apr 2020 14:29:08 +0200
Message-ID: <1588163348-31640-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-29_05:2020-04-29,
 2020-04-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_052928_483664_4DEFADAD 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ulf.hansson@linaro.org, olivier.moysan@st.com, benjamin.gaignard@st.com,
 linux-iio@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the ADC is runtime suspended and starting a conversion, the stm32-adc
driver calls pm_runtime_get_sync() that gets cascaded to the parent
(e.g. runtime resume of stm32-adc-core driver). This also kicks the
autosuspend delay (e.g. 2s) of the parent.
Once the ADC is active, calling pm_runtime_get_sync() again (upon a new
capture) won't kick the autosuspend delay for the parent (stm32-adc-core
driver) as already active.

Currently, this makes the stm32-adc-core driver go in suspend state
every 2s when doing slow polling. As an example, doing a capture, e.g.
cat in_voltageY_raw at a 0.2s rate, the auto suspend delay for the parent
isn't refreshed. Once it expires, the parent immediately falls into
runtime suspended state, in between two captures, as soon as the child
driver falls into runtime suspend state:
- e.g. after 2s, + child calls pm_runtime_put_autosuspend() + 100ms
  autosuspend delay of the child.
- stm32-adc-core switches off regulators, clocks and so on.
- They get switched on back again 100ms later in this example (at 2.2s).

So, use runtime_idle() callback in stm32-adc-core driver to call
pm_runtime_mark_last_busy() for the parent driver (stm32-adc-core),
to avoid this.

Fixes: 9bdbb1139ca1 ("iio: adc: stm32-adc: add power management support")

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
Changes in v2:
- Use runtime_idle callback in stm32-adc-core driver, instead of refreshing
  last_busy from the child (for the parent) at many place. Initial patch v1
  looked like "somewhat adhoc solution" as commented by Jonathan.
---
 drivers/iio/adc/stm32-adc-core.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
index 2df88d2..ebe5dbc 100644
--- a/drivers/iio/adc/stm32-adc-core.c
+++ b/drivers/iio/adc/stm32-adc-core.c
@@ -803,6 +803,13 @@ static int stm32_adc_core_runtime_resume(struct device *dev)
 {
 	return stm32_adc_core_hw_start(dev);
 }
+
+static int stm32_adc_core_runtime_idle(struct device *dev)
+{
+	pm_runtime_mark_last_busy(dev);
+
+	return 0;
+}
 #endif
 
 static const struct dev_pm_ops stm32_adc_core_pm_ops = {
@@ -810,7 +817,7 @@ static const struct dev_pm_ops stm32_adc_core_pm_ops = {
 				pm_runtime_force_resume)
 	SET_RUNTIME_PM_OPS(stm32_adc_core_runtime_suspend,
 			   stm32_adc_core_runtime_resume,
-			   NULL)
+			   stm32_adc_core_runtime_idle)
 };
 
 static const struct stm32_adc_priv_cfg stm32f4_adc_priv_cfg = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
