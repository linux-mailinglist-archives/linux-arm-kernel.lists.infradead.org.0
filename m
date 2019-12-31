Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AA612D71D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 09:35:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b7aKjLIM87PpRd7DOy+zG0/cai/ZUC/J7O8CyuJqb/M=; b=LCzBP2v5rUTJuf0hiG3cfmaNA
	oKhK7WCxrsZp5zvFsCphnjlAlnK/iMmdKziwSc9bgriaQ8HfLvj8lp7AF06Z8CwDpquyAc1BL8imS
	quHXOQ6S+UEDQaLo0+5stxuustdbdAELz4rd6EM6XKezRtveFCLHMTaRpeEELSYMokMa5JZ8lg1kU
	WKNExf4EMp6KBQQkA9/863jdsmBTp9wmu6jXAgozWnat7uzgJSvGL1JwYW2DSHHSh+hUUUcrJpla5
	GXGIiP/MsN8PHahhOoPUjWhGMKvtD++qwX2q+vGVcMUn6JzbtJ0O2j9x5LBDRoGfqFLS5++PxyMmA
	dhg+7mDaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imCzn-0006Ek-Uu; Tue, 31 Dec 2019 08:35:19 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imCzf-0006Dm-4V
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 08:35:12 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577781310; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=/MyzgTAoW84poPoGQNDvx4+/Q3RCJgT0vSrB6UE39Ec=;
 b=exkC74FLhoPIh7u9ezBzFEgdW+Mlr9Y+BDcIQPWBxVsRXY6a28KR0ea8DK+z/G5MAx7hV7bA
 ek75JopirP6UbJtOjy4tX9WaoSkbYesuLkwweTg/BkLSBS1AgOaTTw7bJjDNBGQD25N+f0bO
 1bmI4Q8SGA227Gu0RK3KCc06kHw=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e0b083c.7fe01001b1b8-smtp-out-n03;
 Tue, 31 Dec 2019 08:35:08 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 8437AC4479C; Tue, 31 Dec 2019 08:35:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A3C10C433CB;
 Tue, 31 Dec 2019 08:35:06 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 31 Dec 2019 16:35:06 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 1/2] scsi: ufs: set device as default active power mode
 during initialization only
In-Reply-To: <1577778290.13164.45.camel@mtkswgap22>
References: <1577693546-7598-1-git-send-email-stanley.chu@mediatek.com>
 <1577693546-7598-2-git-send-email-stanley.chu@mediatek.com>
 <fd129b859c013852bd80f60a36425757@codeaurora.org>
 <1577754469.13164.5.camel@mtkswgap22>
 <836772092daffd8283a97d633e59fc34@codeaurora.org>
 <1577766179.13164.24.camel@mtkswgap22>
 <1577778290.13164.45.camel@mtkswgap22>
Message-ID: <44393ed9ff3ba9878bae838307e7eec0@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_003511_243996_021FBCC3 
X-CRM114-Status: GOOD (  17.30  )
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
Cc: martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, asutoshd@codeaurora.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 linux-scsi-owner@vger.kernel.org, subhashj@codeaurora.org,
 alim.akhtar@samsung.com, beanhuo@micron.com, pedrom.sousa@synopsys.com,
 bvanassche@acm.org, linux-arm-kernel@lists.infradead.org,
 matthias.bgg@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-31 15:44, Stanley Chu wrote:
> Hi Can,
> 
> On Tue, 2019-12-31 at 12:22 +0800, Stanley Chu wrote:
>> Hi Can,
>> 
>> 
>> > Hi Stanley,
>> >
>> > I see skipping ufshcd_set_ufs_dev_active() in ufshcd_probe_hba()
>> > if it is called from ufshcd_resume() path is the purpose here.
>> >
>> > If so, then ufshcd_set_dev_pwr_mode() would be called, meaning
>> > SSU command will be sent. Why is this SSU command needed to be
>> > sent after a full host reset and restore? Is ufshcd_probe_hba()
>> > not enough to make UFS device fully functional?
>> 
>> After resume (for both runtime resume and system resume), device power
>> mode shall be back to "Active" to service incoming requests.
>> 
>> I see two cases need device power mode transition during resume flow
>> 1. Device Power Mode = Sleep
>> 2. Device Power Mode = PowerDown
>> 
>> For 1, ufshcd_probe_hba() is not invoked during resume flow,
>> hba->curr_dev_pwr_mode = SLEEP, thus ufshcd_resume() can invoke
>> ufshcd_set_dev_pwr_mode() to change device power mode.
>> 
>> For 2, ufshcd_probe_hba() is invoked during resume flow, before this
>> fix, hba->curr_dev_pwr_mode will be set to ACTIVE (note that only this
>> flag is set as ACTIVE, but device may be still in PowerDown state if
>> device power is not fully shutdown or device HW reset is not executed
>> before resume), in the end, ufshcd_resume() will not invoke
>> ufshcd_set_dev_pwr_mode() to send SSU command to make device change 
>> back
>> to Active power mode.
>> 
>> But if device is fully reset before resume (not by current mainstream
>> driver), device can be already in "Active" power mode after power on
>> again during resume flow. In this case, it is OK to set
>> hba->curr_dev_pwr_mode as ACTIVE in ufshcd_probe_hba() and SSU command
>> is not necessary.
>> 
>> Thanks,
>> Stanley
> 
> I think currently the assumption in ufshcd_probe_hba() that "device
> shall be already in Active power mode" makes sense because many device
> commands will be sent to device in ufshcd_probe_hba() but device is not
> promised to handle those commands in PowerDown power mode according to
> UFS spec.
> 
> So, maybe always ensuring device being Active power mode before leaving
> ufshcd_probe_hba() is more reasonable. If so, I will drop this patch
> first.
> 
> Thanks so much for your reviews.
> 
> Happy new year!
> 
> Thanks,
> Stanley

Hi Stanley,

I missed this mail before I hit send. In current code, as per my 
understanding,
UFS device's power state should be Active after ufshcd_link_startup() 
returns.
If I am wrong, please feel free to correct me.

Due to you are almost trying to revert commit 7caf489b99a42a, I am just 
wondering
if you encounter failure/error caused by it.

Happy new year to you too!

Thanks,

Can Guo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
