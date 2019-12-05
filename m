Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD078113E95
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:53:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W72i+DOOljdBgGcelxzuZBVHfPRhLCZxBR0fx/un3S8=; b=N8ARd8vcjUQ0+L
	ADL2AXQttFmI/jMP3o3jUhqqv9GqGGQg/7zFN9MrX5hAk/PlJnazvguZsHBkUyPrcE/FNXIVCZxLE
	WzulQwAfvLJGOpQ6h89jigjpqcu0xXsw1c+XgSIXpZLkSvTqypLaGYN0vEPgejlw3NOtSnFsfVYJx
	u5KsbogFfSS1fbqf4XzHP4osjWLrsKJbtvj+gRdR3fDrNWjZkhPeBvPQ8EwgZJu5H22wF3AS7O8mF
	0IIUA4kp56AtNPuLCXU8XwZD7rIpoFxJD+mml+hcM3M3EipA62/EPL+cQWfB5zP7bgCqIARp/k22o
	Y7h2BEsaHJZbB2Yzl19g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnon-00025A-MR; Thu, 05 Dec 2019 09:53:05 +0000
Received: from a27-185.smtp-out.us-west-2.amazonses.com ([54.240.27.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnoh-00024Q-CI
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:53:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575539577;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding;
 bh=CO0cVItG7+3d1ni5t/elfx3WOfPpM1c5YYqLbJ16tG0=;
 b=lzpKifgUm0pEEqBUFONnl07LRB1TmFdv/JKkpbp6ZRkSGOHoHdNDR2t1dkbGjzPk
 azIYuVzOOL5a0g7ecMSn3VeI/UcxC5U8PPucaX/aBSXFNMh7cPJgVhkcjoSnpCnLGqc
 2pIO5QB+T3RySWOgeB4PIxaTXX2W8QBcHfOduwoE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575539577;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
 bh=CO0cVItG7+3d1ni5t/elfx3WOfPpM1c5YYqLbJ16tG0=;
 b=W/5SjOKhNbqMfzNrpIQbfguUfepSJ/EfPdbwL3FS2zVuKKfwkn5izqwqviyNLRSn
 Wu3RaUxTnQ1/g2tgkGsbYrgFa9sD8gYtwgRk78CvB34fumfVsNWLihkgd89zwpxEp0J
 1tAlvXe4C8vpfGj/sfCUry3L5mGEblNjcd0JtSZQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0BA2AC447AE
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Tony Luck <tony.luck@intel.com>, James Morse <james.morse@arm.com>,
 Robert Richter <rrichter@marvell.com>, linux-edac@vger.kernel.org
Subject: [PATCH 0/2] Add EDAC support for Kryo CPU core caches
Date: Thu, 5 Dec 2019 09:52:57 +0000
Message-ID: <0101016ed57a10a8-bd8fbdb9-a5cd-4460-bae6-c5c35f0eed88-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SES-Outgoing: 2019.12.05-54.240.27.185
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_015259_485908_6E2497FF 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.185 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tsoni@codeaurora.org, Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 psodagud@codeaurora.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series implements EDAC support for error reporting on
Kryo{3,4}XX CPU caches L1,L2, L3-SCU. All the cores(big.LITTLE)
in Kryo{3,4}XX CPUs implement RAS extensions and use interrupt
based ECC mechanism to report errors.

This series has been tested on SC7180, SDM845, SM8150 SoCs with
Kryo{3,4}XX CPU cores based on ARM Cortex-A55, Cortex-A75 and
Cortex-A76.

This implementation is platform specific in contrast to the
patch posted last time for generic error reporting on arm cortex
implementations with RAS extensions by Kyle Yan.
 - https://patchwork.kernel.org/patch/10161955/

Downstream implementation of this can be found at:
 - https://source.codeaurora.org/quic/la/kernel/msm-4.14/tree/drivers/edac/kryo_arm64_edac.c?h=msm-4.14

Sai Prakash Ranjan (2):
  dt-bindings: edac: Add DT bindings for Kryo EDAC
  drivers: edac: Add EDAC support for Kryo CPU caches

 .../bindings/edac/qcom-kryo-edac.yaml         |  67 ++
 MAINTAINERS                                   |   7 +
 drivers/edac/Kconfig                          |  20 +
 drivers/edac/Makefile                         |   1 +
 drivers/edac/qcom_kryo_edac.c                 | 679 ++++++++++++++++++
 5 files changed, 774 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml
 create mode 100644 drivers/edac/qcom_kryo_edac.c

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
