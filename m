Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE16D1B1415
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 20:12:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0vrnr+m2lelvMYhmiQ7CU7mTeh4DcO6eH/axjdsRvgo=; b=IQ4+VOYOQaMXtFKlvd8MzTdHA
	jR4Y9VfL2kPImzNlHIQs1ecRjWEDo/f1IYSTqb2ZNP3+FK8I/w8GntYA07+4lRknPGTvmDhRmZ/dE
	CsndCpCWDOxKCwHd5NHTkgah/R61CxE2y2PaE6zpR0LqqL9ehuIlmraQcS1H+w4mUfRp1E9Rey9Ia
	9F2a1+P61Iv2TPsEeT2qHAujxA28mrHzXqjassf8mTainVWGjtpQG3M3fdZyTZfxpsFvnTTiQuGlB
	Xb66QeMKTcsETwsy/5+MlUpgtrB532F8tmnpM5TJGBEmx3ilhT/QS/w81vXnN+lMgfaFuEgv2bN67
	d7L4PdS+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQau5-00048R-MN; Mon, 20 Apr 2020 18:12:21 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQask-0003uV-9z
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 18:11:06 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587406259; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=wos3Ak73xOXHzWR83+yksTYRpe5mwIS/buxq9eAwCz8=;
 b=KIRJV3AG0OwUiMU9kUTEux+IqTdRIvXs7SHX04WJI6HRRO46ncfrzv0RdvAvoUcC0UwyWAYT
 cysyB4yWXH3zwIk280qUlckdI0OrKsadPAbC+E3YJJ4gJMe2wYGCR6XiF6KpjGKA3XoWNhVx
 Z2nbDZklbWh6j2VuJWvbbmg3Q4E=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9de5a4.7f04e308ac38-smtp-out-n02;
 Mon, 20 Apr 2020 18:10:44 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 41B4FC44788; Mon, 20 Apr 2020 18:10:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5DCECC433D2;
 Mon, 20 Apr 2020 18:10:42 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 20 Apr 2020 23:40:42 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCHv3 4/6] iommu/arm-smmu-qcom: Request direct mapping for
 modem device
In-Reply-To: <49c8c377-961b-3f95-a99c-08528def4cb7@arm.com>
References: <cover.1587400573.git.saiprakash.ranjan@codeaurora.org>
 <509d88fbe7592aa15f867933c177b61bc7ba8efa.1587400573.git.saiprakash.ranjan@codeaurora.org>
 <49c8c377-961b-3f95-a99c-08528def4cb7@arm.com>
Message-ID: <98fa2940456ade2bd0998dfaa6386653@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_111104_947530_C029485E 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Evan Green <evgreen@chromium.org>, linux-kernel@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Jordan Crouse <jcrouse@codeaurora.org>,
 iommu@lists.linux-foundation.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Clark <robdclark@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 Sibi Sankar <sibis@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On 2020-04-20 22:39, Robin Murphy wrote:
> On 2020-04-20 5:42 pm, Sai Prakash Ranjan wrote:
>> From: Sibi Sankar <sibis@codeaurora.org>
>> 
>> Request direct mapping for modem on platforms which don't have 
>> TrustZone
>> (which programs the modem SIDs) to prevent the following global faults 
>> seen
>> on Cheza/Trogdor:
> 
> Not strictly true - it's patch #6/6 that prevents *those* faults (and
> these days the driver should be reporting unmatched streams a little
> more helpfully). This change would resolve the context faults and/or
> weird memory corruption that might result from applying patch #6 alone
> - this is the crazy thing where transactions sometimes go directly to
> DRAM round the side of the SMMU so we can never safely remap anything,
> right?
> 

True this doesnt prevent global faults, the fault details should go to 
patch6.
I'll update the commit msg something like below:

The Q6 modem sub-system has direct access to DDR through memnoc.
Also SMMU is not expected to provide access control/translation for 
these SIDs
(sandboxing of the modem is achieved through XPUs engaged using SMC 
calls).

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
