Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E031165DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 16:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wvwJk1AtNo+bSl4qR2hg43TMYfhWbg13D9P7e0j8Xw=; b=SQe2F3nHovwjxo
	dQ8rWCRXzcoEY+JmlHCKa6eiy9sQpHPbGuONZ4at+iXqFXUgywPbbYwxqr9nTkgDf5kwUPGCduFs4
	QjocKUZb1oHfCx0DxIgebBQeIys5rpNIG52LxUXgNSMdVhUKjf8AUUAJi0fvvK17XZah1MBvbdrdb
	xXZ7ohRbKM9/TVuQTiQA7hQaRMdlj1ak2VcRLU5EAEqJ446oFhXOpi+9g+TYOvYyHkJCCCkbib/Hu
	DT7mtxUM7v6Im5KxTdmLS39bH3N/Wl4Zp0LdDLtcktvUjlK6mRxRaL8wsC6g9cwd4vRyvzxk4HdqX
	7bpIyGXCmjJAS32bySSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO1DM-0004jf-Ur; Tue, 07 May 2019 14:37:04 +0000
Received: from mxout014.mail.hostpoint.ch ([2a00:d70:0:e::314])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO1Ct-0004KQ-Nb
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 14:36:39 +0000
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
 by mxout014.mail.hostpoint.ch with esmtp (Exim 4.91 (FreeBSD))
 (envelope-from <dev@pschenker.ch>)
 id 1hO1Ci-00028n-4E; Tue, 07 May 2019 16:36:24 +0200
Received: from [46.140.72.82] (helo=philippe-pc.toradex.int)
 by asmtp013.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91 (FreeBSD))
 (envelope-from <dev@pschenker.ch>)
 id 1hO1Ch-0008oW-Sx; Tue, 07 May 2019 16:36:24 +0200
X-Authenticated-Sender-Id: dev@pschenker.ch
From: Philippe Schenker <dev@pschenker.ch>
To: linux-iio@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
 Stefan Agner <stefan@agner.ch>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: [PATCH 5/5] iio: stmpe-adc: Reset possible interrupts
Date: Tue,  7 May 2019 16:36:15 +0200
Message-Id: <20190507143615.28477-5-dev@pschenker.ch>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190507143615.28477-1-dev@pschenker.ch>
References: <20190507143615.28477-1-dev@pschenker.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_073635_761674_5A956D1B 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a00:d70:0:e:0:0:0:314 listed in] [list.dnswl.org]
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Philippe Schenker <philippe.schenker@toradex.com>,
 David Laight <David.Laight@ACULAB.COM>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Lee Jones <lee.jones@linaro.org>, dev@pschenker.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Philippe Schenker <philippe.schenker@toradex.com>

Clear any interrupt that still is on the device on every channel
this driver is activated for in probe and specific channels in
the timeout handler.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

 drivers/iio/adc/stmpe-adc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/iio/adc/stmpe-adc.c b/drivers/iio/adc/stmpe-adc.c
index cc752a47444c..a5990e9f2c80 100644
--- a/drivers/iio/adc/stmpe-adc.c
+++ b/drivers/iio/adc/stmpe-adc.c
@@ -80,6 +80,8 @@ static int stmpe_read_voltage(struct stmpe_adc *info,
 	ret = wait_for_completion_timeout(&info->completion, STMPE_ADC_TIMEOUT);
 
 	if (ret <= 0) {
+		stmpe_reg_write(info->stmpe, STMPE_REG_ADC_INT_STA,
+				STMPE_ADC_CH(info->channel));
 		mutex_unlock(&info->lock);
 		return -ETIMEDOUT;
 	}
@@ -326,6 +328,9 @@ static int stmpe_adc_probe(struct platform_device *pdev)
 	stmpe_reg_write(info->stmpe, STMPE_REG_ADC_INT_EN,
 			~(norequest_mask & 0xFF));
 
+	stmpe_reg_write(info->stmpe, STMPE_REG_ADC_INT_STA,
+			~(norequest_mask & 0xFF));
+
 	return devm_iio_device_register(&pdev->dev, indio_dev);
 }
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
