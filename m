Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD781EB9F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rqnr30mY9R5nW8mVNG03tn0eZHicgCqTvaygMDN4r6k=; b=n8BaXrz3qaOd7J5feRCFO2Jx7f
	NSjThqhbyf8joavOpwK2m6V/AW2ybPgtM2AkyEsfGWaYlZTB11hkg31L5Boo4ETmuA3tV2tREpHWo
	vlcmQn1MrweaL4jylgjV83t3PkWC08IDRySRIkhkdnKs+0MxfZRXkrL5i4cR5xBE7xvSHgLLIvWet
	hHLmFwtGoVgnTz+BVhduEEnYuBZlww9L0/TAdHGVcHIEwm0Y076MVkET00AVRqnheAkwPDpL1OrU/
	RB3zpl9Qf5mNha9+iupzWm7i+CiLIStv2OPh3Yizbazy3DDXe0uPD/+L0DhxFC25HEv4PjsZZwWR9
	SkgR4C3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqle-0001KR-5R; Wed, 15 May 2019 10:04:10 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqlW-0001Jx-PU; Wed, 15 May 2019 10:04:04 +0000
Received: from [192.168.178.167] ([109.104.37.15]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mf0yy-1gkOTQ1SsU-00gZHW; Wed, 15 May 2019 12:03:54 +0200
Subject: Re: [PATCH] Staging: vc04_services: Fix kernel type 'u32' over
 'uint32_t'
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>, eric@anholt.net,
 gregkh@linuxfoundation.org, f.fainelli@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20190514160207.11573-1-madhumithabiw@gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <43fc8207-6b5b-1caa-3d19-f44074fffd0b@i2se.com>
Date: Wed, 15 May 2019 12:03:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514160207.11573-1-madhumithabiw@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:ZZ/Aph7ySsODYCaWcBvIhpYEYIK+oOwwTCobv8+RoU/h78qB+pX
 ZjgwxWVD58BI6VP2C47FP4oCKkw98WDnibwVSehCZ05isrEROxFXD0z/yqHJYydb0CpfZwO
 wTXQd4GwzoIsCYPEFp6LX3bg2uWkFH9AUXhlW4taQObJyPboLnEBTNUd6hfldgDSWmspJR2
 9BELG2jOY2nWHif04sEoQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:l/NocFB9fqM=:dgBXAKqJG7ZUkxWbz2pGBe
 MtAPLIMZA+jYGEi78sP8NJnywlwlQZEed8KaCYTIFsxiyLSuEGWy8OADJQXJNTfMjLCs69uKP
 hVoybyusQoo0FfU/wCyt9YBY+rpSw+fSmNEY65AKWYr7eoerTGY7S/YuUyAG8551iGSERxkks
 SecXVW7oMn3yNZcU+lXy6py7PQ1RdqEmUfmxZQg8qlon+e2yvyTwYqpiyjl3UPiYo/gIweji8
 qqNzn9pxCOSIq8BhBiHv42W18Fsh3+Jv572LgNgsNFKyZhbrsgRjPFs3+a3ghKkx8+zX90plw
 ZiW+h8mYUiCtGCacRqfCENa7f6rtyIKcWkbUsEkzqju+xhxeqsa+5cYqOlWQ1e3jNDS+m+K55
 sEHn3ilyeRQnCgqzMe//pIVFzM9yHkeUNbDWDGLvAiOf2BfmzxIYRH1pIenu88oGIWSD4KPWj
 XW7DGeAydV7j5f4MUfc3Ykezo9u+p//xaq9iBLO589Nas1m5SFZ/UNMBi5GAE6CCS8HEa9Z30
 2iMb7qVF0wWmExUUJAR8eKhsPsJsdIpp/1YoQx8y6mymFxsTfwdtIkOBOMJ3VKA9T5URIVM6Y
 7+voQq1cOhf9JqDsBcjMPnOCL9f3ncBSaM8stdXc8NsDH3HytjrYa8UCLoO0+9yCEoblx0SWv
 dkEHGI5ZmTPNXKMHnP1cqbYYKiG0X3IuHiWKdjIlDUocoxBpEIRXkNuzZUDszOuAoAGcM/jj1
 BcaUGXh6VAMXcf+E6/CFkXZoHLcyQCGEZnk8cufoHHWDZm6ll07UuFMN73s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_030403_125556_7EF63341 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Madhumitha,

On 14.05.19 18:02, Madhumitha Prabakaran wrote:
> Fix the warning issued by checkpatch
> Prefer kernel type 'u32' over 'uint32_t'

grepping the sources within vc04_services shows a lot more occurences.

I suggest to fix this style issue at least for the whole camera driver
and name the patch like

staging: bcm2835-camera: prefer kernel types

Regards
Stefan

>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> index d1c57edbe2b8..90793c9f9a0f 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> @@ -309,7 +309,7 @@ struct mmal_msg_port_parameter_set {
>  	u32 port_handle;      /* port */
>  	u32 id;     /* Parameter ID  */
>  	u32 size;      /* Parameter size */
> -	uint32_t value[MMAL_WORKER_PORT_PARAMETER_SPACE];
> +	u32 value[MMAL_WORKER_PORT_PARAMETER_SPACE];
>  };
>  
>  struct mmal_msg_port_parameter_set_reply {
> @@ -331,7 +331,7 @@ struct mmal_msg_port_parameter_get_reply {
>  	u32 status;           /* Status of mmal_port_parameter_get call */
>  	u32 id;     /* Parameter ID  */
>  	u32 size;      /* Parameter size */
> -	uint32_t value[MMAL_WORKER_PORT_PARAMETER_SPACE];
> +	u32 value[MMAL_WORKER_PORT_PARAMETER_SPACE];
>  };
>  
>  /* event messages */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
