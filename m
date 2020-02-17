Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E13161333
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 14:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+GzWOoaH34xWXuWM8BMZQ5iZxj+EnAGVIfqFk/mcImk=; b=LQtaCMv1Vt+XUlWieekBZzBj0
	w1lXIVLi+dCtq+v9ZtJYOrKZhPNcg/3fT7kYcaHTCec+T0m3G4rNig7S51CE4ieZsuojPGcEj267a
	GUH7SbYNqwe8lsozMWC3zjPV1qkEcXX8/j6VkvC9F27GyAZG7FOUKBIULuzVhmimlQRR2F8llMuCo
	xicVHogb7OkDNO7vOz57HpRhAicaMMxRIACzBZnRlZ7+ELRbv+9u1tBPXPDiCRh+86GhukCUfURyN
	h8KWfxmeq4oJhGKnKkpDcHLKVOZVVWsdn5cWK+Da00CaflKSo60wm4vS1m2qXGFdzGNY3jXEVMAnb
	xsqL2LoTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3gMg-0002V9-6j; Mon, 17 Feb 2020 13:23:10 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3gMU-0002SU-CS
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 13:23:02 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581945781; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=zYaEbtFkXfhmP+oRysQ8QVN5kHY6AaSc1zt8CAGAK7k=;
 b=K/4N2wIFx/uw6c0XwkQtLguXY5CoG2cEV0T+YaKt2jamR0D6CX6Fh9QghbRYQ40EmTf7AoEg
 VBI6lbfvxiWdJxay/qSv4tXOMnpWm3xK0+ATZx/VX0Md8XTCg+3Rm80YAO28tlLPUxkoMd3U
 pbH/EcNw8EpP1Zw3cl5upkiJKtI=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4a93aa.7f7ab6024228-smtp-out-n02;
 Mon, 17 Feb 2020 13:22:50 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E702DC447A0; Mon, 17 Feb 2020 13:22:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 512E8C4479D;
 Mon, 17 Feb 2020 13:22:49 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 17 Feb 2020 21:22:49 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 1/2] scsi: ufs: add required delay after gating
 reference clock
In-Reply-To: <1581945168.26304.4.camel@mtksdccf07>
References: <20200217093559.16830-1-stanley.chu@mediatek.com>
 <20200217093559.16830-2-stanley.chu@mediatek.com>
 <c6874825dd60ea04ed401fbd1b5cb568@codeaurora.org>
 <1581945168.26304.4.camel@mtksdccf07>
Message-ID: <e518c4d1d94ec15e9c4c31c34a9e42d1@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_052301_641866_D8BFBFAD 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 2020-02-17 21:12, Stanley Chu wrote:
> Hi Can,
> 
> 
>> >  			} else if (!on && clki->enabled) {
>> >  				clk_disable_unprepare(clki->clk);
>> > +				wait_us = hba->dev_info.clk_gating_wait_us;
>> > +				if (ref_clk && wait_us)
>> > +					usleep_range(wait_us, wait_us + 10);
>> 
>> Hi St,anley,
>> 
>> If wait_us is 1us, it would be inappropriate to use usleep_range() 
>> here.
>> You have checks of the delay in patch #2, but why it is not needed 
>> here?
>> 
>> Thanks,
>> Can Guo.
> 
> You are right. I could make that delay checking as common function so 
> it
> can be used here as well to cover all possible values.
> 
> Thanks for suggestion.
> Stanley

Hi Stanley,

One more thing, as in patch #2, you have already added delays in your
ufshcd_vops_setup_clocks(OFF, PRE_CHANGE) path, plus this delay here,
don't you delay for 2*bRefClkGatingWaitTime in ufshcd_setup_clocks()?
As the delay added in your vops also delays the actions of turning
off all the other clocks in ufshcd_setup_clocks(), you don't need the
delay here again, do you agree?

Thanks,
Can Guo.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
