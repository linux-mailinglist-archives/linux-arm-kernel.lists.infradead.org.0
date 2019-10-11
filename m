Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1F3D3CDE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 11:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YxJkASYi1LxDby+YjLw6kgtNmiWVGNkApVwYgYo0zKU=; b=GKxSCCcVua/iZNxQoQ+jR4fvh
	BP1TbxvVcJjsjT3lKaD/t6EdmGTNW2V6hUDo31Tgs7PpWEay0HANcAZ3SW5UtgvV74Ff8hnZd6Kpk
	f8GHq0tTPSnCiWTpQh5GOD21RXP6ByaXP5sQ+0cH8jBxa/ruEOtRyUUBKzf+YPxOECkakMkhRVcw/
	dTJeiAW6loX8APJpeueu4mEMQJSAcxKXyok7G8roHOm4NWk+D1ozuRPn9uYfoLN29EkriHvAuP3yd
	SOvwAC3RhhG3Dzn4bApfUmpCuBbqpphqzcePvRrtKDW+LpoWyAIz+WF7TW9qVKeHR/4cMV6ZTnlv6
	38RLeRwqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIrfc-0003ml-Hf; Fri, 11 Oct 2019 09:57:12 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIrfU-0003mT-MH
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 09:57:05 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 16E5D60AD9; Fri, 11 Oct 2019 09:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570787824;
 bh=JnjS0PdaYuZxMyImVfzpB6v+YK0lSs7Qjj6zZ8mu5ug=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hc0lJNRUgrNzZizxunvQjZftL+LGDTpvzwJ3Kfn0MqDtmkVV+Z6k+Q4U8HNnerJpg
 2dPhoWYMBlZ/VcSNeHaDLBp+l5y5bfQO8MSk6caGAgTK/hjNKx8Uwo0LhHI37XYzEH
 Z6tuQRpXiamfeHEV9ilvOnwLruTmjTzGtVsU+L2k=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id AF32E60AA3;
 Fri, 11 Oct 2019 09:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570787823;
 bh=JnjS0PdaYuZxMyImVfzpB6v+YK0lSs7Qjj6zZ8mu5ug=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ijIRGjZI1IRbXk6ygbmghvcWn8XIDXzXMI0VFzRO4FispR9/KRRj5urp3SjXmgDKE
 pjxDxpfPO+GMFpKrXbgBSpw39yIKCTUT1EaIpwHeqmr1fKqeDieBhIf9N22hMEVTWY
 2FguLdRCWdQlFgD6YMtZQIyPRvxlsdPxdveWBc0Y=
MIME-Version: 1.0
Date: Fri, 11 Oct 2019 15:27:03 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: Relax CPU features sanity checking on heterogeneous architectures
In-Reply-To: <7ef16e2a-b35c-0807-67be-c56dadb6fa66@free.fr>
References: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
 <7ef16e2a-b35c-0807-67be-c56dadb6fa66@free.fr>
Message-ID: <b5f2cd1c2e34a3440e7f456bff36ea3d@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_025704_752036_96C69063 
X-CRM114-Status: UNSURE (   6.73  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2019-10-11 14:49, Marc Gonzalez wrote:
> 
> Hello Sai,
> 
> Could you configure your webmail client to not wrap "long" lines?
> 
> Wrapping might break the patch, and the kernel logs would look better
> in their original form.
> 

Oh right, sorry did not see that. I use git send-email for patches, so 
no problem of wrapping in those cases.
Here I just used my webmail to compose the message and just pasted the 
diff, will take care of it in future.

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
