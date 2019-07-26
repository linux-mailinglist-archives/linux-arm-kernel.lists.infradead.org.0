Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 801AC75EE9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 08:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O39C7paVzaDS7ZFkAvleRoJhuaVEztq56N2jEv5pouM=; b=le9YwTcMddo0Pf
	JMG9d+9eQaRNUBYXDzOFrN11KQOMK+3VFhBL8IF6BVAcvAYrbKurUI571wmpGtCYW7+bRs+nWO1Zp
	Mc64koIyPBWsSeD1Z4QUYg+PM2IrOuXjQlhjP2rdr7vQT+SeC4Qxf+eOMbaEBk/KSXsYuYxdxHvr9
	lCcqtJTNoZNWvdLvhXG3dQsPeAn+KwXaNn6G2ZEcuupTYNP1iSg8plaQhy/ZFXizqVOjzQdxDPqUf
	WQFqaLp/H9wzZr5Xe8grZN3Ry2annQfFCRByOqQPMxVRR/5ch+JwBjuED8Cgu3v8J9h39duhRiQoU
	MzL4WwWh0AkKTSW+7ncQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqtZu-0003Eh-WC; Fri, 26 Jul 2019 06:19:43 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqtZg-0003EM-2K
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 06:19:29 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id AE6B4607B9; Fri, 26 Jul 2019 06:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564121966;
 bh=tuIggQu6dJ8EB1vu2q34aTSvJWiTR8Y13JpxH0xY+wo=;
 h=To:From:Subject:Date:From;
 b=ehMBVxoZ/RQvmk+8u0mS+ltLLLeuNjnn9OD4WcM+eNICX+i7cKciMDR7slVLB85aX
 DL+MLIst7dZKu3JXsf7TW0dOaE4ohsyGPrj2IgXW9GJzRtQsBXcWenHimRlwwb/pmJ
 BhvekQCBX/6v0udpm2WnGeQml7IOBILxn+m4sr+w=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.79.136.27]
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8042660312;
 Fri, 26 Jul 2019 06:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564121965;
 bh=tuIggQu6dJ8EB1vu2q34aTSvJWiTR8Y13JpxH0xY+wo=;
 h=To:From:Subject:Date:From;
 b=X2x19VCLEvSnVju/55PiYdcmUN1JnwmeqJKkA/dPQldYNU0NOKs2iRXnVAiZBtuK8
 Qu/tG1PUc1KjCA+tagInUh/4FeAmNhjQwGUEKQNYmeLxdcaNgGX7nZOG8ZPOrBXfcU
 Rhl88eP28xhYgHGCrITkH09US2tE50OZOOipQn48=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8042660312
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Leo Yan <leo.yan@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: [Regression] Missing device nodes for ETR, ETF and STM after
 CONFIG_UEVENT_HELPER=n
Message-ID: <cfe09a46-462f-633a-37c2-52f8bfc0ffb2@codeaurora.org>
Date: Fri, 26 Jul 2019 11:49:19 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_231928_153184_37BEF00D 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

When trying to test my coresight patches, I found that etr,etf and stm 
device nodes are missing from /dev.

Bisection gives this as the bad commit.

1be01d4a57142ded23bdb9e0c8d9369e693b26cc is the first bad commit
commit 1be01d4a57142ded23bdb9e0c8d9369e693b26cc
Author: Geert Uytterhoeven <geert+renesas@glider.be>
Date:   Thu Mar 14 12:13:50 2019 +0100

     driver: base: Disable CONFIG_UEVENT_HELPER by default

     Since commit 7934779a69f1184f ("Driver-Core: disable /sbin/hotplug by
     default"), the help text for the /sbin/hotplug fork-bomb says
     "This should not be used today [...] creates a high system load, or
     [...] out-of-memory situations during bootup".  The rationale for this
     was that no recent mainstream system used this anymore (in 2010!).

     A few years later, the complete uevent helper support was made optional
     in commit 86d56134f1b67d0c ("kobject: Make support for uevent_helper
     optional.").  However, if was still left enabled by default, to support
     ancient userland.

     Time passed by, and nothing should use this anymore, so it can be
     disabled by default.

     Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

  drivers/base/Kconfig | 1 -
  1 file changed, 1 deletion(-)


Any idea on this?

-Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
