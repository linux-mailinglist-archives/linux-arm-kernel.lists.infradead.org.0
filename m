Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 387388000E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 20:08:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GKvpRv5tdvUv19YL62jguFJhOdZ4mDSkM0j8F8Ktq8I=; b=RjRyTE7sUi5SLJmcCI39DY/9gH
	AbsGS4j5VyDrOE5P5LCoXZEucogS1UL3dzDCs9cVhmgww428RtRT9U8Pbqw/uQUOqt/mGUZEd3WT0
	MIAerPI3zu31zaKQFk+Wjr1185czY502KUuyttkSD4oUzdXivDToNAXxyglB/DxKhGZ/wjpXHQU9l
	M+1UKmkFJnRLOTnehppqTgNikemY69OelVfsQtJPWTbLlEHSsgvRCwOO396y2AuhqyKy/tn23/JPK
	wIyGDRv0LcEdc39gjEmnSivv9R6t83AMvCY8Le65c5RN1ktFXmtY8p2UQ/TAvw5SQVXkOmhXmaZBc
	YEf/I5zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htbyd-0007aG-7B; Fri, 02 Aug 2019 18:08:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htbyX-0007Zz-1T
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 18:08:22 +0000
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D26C2171F;
 Fri,  2 Aug 2019 18:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564769300;
 bh=FDmQMHWZPMHJgoKuycFoWV/jDx3I0OXYJajDAZAoBVM=;
 h=Date:From:To:To:To:Cc:CC:Cc:Subject:In-Reply-To:References:From;
 b=THHSna0bu6joBrF2bpsf0HV9a5j3Y1IF6atT5YZXJiziVmYRo3Sl0NUtWSg1TfwkO
 uJwbWsDkvCSd2jkNsulwm6V3HLhXi+FnLcNPB6SuV8o6tvG2oLnS74rG8zKx/2gJqR
 Isla32NllxcicN32osUm4jL6yeWUE5Hy6WfwO/jk=
Date: Fri, 02 Aug 2019 18:08:19 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
Subject: Re: [PATCH v4 2/6] coresight: etm4x: use explicit barriers on
 enable/disable
In-Reply-To: <20190730125157.884-3-andrew.murray@arm.com>
References: <20190730125157.884-3-andrew.murray@arm.com>
Message-Id: <20190802180820.0D26C2171F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_110821_111170_94CFAE2B 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: , stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.2.4, v5.1.21, v4.19.62, v4.14.134, v4.9.186, v4.4.186.

v5.2.4: Build OK!
v5.1.21: Build OK!
v4.19.62: Failed to apply! Possible dependencies:
    41a75cdde735 ("coresight: Convert driver messages to dev_dbg")
    68a147752d04 ("coresight: etmx: Claim devices before use")
    e006d89abedd ("coresight: etm4x: Add support for handling errors")
    e2a1551a881f ("coresight: etm3: Add support for handling errors")

v4.14.134: Failed to apply! Possible dependencies:
    41a75cdde735 ("coresight: Convert driver messages to dev_dbg")
    68a147752d04 ("coresight: etmx: Claim devices before use")
    e006d89abedd ("coresight: etm4x: Add support for handling errors")
    e2a1551a881f ("coresight: etm3: Add support for handling errors")

v4.9.186: Failed to apply! Possible dependencies:
    297ab90f15f6 ("coresight: tmc: Cleanup operation mode handling")
    2cd541402829 ("coresight: tmc: minor fix for output log")
    41a75cdde735 ("coresight: Convert driver messages to dev_dbg")
    68a147752d04 ("coresight: etmx: Claim devices before use")
    c38e505e2701 ("coresight: tmc: Get rid of mode parameter for helper routines")
    e006d89abedd ("coresight: etm4x: Add support for handling errors")
    e2a1551a881f ("coresight: etm3: Add support for handling errors")

v4.4.186: Failed to apply! Possible dependencies:
    1925a470ce69 ("coresight: etm3x: splitting struct etm_drvdata")
    2127154d115d ("coresight: etm3x: implementing user/kernel mode tracing")
    22fd532eaa0c ("coresight: etm3x: adding operation mode for etm_enable()")
    27b10da8fff2 ("coresight: etb10: moving to local atomic operations")
    41a75cdde735 ("coresight: Convert driver messages to dev_dbg")
    52210c8745e4 ("coresight: implementing 'cpu_id()' API")
    68a147752d04 ("coresight: etmx: Claim devices before use")
    882d5e112491 ("coresight: etm3x: implementing perf_enable/disable() API")
    b3e94405941e ("coresight: associating path with session rather than tracer")
    c04148e708c0 ("coresight: etm3x: moving sysFS entries to dedicated file")
    c1f8e57c9e66 ("coresight: etm3x: moving etm_readl/writel to header file")
    e2a1551a881f ("coresight: etm3: Add support for handling errors")
    e827d4550aa3 ("coresight: etb10: adding operation mode for sink->enable()")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
