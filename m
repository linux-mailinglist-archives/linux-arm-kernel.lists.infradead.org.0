Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0280B1FD824
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 00:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayo4yYZ0L8ihwefROx+0Xk52X+wYJer34VHf1ox/q6U=; b=AvPcdQrSyQvt5Q
	PTMUdFt22pJeYuytWcm+7HzHr+blZxiDSNS58GMxxplKdRQhDGSN7DS1/dbOMB9YJ2z8qpJyyvvOz
	xPNJ5tjmso8IayqgLIPSGNK147JT24ZIrF8alNUWIrsobgCMVrNVpA6sSo3ldExLH3/fs29P8PpKB
	0I20POxjhU/WoG7aXgjH3Y9s81QgxNZc92WSa+uXKf8BQp31epAoZjnrSSdw+E4RvxzvkzFDK87ZE
	0YcaWybJ6fY1k9va8Tp7RyY7gDn5pJCVvNQR01I+4LUS2+gYOc3DJdUabwmONwiS6x7rSIvh3dF12
	ORcGooVH06OmnCW+a0cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlg9x-0003qq-UM; Wed, 17 Jun 2020 22:03:53 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlg9p-0003q5-LF; Wed, 17 Jun 2020 22:03:46 +0000
Received: by mail-pj1-x1044.google.com with SMTP id i4so1724836pjd.0;
 Wed, 17 Jun 2020 15:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FxWBzqH20Ldut/ncbfepnMWFG7FF0MXXG+/ZQ1Q/k20=;
 b=Q8L/mum3I/Hjh9d+oNtQ/w09JtOl4ahKeV0h2TqgLkmhSyQ0mUf4EwhseOmSA3Kt47
 oRGdFqyRqOS3w00z7fjchxraFVbvK5caeXqNwRhwaZbR5lKuA6XMnx3BGvZ/91G9e5BW
 r7WpLacvYI3YIeR1zbACg4BQtwVGgMhWTN0r3h/wiFJcHKPNep8SgrvjOfin44XQXoxx
 Ngw9EcQ3/Jp/u7dp+kYjK6SH3I8kKCb7zKvZm4Hwh98+zX1MjAIBVbNUsvDKeSI2vlvY
 +lbfI7/eNNJklE+c2SOgIw/nfyE/seqM40xxsiwi/VPpCZF06UjdDzI3F5d9xxL4hAGi
 GGEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FxWBzqH20Ldut/ncbfepnMWFG7FF0MXXG+/ZQ1Q/k20=;
 b=DbKfGvUCR37RllPGX4cnP+xj/PX53rY16ZFjMv7DG02SOvGdkeRQNmFhNpMEzxOl3Y
 wufPTZ/dXKLNzZa5b9bO7FOh3uj77rI4kRG1lMWmp9hu9L+VNPqb/PSZJcQPF7ISgase
 GJHxIqOUMr4+bk7mMehV7YQNnmZstu0yCSme30054cR5Pdr/9/z4/j8gQlIGFkVMWoZI
 zsCVGiYaiqNkxhimHGAXF+2SiACjUjh2hZQJHMFwcH8wIFx3fVgqzR8GQhqhaX7yeos5
 68pLqbXfeMT86IXKdXbdw9KguEBKdxolG/Y28A0YljxqaKTjWOdwtSaqQTQs7iZcBqGW
 zlPQ==
X-Gm-Message-State: AOAM533j2JyY60fKaOMkQGiJlF7CUcaMefaYNPoROArb6ysn+dg09JDq
 9+P9r6jmEcOHPCnUVKs7e9rSD4M5
X-Google-Smtp-Source: ABdhPJytA/fm6+Sl/XlT8Ovsoq9qBn/cy71kg2hsfEpLahwJljbs66yJm9Fn8uiKl5Pw8GYrfcQgSA==
X-Received: by 2002:a17:90a:b384:: with SMTP id e4mr1049797pjr.1.1592431424672; 
 Wed, 17 Jun 2020 15:03:44 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j6sm745499pfi.183.2020.06.17.15.03.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 15:03:43 -0700 (PDT)
Subject: Re: [GIT PULL 1/1] bcm2835-drivers-fixes-2020-0-17
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
References: <20200617111453.23345-1-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <7979468c-3781-ea2f-ec36-1f949a14e807@gmail.com>
Date: Wed, 17 Jun 2020 15:03:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200617111453.23345-1-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_150345_694849_2474EBF3 
X-CRM114-Status: GOOD (  11.44  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/17/2020 4:14 AM, Nicolas Saenz Julienne wrote:
> Hi Florian,
> 
> The following changes since commit b3a9e3b9622ae10064826dccb4f7a52bd88c7407:
> 
>   Linux 5.8-rc1 (2020-06-14 12:45:04 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/nsaenz/linux-rpi.git tags/bcm2835-drivers-fixes-2020-0-17
> 
> for you to fetch changes up to da785a87787c97823d12107a4f0ec7adcc2a78d9:
> 
>   ARM: bcm2835: Fix integer overflow in rpi_firmware_print_firmware_revision() (2020-06-17 12:51:45 +0200)
> 
> ----------------------------------------------------------------
> Fixes raspberry pi firmware version output
> 
> ----------------------------------------------------------------
> Andy Shevchenko (1):
>       ARM: bcm2835: Fix integer overflow in rpi_firmware_print_firmware_revision()

Merged into drivers/fixes, thanks!
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
