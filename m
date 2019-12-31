Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6863012D6EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 09:06:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S3ZO5CzRbqyM+PkdFWWKVPZHOZdehE3ROfZKKuvToAk=; b=TYVSPt0r4/ljxqQJVtcSne8Uv
	UMGTVZRLVxNgrp4VA6CU2A4gEwr96icXGkCBdfO4W5rP0QAp0e1/NLQm65MWouLp696/GDQSTWgri
	WuGcGsllIqF+PZ1J10mdhf7GsP90jFZjIWdq9P7kID9ayofmOOb4e8lQkz+8ohD2kHY7K7T6Xoodf
	EmpwtGaMWpjgjHE3n9KPdggm3tbjmg0yC6z7rxdDQhfTxzZM7F4gVUvAC0MOCAtAz32QumkKr7JIQ
	IJu13Rx/aumWi2phf2OaK3CvN64r3Ks/fcjgGp9u3qrgUzsB558Rl9knS4wkAeb2y3ufIIOzmfFCU
	XrZhjbitQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imCXj-0004Gh-2B; Tue, 31 Dec 2019 08:06:19 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imCXY-0004FG-Dr
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 08:06:10 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577779566; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=BbUFBKLuGvpwFWTaBaOIbSVqQ9CkH2lY2UR83lDpcCo=;
 b=A/z+QOv5b5VEQ74tI7FZWr9bFLvrTgRYlgPYGpPAOk0HwdGVpvuEIfzpRghGzmjCD4jOlMsV
 Yu24I4jAMl2YQqKKn0Grd8FpvDhlajrjwrIOvnB0F+0aaw14HKaDyPYrlGwEgALCJkUENiXc
 t3KQS8iU6avfhp+GaMuf0YjBnE4=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e0b0168.7f89f30c46c0-smtp-out-n01;
 Tue, 31 Dec 2019 08:06:00 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 221D0C433A2; Tue, 31 Dec 2019 08:06:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 25D52C43383;
 Tue, 31 Dec 2019 08:05:59 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 31 Dec 2019 16:05:59 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 1/2] scsi: ufs: set device as default active power mode
 during initialization only
In-Reply-To: <1577766179.13164.24.camel@mtkswgap22>
References: <1577693546-7598-1-git-send-email-stanley.chu@mediatek.com>
 <1577693546-7598-2-git-send-email-stanley.chu@mediatek.com>
 <fd129b859c013852bd80f60a36425757@codeaurora.org>
 <1577754469.13164.5.camel@mtkswgap22>
 <836772092daffd8283a97d633e59fc34@codeaurora.org>
 <1577766179.13164.24.camel@mtkswgap22>
Message-ID: <cf94a0e8f8e0746ae5f8434631207ea4@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_000608_530944_E6FF86F8 
X-CRM114-Status: GOOD (  18.92  )
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

On 2019-12-31 12:22, Stanley Chu wrote:
> Hi Can,
> 
> 
>> Hi Stanley,
>> 
>> I see skipping ufshcd_set_ufs_dev_active() in ufshcd_probe_hba()
>> if it is called from ufshcd_resume() path is the purpose here.
>> 
>> If so, then ufshcd_set_dev_pwr_mode() would be called, meaning
>> SSU command will be sent. Why is this SSU command needed to be
>> sent after a full host reset and restore? Is ufshcd_probe_hba()
>> not enough to make UFS device fully functional?
> 
> After resume (for both runtime resume and system resume), device power
> mode shall be back to "Active" to service incoming requests.
> 
> I see two cases need device power mode transition during resume flow
> 1. Device Power Mode = Sleep
> 2. Device Power Mode = PowerDown
> 
> For 1, ufshcd_probe_hba() is not invoked during resume flow,
> hba->curr_dev_pwr_mode = SLEEP, thus ufshcd_resume() can invoke
> ufshcd_set_dev_pwr_mode() to change device power mode.
> 
> For 2, ufshcd_probe_hba() is invoked during resume flow, before this
> fix, hba->curr_dev_pwr_mode will be set to ACTIVE (note that only this
> flag is set as ACTIVE, but device may be still in PowerDown state if
> device power is not fully shutdown or device HW reset is not executed
> before resume), in the end, ufshcd_resume() will not invoke
> ufshcd_set_dev_pwr_mode() to send SSU command to make device change 
> back
> to Active power mode.

Hi Stanley,

Isn't below change fixing the problem you are saying above?
With it, after ufshcd_link_startup(), UFS device's power mode will
become Active anyways. Do you mean below change is not working properly
and you are removing it?

commit 7caf489b99a42a9017ef3d733912aea8794677e7
Author: subhashj@codeaurora.org <subhashj@codeaurora.org>
Date:   Wed Nov 23 16:32:20 2016 -0800

     scsi: ufs: issue link starup 2 times if device isn't active

     If we issue the link startup to the device while its UniPro state is
     LinkDown (and device state is sleep/power-down) then link startup
     will not move the device state to Active. Device will only move to
     active state if the link starup is issued when its UniPro state is
     LinkUp. So in this case, we would have to issue the link startup 2
     times to make sure that device moves to active state.

Thanks,

Can Guo

> 
> But if device is fully reset before resume (not by current mainstream
> driver), device can be already in "Active" power mode after power on
> again during resume flow. In this case, it is OK to set
> hba->curr_dev_pwr_mode as ACTIVE in ufshcd_probe_hba() and SSU command
> is not necessary.
> 
> Thanks,
> Stanley
> 
>> _______________________________________________
>> Linux-mediatek mailing list
>> Linux-mediatek@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
