Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B77F3C829
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TuiTa/hF/OXYMFoGLzDFDyDpSljoOtRZze0FVzXcO8A=; b=KDNm3jcx8vfha5
	QnSzbrS7v5s4lU1iKoq78qBS2cusga5LSjd78t/KWpjD+5l9l5FlwLYm9kzanpvL0pwbegEz1m+mS
	bO1DjK9tYCT4gYIZVduY5rEFDBf1QVLpoLTa1HEL7t9RLOtGmefHBsULZOjeausWufRKkj82JEmt4
	+DND+P/1X8gCf7VJfxIEugk4AhfPDq7LUnfPomw1pRJbTpEmtbe7+UH5PXxYfSVixY/PFDdKyXr2P
	JNOCo8ceBxqlt7FgoHX2p5Yu+T2Ny3zQKTJ/dmecZrEf++veQ8IHwDQ3jHJ/yd/vpfayF3DXg7HyQ
	eOPVnfJJAKbxR5hXKUjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadi0-00042B-IP; Tue, 11 Jun 2019 10:08:52 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadha-0003pW-8Q
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:08:27 +0000
Received: by mail-pl1-x642.google.com with SMTP id t7so2287135plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 03:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZlyaOqGyFC7c17YkXUN6lg7zWIfEjQ81AkuyNrOkHoI=;
 b=iNfDt3Mub6qkW0z3LbJ8k3XhEhgrwj408NhTtyiJ6DQRpxzE5YyIhWdIoQ4KTgZ5a8
 xANiP/c57r4XCNlvB6waiOOr+CJG8PWR4fTrTnx9YvERYNHNNAF9I2xZfzV3B/45Qu+0
 sC8YMWLSu5O3wXnHjU2Hr3/oB79N4W5VWRk5ROSTSQvQq6COdk95b/6LCU2SexSHy8xW
 l74aELF8On/prZrnquyTQh4WvCa2LH4S9SkNqOoYWSL4aoJX6mn2p0iuS1RQOkVW/oca
 Zqc7fnHeAY1QmuCJOFAFPMdIacZLI6P31LD+4Er9fjpYT9miw5ZFHG1J9jvW5Zef3FOu
 RESA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZlyaOqGyFC7c17YkXUN6lg7zWIfEjQ81AkuyNrOkHoI=;
 b=DGAuoneE8syRJCOinhu+xzp+7RXO4OTNwutKf2Nx2nE46/ZBBw2zSD9vCf1NBUhmnD
 A8yj2cGQyYshlS/mSgqIpLV2UBw6Hy1hjJvnaf96loHg4mxsrwhjvolHjarzwjgeACgi
 6NZyVtL/mPTbUa91fDLNrNVcIFEak4uz6MM6RfLCx1s0QmNqU5/+S1++mwk7S3iTEoxs
 DgalUNBl5ueRSP0uRBF8Z4fJno+OCeJQPQ8e/o+nLxpSXYzYNlcyAVijpsgxUePdFSLw
 e4IQfN8IZfaP6cGnuhvDo9kvy2Xtg4djjcK1i/iqxiMbUqsrbfUeQlWmXvxib+Jsnwu5
 BrhQ==
X-Gm-Message-State: APjAAAX9Dx6M7k3xwsX3jL1UzsXIAZgNses1DZ+IA6x4JTCRz2aTLfMR
 NnkmNuqL/OBeunQeVr84V9o=
X-Google-Smtp-Source: APXvYqxwnC907CaLK2IU7NoNst6512I1yB+gfZW2TtIB/QhDmvCege3bObpdwaixhApkF6l6btT53A==
X-Received: by 2002:a17:902:a411:: with SMTP id
 p17mr15886850plq.104.1560247705500; 
 Tue, 11 Jun 2019 03:08:25 -0700 (PDT)
Received: from ubuntu ([104.192.108.9])
 by smtp.gmail.com with ESMTPSA id o126sm13908712pfb.134.2019.06.11.03.08.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 03:08:24 -0700 (PDT)
Date: Tue, 11 Jun 2019 03:08:19 -0700
From: Gen Zhang <blackgod016574@gmail.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH] knav_qmss_queue: fix a missing-check bug in
 knav_pool_create()
Message-ID: <20190611100819.GA10185@ubuntu>
References: <20190530033949.GA8895@zhanggen-UX430UQ>
 <20190611093744.GA9783@ubuntu>
 <56a08bd2-6b94-457f-99f7-91ef3fca8804@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56a08bd2-6b94-457f-99f7-91ef3fca8804@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_030826_440125_30B45A23 
X-CRM114-Status: GOOD (  21.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (blackgod016574[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (blackgod016574[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: olof@lixom.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ssantosh@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:54:15AM +0100, Marc Zyngier wrote:
> Hi Gen,
> 
> No idea why I'm being cc'd on this but hey... ;-)
I copied email address ftom thid commit:-)
https://github.com/torvalds/linux/commit/832ad0e3da4510fd17f98804abe512ea9a747035#diff-f2a24befc247191f4b81af93e9336785
> 
> On 11/06/2019 10:37, Gen Zhang wrote:
> > On Thu, May 30, 2019 at 11:39:49AM +0800, Gen Zhang wrote:
> >> In knav_pool_create(), 'pool->name' is allocated by kstrndup(). It
> >> returns NULL when fails. So 'pool->name' should be checked. And free
> >> 'pool' when error.
> >>
> >> Signed-off-by: Gen Zhang <blackgod016574@gmail.com>
> >> ---
> >> diff --git a/drivers/soc/ti/knav_qmss_queue.c b/drivers/soc/ti/knav_qmss_queue.c
> >> index 8b41837..0f8cb28 100644
> >> --- a/drivers/soc/ti/knav_qmss_queue.c
> >> +++ b/drivers/soc/ti/knav_qmss_queue.c
> >> @@ -814,6 +814,12 @@ void *knav_pool_create(const char *name,
> >>  	}
> >>  
> >>  	pool->name = kstrndup(name, KNAV_NAME_SIZE - 1, GFP_KERNEL);
> >> +	if (!pool->name) {
> >> +		dev_err(kdev->dev, "failed to duplicate for pool(%s)\n",
> >> +			name);
> 
> There is no need to output anything, the kernel will be loud enough if
> you run out of memory.
Thanks for your comments.
> 
> >> +		ret = -ENOMEM;
> >> +		goto err_name;
> >> +	}
> >>  	pool->kdev = kdev;
> >>  	pool->dev = kdev->dev;
> >>  
> >> @@ -864,6 +870,7 @@ void *knav_pool_create(const char *name,
> >>  	mutex_unlock(&knav_dev_lock);
> >>  err:
> >>  	kfree(pool->name);
> >> +err_name:
> 
> kfree(NULL) is perfectly valid, there is no need to create a second
> label. Just branch to the existing error label.
Sure, better not to add redundant codes.
> 
> >>  	devm_kfree(kdev->dev, pool);
> >>  	return ERR_PTR(ret);
> >>  }
> > Can anyone look into this patch?
> > 
> > Thanks
> > Gen
> > 
> 
> The real question is whether this is actually an error at all.
> pool->name doesn't seem to be used for anything but debug information,
> and the printing code can perfectly accommodate a NULL pointer.
That sounds reasonable. This patch just fixes a *theoretical* bug.

Thanks
Gen
> 
> Thanks,
> 
> 	M.
> -- 
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
