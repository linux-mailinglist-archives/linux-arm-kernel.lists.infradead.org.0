Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2225C12A6B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 09:19:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xOwc9zlGrBMCzpsZ27VK2ghEdOPiSjzA8DOdNH7tfR8=; b=sM+qXZaa8FXj5F4qPHFNjm3FT
	5FeRFTJXZzEMf0tHRivcSUmZAD+GPqAOdF6sLb77s7ksIrTFzFX1LHJO3fZonNjsVO/zXMPvtZ0Dr
	AIA02rUPzNOq3HeMcG5977Ru5im02mXtO5ktp5/SFUQIb261iorlPLQ5rylYwDyvhoDuEHhmVqSdi
	3kFAZaDDk2F6z9Clf6KEVFNgX7OObn7O2A5TxbwMLfQwpwS6dURdTrWAAGHpq0XiOemW2u2vJrl8Q
	NhhM95nq8DqT/DcoGzSiznIOn2ntyLBRcdPaWa0xg57/IICQGcYFnkEpC1bJSHHYXMMX9hGEudaT+
	IAeLz5Kiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik1sf-0002zz-Pn; Wed, 25 Dec 2019 08:18:57 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik1sT-0002xn-5Q
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 08:18:46 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577261921; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=RiSbEYGAd8tj1/i8Rgfcv4ZB+PqlDH70iICtBq7Oqs8=;
 b=Y8WfRtI1bFPlfi2TyKByKH6+ZVmDndy10bsuSL1ne59lgmJcuQQhhfMy0nCG9E35cxnvRUEJ
 dGy3JDRl21fmTeS8QXPGY8XlLB26u4YjhM1Cw2r/GTrzAL/L7aelZOx6siBFmah1iCaQB2x2
 860xyT5NMb4+c0RB4M/KwwQp3bc=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e031b5b.7fc28e2781b8-smtp-out-n01;
 Wed, 25 Dec 2019 08:18:35 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 439B6C4479F; Wed, 25 Dec 2019 08:18:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 90274C433CB;
 Wed, 25 Dec 2019 08:18:34 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 25 Dec 2019 16:18:34 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 2/2] scsi: ufs: use ufshcd_vops_dbg_register_dump for
 vendor specific dumps
In-Reply-To: <1577192466-20762-3-git-send-email-stanley.chu@mediatek.com>
References: <1577192466-20762-1-git-send-email-stanley.chu@mediatek.com>
 <1577192466-20762-3-git-send-email-stanley.chu@mediatek.com>
Message-ID: <bcd1f1aa6bcc94951f1f52de9d4b0e38@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_001845_264290_A82190D4 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, pedrom.sousa@synopsys.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-24 21:01, Stanley Chu wrote:
> We already have ufshcd_vops_dbg_register_dump() thus all
> "hba->vops->dbg_register_dump" references can be replaced by it.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>  drivers/scsi/ufs/ufshcd.c |    3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index b6b9665..1ac9272 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -428,8 +428,7 @@ static void ufshcd_print_host_regs(struct ufs_hba 
> *hba)
> 
>  	ufshcd_print_clk_freqs(hba);
> 
> -	if (hba->vops && hba->vops->dbg_register_dump)
> -		hba->vops->dbg_register_dump(hba);
> +	ufshcd_vops_dbg_register_dump(hba);
>  }
> 
>  static

Reviewed-by: Can Guo <cang@codeaurora.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
