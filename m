Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E77012D5B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 03:13:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3K02BgZfHbI3wWKgqZgMtKUgz/OYNA/FLNv7RqE+2HA=; b=IIt2AbdloR+mUxjYctFW6yQ7+
	TM0de3yFvHyj4asU10p6Z2DgimvsiM62caYHaOMVsoaOIkZHA3R0pzox44Ho/0HbPtyEGH4VYzgTO
	zU6dD8XnEkeKrvbufNpP+GT1Gn+P0+nDtQz2t/2Ey1DnsN/wGzfKSCEdLjiCwqey8HQXj0HChfDuu
	ClWsRER1vE0OTF9w15nYbtLOny7W0oyS8yn8n5KrtWbHsK7CS9SKAw1DSCb/8n3BxT26WhYdUMBvh
	dqzLWPokSdW0bG0fuJdm2Cs/bGbc4HQHkDw7U68ypxyR4wRwtw9YmtUBNZGhEt4sp5/v0sRt5nvjp
	WMxfyjK2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im72c-0001gJ-Vl; Tue, 31 Dec 2019 02:13:51 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im72Q-0001ey-Kf
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 02:13:40 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577758419; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=Jhy+WJImFEcoO6HBDQ7TVinBKkDR7LQeAKpQxrPTrnQ=;
 b=jjjPD5VZXd7EJ18o8Bi4UnZklngqTtIc1fak+bulYfetc8M0lrb0n0XDAtEyFEl9AQtns5rh
 /UbErl0mjlOe1m3fOCgEDu03i6j+ey+Ma8R84wRk73lpJEr840fdZZDW4EPnDSIj6KUPu88R
 IK1AaP81qrEJuFAxX8KrGsJsMVI=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e0aaec9.7f5cdbd8e0a0-smtp-out-n03;
 Tue, 31 Dec 2019 02:13:29 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 54736C4479F; Tue, 31 Dec 2019 02:13:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 900A1C43383;
 Tue, 31 Dec 2019 02:13:27 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 31 Dec 2019 10:13:27 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 1/2] scsi: ufs: set device as default active power mode
 during initialization only
In-Reply-To: <1577754469.13164.5.camel@mtkswgap22>
References: <1577693546-7598-1-git-send-email-stanley.chu@mediatek.com>
 <1577693546-7598-2-git-send-email-stanley.chu@mediatek.com>
 <fd129b859c013852bd80f60a36425757@codeaurora.org>
 <1577754469.13164.5.camel@mtkswgap22>
Message-ID: <836772092daffd8283a97d633e59fc34@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_181339_122655_47875D4D 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: linux-scsi-owner@vger.kernel.org, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, subhashj@codeaurora.org, jejb@linux.ibm.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, andy.teng@mediatek.com, matthias.bgg@gmail.com,
 beanhuo@micron.com, pedrom.sousa@synopsys.com, bvanassche@acm.org,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-31 09:07, Stanley Chu wrote:
> Hi Asutosh,
> 
> 
>> I see that there's a get_sync done before.
>> So, how would the suspend be triggered in that case?
>> 
> 
> Would you mean pm_runtime_get_sync() in ufshcd_init()?
> If yes, it will only happen during initialization.
> 
> The runtime resume path may go through ufshcd_probe_hba() without
> ufshcd_init() invoked before, for example,
> 
> ufshcd_probe_hba+0xe10/0x1874
> ufshcd_host_reset_and_restore+0x114/0x1a4
> ufshcd_resume+0x1d0/0x480
> ufshcd_runtime_resume+0x40/0x188
> ufshcd_pltfrm_runtime_resume+0x10/0x18
> pm_generic_runtime_resume+0x24/0x44
> __rpm_callback+0x100/0x250
> rpm_resume+0x548/0x7c8
> rpm_resume+0x2b4/0x7c8
> rpm_resume+0x2b4/0x7c8
> rpm_resume+0x2b4/0x7c8
> pm_runtime_work+0x9c/0xa0
> process_one_work+0x210/0x4e0
> worker_thread+0x390/0x520
> kthread+0x154/0x18c
> ret_from_fork+0x10/0x18
> 
> This case happens if link is in "off" state while resume.
> 
> Thanks,
> Stanley

Hi Stanley,

I see skipping ufshcd_set_ufs_dev_active() in ufshcd_probe_hba()
if it is called from ufshcd_resume() path is the purpose here.

If so, then ufshcd_set_dev_pwr_mode() would be called, meaning
SSU command will be sent. Why is this SSU command needed to be
sent after a full host reset and restore? Is ufshcd_probe_hba()
not enough to make UFS device fully functional?

<snip>
         } else if (ufshcd_is_link_off(hba)) {
                 ret = ufshcd_host_reset_and_restore(hba);
                 /*
                  * ufshcd_host_reset_and_restore() should have already
                  * set the link state as active
                  */
                 if (ret || !ufshcd_is_link_active(hba))
                         goto vendor_suspend;
         }

         if (!ufshcd_is_ufs_dev_active(hba)) {
                 ret = ufshcd_set_dev_pwr_mode(hba, UFS_ACTIVE_PWR_MODE);
                 if (ret)
                         goto set_old_link_state;
         }
<snip>

Thanks,

Can Guo.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
