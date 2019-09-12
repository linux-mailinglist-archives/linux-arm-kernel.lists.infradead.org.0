Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7201BB1037
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 15:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EpujRMzazkKsretEJaFUs7WlY/BownyHMrUiv0b3Xcw=; b=eHi7PTPCGb3ygC
	7RLVOhbXH2QlmVeDJSPMZgMmuTrr2cIsN7zf4Dg5ycVuVFJthLfo6QPQNPly/XLl1Y3LshinZsULO
	yAqCE7PKJdRbEOk91vUty/g2HT4mvtnXO30BoVQsZOallquvAffA77NxPMoQGGvf+muKSffrmLGUc
	+4epGT3Y8869mN0HBz8H+iX5mR1nfxJ2lgXHuQILdKbFOv+9jl2FwFL21r7yyXJsHrXSfAEEbDlPU
	mmLZDO9VQvKlOBNouKQm7/75UmQ3BObZhI3hnobDpwl9CwbrCseXItr5oxT51uz40oT6+uYWW83rI
	UcUKy2NidZI2JbM3P9ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8POu-0000nt-9H; Thu, 12 Sep 2019 13:44:44 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8POW-0000mu-HP; Thu, 12 Sep 2019 13:44:21 +0000
Received: by mail-pf1-f193.google.com with SMTP id r12so16085580pfh.1;
 Thu, 12 Sep 2019 06:44:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ceNPWcWTipfAfeKAaiTT4udHgEwkImit4TBFNaxXyew=;
 b=d6J7vxSTOtLbsG65V2hfSGmJZI0ic7XSas3B3PArwQy6LgzzIGD4i6E4B1V1nTLRJP
 P5gU9l8lJkQ00A9pW87Gblu/lBcu14BwgT+JCcI/WW1C3kKBPTxtyezHk+DnpI8wc29v
 ocpfhw8NBaAYECrQ7Qz2yTUp0OeL9g48Y62BdJJ30pDdpCZCfBZg9u0I1a1kCFA9LzkM
 /69jCvJHOqOk3xTi6Z7826SI33pWHc5j9sJDiZ260lx/XwNcQBa+87mqDcC38cZG3iDE
 mMcaDpeU6wyw12HFyUUZSoKO8TmWv9qTo7ICsgjnnJM4VFxLHAOxxd/+ec9ISUW3SLIf
 2ZBA==
X-Gm-Message-State: APjAAAXYTl8IkMQbif4hykceRGEvCZH8HZx3ynUg75HFja5X8fEj9Ta7
 X7alZ/4RwcUMv4qPPDtqZ+o=
X-Google-Smtp-Source: APXvYqzB9SsBEHXbRoDazbOUKTlPNiidOJt/lTTfbHQKmD4OVAcRrfttF0ZrGy/78yadGVxkdsVRGA==
X-Received: by 2002:a65:430a:: with SMTP id j10mr39157233pgq.374.1568295858937; 
 Thu, 12 Sep 2019 06:44:18 -0700 (PDT)
Received: from [172.19.249.100] ([38.98.37.138])
 by smtp.gmail.com with ESMTPSA id s18sm32320324pfh.0.2019.09.12.06.43.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Sep 2019 06:44:18 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] scsi: core: allow auto suspend override by
 low-level driver
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 pedrom.sousa@synopsys.com, sthumma@codeaurora.org, jejb@linux.ibm.com
References: <1568270135-32442-1-git-send-email-stanley.chu@mediatek.com>
 <1568270135-32442-2-git-send-email-stanley.chu@mediatek.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <485731ed-d455-dbb2-0cd5-3110ff14f6b7@acm.org>
Date: Thu, 12 Sep 2019 14:43:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568270135-32442-2-git-send-email-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_064420_576494_5E795983 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: marc.w.gonzalez@free.fr, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, evgreen@chromium.org, subhashj@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 vivek.gautam@codeaurora.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/12/19 7:35 AM, Stanley Chu wrote:
> diff --git a/drivers/scsi/scsi_sysfs.c b/drivers/scsi/scsi_sysfs.c
> index 64c96c7828ee..461aafadd208 100644
> --- a/drivers/scsi/scsi_sysfs.c
> +++ b/drivers/scsi/scsi_sysfs.c
> @@ -1300,7 +1300,8 @@ int scsi_sysfs_add_sdev(struct scsi_device *sdev)
>  	device_enable_async_suspend(&sdev->sdev_gendev);
>  	scsi_autopm_get_target(starget);
>  	pm_runtime_set_active(&sdev->sdev_gendev);
> -	pm_runtime_forbid(&sdev->sdev_gendev);
> +	if (sdev->rpm_autosuspend_delay < 0)
> +		pm_runtime_forbid(&sdev->sdev_gendev);
>  	pm_runtime_enable(&sdev->sdev_gendev);
>  	scsi_autopm_put_target(starget);

So we have a single new struct member, rpm_autosuspend_delay, that
controls two different behaviors: (a) whether or not runtime suspend is
enabled at device creation time and (b) the power management autosuspend
delay. I don't like this. Should two separate variables be introduced
instead of using a single variable to control both behaviors?

> diff --git a/include/scsi/scsi_device.h b/include/scsi/scsi_device.h
> index 202f4d6a4342..133b282fae5a 100644
> --- a/include/scsi/scsi_device.h
> +++ b/include/scsi/scsi_device.h
> @@ -199,7 +199,7 @@ struct scsi_device {
>  	unsigned broken_fua:1;		/* Don't set FUA bit */
>  	unsigned lun_in_cdb:1;		/* Store LUN bits in CDB[1] */
>  	unsigned unmap_limit_for_ws:1;	/* Use the UNMAP limit for WRITE SAME */
> -
> +	int rpm_autosuspend_delay;
>  	atomic_t disk_events_disable_depth; /* disable depth for disk events */
>  
>  	DECLARE_BITMAP(supported_events, SDEV_EVT_MAXBITS); /* supported events */
> 

Since the default value for the autosuspend delay is the same for all
SCSI devices attached to a SCSI host is the same, please add a variable
with the same name in the SCSI host template and use that value as the
default value for SCSI devices. If the rpm_autosuspend_delay variable
only occurs in struct scsi_device then LLD authors are forced to
introduce a slave_configure function. Introducing such a function can be
avoided if the default autosuspend delay can be specified in the host
template.

Bart.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
