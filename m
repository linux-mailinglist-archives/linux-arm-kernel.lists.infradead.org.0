Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055F5183785
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:27:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Oc6bH78Pe67c8QJJciiBLnRx//REKIpXPEgEnwsnyvc=; b=JC9IiPkxF39HXyq4aGQMPw9p0
	VgOVlat9t8Ts1uj8h1giU7x9jMhd+mv6a/WOgdnQYsF0f9HakT/+bkf2ByYe+IYzdaLiWQKqhSFOE
	Fd6AdpyUkabW0/v+6AxNmJdYVWJG4i5dQJc1wNE4BFMjuA3ccznAgxSWRI9qDwDc/QXGLmDRWQwgg
	9Kv6kyPRmm+UIrlCWbsNybHzwKYsuvewZCbEE/USS0Btej0o2BkO1yfhgl5cCwDdPqfxbsKZ3kIGR
	jq2Y0p5WWan+2EzubCgfT/Jdc5FCQ6B4DSmH64e9cea0AjkWYHhruTdy7VCg51MWUNN4v0tyrSIB8
	JQJzu2TEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRcW-0006g3-9d; Thu, 12 Mar 2020 17:27:44 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRcL-0006f2-FZ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 17:27:34 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1584034052; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=sEACIl73HriXGhDAU2H2q10BwiBheQrnYjwTuFhyhEA=;
 b=P51lyZ83bk0dlRvkkEnWrSaFCUy1TdkrscGPtu1Oyt06OgflRXAJ4A7tevPy7wXAO0kHfVR3
 N2uDX3TpzZGslIKaRazGyi5ITQNMhmCqB21P1aPezLG+Tmr4SVY6atirhTGCljf8Q80ItFmr
 VlC2Ezd0vlpMeJhing/rFv0tRIA=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e6a7103.7f220c311030-smtp-out-n03;
 Thu, 12 Mar 2020 17:27:31 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 05BADC432C2; Thu, 12 Mar 2020 17:27:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.46.161.159] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3E66EC43637;
 Thu, 12 Mar 2020 17:27:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3E66EC43637
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=asutoshd@codeaurora.org
Subject: Re: [PATCH v2 1/8] scsi: ufs: fix uninitialized tx_lanes in
 ufshcd_disable_tx_lcc()
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 jejb@linux.ibm.com
References: <20200312110908.14895-1-stanley.chu@mediatek.com>
 <20200312110908.14895-2-stanley.chu@mediatek.com>
From: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Message-ID: <cadc9e14-f990-6103-ee73-578d4a28ba1a@codeaurora.org>
Date: Thu, 12 Mar 2020 10:27:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200312110908.14895-2-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_102733_586225_2256AD10 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 3/12/2020 4:09 AM, Stanley Chu wrote:
> In ufshcd_disable_tx_lcc(), if ufshcd_dme_get() or ufshcd_dme_peer_get()
> get fail, uninitialized variable "tx_lanes" may be used as unexpected lane
> ID for DME configuration.
> 
> Fix this issue by initializing "tx_lanes".
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>

>   drivers/scsi/ufs/ufshcd.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index 5698f1164a5e..314e808b0d4e 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -4315,7 +4315,7 @@ EXPORT_SYMBOL_GPL(ufshcd_hba_enable);
>   
>   static int ufshcd_disable_tx_lcc(struct ufs_hba *hba, bool peer)
>   {
> -	int tx_lanes, i, err = 0;
> +	int tx_lanes = 0, i, err = 0;
>   
>   	if (!peer)
>   		ufshcd_dme_get(hba, UIC_ARG_MIB(PA_CONNECTEDTXDATALANES),
> 


-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
