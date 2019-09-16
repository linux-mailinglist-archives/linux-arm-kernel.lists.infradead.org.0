Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC19B3D64
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 17:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5XzYa7oRItNGGqSAxC98Zut+yYXHEOiHKYkvqd5Jgvo=; b=h7RsL4RXlUAu45TkpAl1sFsST
	eeU90sR+pe5EqaoIL/zSAjGh/m5WZande9DtWqhqGuFCon005gcw8akMMxSk3pz9CEFh8jx9GMyzH
	Y08QpAdbk6a3ULGJN0aqfSPVomY+fNao6Vyvb50yvJSEA2yi0gbVHciBwcAVj0laibBlcvvJ6SRoe
	hEp6OzzDuqM+5NJvTMzh3O0CirWlpZQjBLfoh0GEQnmY+tFCicBRRnx6F1R2AmWO9qAXgMs+rfXJt
	TgUk6v+B0sDRnLBNH4/EImoOAZezkinoywo3+9tY1pPqE8t2l5eHVVG4jyvKR3BgzGS7TBZ/rbNW2
	aX3k2vkRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9sk0-000436-Mf; Mon, 16 Sep 2019 15:16:36 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9sjn-00041q-Dz; Mon, 16 Sep 2019 15:16:24 +0000
Received: by mail-pl1-f194.google.com with SMTP id k1so10178pls.11;
 Mon, 16 Sep 2019 08:16:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xmsYsESq3U580LOTWkZxGZFs5MZ+7M41QlvsoZWEDCI=;
 b=g4D+vnwBjkRiha7+W0swr0TqRm6TB3u+yVj7RMna4p4WrBjFmliMXnzn5ZlN9uyLTY
 1p9nA+6iKSeVgSAHQjbILqHZ8+zdjs3hL8r6sSYqmc3SwrTRXL8wUX3l6qUtIE3V0H/t
 YY2ozjnL1Gw5EzTt+LSYPIHlHWFpl94ejyFQnh6NPBXBc2Oc5nT+u4pp1nScMLWJoowv
 EyFl63YKE1jCQRVoCGLYr3xFJpLJrsCr/guGjJwXt44+7VbyWXc5KJgtz+WzfbbcT3HS
 MOv9jeIayLPeNFekdyXB/CO9h1eOjzvw51H2ubK/KybC3XW3g0T4w9wAU9DccyO8QuZp
 l1bg==
X-Gm-Message-State: APjAAAWzuhrfxAMiHu7YCQEOK9dJafoGyHO6sRWaa8nT1HbZ43psvpfV
 ZdHp8XjX2sdikFhIRlNYPIUXvVY98ZQ=
X-Google-Smtp-Source: APXvYqxHinrcCqICJcc3czDv9zh4ECEAokGbyfTBs0wU8DoJxGiUpHoBY9Ji3BuKcej+3FSC7eSTtA==
X-Received: by 2002:a17:902:b206:: with SMTP id t6mr297219plr.55.1568646978730; 
 Mon, 16 Sep 2019 08:16:18 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id 6sm65221065pfa.162.2019.09.16.08.16.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Sep 2019 08:16:17 -0700 (PDT)
Subject: Re: [PATCH v3 1/3] scsi: core: allow auto suspend override by
 low-level driver
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 pedrom.sousa@synopsys.com, sthumma@codeaurora.org, jejb@linux.ibm.com
References: <1568616437-16271-1-git-send-email-stanley.chu@mediatek.com>
 <1568616437-16271-2-git-send-email-stanley.chu@mediatek.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <bebea62f-8ab0-528f-5634-9b3c06f47ef7@acm.org>
Date: Mon, 16 Sep 2019 08:16:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568616437-16271-2-git-send-email-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_081623_473512_7ECF4C93 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 vivek.gautam@codeaurora.org, matthias.bgg@gmail.com, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/15/19 11:47 PM, Stanley Chu wrote:
> diff --git a/include/scsi/scsi_device.h b/include/scsi/scsi_device.h
> index 202f4d6a4342..495e30adb53f 100644
> --- a/include/scsi/scsi_device.h
> +++ b/include/scsi/scsi_device.h
> @@ -199,7 +199,7 @@ struct scsi_device {
>   	unsigned broken_fua:1;		/* Don't set FUA bit */
>   	unsigned lun_in_cdb:1;		/* Store LUN bits in CDB[1] */
>   	unsigned unmap_limit_for_ws:1;	/* Use the UNMAP limit for WRITE SAME */
> -
> +	unsigned rpm_autosuspend_on:1;	/* Runtime autosuspend */
>   	atomic_t disk_events_disable_depth; /* disable depth for disk events */
    The "_on" part in the variable name "rpm_autosuspend_on" is probably 
redundant and the comment could have been more elaborate. Anyway:

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
