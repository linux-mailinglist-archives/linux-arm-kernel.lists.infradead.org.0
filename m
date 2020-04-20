Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A441B14C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 20:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/dUuaimjHmczomYIkSFh6qgNNRueKjwA7126nMdemZ4=; b=uXYhW8pfzwoutFXpVUQoGSmcz
	CJm4gZPAZYkfzzCWzq8cpZhVyOkarplQ51XJlZeXK2DHW57FgWvNkuzVt8qYiXBgWd3hFjGfC88/2
	6NHK9IyItRPD5B05tYMl0YnXvuK2pxejDt6wLxQw7dzwof0l4+tnF0bsXdI5X8uLopsUa1+SD1iiC
	DJNxbiUsxBtE6c+AdQoB2NGAa2vHKoMo6VL9IBayu6CiPZb5hii/EvPHtTliDG6JcQerBTT6K+2A3
	uA+9MnBatLVwd2yp1ND/gCrXkD8ZGUbHnoXiDFZw9F/QaPHtnr5WpfNOZE8fvFLRt3RKoBEYy085h
	c+N1yPreA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQbHy-0002GX-JO; Mon, 20 Apr 2020 18:37:02 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQbHf-0006fG-7s
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 18:36:48 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587407804; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=7e3eo1fJ3V4W47xQX8u/gUmo/iNTfiSlIlfQaS2lzFU=;
 b=cNZFzpp7ZekkwGMpoFTmVUS2VuEy8ZSLZVrMT5eEDVH7DFr64mib5rjZ3Avy4E+QEvn3TB6i
 tlBpR+CKxBYVpTp/H4sNFVxsIm/OPhkbhGMyDearnX55z7OE5N4UB01d7TArN6sYBPfYLm7t
 YYBdSFENYeTuRBJJwSk41PJ0yXk=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9debb9.7f0d0f93e5e0-smtp-out-n02;
 Mon, 20 Apr 2020 18:36:41 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id EECBDC433BA; Mon, 20 Apr 2020 18:36:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DF97EC433F2;
 Mon, 20 Apr 2020 18:36:39 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 21 Apr 2020 00:06:39 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCHv3 2/6] iommu/arm-smmu: Allow client devices to select
 direct mapping
In-Reply-To: <b69fc30c-e6fb-70bf-4d6e-0d9b39404bdd@arm.com>
References: <cover.1587400573.git.saiprakash.ranjan@codeaurora.org>
 <d36f9c9ef3ef8dc84da02dfb160cd6846d2869fc.1587400573.git.saiprakash.ranjan@codeaurora.org>
 <b69fc30c-e6fb-70bf-4d6e-0d9b39404bdd@arm.com>
Message-ID: <0702f3186327b419ee38e4775c040052@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_113644_836550_25E59B98 
X-CRM114-Status: GOOD (  12.24  )
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

On 2020-04-20 22:27, Robin Murphy wrote:
> On 2020-04-20 5:42 pm, Sai Prakash Ranjan wrote:
>> From: Jordan Crouse <jcrouse@codeaurora.org>
>> 
>> Some client devices want to directly map the IOMMU themselves instead
>> of using the DMA domain. Allow those devices to opt in to direct
>> mapping by way of a list of compatible strings.
> 
> Neat and tidy :)
> 
> Reviewed-by: Robin Murphy <robin.murphy@arm.com>
> 
> Strictly, I think patch #3/6 should really have come before this one
> (with the header change moved accordingly), but don't bother resending
> just for that.
> 

Thanks, I have sent the updated version with this change as well
in addition to the commit msg update for modem requesting direct
mapping.

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
