Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7971E28BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 19:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WmtrMI/FiksZlfAgiJ04yOfi65PtqO7UCiT5Wnpocp0=; b=VgOsOmKTWt+seFxDuzygulNiN
	oxZmBGZJha9SceL6qxw/Bp2dH569uIu9O9ZeyK7aeuYW+0f0mJ6ggYdtQHpHP9EyjQqNGi9mI2W4z
	Kx+qxL4FViJaRbkng+b7balUD4qDP0jJcSm3LTaSjXzPYVtbR1KKYxqjpiSRzisUjOiCWuwJZn6sN
	whPl63BLXCOifmtG6Gosq9A/xtGGGt5Y/zUOfLT7IeXMbanIBhOLmZO3QLHuUFu+7cGdPoxQ+C4NU
	EJzdEBfvFqo1XodofDuYV7IdBmobV4RX/KXdxoSmO8B/j+A+eJ995BLsLHvz/mqvqQeG4myBFJDK2
	uJc2cyC0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jddLB-00025o-Dg; Tue, 26 May 2020 17:26:13 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jddKw-000247-VK
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 17:26:03 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590513962; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=Im6hIGPpJqtxzbNyAwrxrzA8oUaUroHuS60646TlJzw=;
 b=qhKcNS80sACOUarsU5NEFM6LA72VIv5jG7u+qyKDbtkzXGwym4NpXohqluEPTq+Gg6ZVgh5y
 yOwTD9fY02uabGz32D8WIDUXE9nSwJIRIWyMO77V1+Oh9VFK30waUhIuaJWmhndmeUIu/6bA
 MCj4M6KlYEVuiXh4a25qa3FcmDY=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-west-2.postgun.com with SMTP id
 5ecd511837a454afcb5bf449 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 26 May 2020 17:25:44
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 61B0FC433A1; Tue, 26 May 2020 17:25:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [192.168.8.176] (cpe-70-95-149-85.san.res.rr.com [70.95.149.85])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 85926C433CA;
 Tue, 26 May 2020 17:25:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 85926C433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=asutoshd@codeaurora.org
Subject: Re: [PATCH v4 0/4] scsi: ufs: Fix WriteBooster and cleanup UFS driver
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 jejb@linux.ibm.com
References: <20200522083212.4008-1-stanley.chu@mediatek.com>
From: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Message-ID: <a18ed057-e35b-b1b9-9ce2-718d7c3961fd@codeaurora.org>
Date: Tue, 26 May 2020 10:25:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200522083212.4008-1-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_102602_237945_2B757D91 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Virtual_Global_UFS_Upstream@mediatek.com, bvanassche@acm.org,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/22/2020 1:32 AM, Stanley Chu wrote:
> Hi,
> 
> This patch set fixes some WriteBooster issues and do small cleanup in UFS driver
> 
> v3 -> v4
>    - Squash patch [4] and [5] (Asutosh)
>    - Fix commit message in patch [4]
> 
> v2 -> v3
>    - Introduce patch [5] to fix possible VCC power drain during runtime suspend (Asutosh)
> 
> v1 -> v2
>    - Remove dummy new line in patch [4] (Asutosh)
>    - Add more limitation to allow WriteBooster flush during Hibern8 in runtime-suspend. Now the device power mode is kept as Active power mode only if link is put in Hibern8 or Auto-Hibern8 is enabled during runtime-suspend (Asutosh)
> 
> Stanley Chu (4):
>    scsi: ufs: Remove unnecessary memset for dev_info
>    scsi: ufs: Allow WriteBooster on UFS 2.2 devices
>    scsi: ufs: Fix index of attributes query for WriteBooster feature
>    scsi: ufs: Fix WriteBooster flush during runtime suspend
> 
>   drivers/scsi/ufs/ufs-sysfs.c | 13 ++++-
>   drivers/scsi/ufs/ufs.h       |  2 +-
>   drivers/scsi/ufs/ufshcd.c    | 99 +++++++++++++++++++++++++-----------
>   drivers/scsi/ufs/ufshcd.h    |  3 +-
>   4 files changed, 82 insertions(+), 35 deletions(-)
> 

This set looks good to me.

Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
