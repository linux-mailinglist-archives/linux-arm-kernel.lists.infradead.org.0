Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E8816423B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:33:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mxO0I/1jrrlvRoqfo/y3r9gnZlZ6TISrXn/4ohCG0VE=; b=Jli9VHXFRa6OjSI6dqHD7suAg
	YKOJlGUl2bahgriD9mc9Dg2FxeobHVfiPl7jHVxJeJq9/T+NmcxBG8/+u9i9XEYXz8q27+CR97Ecf
	5mDai9na7fcRlbCatvibxs4i0if6kyzDm8wMJ6v2xIU/8NPcHSKOX6tHMRU061HFpFuYCghxZ/HcH
	/q3oEsyx4tKaEGrdEiiAP8NPKPeiM75UMuFTnCH9j4joP7WVnwcwp12sCZsZaXEkBO+o9j4crO0Db
	5exNxKb/PiSz6qiPQicjdsWL9i5Ps5Xm6UXf3azrYMyCNc90SUKr9DjD4Kr1B+/w9xAWhTp1GJSqo
	6zfnQ0+0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Mfu-0002X8-Sc; Wed, 19 Feb 2020 10:33:50 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Mfk-0002Vg-Fy
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:33:42 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1582108420; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=rw6UHf0KTPLkHoH94qTywzRb5mw/2w3OWlPPBjvpPNw=;
 b=LycX8pjNY9DYfIl86xCiomj8yvGMeZ1bdmKgjHH3JTjnoGw6AzzQxCKsWMk5prAo37EaarSd
 UzjVTRGXJV+q9MhH1I85/ncreYQ0c0iqSB21NRo0u/hQTl4MnN+2GGHLyv7W+OVNaIfryfDc
 +lsbSfwweu9R2bA7Xq++CkHRECo=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4d0eff.7f54d13c78b8-smtp-out-n01;
 Wed, 19 Feb 2020 10:33:35 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 53BE2C447A3; Wed, 19 Feb 2020 10:33:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 75BA6C43383;
 Wed, 19 Feb 2020 10:33:34 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 19 Feb 2020 18:33:34 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 1/2] scsi: ufs: add required delay after gating
 reference clock
In-Reply-To: <1582103495.26304.42.camel@mtksdccf07>
References: <20200217093559.16830-1-stanley.chu@mediatek.com>
 <20200217093559.16830-2-stanley.chu@mediatek.com>
 <c6874825dd60ea04ed401fbd1b5cb568@codeaurora.org>
 <1581945168.26304.4.camel@mtksdccf07>
 <e518c4d1d94ec15e9c4c31c34a9e42d1@codeaurora.org>
 <1581946449.26304.15.camel@mtksdccf07>
 <56c1fc80919491d058d904fcc7301835@codeaurora.org>
 <a8cd5beee0a1e12a40da752c6cd9b5de@codeaurora.org>
 <1582103495.26304.42.camel@mtksdccf07>
Message-ID: <bbb0b0637d9667d4691a9a28f9988dea@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_023340_829691_4EDC9A0E 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: chun-hung.wu@mediatek.com, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, andy.teng@mediatek.com, jejb@linux.ibm.com,
 peter.wang@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, beanhuo@micron.com,
 bvanassche@acm.org, hongwus@codeaurora.org, asutoshd@codeaurora.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stanley,

On 2020-02-19 17:11, Stanley Chu wrote:
> Hi Can,
> 
> On Wed, 2020-02-19 at 10:35 +0800, Can Guo wrote:
> 
>> Since we all need this delay here, how about put the delay in the
>> entrence of ufshcd_setup_clocks(), before vops_setup_clocks()?
>> If so, we can remove all the delays we added in our vops since the
>> delay anyways delays everything inside ufshcd_setup_clocks().
>> 
> 
> Always putting the delay in the entrance of ufshcd_setup_clocks() may
> add unwanted delay for vendors, just like your current implementation,
> or some other vendors who do not want to disable the reference clock.
> 
> I think current patch is more reasonable because the delay is applied 
> to
> clock only named as "ref_clk" specifically.
> 
> If you needs to keep "ref_clk" in DT, would you consider to remove the
> delay in your ufs_qcom_dev_ref_clk_ctrl() and let the delay happens via
> common ufshcd_setup_clocks() only? However you may still need delay if
> call path comes from ufs_qcom_pwr_change_notify().
> 
> What do you think?
> 

I agree current change is more reasonable from what it looks, but the 
fact
is that I canont remove the delay in ufs_qcom_dev_ref_clk_ctrl() even 
with
this change. On our platforms, ref_clk in DT serves multipule purposes,
the ref_clk provided to UFS device is actually controlled in
ufs_qcom_dev_ref_clk_ctrl(), which comes before where this change kicks 
start,
so if I remove the delay in ufs_qcom_dev_ref_clk_ctrl(), this change 
cannot
provide us the correct delay before gate the ref_clk provided to UFS 
device.

> Always putting the delay in the entrance of ufshcd_setup_clocks() may
> add unwanted delay for vendors, just like your current implementation,
> or some other vendors who do not want to disable the reference clock.

I meant if we put the delay in the entrance, I will be able to remove
the delay in ufs_qcom_dev_ref_clk_ctrl(). Meanwhile, we can add proper
checks before the delay to make sure it is initiated only if ref_clk 
needs
to be disabled, i.e:

if(!on && !skip_ref_clk && hba->dev_info.clk_gating_wait_us)
     usleep_range();

Does this look better to you?

Anyways, we will see regressions with this change on our platforms, can 
we
have more discussions before get it merged? It should be OK if you go 
with
patch #2 alone first, right? Thanks.

Best regards,
Can Guo.

>> Meanwhile, if you want to modify the delay
>> (hba->dev_info.clk_gating_wait_us) for some reasons, say for specific
>> UFS devices, you still can do it in vops_apply_dev_quirks().
>> 
>> What do you say?
>> 
>> Thanks,
>> Can Guo.
> 
> Thanks,
> Stanley Chu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
