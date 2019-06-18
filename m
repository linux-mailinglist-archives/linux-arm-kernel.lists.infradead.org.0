Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 287534ABFB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 22:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CRTMCdASyqOK8Gw5PrLo+Gz+0qwqRbXR4r6rO5lF/X4=; b=uBRopUGN2BKYQU
	6kHpZdAk22NVtl9PjXvoMFk5ne2D71DW31rWHhmpWkdtgNQmCO5xbFTi0AZGvDJAWCUHDGd6XurxG
	nqK1CqsK8ReX6X2CSWL66cHRHFiuSwZCDFN6c8/ZjvU7r/2p+dY0L0fSg84L6IJ1mQyOlPhcYq6YW
	a39EcX4OkiVTeskgNZAc7TNU+Y8yrZicUfaRpF/au5GJqA4lb+X5xqy49dWKlfMrn2ormZbjqBjSK
	NnVhNdwTK9rHlQvsuYNwgOiwJEPDfEqIIrmOcYfTxvQH5ewY2ZxtabK/z6bwxOsCVWbquo9+qxyID
	QC5FQ+rwn5SBk0EVnD7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdKu6-0004iu-NP; Tue, 18 Jun 2019 20:40:30 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdKtv-0004iZ-AS
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 20:40:20 +0000
Received: by mail-io1-xd44.google.com with SMTP id i10so32864571iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 13:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MfLSn4IF5wybAl5GDySiZqesfAaDpqnR8BFc78pzytk=;
 b=Z+ctTLfSDipdCZANZRnHUF9ESh4EeXsPNOdYN7dN/Yv5lb/w8pHdcbQzOLNoybteIu
 BFqcsejICW20tEAGWVGq3v/hF9vVVBdjOb/CbxrmBv2VXDWUKFG1UtD20ZTOGJC0Hqfk
 cxL7COmiKriXDFr9zGxmctQiv9XMCYnLlfRxr40XcIqIYpHpFAsJUmUudJrGxWv0g5Im
 joBBVUX7dYh27jcY4519aG/5bKVjZIFaZjVHrkemYh1QT8TXSXeO3s+k1Wfj0kNLp5mn
 RcrVKKLJzz1ve6CQgvz26pQlkG6bR3CRbMfkaXYLiL8o2Bd6PyUPL2AYm97T3E8h6Y1A
 +Stw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MfLSn4IF5wybAl5GDySiZqesfAaDpqnR8BFc78pzytk=;
 b=SzNux+fY5TDZFNX479NWG4b40oJM456yjFMAp75yewr8G90qoV8nznSHCZH60nwE6D
 nSG/dPuejbzQJj9jL2X3cq4vnVLa5CbKeaUWUs2By9GvVBAjgwguFzPwZ+HjS6LgUjLj
 5GhJPIHjJ6RxzglHSIlG4wjrTXC64rBUxk5WTGFBSM5THR/OkcF+LPwk9HYKW1O/Sqfi
 NAJbGk3O0vrPba5jL6SikVMAkebuhsfSxsUgwZZ7rZGoyoDL8RrIOXzOc0UdigEOWvt1
 o5T0SOnKeRI8IwYDqj+PM0h3jJeb7gwdQSMKuvg23t+mwEA4ARmQ0MQ7KVM/OeIvcmr9
 mTgA==
X-Gm-Message-State: APjAAAV+MBWzVFjfC5kv6cwHRkmWuwptYHZV8QK9FdAWjKa24dg7AOe9
 oZVA/zGmtfEHsFTIz6MD07LYVn4W9Ct+F1ZgdPt3hw==
X-Google-Smtp-Source: APXvYqwHUY7qBPiLOGX5pdFwZAxJ1uEsjSWrLmgv9QqiXptoPr8OJOtUaNqDY2LZTSYqzqDDoQ7K8P6TIMwVe4aYhQY=
X-Received: by 2002:a05:6638:29a:: with SMTP id
 c26mr5627375jaq.98.1560890417929; 
 Tue, 18 Jun 2019 13:40:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190618202623.GA53651@gerhold.net>
In-Reply-To: <20190618202623.GA53651@gerhold.net>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 18 Jun 2019 14:40:06 -0600
Message-ID: <CANLsYkyViZmpwAPyd7huMC=QRvH3sd0VchJuL-E4+vuYnb0g9A@mail.gmail.com>
Subject: Re: Coresight causes synchronous external abort on msm8916
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_134019_367624_144CA8D2 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Tue, 18 Jun 2019 at 14:26, Stephan Gerhold <stephan@gerhold.net> wrote:
>
> Hi,
>
> I'm trying to run mainline Linux on a smartphone with MSM8916 SoC.
> It works surprisingly well, but the coresight devices seem to cause the
> following crash shortly after userspace starts:
>
>     Internal error: synchronous external abort: 96000010 [#1] PREEMPT SMP
>     Modules linked in:
>     CPU: 0 PID: 32 Comm: kworker/0:1 Not tainted 5.2.0-rc5 #7
>     Hardware name: Samsung Galaxy A5 (SM-A500FU) (DT)
>     Workqueue: events amba_deferred_retry_func
>     pstate: 60000005 (nZCv daif -PAN -UAO)
>     pc : amba_device_try_add+0x104/0x2f0
>     lr : amba_device_try_add+0xf0/0x2f0
>     sp : ffff00001181bd40
>     x29: ffff00001181bd40 x28: 0000000000000000
>     x27: ffff80007b258b38 x26: ffff000010f490a0
>     x25: 0000000000000000 x24: ffff000011b35000
>     x23: 0000000000000000 x22: ffff80007b316ed8
>     x21: 0000000000001000 x20: 0000000000000000
>     x19: ffff80007b316c00 x18: 0000000000000000
>     x17: 0000000000000000 x16: 0000000000000000
>     x15: 0000000000000000 x14: ffffffffffffffff
>     x13: 0000000000000000 x12: 0000000000000001
>     x11: 0000000000000000 x10: 0000000000000980
>     x9 : ffff00001181ba00 x8 : ffff80007b126a20
>     x7 : ffff80007a5e0500 x6 : ffff80007b126040
>     x5 : 0000000000000002 x4 : ffff80007db85ba0
>     x3 : 0000000000000000 x2 : ffff000011b35fe0
>     x1 : 0000000000000000 x0 : 0000000000000000
>     Call trace:
>      amba_device_try_add+0x104/0x2f0
>      amba_deferred_retry_func+0x48/0xc8
>      process_one_work+0x1e0/0x320
>      worker_thread+0x40/0x428
>      kthread+0x120/0x128
>      ret_from_fork+0x10/0x18
>     Code: 35000ac0 d10082a2 52800001 8b020302 (b9400040)
>     ---[ end trace b664cbefc1cb2294 ]---
>
> In this case I'm using a simple device tree similar to apq8016-sbc,
> but it also happens using something as simple as msm8916-mtp.dts
> on this particular device.
>   (Attached: dmesg log with msm8916-mtp.dts and arm64 defconfig)
>
> I can avoid the crash and boot without any further problems by disabling
> every coresight device defined in msm8916.dtsi, e.g.:
>
>         tpiu@820000 { status = "disabled"; };
>         funnel@821000 { status = "disabled"; };
>         replicator@824000 { status = "disabled"; };
>         etf@825000 { status = "disabled"; };
>         etr@826000 { status = "disabled"; };
>         funnel@841000 { status = "disabled"; };
>         debug@850000 { status = "disabled"; };
>         debug@852000 { status = "disabled"; };
>         debug@854000 { status = "disabled"; };
>         debug@856000 { status = "disabled"; };
>         etm@85c000 { status = "disabled"; };
>         etm@85d000 { status = "disabled"; };
>         etm@85e000 { status = "disabled"; };
>         etm@85f000 { status = "disabled"; };
>
> I don't have any use for coresight at the moment,
> but it seems somewhat odd to put this in the device specific dts.
>
> Any idea what could be causing this crash?

CS and CPUidle don't play well together on most boards, something I am
actively looking into at this very moment.  To avoid the problem
either disable CS or CPUidle.

Mathieu

> I'm not sure if this is a device-specific issue or possibly some kind of
> configuration problem.
>   Or is this feature only working on development boards?
>
> Thanks in advance!
> Stephan
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
