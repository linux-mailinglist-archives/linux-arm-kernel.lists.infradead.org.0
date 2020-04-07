Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9041A0CD5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 13:29:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pn+nTqg3ox3ZFVVlFUdkmkssfuKjpmEbocX10BIlW8I=; b=L9tt8WxwDgeX6AXQU2pOf/oQE
	8Sipp/IY81Uj0GrIMC+n3ZsZ9WtYGABi7Ly/pvS6v0GzNq7hMrHpXznoUSNqc30MkHBOAad2A+GK9
	9jZ3Cshe0sBKVsNLD6tr1ud2Ey24P2OeCfizc6pvuEmYlexpXepbh5WxyDriiKxEWNc/XEzVZ9pOZ
	6U8mIipmFn7dX62MAAM2iKJJhD1N/Q//iaX7zQZ0rIyT6QCh0+9oiCWzUdx7jbfRvPcrK7WRI7M8n
	Q/ddeOWj1H/uiX03HXkDhSAO0Dk6Qtv7zN0S+xDtQzMJ1ObqJGZ/F72O2X1lan69zqSF1vj3mXRL4
	hE46y4hQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLmPr-0004dQ-GU; Tue, 07 Apr 2020 11:29:15 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLmPk-0004cY-7F
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 11:29:09 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586258947; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=ZqIKa/adNoURxS84sdyk+/pbhzhboQnmhn2fnf8Bnbk=;
 b=aZXhos6efwEol/egY7B4vztk/c+YjdAy1vn5RrWcNE5wNjXTnGYtO82aeI7iMmv8bwT+uaIs
 ScvTk/IVIW4VfJF+NwUwoAK0HeeKVDwRGM/NDtHOHe9bRVA+8WDDwUWcOsHn5NteQhtUECNW
 ZGTw+37GBdNlaZScHkF3l4UPg6I=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8c6402.7f6fce01b8f0-smtp-out-n01;
 Tue, 07 Apr 2020 11:29:06 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0764BC43636; Tue,  7 Apr 2020 11:29:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 760AEC433F2;
 Tue,  7 Apr 2020 11:29:05 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 07 Apr 2020 16:59:05 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [RFC PATCH] coresight: dynamic-replicator: Fix handling of
 multiple connections
In-Reply-To: <906d374d-a4d6-f2f2-6845-88b97a5ff7d9@arm.com>
References: <20200405102819.28460-1-saiprakash.ranjan@codeaurora.org>
 <CAJ9a7VgQzK1XSCvLwuqODwkWfvo=6Wwps7Db+pL5xYDeCuktrg@mail.gmail.com>
 <6c0f45488f8a44bf860759e00fcabd09@codeaurora.org>
 <906d374d-a4d6-f2f2-6845-88b97a5ff7d9@arm.com>
Message-ID: <39a2b3fff165a108fa59d72b630b5f14@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_042908_430929_7C3EEF43 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mathieu.poirier@linaro.org, alexander.shishkin@linux.intel.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 swboyd@chromium.org, leo.yan@linaro.org, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

Thanks for looking into this issue.

On 2020-04-07 15:54, Suzuki K Poulose wrote:
> On 04/07/2020 10:46 AM, Sai Prakash Ranjan wrote:
> 
> There seems to be two replicators back to back here. What is connected
> to the other output of both of them ? Are there any TPIUs ? What 
> happens
> if you choose a sink on the other end of "swao_replicator" (ETB ?)
> 

The other outport of swao replicator is connected to EUD which is a
QCOM specific HW which can be used as a sink like USB.
And the other outport of other replicator(replicator_out) is connected 
to
TPIU.

> After boot, what do the idfilter registers read for both the 
> replicators ?
> 

Added some prints in replicator_probe.

  replicator probe ret=-517 devname=6046000.replicator idfilter0=0x0 
idfilter1=0x0
  replicator probe ret=0 devname=6b06000.replicator idfilter0=0xff 
idfilter1=0xff
  replicator probe ret=0 devname=6046000.replicator idfilter0=0xff 
idfilter1=0xff

> 
> I believe we need to properly assign the TRACE_IDs for tracing 
> sessions,
> (rather than static ids) in a way such that we could filter them and 
> use
> the multiple sinks in parallel for separate trace sessions and this is
> not simple (involves kernel driver changes and the perf tool to be able
> to decode the trace id changes too).
> 
> 
> So for the moment, we need to :
> 
> 1) Disallow turning the replicator ON, when it is already turned ON
> 2) Do what your patch does. i.e, disable the other end while one end
>    is turned on.
> 
> Thoughts ?
> 

Sounds good to me, Mike would have some comments.

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
