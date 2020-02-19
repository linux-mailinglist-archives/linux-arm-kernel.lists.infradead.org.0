Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02649163A45
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 03:35:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OhPXwzihnt7aaie5/1bif1gLSIzp0VvePgFRkcbb15g=; b=GG1wXiL2ebF9tHQLi8g8jwhaZ
	UDlAG8Jv8+ESC53cKgZpea8dLUKvuSgk73O4eyKhLX+xrJ4eaHCuxPaGgXJ/D34VKiu1uGMqECDiX
	ktr/CoNxmWL26PUdWC+tcmSuGRDCjqDaoPShM9yT1kyJlLFRl/JfClJJuPQCz1d0feEL8yJCdqpOz
	dzjevd+hEposJM02Vi6qMkMNrejLeqCTRy7SqacW3DxTRvFEcbLt8ohpZilvnpyPcMuQmBbpWlcF7
	QTn86fHeqo5f7HFPyvKQVjSQVOtBwGGRnQfwVj9tUpDRqCU7p5Dhr7CgVuPWPJ2AhhrF6NG4Sdlub
	9v1CrRpHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4FD9-0000VE-Nx; Wed, 19 Feb 2020 02:35:39 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4FD0-0000UW-Gr
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 02:35:32 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1582079730; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=jXPj6BmmHK1fbvzmEuD+DaWJ8U2v+ztHn2qwHyzklAE=;
 b=ah/Hsted3BcoScRqtNcbtvKBsNOEk43E9EmsqFNr4Y3/Nwp57hNbg7msEzQPVuzpd9ztIEuJ
 LN0CHFcenaEimhADiPVbEXtRKt44bW76WkRwKkA08J5YYj+6ua5mhXVxrzsIFlkRFTl4vp8v
 UDdZj25KIgwGQMznDWES6qb7JW8=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4c9ef1.7f2ecfa45d18-smtp-out-n02;
 Wed, 19 Feb 2020 02:35:29 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 26925C43383; Wed, 19 Feb 2020 02:35:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 90523C433A2;
 Wed, 19 Feb 2020 02:35:27 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 19 Feb 2020 10:35:27 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 1/2] scsi: ufs: add required delay after gating
 reference clock
In-Reply-To: <56c1fc80919491d058d904fcc7301835@codeaurora.org>
References: <20200217093559.16830-1-stanley.chu@mediatek.com>
 <20200217093559.16830-2-stanley.chu@mediatek.com>
 <c6874825dd60ea04ed401fbd1b5cb568@codeaurora.org>
 <1581945168.26304.4.camel@mtksdccf07>
 <e518c4d1d94ec15e9c4c31c34a9e42d1@codeaurora.org>
 <1581946449.26304.15.camel@mtksdccf07>
 <56c1fc80919491d058d904fcc7301835@codeaurora.org>
Message-ID: <a8cd5beee0a1e12a40da752c6cd9b5de@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_183530_627660_B8E45BC1 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, asutoshd@codeaurora.org,
 bvanassche@acm.org, linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stanely,

On 2020-02-17 21:42, Can Guo wrote:
> On 2020-02-17 21:34, Stanley Chu wrote:
>> Hi Can,
>> 
>> On Mon, 2020-02-17 at 21:22 +0800, Can Guo wrote:
>>> On 2020-02-17 21:12, Stanley Chu wrote:
>>> > Hi Can,
>>> >
>>> >
>>> >> >  			} else if (!on && clki->enabled) {
>>> >> >  				clk_disable_unprepare(clki->clk);
>>> >> > +				wait_us = hba->dev_info.clk_gating_wait_us;
>>> >> > +				if (ref_clk && wait_us)
>>> >> > +					usleep_range(wait_us, wait_us + 10);
>>> >>
>>> >> Hi St,anley,
>>> >>
>>> >> If wait_us is 1us, it would be inappropriate to use usleep_range()
>>> >> here.
>>> >> You have checks of the delay in patch #2, but why it is not needed
>>> >> here?
>>> >>
>>> >> Thanks,
>>> >> Can Guo.
>>> >
>>> > You are right. I could make that delay checking as common function so
>>> > it
>>> > can be used here as well to cover all possible values.
>>> >
>>> > Thanks for suggestion.
>>> > Stanley
>>> 
>>> Hi Stanley,
>>> 
>>> One more thing, as in patch #2, you have already added delays in your
>>> ufshcd_vops_setup_clocks(OFF, PRE_CHANGE) path, plus this delay here,
>>> don't you delay for 2*bRefClkGatingWaitTime in ufshcd_setup_clocks()?
>>> As the delay added in your vops also delays the actions of turning
>>> off all the other clocks in ufshcd_setup_clocks(), you don't need the
>>> delay here again, do you agree?
>> 
>> MediaTek driver is not using reference clocks named as "ref_clk" 
>> defined
>> in device tree, thus the delay specific for "ref_clk" in
>> ufshcd_setup_clocks() will not be applied in MediaTek platform.
>> 
>> This patch is aimed to add delay for this kind of "ref_clk" used by 
>> any
>> future vendors.
>> 
>> Anyway thanks for the reminding : )
>> 
>>> 
>>> Thanks,
>>> Can Guo.
>> 
>> 
>> Thanks,
>> Stanley
> 
> Hi Stanley,
> 
> Then we are unluckily hit by this change. We have ref_clk in DT, thus
> this change would add unwanted delays to our platforms. but still we
> disable device's ref_clk in vops. :)
> 
> Could you please hold on patch #1 first? I need sometime to have a
> dicussion with my colleagues on this.
> 
> Thanks.
> Can Guo.

Since we all need this delay here, how about put the delay in the
entrence of ufshcd_setup_clocks(), before vops_setup_clocks()?
If so, we can remove all the delays we added in our vops since the
delay anyways delays everything inside ufshcd_setup_clocks().

Meanwhile, if you want to modify the delay
(hba->dev_info.clk_gating_wait_us) for some reasons, say for specific
UFS devices, you still can do it in vops_apply_dev_quirks().

What do you say?

Thanks,
Can Guo.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
