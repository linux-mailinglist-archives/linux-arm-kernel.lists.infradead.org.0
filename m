Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 785BD1CE482
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 21:32:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXA0FMizghQT+9JiPwiDd/8FBzPdH/gc6dzVpaZRWaY=; b=FSt5HW/9vTkAPk
	h5twKl3LgYcCKD6f1pNDvr6J4eAZqfZ+LqpZ+JM9SSHsXxYhXWlgPwjtQq8ZmticjtTf42ILa2D8N
	a1E7KdnQnl7P4yfK5cTfILAg9gBGzNcGoQU9caH2Vo7Pl1cxqrt4p7SuyDs/mLcb9zK+dgWT2E83R
	7WC7YVh75vER9CU0t+NkLH01+iZVJ8UgJWIwAvmH/KLqlbRUy9MKPZDObspDhpNG3w4Hen788fXne
	AkyPNc0+nTILFuRLtUHMHiAuIrsIpkXFGHAGpBdmb0aXDxrOugOtn+TyeCK8JaPM/ZK13rq5WwQnl
	O74SfmpsR7JrMyAnGxgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYE9z-0007mo-KS; Mon, 11 May 2020 19:32:19 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYE9l-0007lh-RR
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 19:32:11 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589225530; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=sAZDaw+WM1tRH6zdEndZjZXWJLv0r3DaQahoiRA1aOI=;
 b=mNIUP/5keHeXOYuCQHzZp/TMvFgmGPkQlDFKzEil1FG7/NhlKB/E0EMwHFQ8SX5JRqPSwtQb
 CHIWV7sIn4O9DeIDDLlRjPQmHbVbVyUv6LNzOyDc3j89chzpTv3mBFpZAcpXli9H+E2cBYzl
 Gb95J2g79r3UmWS88B7keKKU+cE=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb9a825.7fa74d7e7ce0-smtp-out-n02;
 Mon, 11 May 2020 19:31:49 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B8292C433CB; Mon, 11 May 2020 19:31:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from [192.168.1.179] (cpe-76-167-231-33.san.res.rr.com
 [76.167.231.33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: eberman)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 34720C433F2;
 Mon, 11 May 2020 19:31:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 34720C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=eberman@codeaurora.org
Subject: Re: [PATCH] Revert "dynamic_debug: Remove unnecessary __used"
To: Joe Perches <joe@perches.com>, Jason Baron <jbaron@akamai.com>
References: <1589221618-21808-1-git-send-email-eberman@codeaurora.org>
 <59b3e2aac1388209d168a31294dfd2b1f7d21513.camel@perches.com>
From: Elliot Berman <eberman@codeaurora.org>
Message-ID: <9b6694ac-acb3-6bc4-49c9-39ad1c64d6e1@codeaurora.org>
Date: Mon, 11 May 2020 12:31:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <59b3e2aac1388209d168a31294dfd2b1f7d21513.camel@perches.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_123210_453559_45E80990 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Trilok Soni <tsoni@codeaurora.org>,
 Murali Nalajala <mnalajal@codeaurora.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/11/2020 11:54 AM, Joe Perches wrote> Change-Id: probably isn't necessary.

Thanks for the catch

> 
> Is there a separate mechanism possible to avoid bloating the
> otherwise unused content?

This struct is being used in lib/dynamic_debug.c but compiler doesn't know
about this usage when optimizing the struct/branch away.
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
