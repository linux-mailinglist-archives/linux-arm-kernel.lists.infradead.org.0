Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6991C8E28
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xMSSUvdjWde4Hi5IxHA+Gd5R8M1v+YjVdCkvuu9XhtU=; b=JaLZhcrd6dCH8l0gApFjBgmI8
	YRHHKhpgZVf/7Cmwd+vopeieOU/eg1DMoAxrBGbrR7xFO7BDeB/RhD1HaWS2zdC60dXd/8JuWCaXH
	6s6KPJ3NlkH9zZzAIUTrWEdhkZ82ghCQA18KcDeMmY+aIGTHQwwpUQyGZ8wxzzNObwLVwislSk5NT
	70n2Uv4/TrpExCsZ6T8d9IK5JMg2qlCjOy5J09vdwsTVssWjuPwwrvg19n+euuV03WsX1Vjn8RCE6
	QfqI6sxbQAUnZblXi5qqVttCmbLQQ1U0hF7vyOoc6KvHnA9I+W1Zk7Z4gbFLwVhUdF0xqkZQE5lom
	2L513ANYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhHz-0007Vj-4e; Thu, 07 May 2020 14:14:15 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhHq-0007Ud-6N
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:14:10 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588860845; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=ouV/sAAm+HHkNw8+tVJPzvplbCTaOzR2TqpfgCh2bos=;
 b=muzp5wL1g41xoOus3wWnmYKhW0h9V7uptZtbysbt/EeY7D6j2Lr1gtilEDFzyAlfFVMEnpD7
 LGRbI67Xu0ZhkwNl2Y+sZ8BoursWCgZ+gRkb5V76LP5WfM+Y/0MKQH1GtKr4RxhLQZquAOQp
 NPRDyFkq1Fgf7fP6K/w7PxbBg7c=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb417ab.7f82d0ca66f8-smtp-out-n05;
 Thu, 07 May 2020 14:14:03 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AC04EC433D2; Thu,  7 May 2020 14:14:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: sibis)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DC865C433F2;
 Thu,  7 May 2020 14:14:01 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 07 May 2020 19:44:01 +0530
From: Sibi Sankar <sibis@codeaurora.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCHv4 4/6] iommu/arm-smmu-qcom: Request direct mapping for
 modem device
In-Reply-To: <20200507130210.GB31783@willie-the-truck>
References: <cover.1587407458.git.saiprakash.ranjan@codeaurora.org>
 <8ef5d93c74f5cd9e4a6edab86d1d46efbf3aa038.1587407458.git.saiprakash.ranjan@codeaurora.org>
 <20200507130210.GB31783@willie-the-truck>
Message-ID: <f41beaa18f0ba49c3c6f7552291a0641@codeaurora.org>
X-Sender: sibis@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_071406_299496_58EC8189 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: linux-kernel-owner@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-kernel@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, iommu@lists.linux-foundation.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Matthias Kaehlcke <mka@chromium.org>, Evan Green <evgreen@chromium.org>,
 linux-arm-msm@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey WIll,

On 2020-05-07 18:32, Will Deacon wrote:
> On Tue, Apr 21, 2020 at 12:03:52AM +0530, Sai Prakash Ranjan wrote:
>> From: Sibi Sankar <sibis@codeaurora.org>
>> 
>> The Q6 modem sub-system has direct access to DDR through memnoc.
>> Also SMMU is not expected to provide access control/translation
>> for these SIDs (sandboxing of the modem is achieved through XPUs
>> engaged using SMC calls). So request direct mapping for modem on
>> platforms which don't have TrustZone.
> 
> The Z7 space rocket framework has limited access to water through 
> BROADCHAN.
> Also, this commit message really sucks. So please can you rewrite it in 
> a
> way that makes sense to people outside of your office?

lol, sure I'll re-word ^^ tday

> 
> Will

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
