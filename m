Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62696156D82
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 03:01:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i0RxMHJHARYLreSRf81RizpUBVj9QtWaa5sOpiP9XXE=; b=GZwA/KwcZP2T/Qhl8fhbSRK8d
	eB0dDOV1VSWKz/EwgUXh+VKH8HkglP7nI8X9yF66BORGlb9Hn7+3p8v4gHPGLbUA6qIAt4C0hU/IU
	G/iHXpgyL5WDIH91KZlARZUB+TQb4M3i165L5fvSQ5TR1XpAalXEhzOxRixwcFfHu/LOPmCaEzeWH
	rTWbzodfdIgW2yUvQo87ywjyGF1vM0mh6nqrCnDDRtWGtiLLywpaGNT+OjY4Cgz3whIhe2i6JHVwM
	UypAIiHZJ+e+TTrBieNfG1r2yLFVNSg4CY/ZMRFb3J9BszT9errwSfJHCNNKCeXw7Rpam+xY1Fx1y
	X/GmrvCvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0yNY-0007D4-Lx; Mon, 10 Feb 2020 02:00:52 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0yNR-0005di-Q6
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 02:00:47 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581300046; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=kn1eCoX1vGFsUPSDIWx1LkICtUFdlC5DFGOw/o4zcls=;
 b=qXpPbmf/ROfS9ztv9xfqoNjt2pme1kd/fc0RtbaJWAxJkBkecFm+S+/gXj+UzR7APmkj1oTx
 RHJ5QSxi45iz4isV6VMD7+cvaHF2e/jkC7bJ/BY+dEcAPwcQaaRnLOoIyLTmfliUVHoeqvkC
 4MYMx0DmSUObmFxQx7sGyPwfvYk=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e40b949.7f39204587d8-smtp-out-n02;
 Mon, 10 Feb 2020 02:00:41 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id BC86AC4479C; Mon, 10 Feb 2020 02:00:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BDCF7C43383;
 Mon, 10 Feb 2020 02:00:40 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 10 Feb 2020 10:00:40 +0800
From: Can Guo <cang@codeaurora.org>
To: Avri Altman <Avri.Altman@wdc.com>
Subject: Re: [PATCH 5/7] scsi: ufs: Fix ufshcd_hold() caused scheduling while
 atomic
In-Reply-To: <MN2PR04MB69919F988AA4F1B7BD36408BFC1E0@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1581123030-12023-1-git-send-email-cang@codeaurora.org>
 <1581123030-12023-6-git-send-email-cang@codeaurora.org>
 <MN2PR04MB69919F988AA4F1B7BD36408BFC1E0@MN2PR04MB6991.namprd04.prod.outlook.com>
Message-ID: <c89901f4e7f2c7200d1aefe55e3c9fb4@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_180046_706687_AC21F15E 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
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
Cc: "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, Stanley Chu <stanley.chu@mediatek.com>,
 rnayak@codeaurora.org, saravanak@google.com, linux-scsi@vger.kernel.org,
 Venkat Gopalakrishnan <venkatg@codeaurora.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, nguyenb@codeaurora.org,
 open list <linux-kernel@vger.kernel.org>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>, salyzyn@google.com,
 Alim Akhtar <alim.akhtar@samsung.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Tomas Winkler <tomas.winkler@intel.com>, Bean Huo <beanhuo@micron.com>,
 kernel-team@android.com, Bart Van Assche <bvanassche@acm.org>,
 hongwus@codeaurora.org, asutoshd@codeaurora.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-09 15:48, Avri Altman wrote:
> You didn't address any of my comments to this patch.
> 
> Thanks,
> Avri

Replied in that thread.

Thanks,
Can Guo.

>> 
>> The async version of ufshcd_hold(async == true), which is only called
>> in queuecommand path as for now, is expected to work in atomic 
>> context,
>> thus it should not sleep or schedule out. When it runs into the 
>> condition
>> that clocks are ON but link is still in hibern8 state, it should bail 
>> out
>> without flushing the clock ungate work.
>> 
>> Signed-off-by: Can Guo <cang@codeaurora.org>
>> Reviewed-by: Hongwu Su <hongwus@codeaurora.org>
>> Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
>> Reviewed-by: Bean Huo <beanhuo@micron.com>
>> Reviewed-by: Stanley Chu <stanley.chu@mediatek.com>
>> 
>> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
>> index bbc2607..e8f7f9d 100644
>> --- a/drivers/scsi/ufs/ufshcd.c
>> +++ b/drivers/scsi/ufs/ufshcd.c
>> @@ -1518,6 +1518,11 @@ int ufshcd_hold(struct ufs_hba *hba, bool 
>> async)
>>                  */
>>                 if (ufshcd_can_hibern8_during_gating(hba) &&
>>                     ufshcd_is_link_hibern8(hba)) {
>> +                       if (async) {
>> +                               rc = -EAGAIN;
>> +                               hba->clk_gating.active_reqs--;
>> +                               break;
>> +                       }
>>                         spin_unlock_irqrestore(hba->host->host_lock, 
>> flags);
>>                         flush_work(&hba->clk_gating.ungate_work);
>>                         spin_lock_irqsave(hba->host->host_lock, 
>> flags);
>> --
>> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora
>> Forum,
>> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
