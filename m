Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9341E1BB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 09:02:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UwOHqZ7BjzrEYRM2cdGjbsT5nVOk0xYPO5Wo7g6Jzpo=; b=nWKMBuakZJZGP5OMlycnoMpi7
	ETv17epcgy5ri258QgVy7hIGdJ6gaXSJqw3r6W7uIYPo0zkPnEp9huKXRb5Y5pLXwGNErV85dQq1b
	t05fjpUHZr+PlPj9/lMBn5Dk8GkxQ5lepUPVBU0yEJG4Lz9XyNe5XOQsp2roH/2pdUM4/t2YlM0bs
	u76VxBAjdHsiC+faPK19IX2luLkCgq3flAjyJtfeE9TxoL7yiwtYdBcKGCbsi9vpW4vOgmH6lvIjb
	9eE9/6kxBI/zC/k2Fu150Xm2Reu8g/qUCam8EPMZ8OAA89KiM1TyiX2BsYfqTwNBF9aDn75FjwHiZ
	aMOX2rzJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTbd-00072J-Rm; Tue, 26 May 2020 07:02:33 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTbI-00070y-Eh
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 07:02:25 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590476537; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=bxN1ySkS5OLFnpjDUyutSFYIlYJ92O/h8wsCXEUhy+Y=;
 b=wb7zlsGOCA7ybNDg6Dgob+o9oh0k/GifBo5yZhNHvVml+E4MSBiVhBiU1XgMz+hkqKPWNJaW
 /W2vZ7PwNS2WfMSsC/9Kfozfpu/BlXskC3T3w+NWnTYm4B28fsTDfsTifOvjIEI/ZlEDs9vU
 +KVYivew3mKMPpBg1qB0mKeV4KM=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 5eccbedcea0dfa490e60a2e7 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 26 May 2020 07:01:48
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 5E0A4C43391; Tue, 26 May 2020 07:01:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E5A78C433C6;
 Tue, 26 May 2020 07:01:46 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 26 May 2020 12:31:46 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCHv3 0/2] Add support for replicators which loses context on
 clock removal
In-Reply-To: <20200525161553.GA31527@xps15>
References: <cover.1590171891.git.saiprakash.ranjan@codeaurora.org>
 <20200525161553.GA31527@xps15>
Message-ID: <8b3592edb443a091891d00e0fa32debc@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_000219_557686_4336601C 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
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
Cc: devicetree-owner@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 2020-05-25 21:45, Mathieu Poirier wrote:
> Hi Sai,
> 
> On Sat, May 23, 2020 at 12:06:50AM +0530, Sai Prakash Ranjan wrote:
>> This series is mainly to add support for replicators
>> which lose context on removing AMBA clock like on SC7180
>> SoC where replicator in AOSS domain loses context.
>> 
> 
> I am good with this set but need a reviewed-by on the DT binding before 
> I can
> add it to my tree.  The same goes for your other set[1].
> 

Sure, let's wait for an ack from Rob and thanks for the reviews.

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
