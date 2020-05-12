Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB20A1CFCDE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 20:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c9xMIe2UpqAcLp0dQ0HNpx15xYQDUSGf2di7CpLweuE=; b=Ty60p2+F6NpCKXWTPLjYFM2eG
	5XVh86ckUJ6JIUrdJl+2cMWWcXmcdvcMQHjCwGlqi5Oeyl0HQ7mcszYLuwkAVKyhUTLutzyn0xGiG
	4MLfBl0rRlbADp6EUaGA8Oa4yA2nMeoS0OgPK4mHTubWvI3nyILj18UmxmTZQMrlm2VgzUfyXtvr/
	HEhv6osyMTtRxblh7LHxUyeplY5nyzG4JPddUceLNgKaDR5mPCPNmPUO5y/Khl85ibQzFLsNLmM2T
	k2477tq28PomiJLiADRn+atZSV9nfgDtEiYe/BjIQl1+k95Zc1E3DfDDuw4divEOeVQHGuQLJ/PUF
	Hmek0OvKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYZN1-0007wE-9Q; Tue, 12 May 2020 18:11:11 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYZMr-0007uq-IS
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 18:11:04 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589307060; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=OO3R9jYg4r1wAHoA8hhGY1+VCtV/dK//JXy3OK5Qw9E=;
 b=tzPwkY/XPLzqyg7YJGLwFv46i0MD3+1lZgFVTbJQZhJ5OfgS0ts52puYTqVDkM2G5Dx2E/WP
 WtyhJZ7ceRcLwOYU1ZSl944SUtxA0rNoNwJOA8lZejsWiw7brx0YERkpf54qvlK2aVcPNdVQ
 Jbf7jdCTPBVK1dz+pxAIg33cbME=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ebae6b3.7f2f9c63a4c8-smtp-out-n02;
 Tue, 12 May 2020 18:10:59 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4119CC433BA; Tue, 12 May 2020 18:10:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from [192.168.8.150] (cpe-70-95-149-85.san.res.rr.com [70.95.149.85])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1684BC433F2;
 Tue, 12 May 2020 18:10:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1684BC433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=asutoshd@codeaurora.org
Subject: Re: [PATCH v2 4/4] scsi: ufs-mediatek: customize WriteBooster flush
 policy
To: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <20200509093716.21010-1-stanley.chu@mediatek.com>
 <20200509093716.21010-5-stanley.chu@mediatek.com>
 <635f91f6-3a27-ffdd-4021-67705d4063fc@codeaurora.org>
 <yq1v9l115us.fsf@oracle.com>
From: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Message-ID: <7d5f53eb-f642-3c8b-edf6-d4693ecb49a4@codeaurora.org>
Date: Tue, 12 May 2020 11:10:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <yq1v9l115us.fsf@oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_111101_673434_3472F219 
X-CRM114-Status: GOOD (  14.81  )
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
Cc: bvanassche@acm.org, linux-scsi@vger.kernel.org, andy.teng@mediatek.com,
 jejb@linux.ibm.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/12/2020 9:21 AM, Martin K. Petersen wrote:
> 
> Hi Asutosh!
> 
>> Patchset looks good to me.
>>
>> Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
> 
> When you want to approve an entire series, please respond to the cover
> letter email. Otherwise the kernel.org tooling will only record the tag
> for the individual patch you are responding to. In this case only patch
> 4 got tagged as reviewed in patchwork.
> 

Hi Martin
Sure - I'll keep this in mind.

Thanks,
Asutosh

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
