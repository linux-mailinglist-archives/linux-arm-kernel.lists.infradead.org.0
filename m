Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B56CCBAE7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E9r4j5rx9zWXfyE2xhS7oQz6KoxQl/bsGqYBjkQAvbc=; b=SCq5nZidQbWenq
	caimB30DLbbPnBgZJ/uW/Zre4d2tgwkc0/Z7Z8/Q9uFjZNxyCbe0q1Zav46K9hMGTReCdLrQYvglT
	he8tl33vNtWn3S2oUBLx87Mu2tc9cIMQqIT9CcDsvvDJCmfRce8PvUrQRkhccMzlPre0/TfzRgBeY
	mL49mwjNPSHls6n+UWxllfqyxnbDg+WhzzfeabbWHNOOEFX01qNjwmmsXNFWkMnVyCpoyM2pFZiby
	JoSBifWQ+APVn/2VVT9enFxOjqPIrm7SegszNBMrbrRIN7vcDsh9t/iLeq5Nyu1Osy92TQhjrtrkq
	q33jnCFzhnptdO38jUNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGN6K-0004S7-L8; Fri, 04 Oct 2019 12:54:28 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGN6A-0004Qz-PZ
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:54:20 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x94CpHkc007845; Fri, 4 Oct 2019 14:54:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Gq4se5jZ9JpjIAQHXXEIaPHCYbZ6Lt/x+2ijv9uVcpE=;
 b=BBRNBdO3RHD/vo/BNcvJK5qTWDP+S3vU+f9VVi0z5PR9vnJyoMgYVjqiI+Zqihban3BU
 7QD+MDRKxmg52UzMB3aAp51uRel9mrQS9uvL2/OmPsbuJCCde26h7Ga7WepFxSEATEHQ
 0wAt/ZS4ml3mqYGBDIBLWNpcUzKjFCljkjhYRoA/DQ5RVzNbno5lyUkqw70Vzynauh6w
 ilrzrVU1HkFXves5723o2mEkBbVJnzvsw/vzM8tk9tLCIfD5/LipBi+XVBo9PKZhhmwx
 cfbRShTDsGsGxpbHjSWj1e/dEEf/kdcTWzf+muJ3jTNIX0vdQ+D2z9qwotFOQqLw2kAF CQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vcem3fwgc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 04 Oct 2019 14:54:10 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 39DD6100034;
 Fri,  4 Oct 2019 14:54:10 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 03C4E2BFDEF;
 Fri,  4 Oct 2019 14:54:10 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 4 Oct 2019
 14:54:09 +0200
Received: from localhost (10.48.0.192) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Fri, 4 Oct 2019 14:54:09 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <thierry.reding@gmail.com>, <robh+dt@kernel.org>,
 <u.kleine-koenig@pengutronix.de>
Subject: [PATCH v2 0/3] Add PM support to STM32 Timer PWM
Date: Fri, 4 Oct 2019 14:53:50 +0200
Message-ID: <1570193633-6600-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-04_06:2019-10-03,2019-10-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_055419_125648_A8211124 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds power management support for STM32 Timer PWM:
- Document the pinctrl sleep state for STM32 Timer PWM
- STM32 Timer PWM driver

---
Changes in v2:
Follow Uwe suggestions/remarks:
- Add a precursor patch to ease reviewing
- Use registers read instead of pwm_get_state
- Add a comment to mention registers content may be lost in low power mode

Fabrice Gasnier (3):
  dt-bindings: pwm-stm32: document pinctrl sleep state
  pwm: stm32: split breakinput apply routine to ease PM support
  pwm: stm32: add power management support

 .../devicetree/bindings/pwm/pwm-stm32.txt          |  8 +-
 drivers/pwm/pwm-stm32.c                            | 86 +++++++++++++++++-----
 2 files changed, 71 insertions(+), 23 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
