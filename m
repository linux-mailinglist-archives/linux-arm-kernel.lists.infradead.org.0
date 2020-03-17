Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B68F81889A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 17:00:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D8MFBC4i11JP2wXLTgtHgxTdgHNHEqkqRS2/YuWE31M=; b=VJKYtAOiRxniwJ
	EnwdFtQwSnc5mZ7abb4s+O0/WkoaMsyO87VJb+Z9cVbsq/FqoRYZRoHaxx8Lz9cCPy2EuWU+eBnJl
	6Kqg46MH8QGaknGTKF/EzZVMEhIReonE+2I4yrGuqAQHsogH8PSdMMXaiEF/65fW7xSNPBtB+G8ai
	E6yZofXrK02sD5w9CYTcw2NpbUzJURhyltjjMbr8J51bj4ColHzj67HMZKGfQaem+VLU4KcFkNcPH
	rr9DkNb83tik86NBtOXQvIjElF0UMYPdqRBCmqxW5ie/i9nLp9c9xlf7fExWzBP89KmSD/xV2iLYI
	8BMy/aaTp0r1w0frZZQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEEdd-0004is-3d; Tue, 17 Mar 2020 16:00:17 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEEdI-0004i9-0A
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 15:59:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id
 :Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=euefWLuxU1COLDNswebG/zDd8n44iQG/oIUiow0l+k8=; b=Rd1sHmCw7URX7qFwECdA+CQdfs
 Qq2BrOmNMSVVqJQqoZNPM7HO8qoGH5WrmSylPSMBRBVb3SyN8k8eSviqUFEMp1e8KZ51mstYxJjpx
 KOizuubWsrzlUvgg1ARTz1n2ZxfnwcCE3W4VmF2J4jYiwSU7H7RmbVXfpwkcNUurkxQpLsdodkEke
 RrVlpvoPD+5nvA8yYwJuxu07V/5qt2jalgyBA/G2VhqMUTW0ARFcZc3feBY+pHPOFu4URZy3tuPqS
 deUEST4nlY5nh8Qwllch1OXaH0Y3McorydONMSBziwRFVXXrRbnh2c3nC+dvX/xQDN2htJneQYgoA
 MsfsJtOg==;
Received: from ip565b1bc7.direct-adsl.nl ([86.91.27.199]:60802
 helo=localhost.localdomain)
 by web0081.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <dev@pascalroeleven.nl>)
 id 1jEEdB-001IGT-Mc; Tue, 17 Mar 2020 16:59:49 +0100
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 0/4] pwm: sun4i: Properly turn pwm off and fix stuck
 output state
Date: Tue, 17 Mar 2020 16:59:02 +0100
Message-Id: <20200317155906.31288-1-dev@pascalroeleven.nl>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Authenticated-Id: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_085956_325785_0A30065E 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-sunxi@googlegroups.com, Pascal Roeleven <dev@pascalroeleven.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

For the last few days I've been debugging a lot to get pwm working again since
recent changes in 5.6-rc1 broke it for me.

Testing shows the pwm controller crashes (or the output gets stuck) when the
period register is written when the channel is disabled while the clock gate is
still on. Usually after multiple writes, but one write can also lead to
unpredictable behaviour. Patch 3 and 4 fix this.

Patch 2 contains a fix which wouldn't completely turn off the pwm if the
output is disabled. The clock gate needs to stay on for at least one more
period to ensure the output is properly disabled. This issue has been around
for a long time but has probably stayed unnoticed because if the duty_cycle is
also changed to 0, you can't tell the difference.

Patch 1 removes some leftovers which aren't needed anymore.

Obviously these patches work for my device, but I'd like to hear your opinion
if any of these changes make sense. After days, this one is a bit blurry for me.

Thanks to Uwe for some help with debugging.

Pascal.

Pascal Roeleven (4):
  pwm: sun4i: Remove redundant needs_delay
  pwm: sun4i: Disable pwm before turning off clock gate
  pwm: sun4i: Move delay to function
  pwm: sun4i: Delay after writing the period

 drivers/pwm/pwm-sun4i.c | 53 ++++++++++++++++++++---------------------
 1 file changed, 26 insertions(+), 27 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
