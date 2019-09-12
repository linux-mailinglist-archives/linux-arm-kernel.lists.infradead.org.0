Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3108B1041
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 15:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVCyCvecjZGl3olAzSGZXWD1ZMahVnt5/gCMSyN9704=; b=YKpHBpO5tL92Ns
	to8qz5aOFKrhz6kJvXK57HhP2PWcyiz2kd/OBh5DHFvy91LX5i5yldtYqtNcWV44Io8WVdlo+XeTB
	jts79Qux5haxN1EakAxt44heJFNebNpPSJejzT3y4BKPMfU8EKsK4kqDCnwUUaybtEtjMTlBFjdK1
	gR2NR3vfusgVNGrUJTTV19eEE50MlmiMBZVsczmDDnlJpHvUFSfKAj4c0w1Gjz1wC+lMwULcvKD7/
	yMmhlE1+917sU45H0LWTJ8TiZYRBVnIf3EP1jxa1yfbVopnFqVQzUeb4f1Gjwl9dbzd8/LETLjDpO
	VAvcoUqS/C7CK85OFA6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8PR6-0002Wt-I0; Thu, 12 Sep 2019 13:47:00 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8PQp-0002WX-1g; Thu, 12 Sep 2019 13:46:44 +0000
Received: by mail-pf1-f194.google.com with SMTP id i1so7205446pfa.6;
 Thu, 12 Sep 2019 06:46:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MtP0RfUzuHL3kYu6wQIB2IyKy3GyiWExYLlefQaqSxM=;
 b=ChX5ijjePJ1DiRzbU3ooGojp6ldijx73jyBeab0tGuHoKPzVENI4bh1lvZUxYFSFro
 EaHbKrTVixy8qpMAyKjG6iWcNhR6CtYVOfnHmavMV9d7XhyPeBibcGiMETml0Ti8sqix
 lFestkkycw12so7rtucTZjQb6/UolyBrRsKu9oOiRIJszK/0MXioOKXHQte9rsDMZubd
 f26eZZlUCNe3s416mk/Tq6S7CYbNXeaDRUiAdgSr4/FQJd+vTieGgLM0wHLzyObuok9M
 ye/79XL4WrfMA3wBaF0Cj628+XZzAPutkcDrqMLJQt0PyUlKZd4eonsO7BL9vuRF2LCd
 K6FQ==
X-Gm-Message-State: APjAAAWfg52NJqsV3tbJa5uYUvpoTsdYbEulYYancIYTi0NFCeyNVGWv
 LhNrwtETcnw51urAesRPkV4=
X-Google-Smtp-Source: APXvYqxmdAigtAb9pUd7aKFtSeVu9hhQjWy0OIHyx/CmemFWJrp9WOdk6Xv0QiSC31lz7H8JyY+OmQ==
X-Received: by 2002:a17:90a:b38a:: with SMTP id e10mr48202pjr.91.1568296002281; 
 Thu, 12 Sep 2019 06:46:42 -0700 (PDT)
Received: from [172.19.249.100] ([38.98.37.138])
 by smtp.gmail.com with ESMTPSA id em21sm22269pjb.31.2019.09.12.06.46.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Sep 2019 06:46:41 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] scsi: ufs-mediatek: enable auto suspend capability
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 pedrom.sousa@synopsys.com, sthumma@codeaurora.org, jejb@linux.ibm.com
References: <1568270135-32442-1-git-send-email-stanley.chu@mediatek.com>
 <1568270135-32442-4-git-send-email-stanley.chu@mediatek.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <160452c7-c53c-155c-49a9-4365166032a8@acm.org>
Date: Thu, 12 Sep 2019 14:46:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568270135-32442-4-git-send-email-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_064643_083711_EA67E237 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
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
> Enable auto suspend capability in MediaTek UFS driver.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> Reviewed-by: Avri Altman <avri.altman@wdc.com>
> ---
>  drivers/scsi/ufs/ufs-mediatek.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
> index 0f6ff33ce52e..b7b177c6194c 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.c
> +++ b/drivers/scsi/ufs/ufs-mediatek.c
> @@ -117,6 +117,11 @@ static int ufs_mtk_setup_clocks(struct ufs_hba *hba, bool on,
>  	return ret;
>  }
>  
> +static void ufs_mtk_set_caps(struct ufs_hba *hba)
> +{
> +	hba->caps |= UFSHCD_CAP_RPM_AUTOSUSPEND;
> +}
> +
>  /**
>   * ufs_mtk_init - find other essential mmio bases
>   * @hba: host controller instance
> @@ -147,6 +152,8 @@ static int ufs_mtk_init(struct ufs_hba *hba)
>  	if (err)
>  		goto out_variant_clear;
>  
> +	ufs_mtk_set_caps(hba);
> +
>  	/*
>  	 * ufshcd_vops_init() is invoked after
>  	 * ufshcd_setup_clock(true) in ufshcd_hba_init() thus

Please inline the ufs_mtk_set_caps() function. Introducing single line
functions like is done in this patch doesn't improve readability.

Thanks,

Bart.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
