Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32431BE93C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 01:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nUQw/BMqyuiKLh8Dk2AuY35xX8WDtcITlwzl1HTFBI4=; b=FXTge9g5SK63hf
	m1MxF7gvmaBQ0zcEjOAjpfI85+njHFhPIyzoeJlQPv3RlweFEEhf+TA8trlFyZ7u/ONyGDJTMjPcW
	fYlWMvWErCjgDvDotjqguC/LbCoU7+fVTIhzs/2ceDlOMk1ge9dbPdySWdpDlHq37KyvK4jMWO06H
	LamSfyJgvU8kU6V/76TqY8+eoE49YOQ3TbHbtbSYT+hEO7GsLShsRlJ8CyutvDHJVNzDZ7SZ+1Ijp
	mgEx7WWP5zhL0pe5Q7bgevR4wXcRGnOjxXI+OYMXbxc5grjvnwWi+SI5Im901rtNu76tIbauxMSlY
	eL2bvcSlXhMDSSBH5ZwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDH4E-0004d9-P3; Wed, 25 Sep 2019 23:51:30 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDH40-0004cS-AC
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 23:51:17 +0000
Received: by mail-yb1-xb44.google.com with SMTP id y204so98836yby.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 16:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HftsytVFMDTMjOvjkbAMtOhlArps9/JX9Jjmc9dLKZQ=;
 b=aRlz1iQuE+DjKNGAM7trfsPQap93p8t0nJittzSw4bImFRHDIPK/liL5FFSH4YeMQj
 vHILMM2idG5jniZtDrdJwOeYc4fXDlsUIgOHIuZYBnDVLGMnjFG9Pco+v30nyJhbfKXV
 7UOwOhQA1di5+a5aHFLllQDKIw6Cy0cXW74hEhU0exHySTBzlIAk6QYTZkvemxUGz1RQ
 Mzz9+EhJRX1UeSC3i+UowJKRdzfw1p17ibcL+AVmaGOQxtTYr1DKbZTW2QnKw/vftMbJ
 894qarwDx0379RAILnV8XbCaHnNDLhMrRgvD92UEixSTyZtACQJ6Tz+SShy5oAOx9a8F
 AqTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HftsytVFMDTMjOvjkbAMtOhlArps9/JX9Jjmc9dLKZQ=;
 b=R9U6JFmV+AJydLz1gjvUS6PU13MAgD4eu9Z/+wjC+3Xr8ILuKoFeqsL743nKzJ2fEM
 4bQEPr0k1Wjy4wAflm+E0s0zK6hwBNbD+QWEjWMn1WgVhSgpPo8bLbIoTnZNTcj8yL/F
 iTO9PI6CYCckx0rOF9u2TQ2cDQOrGUuguv1rIKOJWbc9saEQU+ZY4+edFdwPg2EKKt0e
 4ebGJ5CXztUaHWNLnfBqYVLAqKXsYLEL1fQ+F0BEnAOTFTDiYPrSnWInSZboS4aUM8mB
 +qJ4cQBgiLEPxknhFvquWS5WNDd61BFT+EybKGqSv3EuZ7jSAG6NJfTM+LVEAVDzYcoq
 a3+A==
X-Gm-Message-State: APjAAAVh1PggaHUPX6CZr2sP3tIYUcWg7bdYq/rAANzouirSZbrB7nsT
 y9E4dz1dDLljKdPvok8FoX4=
X-Google-Smtp-Source: APXvYqypcMHL6DNYe5cgfBsTpZAtPJ4UmiYZB77bn3AlK9hPiQ22hhfSjd8Qceo0JYVvlFvvpD/+6A==
X-Received: by 2002:a25:a246:: with SMTP id b64mr174608ybi.187.1569455475601; 
 Wed, 25 Sep 2019 16:51:15 -0700 (PDT)
Received: from icarus (072-189-084-142.res.spectrum.com. [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id p204sm58674ywp.110.2019.09.25.16.51.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 16:51:14 -0700 (PDT)
Date: Wed, 25 Sep 2019 19:51:12 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Fabrice Gasnier <fabrice.gasnier@st.com>, jic23@jic23.retrosnub.co.uk
Subject: Re: [PATCH] counter: stm32-lptimer-cnt: fix a kernel-doc warning
Message-ID: <20190925235112.GC14133@icarus>
References: <1568809361-26157-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568809361-26157-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_165116_349704_F8AF0353 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, jic23@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 02:22:41PM +0200, Fabrice Gasnier wrote:
> Fix the following warnings when documentation is built:
> drivers/counter/stm32-lptimer-cnt.c:354: warning: cannot understand
> function prototype: 'enum stm32_lptim_cnt_function'
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  drivers/counter/stm32-lptimer-cnt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/counter/stm32-lptimer-cnt.c b/drivers/counter/stm32-lptimer-cnt.c
> index bbc930a..28b6364 100644
> --- a/drivers/counter/stm32-lptimer-cnt.c
> +++ b/drivers/counter/stm32-lptimer-cnt.c
> @@ -347,7 +347,7 @@ static const struct iio_chan_spec stm32_lptim_cnt_channels = {
>  };
>  
>  /**
> - * stm32_lptim_cnt_function - enumerates stm32 LPTimer counter & encoder modes
> + * enum stm32_lptim_cnt_function - enumerates LPTimer counter & encoder modes
>   * @STM32_LPTIM_COUNTER_INCREASE: up count on IN1 rising, falling or both edges
>   * @STM32_LPTIM_ENCODER_BOTH_EDGE: count on both edges (IN1 & IN2 quadrature)
>   */
> -- 
> 2.7.4

Fixes: 597f55e3f36c ("counter: stm32-lptimer: add counter device")

Jonathan, please pick this fix up through IIO.

Thanks,

William Breathitt Gray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
