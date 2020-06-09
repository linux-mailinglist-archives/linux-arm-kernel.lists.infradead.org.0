Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14721F4565
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0ZoDM+w2NGguf78Lm1AB9DaFltkdxnrIDLf0plXXWs=; b=dIEFhF0DUNuFun
	ateEzCHxSM5szwykfD0p+vNgEh0rU4tg4noagqmzxXwJIeXoyqix6S8sOPtvW4nfBFWp4nzij8PEI
	mY5M3SSimDgoTVIM3zZlJbZFf6sLK2GFxkcVApLr8S8tDOvt5JwaH896AxrG2+wRcFuBikbSjgOZU
	36LumSWs8kk/6Q8MaZ3imUsrhXC3AfN7isIWEF5zCNDRz975Iju3L+7rL44jGCyZsI+VbBmbu+U5A
	cop2epXlzDH9ZodqF8uDpaEmf2fpkC9EWi1yReeop61xpPYtVr4jBLZZAGs4T48NbNZG0Axfzs+kE
	rcEe8z0aW56Y+XtT9WPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiimU-0006nY-FA; Tue, 09 Jun 2020 18:15:26 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiimJ-0006mh-Lc; Tue, 09 Jun 2020 18:15:16 +0000
Received: by mail-pj1-x1044.google.com with SMTP id d6so1749997pjs.3;
 Tue, 09 Jun 2020 11:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gHQQinCIzqEJjug0+1o/FM1FbKMIGL0TZzTmm0jtFe0=;
 b=e3AFAIm9qkdnmKstkqTej98vjlXzkrM4oxyUFCst7qAsdixmAdSgQq2gB7aGfH/qdB
 VHOBBkrRqJQmVOdDmi7tCO/XfK6BWEdt9eyRAkP617IiZ10ASUg9PLz3wTWeKe/ZOsaC
 BGKW7W7/OJO7RVHSxHmnMRwt+yNpagJVEecAqP/+FfCjE4Xfb7AlzUcguvxlPWdXlzg1
 YpDo9TYHKudPl9x+J7xex+BD05hyNiviKb/0Cy3XSrYaWD1MMGbRYA70KFE/uXfgZxFB
 NGfMM39GQ12P5V2/VxAy7ZOeh7QqQF+1TyYDeBLjSOOFNudXyewvLeeoEUTn/iFHZHy0
 tEYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gHQQinCIzqEJjug0+1o/FM1FbKMIGL0TZzTmm0jtFe0=;
 b=gagDOcxA7E+U75PTIkbeSCPhpUkPLk8ukttDvZMmK2rEAYMkDQfk1Ufkodu1ZCZlK6
 mCaDBKuNH9zRDbSdc5fviPHWgN0qEnlBo+LX1VB/g2NkZ2kGMVd/82yNSYO/wf7WuRe1
 L+4D3cN0cuW6Ku0IU8NLJP+GeJtCtVStHbyIKdydH8fC49ihbmEKT21TZUFY/6kVmXGa
 ofDiANbNMF3tAldVTMA/wk0SPIAMsX2KDeD8RYY1iExg4Yoj84b3yWtmkl1Jaw2FW5sT
 8G8uiX1jvgkXgOmi/01CgA/hH3xEz8hv5QUB6wqt92EB30xyvIGmlPJ3Lgz5wSoV7usI
 KBiQ==
X-Gm-Message-State: AOAM531HwUpDN15v8L7qykLKLJNF4Kn8wgVLFCNtXALl6Nm97GUVHCtt
 88kV0XqdpM2qYgsih70zpPM=
X-Google-Smtp-Source: ABdhPJxVHA6APINNipQ33TCWmNwWJ73EzJUJGU/KU0wvxLGZAMSGUEEFIoUuKd++Lj4a45zWrRPmfQ==
X-Received: by 2002:a17:90b:3691:: with SMTP id
 mj17mr5551336pjb.152.1591726514140; 
 Tue, 09 Jun 2020 11:15:14 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id y187sm10829920pfb.46.2020.06.09.11.15.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 11:15:13 -0700 (PDT)
Subject: Re: [PATCH v2 8/9] Revert "firmware: raspberrypi: Introduce vl805
 init routine"
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, wahrenst@gmx.net, p.zabel@pengutronix.de,
 linux-kernel@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
 <20200609175003.19793-9-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <ca1f5edf-77b8-bcc6-0e69-3ff8497782cb@gmail.com>
Date: Tue, 9 Jun 2020 11:15:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609175003.19793-9-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_111515_741024_2767AC19 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tim.gover@raspberrypi.org, mathias.nyman@linux.intel.com,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com, helgaas@kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/9/2020 10:50 AM, Nicolas Saenz Julienne wrote:
> This reverts commit fbbc5ff3f7f9f4cad562e530ae2cf5d8964fe6d3.
> 
> The vl805 init routine has moved into drivers/reset/reset-raspberrypi.c
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
