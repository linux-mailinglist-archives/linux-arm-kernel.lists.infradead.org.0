Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A931654DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 03:12:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZLUXuyUMIg40t9IX8R2VJSjNKEkKBXHmIjmecx7Fqq0=; b=UGJ
	S0oKTsIkU7pyGq9OAsgCl0x6emZCSlgzBW7RChn5tSfFVhb/t2hm6P20ArSGKOGqY/C3PWBivRbNF
	bfiHz7xQEctS0WikHEHnK9Ljp6erV+Yloh71XXNbNcEuQfZYlApfXXbhzJObyLu9BqIWbEKRt/zt7
	pYnXLSV/CkfaRSQPG7JatHofSncdoaGFDGpgO6glz86D8Tuc1762rGm6ACMY9++Q1NpBqKHKZFW7f
	XPq9CgF9K2lB2Dt5M5KFKyeIom4Oq7vADywY1R/vaOGze+N0hHzBI4jzxgNrD0bKUdhlWYh8FeX9B
	DINJNwliDq1gC0tz8KnnsZURnfWUIXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4bK6-0002Ju-WA; Thu, 20 Feb 2020 02:12:19 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4bJu-0002JC-Dx
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 02:12:09 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1582164728; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=krljadlfWUlVstbceTJH6Iska/S9qoO8kda4t3UJPeQ=;
 b=bAh3uq3ez5/tLslprBOtt9KWiLMTFUzf0DVYKfiuhRj80xuFBps1Klhowwz2yffIycFmEvoC
 MisHdImA12cD5CAdUKi6IqaKA9VZVnjTyJqUnS5K4ryKmwj+9eGlbaxNspi79sCQLKs8zHNR
 HM66WZn6JjwPeX4XvnuKURCjgwc=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4deaf1.7fabc27b37d8-smtp-out-n01;
 Thu, 20 Feb 2020 02:12:01 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 657CBC4479D; Thu, 20 Feb 2020 02:12:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from sidgup-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sidgup)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B788AC43383;
 Thu, 20 Feb 2020 02:12:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B788AC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sidgup@codeaurora.org
From: Siddharth Gupta <sidgup@codeaurora.org>
To: ohad@wizery.com,
	bjorn.andersson@linaro.org
Subject: [PATCH 0/2] remoteproc: core: Add core functionality to the
 remoteproc framework
Date: Wed, 19 Feb 2020 18:11:51 -0800
Message-Id: <1582164713-6413-1-git-send-email-sidgup@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_181208_357011_948F1CC3 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 rishabhb@codeaurora.org, Siddharth Gupta <sidgup@codeaurora.org>,
 psodagud@codeaurora.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds core functionality to the remoteproc framework.

Patch 1 adds a new API to the framework which allows kernel clients to update
        the firmware name for the specified remoteproc.
Patch 2 intends to improve the user experience by preventing the system from
        going to sleep while the remoteproc is recovering from a crash.

Siddharth Gupta (2):
  remoteproc: core: Add an API for booting with firmware name
  remoteproc: core: Prevent sleep when rproc crashes

 drivers/remoteproc/remoteproc_core.c | 38 ++++++++++++++++++++++++++++++++++++
 include/linux/remoteproc.h           |  1 +
 2 files changed, 39 insertions(+)

-- 
Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
