Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0892C1316E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 18:34:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BW306HwkdNVn1J2Dd9f48j6F1NY81yl3obJ2tSGFBjs=; b=t6RRLnq9yLgumM8sJdlb244HQ
	SLgeg3yEmCj6uRyhW6wcK0jwYv1mgEBO1yj5ShJ4U1CX+mXy4qa2QU4Wj2YruPJP9LJZ1R9O7G25I
	O14WLi7+Y72H15WhVkYkIOud1M2RgBU0uIhDqGTqKHA6ud211cODc6HbCj2Y0wv9kAUdrGQOlGgDu
	xNJWaTGiVixTuPg4usxruvuSH1CjbEPI2wxlrm7PaFr0/XX0cMx2O1LUO4pc/t2W1c1YhpzPnyffv
	xTG/Lo1RGho+73Dc+X9l9uXvZvzWwqIK7eVGTArB/A0KHGtv7A7nz45i0WsIiW3N71HPs7zFNLPsm
	GM1Iz4PQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioWGg-0006zr-Ij; Mon, 06 Jan 2020 17:34:18 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWGY-0006yl-NG
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 17:34:12 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578332050; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=LtY77c4ckIl8xeGO5RUZJ/girLgK8v2bv5Hi6fr6xIs=;
 b=lLPicAf/WzfMQbZ1Ktx8CcZKyfBYLb/cwpF4SlvTbFScaS2QcZsOcRwcOb7uvPbyszARmeJa
 7IgpXhlKbE3+iJ8fQXxcbuUGYsKilEsNikncsqBzXHhCdsP3+E+UwC2ipLaSPyPUb1wWzlUb
 HQWUF5WPQqkvNVr33OErKnsDdJE=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e136f8f.7f9b41984030-smtp-out-n01;
 Mon, 06 Jan 2020 17:34:07 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id ADF46C433A2; Mon,  6 Jan 2020 17:34:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BC4CAC43383;
 Mon,  6 Jan 2020 17:34:05 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 06 Jan 2020 09:34:05 -0800
From: asutoshd@codeaurora.org
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 1/3] scsi: ufs: fix empty check of error history
In-Reply-To: <1578147968-30938-2-git-send-email-stanley.chu@mediatek.com>
References: <1578147968-30938-1-git-send-email-stanley.chu@mediatek.com>
 <1578147968-30938-2-git-send-email-stanley.chu@mediatek.com>
Message-ID: <926596b3823333bd8d31aed8630509de@codeaurora.org>
X-Sender: asutoshd@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_093410_827459_54D7A078 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
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
Cc: linux-scsi-owner@vger.kernel.org, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, andy.teng@mediatek.com, jejb@linux.ibm.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, bvanassche@acm.org,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-04 06:26, Stanley Chu wrote:
> Currently checking if an error history element is empty or
> not is by its "value". In most cases, value is error code.
> 
> However this checking is not correct because some errors or
> events do not specify any values in error history so values
> remain as 0, and this will lead to incorrect empty checking.
> 
> Fix it by checking "timestamp" instead of "value" because
> timestamp will be always assigned for all history elements
> 
> Cc: Alim Akhtar <alim.akhtar@samsung.com>
> Cc: Asutosh Das <asutoshd@codeaurora.org>
> Cc: Avri Altman <avri.altman@wdc.com>
> Cc: Bart Van Assche <bvanassche@acm.org>
> Cc: Bean Huo <beanhuo@micron.com>
> Cc: Can Guo <cang@codeaurora.org>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>  drivers/scsi/ufs/ufshcd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index 1b97f2dc0b63..bae43da00bb6 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -385,7 +385,7 @@ static void ufshcd_print_err_hist(struct ufs_hba 
> *hba,
>  	for (i = 0; i < UFS_ERR_REG_HIST_LENGTH; i++) {
>  		int p = (i + err_hist->pos) % UFS_ERR_REG_HIST_LENGTH;
> 
> -		if (err_hist->reg[p] == 0)
> +		if (err_hist->tstamp[p] == 0)
>  			continue;
>  		dev_err(hba->dev, "%s[%d] = 0x%x at %lld us\n", err_name, p,
>  			err_hist->reg[p], ktime_to_us(err_hist->tstamp[p]));

Looks good to me.

Reviewed by:- Asutosh Das <asutoshd@codeaurora.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
