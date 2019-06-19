Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E4E4C049
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=js3zDwudUDOZ9+3WAtvbplz4kqrAqUMQv5s1k3hfxOU=; b=fJ/BIM9++8rvo3
	pUYvNHBkaZNmpvqZnkPKQyCWnygshDbxtfZWCZ721SQPnBYEWu91oqPmDwIVeFzXZyuCnPS/a2tgT
	uww7PW0BoQW++DHvxoGS0rZl0ibl68IvGin+4QCFY91PfFgbgiFx3QmtoT4BIpHGquVVvq7d1PzQN
	S91v9g0ynKuXtbrKARlUDoZEgGaeoFhFmqK7o89PRRlmKxVBjltJFwc/mWaJxhv7wJ1ynKYFEzN7r
	squictBzXAnr36NshV0iN7Kj0IVA04/4LAE1hpZGjktQgtD9xBq0fH31wTomtXFd4OuBb4WZ/UMvq
	QvsaTZJ8WW1QPiPJMiDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdej1-00073x-3C; Wed, 19 Jun 2019 17:50:23 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::5])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeYQ-0000NH-7D
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:39:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1560965963;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=XYYSEo8xkLqEkhoToj39ayE5dpK53KVud0IYJso7SWw=;
 b=FBx5jYWRWVuJ50BD7PgU+DegKsBcMQ4GJzUO+XWwpWwNfUm2fsMLxpZ5xvbrE10kkd
 mDfbgTOuS2ttkKpLFJzCSsGy5XXITJRpYvOFFFb09r1mluSY8+RQHt0Id597IzG55Kb9
 IrCanHKW6lgPpL6XareYYlGYkxI6nkYtMLic7lXDTsiWZvQNnSG9ol/gFf9YZAdlxDK5
 7FmbpO/8QzVTuATVQhxWI2j0NQHc/LZRHot+QIvAnUbZpbtTSidFjaqLMxGoiThmOItD
 dGjEQ1rNjQQxM6/DV+zAC9/VXt8mLdQtbIGXaCaSk6xgpFP1UDQT+frMxKz1vZE9y1P8
 a1vQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u267EpF+OQRc4oDXF5yRxHE="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 44.24 AUTH)
 with ESMTPSA id m0a13fv5JHdM7Dr
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 19 Jun 2019 19:39:22 +0200 (CEST)
Date: Wed, 19 Jun 2019 19:39:12 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: Coresight causes synchronous external abort on msm8916
Message-ID: <20190619173743.GA937@gerhold.net>
References: <20190618202623.GA53651@gerhold.net>
 <CANLsYkyViZmpwAPyd7huMC=QRvH3sd0VchJuL-E4+vuYnb0g9A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkyViZmpwAPyd7huMC=QRvH3sd0VchJuL-E4+vuYnb0g9A@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103927_044973_645D85CD 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:5 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Brown <david.brown@linaro.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 02:40:06PM -0600, Mathieu Poirier wrote:
> On Tue, 18 Jun 2019 at 14:26, Stephan Gerhold <stephan@gerhold.net> wrote:
> >
> > Hi,
> >
> > I'm trying to run mainline Linux on a smartphone with MSM8916 SoC.
> > It works surprisingly well, but the coresight devices seem to cause the
> > following crash shortly after userspace starts:
> >
> >     Internal error: synchronous external abort: 96000010 [#1] PREEMPT SMP
> >     Modules linked in:
> >     CPU: 0 PID: 32 Comm: kworker/0:1 Not tainted 5.2.0-rc5 #7
> >     Hardware name: Samsung Galaxy A5 (SM-A500FU) (DT)
> >     Workqueue: events amba_deferred_retry_func
> >     pstate: 60000005 (nZCv daif -PAN -UAO)
> >     pc : amba_device_try_add+0x104/0x2f0
> >     lr : amba_device_try_add+0xf0/0x2f0
> >     sp : ffff00001181bd40
> >     x29: ffff00001181bd40 x28: 0000000000000000
> >     x27: ffff80007b258b38 x26: ffff000010f490a0
> >     x25: 0000000000000000 x24: ffff000011b35000
> >     x23: 0000000000000000 x22: ffff80007b316ed8
> >     x21: 0000000000001000 x20: 0000000000000000
> >     x19: ffff80007b316c00 x18: 0000000000000000
> >     x17: 0000000000000000 x16: 0000000000000000
> >     x15: 0000000000000000 x14: ffffffffffffffff
> >     x13: 0000000000000000 x12: 0000000000000001
> >     x11: 0000000000000000 x10: 0000000000000980
> >     x9 : ffff00001181ba00 x8 : ffff80007b126a20
> >     x7 : ffff80007a5e0500 x6 : ffff80007b126040
> >     x5 : 0000000000000002 x4 : ffff80007db85ba0
> >     x3 : 0000000000000000 x2 : ffff000011b35fe0
> >     x1 : 0000000000000000 x0 : 0000000000000000
> >     Call trace:
> >      amba_device_try_add+0x104/0x2f0
> >      amba_deferred_retry_func+0x48/0xc8
> >      process_one_work+0x1e0/0x320
> >      worker_thread+0x40/0x428
> >      kthread+0x120/0x128
> >      ret_from_fork+0x10/0x18
> >     Code: 35000ac0 d10082a2 52800001 8b020302 (b9400040)
> >     ---[ end trace b664cbefc1cb2294 ]---
> >
> > In this case I'm using a simple device tree similar to apq8016-sbc,
> > but it also happens using something as simple as msm8916-mtp.dts
> > on this particular device.
> >   (Attached: dmesg log with msm8916-mtp.dts and arm64 defconfig)
> >
> > I can avoid the crash and boot without any further problems by disabling
> > every coresight device defined in msm8916.dtsi, e.g.:
> >
> >         tpiu@820000 { status = "disabled"; };
> >         funnel@821000 { status = "disabled"; };
> >         replicator@824000 { status = "disabled"; };
> >         etf@825000 { status = "disabled"; };
> >         etr@826000 { status = "disabled"; };
> >         funnel@841000 { status = "disabled"; };
> >         debug@850000 { status = "disabled"; };
> >         debug@852000 { status = "disabled"; };
> >         debug@854000 { status = "disabled"; };
> >         debug@856000 { status = "disabled"; };
> >         etm@85c000 { status = "disabled"; };
> >         etm@85d000 { status = "disabled"; };
> >         etm@85e000 { status = "disabled"; };
> >         etm@85f000 { status = "disabled"; };
> >
> > I don't have any use for coresight at the moment,
> > but it seems somewhat odd to put this in the device specific dts.
> >
> > Any idea what could be causing this crash?
> 
> CS and CPUidle don't play well together on most boards, something I am
> actively looking into at this very moment.  To avoid the problem
> either disable CS or CPUidle.

Thanks for the very quick suggestion!

In my case, CPUidle seems unlikely to be the cause - unfortunately all
the msm8916 phones and tablets were released with a firmware that does
not support PSCI. Therefore cpuidle is not working properly either. :(

To be absolutely sure I have attempted to disable cpuidle by commenting
out related parts in the device tree. I booted with cpuidle.off=1 on the
kernel command line but the error persists.

> 
> Mathieu
> 
> > I'm not sure if this is a device-specific issue or possibly some kind of
> > configuration problem.
> >   Or is this feature only working on development boards?
> >
> > Thanks in advance!
> > Stephan
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
