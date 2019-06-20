Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3394D935
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 20:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YNfdjeqLh/D15zuINeo58CxaVSQlYnUY3fcA+KS0bws=; b=JfxERS+bPSCJHJ
	0LXq+9HSjlivI31fFMRluGNyD89GtZzptVREb/dIiO8Jy5rtWZXb8iaFH9SIr6XvLR7N5wWpEf4Wy
	j0ei2X+WB1OWd4wB/zNTEcguxwVU/aAmBwoezlQwlb9G0gtWQsOTuBQ8h48NEPNlXZCJyNUt+43E2
	OpEVAQmgv1B5T2AW1zDjBG22quvhLXpkfHwcU+Sfv3/x5CmH0o8HGzY2WwDAn+Gv+P3hmmqXVzq3N
	AX8ZY0bFLD7QsHxJkXzon0DmluhAwUCLg9gRPg1ZYqmoWeypVha6UCxNFaHyHn2ztPB+BKzEkyKn3
	0Yn+u/sQyOilBOkDuGfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1rG-0006qk-OQ; Thu, 20 Jun 2019 18:32:27 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1qx-0006qO-TA
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 18:32:10 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7204F60274; Thu, 20 Jun 2019 18:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561055527;
 bh=b75oQgX62jUgFlcJID73lZaMHa+SwbvHtq/u6y0s1fQ=;
 h=From:To:Cc:Subject:Date:From;
 b=ie7rVlTxwE4pQlAgHAX2cWN6MiSsSBYJphov5Gu6MUe+WKnu1fvI3hdaUAwZua6u2
 L5MKLuN7z9cEeoKWvjFcL19tQlV/t/Asi00h8kquZ0U6LyryLtjWM1ebxoNKyg4DQo
 HIaruI58J+y68hJuntEw5ngrRdP96QBioAszX6d0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 186206020A;
 Thu, 20 Jun 2019 18:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561055527;
 bh=b75oQgX62jUgFlcJID73lZaMHa+SwbvHtq/u6y0s1fQ=;
 h=From:To:Cc:Subject:Date:From;
 b=ie7rVlTxwE4pQlAgHAX2cWN6MiSsSBYJphov5Gu6MUe+WKnu1fvI3hdaUAwZua6u2
 L5MKLuN7z9cEeoKWvjFcL19tQlV/t/Asi00h8kquZ0U6LyryLtjWM1ebxoNKyg4DQo
 HIaruI58J+y68hJuntEw5ngrRdP96QBioAszX6d0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 186206020A
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Leo Yan <leo.yan@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andy Gross <andy.gross@linaro.org>, David Brown <david.brown@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCHv2 0/2] coresight: Do not default to CPU0 for missing CPU
 phandle
Date: Fri, 21 Jun 2019 00:01:50 +0530
Message-Id: <cover.1561054498.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_113207_962823_B288AEE6 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sibi Sankar <sibis@codeaurora.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case of missing CPU phandle, the affinity is set default to
CPU0 which is not a correct assumption. Fix this in coresight
platform to set affinity to invalid and abort the probe in drivers.
Also update the dt-bindings accordingly.

Patch 2 allows the probe of coresight etm and cpu-debug to abort
earlier in case cpus are not available.

v2:
 * Addressed review comments from Suzuki and Mathieu.
 * Allows the probe of etm and cpu-debug to abort earlier
   in case of unavailability of respective cpus.

Sai Prakash Ranjan (2):
  coresight: Do not default to CPU0 for missing CPU phandle
  coresight: Abort probe if cpus are not available

 Documentation/devicetree/bindings/arm/coresight.txt |  2 +-
 drivers/hwtracing/coresight/coresight-cpu-debug.c   |  3 +++
 drivers/hwtracing/coresight/coresight-etm3x.c       |  3 +++
 drivers/hwtracing/coresight/coresight-etm4x.c       |  3 +++
 drivers/hwtracing/coresight/coresight-platform.c    | 13 ++++++++-----
 5 files changed, 18 insertions(+), 6 deletions(-)

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
