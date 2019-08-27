Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AEA9EA32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5knhYCiz8GbBlaRJzoABZ7for++ysPIs1jTIpA1LT8=; b=mbxhcPOxHu2gL5
	IoEZ6z9erSMKVKiH/YfJDSqzOUO/dRycyvzb18SwBf4mS3aNhobZMyHrwSkwd6Ur6vQLLh0bgOugk
	dS9RwRtRf4U3/ckoPLzYQK50NSilY2F0eM6g2jMakvlfFWmUHN8v5J9dUURPI4iLRH6KivtBwb8rX
	uLVhG7w2Wq14FKbMhSg2vTRRm9W526FOlnJltxOhgWA1hIho3CBAmOlD52w1zZ58MfdCqxnc0cfHC
	97ZO8bf4Q2nH5SjEfZXfwMwvksWSK7zGH4E1/uBhIEim04luTaIlvue+b/zBrgsd0d/csxg2VSfyC
	ysO/Th8S2kVopxOCUsIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bxE-0001a9-JA; Tue, 27 Aug 2019 13:56:12 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bx2-0001ZJ-TO
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:56:02 +0000
Received: by mail-vs1-xe44.google.com with SMTP id b20so13525295vso.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 06:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iQzhNAIFt5hn3lNj8VHzyzeNesjUsxuZGnqma8bu4p4=;
 b=GXtulx5b+8SWICbyuPjwDF9F7bv+zAAqlu3W0izJJ9FxbhtfIyDF2TP/yJ4bvTKKRJ
 kgNhO8/nY9YbctW58lDbFnAWR6Meq0ojGpQZmXLNP1dQZLvYE8QaHs6k0J0zlZ/SsYls
 PI8D1ZdYXfEXEnq9nmLbvAMn7hNxxdUoL4jaNKYRLdyyhhon6NVBCTXJ5tGKFO7KK9K1
 I+ZME+KKZOGOZnRBwyA0gD5Ki2Okp9WZUjEh7cnmTchfvMKoxZjQAMVRCi66JZLUezCE
 7R4sYFa3DMEvWHqp98Yh/W1rU58+BlXbxxZFO4cimlrY0k3gSvb56qpaixubm0OuJP7a
 tVsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iQzhNAIFt5hn3lNj8VHzyzeNesjUsxuZGnqma8bu4p4=;
 b=d9VgH6US6eUw2wBeJIikOL57XUuC0OlYb7pAqAUHMudXcwW3gjctFjOj5yHko31xty
 Xx255NKcWyo0cjfE7vYVxOCkWwBmRpF5WSkusM2e0DIACYr3wOQsyWEO+E4Lc5h27RMW
 dK92WO1CIyGqOKmBX3n/IryPS6un1uzQ8ckGEEzOroLyH2+DhqFBJFJK0XN3BQrxRw32
 3mv4U32SVFxDJUlKNJ9LQXGtTK5fESTgcbTm91hdWSXJN2Do5GikBjbm9R0aHBetVdd3
 5elNQEApb415f4OX6wEgiTNFoncBmzGGYY40ufbIEcEEiSv5uohc4kjaT8cXcxPyjk1F
 UQ+g==
X-Gm-Message-State: APjAAAWY9i2D/OfACVQuZCbj1AcQEvsLf1LPl8vGSjgZZYAaQFXYBXYo
 RzOtbTNGEPD06F0sRNqEjQ1ZACfEfllvsD3a99w9fw==
X-Google-Smtp-Source: APXvYqxyqinG9B1wk9mMD63rudWgHA96o+UjC3keLDloPcQN/XZg/h4S9AIvpCaBd00wLVyZueMl5UVixOOQudOS1oc=
X-Received: by 2002:a67:e287:: with SMTP id g7mr13489601vsf.200.1566914160059; 
 Tue, 27 Aug 2019 06:56:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190827134337.GK13294@shell.armlinux.org.uk>
In-Reply-To: <20190827134337.GK13294@shell.armlinux.org.uk>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 27 Aug 2019 15:55:23 +0200
Message-ID: <CAPDyKFp7e2OD_idam3-2sEd0wJU5OcP=H04G1OvHmAUo2Y-bYw@mail.gmail.com>
Subject: Re: Continuous SD IO causes hung task messages
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_065600_954756_C810C0AB 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 27 Aug 2019 at 15:43, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> Hi,
>
> While dd'ing the contents of a SD card, I get hung task timeout
> messages as per below.  However, the dd is making progress.  Any
> ideas?
>
> Presumably, mmc_rescan doesn't get a look-in while IO is progressing
> for the card?

Is it a regression?

There not much of recent mmc core and mmc block changes, that I can
think of at this point.

>
> ARM64 host, Macchiatobin, uSD card.

What mmc host driver is it? mmci?

Kind regards
Uffe

>
> Thanks.
>
> root@arm-d06300000000:~# dd if=/dev/mmcblk1 | md5sum
> INFO: task kworker/2:1:52 blocked for more than 120 seconds.
>       Not tainted 5.2.0+ #309
> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> kworker/2:1     D    0    52      2 0x00000028
> Workqueue: events_freezable mmc_rescan
> Call trace:
>  __switch_to+0xb0/0x198
>  __schedule+0x22c/0x604
>  schedule+0x38/0xc8
>  __mmc_claim_host+0xcc/0x1ec
>  mmc_get_card+0x30/0x3c
>  mmc_sd_detect+0x1c/0x78
>  mmc_rescan+0x1c4/0x35c
>  process_one_work+0x14c/0x408
>  worker_thread+0x140/0x3f4
>  kthread+0xfc/0x128
>  ret_from_fork+0x10/0x18
> INFO: task kworker/2:1:52 blocked for more than 120 seconds.
>       Not tainted 5.2.0+ #309
> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> kworker/2:1     D    0    52      2 0x00000028
> Workqueue: events_freezable mmc_rescan
> Call trace:
>  __switch_to+0xb0/0x198
>  __schedule+0x22c/0x604
>  schedule+0x38/0xc8
>  __mmc_claim_host+0xcc/0x1ec
>  mmc_get_card+0x30/0x3c
>  mmc_sd_detect+0x1c/0x78
>  mmc_rescan+0x1c4/0x35c
>  process_one_work+0x14c/0x408
>  worker_thread+0x140/0x3f4
>  kthread+0xfc/0x128
>  ret_from_fork+0x10/0x18
> INFO: task kworker/2:1:52 blocked for more than 241 seconds.
>       Not tainted 5.2.0+ #309
> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> kworker/2:1     D    0    52      2 0x00000028
> Workqueue: events_freezable mmc_rescan
> Call trace:
>  __switch_to+0xb0/0x198
>  __schedule+0x22c/0x604
>  schedule+0x38/0xc8
>  __mmc_claim_host+0xcc/0x1ec
>  mmc_get_card+0x30/0x3c
>  mmc_sd_detect+0x1c/0x78
>  mmc_rescan+0x1c4/0x35c
>  process_one_work+0x14c/0x408
>  worker_thread+0x140/0x3f4
>  kthread+0xfc/0x128
>  ret_from_fork+0x10/0x18
> INFO: task kworker/2:1:52 blocked for more than 362 seconds.
>       Not tainted 5.2.0+ #309
> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> kworker/2:1     D    0    52      2 0x00000028
> Workqueue: events_freezable mmc_rescan
> Call trace:
>  __switch_to+0xb0/0x198
>  __schedule+0x22c/0x604
>  schedule+0x38/0xc8
>  __mmc_claim_host+0xcc/0x1ec
>  mmc_get_card+0x30/0x3c
>  mmc_sd_detect+0x1c/0x78
>  mmc_rescan+0x1c4/0x35c
>  process_one_work+0x14c/0x408
>  worker_thread+0x140/0x3f4
>  kthread+0xfc/0x128
>  ret_from_fork+0x10/0x18
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
