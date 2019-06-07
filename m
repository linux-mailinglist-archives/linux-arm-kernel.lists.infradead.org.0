Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E978B3962D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 21:51:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WOsvKNGrLwVOTpPnLYKW3WHGfGILZUckdCaIP3t6Eyw=; b=MUdgnjArSbfesd
	QlaZUyYzCFa1JUl4Q+cagMZYD7LDWmCQ2CNkz3bIoxtE/ksa+th5sQJGlVaTW6ZDFDln5mxD0HDl2
	45740NOsm8Nmg3yKjCAuz724/Xx9nNvHhwiz21TBMmUJmhQhwCmNUsuxeyVFuR58RPPv5t/Mfy+Np
	Z1FOlHCgEvvSu0jTRc2awlqlFSdzwnOr7BoWeU6hEwoh9tsFVUG1Hrpf0T4NVbAaQbzZNdXFu340W
	RTcSkKsWb5Op5v1U0kMG0T9Ce/V2JtBL6y/5CHMnb001dY8BLzDjAK7aBX3VqYEGZ8d5kQOkvn8Cd
	xf769OOXA9CpfdIYNS6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZKtn-0003nl-8J; Fri, 07 Jun 2019 19:51:39 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZKtg-0003mr-JH
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 19:51:33 +0000
Received: by mail-pf1-x441.google.com with SMTP id 81so1743139pfy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 12:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TVEMd3bZMyQ4yhDeztJRuk2J4p8KHFonqrl5D0eVVJM=;
 b=kx9ozOj9l8ViTxZ+S+v6BNTF3b8JJmWack9Y+41MjJrmzya6N6cjc44kWOFe4EWw0z
 xyOJvT3euw+oQ+2HGZVtHAKbfivt4twyEWb0jV2QJeBRxmuYhvy03PURjx06hj+c6li/
 zi0AVVWJ5RPrr7aueKO4i6DfodHwj3/9HxZwvUyP5sSvLjG5dLTG1WDV0msp4TMpbSoB
 /AsjeYMzfTFADZSMMSlqPgxuKrcyRZQeObboGFba0deMFwtAv+6HVKc7FAkzo5LR0jKT
 x9wOwne18xSxPqjhFpeyvEJ2Pt5iwvRAB3wUxcDTNqqaOFSOLbKaHEb64k4TO9VtWx0P
 L3VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TVEMd3bZMyQ4yhDeztJRuk2J4p8KHFonqrl5D0eVVJM=;
 b=CjV8bKvtzfjzeZUs2l0bRw5+dlZ/VZf7veMNSxiX/nIoNcyL8+UfBF575ApqkG6hhb
 qfl5oTs5IvyZdYx+45EFJibjdIXHax2NfCkyghFj7Cibo/6PW9QCLEfoXrJsFxEDg8tm
 XXQmFZY+svFhsZ8QK3fyG9//50cdQ9MWstrD1rSYdH6Pqx5rXT1B3OJDHVaEe36k5jzT
 In2jVdsBwjsIRyq4Fx63KT/CfT+OO+P7fGKe4IPoFuBOhga68FO/HBcvdxk4FLQ3oGnj
 idsIoVk1Aj1o1BTjZOkpZEKf/zTqac12+089cSjKAjcSS5xT2Ds63pMmBArb8bKp98NG
 yaaQ==
X-Gm-Message-State: APjAAAWWiO9T/K7mJ2YLHI5/ueugd0f4vIoylLi34ssnky8DWtn27ejt
 t5pXukl9iYgJBOCK4i0jx/PZgQ==
X-Google-Smtp-Source: APXvYqyW4EyjvINpT2OoNEqPgYxjlSm86KmXR2ap3vxcbxT+eDnPSbJRLJ+F1axxyMSBoVdW2eo/7Q==
X-Received: by 2002:a62:e710:: with SMTP id s16mr26263188pfh.183.1559937090852; 
 Fri, 07 Jun 2019 12:51:30 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q3sm2662628pgv.21.2019.06.07.12.51.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 12:51:30 -0700 (PDT)
Date: Fri, 7 Jun 2019 12:52:16 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Andy Gross <agross@kernel.org>
Subject: Re: [PATCH] MAINTAINERS: Change QCOM repo location
Message-ID: <20190607195216.GY22737@tuxbook-pro>
References: <1559936691-15759-1-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559936691-15759-1-git-send-email-agross@kernel.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_125132_644153_0B1E5C61 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, arm@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 07 Jun 12:44 PDT 2019, Andy Gross wrote:

> This patch updates the Qualcomm SoC repo to a new location.
> 
> Signed-off-by: Andy Gross <agross@kernel.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 5cfbea4..de1e935 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2079,7 +2079,7 @@ F:	drivers/tty/serial/msm_serial.c
>  F:	drivers/usb/dwc3/dwc3-qcom.c
>  F:	include/dt-bindings/*/qcom*
>  F:	include/linux/*/qcom*
> -T:	git git://git.kernel.org/pub/scm/linux/kernel/git/agross/linux.git
> +T:	git git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git
>  
>  ARM/RADISYS ENP2611 MACHINE SUPPORT
>  M:	Lennert Buytenhek <kernel@wantstofly.org>
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
