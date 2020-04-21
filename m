Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F471B1E65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 07:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a9RvH9TlNoBIl35rqCVA+3ycPqjR/2H2aw7tgqSDlKk=; b=M79py8KEhDHuKKjxYbUw2r85D
	riX2tB7ivEuUy5CjE75uv5vw6SfZ47Jj3XJvOaXo3H9IPL4ucPYoBWswKiEuiVgJq9kJzwUeFrdll
	tKpq/oV0G/J56mFcNX70sm48a7jP64CKuMCMi1LgWUn8tinRGICJlyMNmBCWx3seqBN5mzHNLSO+l
	15hy6ZpTaASO00WK6cnElcGmGgYscLjZVHx9RukRp6RphDPjVHKtXsghgcdrqnfFi10tD9/LlXG4r
	72kY3RSM9c8HPuAK6ml+w+kXJcRJd3wn6SFwAq3lvNylJYbFygSMjlAVGU80eVPCNHtaOhNyP4hT9
	YET9ZQrUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQlpw-000293-9p; Tue, 21 Apr 2020 05:52:48 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQlpm-000274-52
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 05:52:39 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587448358; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=1Jww1SPgDxhs8SrKwoOjrf0hHGMsbbkuAez4BNaNiOk=;
 b=bJ/RKTg3/iu5ckjdFDxYhuJcvsqqjwMDNLTUKnoAvbQ1filMh8foNw5gLLjWeC0pqFyrJ/jC
 sNOPrlBIBkCH21NVDOuFYi0EAB5tsJtYIaF5UiTD/8q5QmbE+rZQh4ELGlCjOTFiWLsOuuup
 8vohvXkvNuDQXWVKMg8cEcLipNE=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9e8a17.7f3ea73657a0-smtp-out-n04;
 Tue, 21 Apr 2020 05:52:23 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 79C15C433BA; Tue, 21 Apr 2020 05:52:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A85C2C433CB;
 Tue, 21 Apr 2020 05:52:21 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 21 Apr 2020 13:52:21 +0800
From: Can Guo <cang@codeaurora.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v6 01/10] scsi: ufs: add quirk to fix mishandling
 utrlclr/utmrlclr
In-Reply-To: <20200417175944.47189-2-alim.akhtar@samsung.com>
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181008epcas5p460840c01c2c09ce1a69e83005b4bddbe@epcas5p4.samsung.com>
 <20200417175944.47189-2-alim.akhtar@samsung.com>
Message-ID: <a5410ec9a1f72c01f738bbcb911cc7b8@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_225238_260014_258F3DC5 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-18 01:59, Alim Akhtar wrote:
> In the right behavior, setting the bit to '0' indicates clear and '1'
> indicates no change. If host controller handles this the other way,
> UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR can be used.
> 
> Signed-off-by: Seungwon Jeon <essuuj@gmail.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>

Reviewed-by: Can Guo <cang@codeaurora.org>

> ---
>  drivers/scsi/ufs/ufshcd.c | 11 +++++++++--
>  drivers/scsi/ufs/ufshcd.h |  5 +++++
>  2 files changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index 698e8d20b4ba..3655b88fc862 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -645,7 +645,11 @@ static inline int ufshcd_get_tr_ocs(struct
> ufshcd_lrb *lrbp)
>   */
>  static inline void ufshcd_utrl_clear(struct ufs_hba *hba, u32 pos)
>  {
> -	ufshcd_writel(hba, ~(1 << pos), REG_UTP_TRANSFER_REQ_LIST_CLEAR);
> +	if (hba->quirks & UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR)
> +		ufshcd_writel(hba, (1 << pos), REG_UTP_TRANSFER_REQ_LIST_CLEAR);
> +	else
> +		ufshcd_writel(hba, ~(1 << pos),
> +				REG_UTP_TRANSFER_REQ_LIST_CLEAR);
>  }
> 
>  /**
> @@ -655,7 +659,10 @@ static inline void ufshcd_utrl_clear(struct
> ufs_hba *hba, u32 pos)
>   */
>  static inline void ufshcd_utmrl_clear(struct ufs_hba *hba, u32 pos)
>  {
> -	ufshcd_writel(hba, ~(1 << pos), REG_UTP_TASK_REQ_LIST_CLEAR);
> +	if (hba->quirks & UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR)
> +		ufshcd_writel(hba, (1 << pos), REG_UTP_TASK_REQ_LIST_CLEAR);
> +	else
> +		ufshcd_writel(hba, ~(1 << pos), REG_UTP_TASK_REQ_LIST_CLEAR);
>  }
> 
>  /**
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index 6ffc08ad85f6..071f0edf3f64 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -518,6 +518,11 @@ enum ufshcd_quirks {
>  	 * ops (get_ufs_hci_version) to get the correct version.
>  	 */
>  	UFSHCD_QUIRK_BROKEN_UFS_HCI_VERSION		= 1 << 5,
> +
> +	/*
> +	 * Clear handling for transfer/task request list is just opposite.
> +	 */
> +	UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR		= 1 << 6,
>  };
> 
>  enum ufshcd_caps {
> 
> base-commit: 8f3d9f354286745c751374f5f1fcafee6b3f3136

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
