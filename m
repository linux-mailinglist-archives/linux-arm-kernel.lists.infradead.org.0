Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A47165C37
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 11:54:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CkYOc6cwYduOcE9iLw2k62ydPAGkYMDYNdg9GhK5OvI=; b=GlYbbY+3uHQOyo
	ree5uGbmMMZuOFZg/X/s+WM6CVKDce7ccgpydNkDbHE3Nw1SQI3JFllZgWgE6+H2XJuWKoO7Rl8K9
	VmFXwx965DSijbFzjNpxcMJFcfeijd3YCspx5XJwVDL7N0b03mr2KAsQ32SA5woRCw78Mkjjj7w2H
	Ntvnr7TQ8OTL3Olkd1Kdg5dMRXZ2MLFgBW1unKkRYLgQ01jfyV+7EiQxudyBr+zEV4+F9RNzhRahY
	L/9oGa/bV8iKJATYproIUVqEh4iqd5yv/GayIB71Om0ilINW5lf1Z09HmzZOjpwITbPlaDXs/N7pe
	fiY+NaEIq7fX2M0NJTZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4jTi-0008Sr-1h; Thu, 20 Feb 2020 10:54:46 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4jTa-0008S9-4Y
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 10:54:39 +0000
Received: by mail-ed1-f66.google.com with SMTP id p14so25019204edy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 02:54:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OlJB8KVjaJu4V3iCSe/8/XtMjoIEyaojr8gxPkxkMGA=;
 b=QN5am+534uC2Z1/QSr74oCurjdp1HMM/gDVUPnzuFJQlya32EB9sKT6QuY41MqHMqb
 POIQUQl6bJdfEzteoaFgeTe3Oo3hes6XyCJ1xYyWHg5G1eJk/UZIqOIaKeWBEb7ngn+d
 L3jype15xVlJc9oxf4Se9Qq5eOIbpnFN3hUYuoKqepKxoewZuIVIMPie8W2zKuQ8y/Qi
 uP1csQl0x0G8l0ZkeFJtWG4qggeFDfZeEVGsAllpPovDsEwtZJQQ4UEyaq+y0/Vg8kJb
 FGYAyrWVg9oh0jwiSXVI5M55J/zRQ2vK10S4vbFH0CwfxCh588AM4XPezleDrBIC4I/0
 OVcw==
X-Gm-Message-State: APjAAAVMuivxH/YaojMrxpU3MlluP6ZIEyUD9zYwatz7XZdI8mD9sVgV
 Uol/XuPOM3fjE/v0M+aKsTY=
X-Google-Smtp-Source: APXvYqwyUudb+r8CvxVMqeA7AYv9LWCba2g0beLumjzze2LHmRQY3XC4lygmlBj+6JSDEmDo5t0KbQ==
X-Received: by 2002:a17:906:20c5:: with SMTP id
 c5mr28401732ejc.330.1582196075658; 
 Thu, 20 Feb 2020 02:54:35 -0800 (PST)
Received: from pi3 ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id a10sm76892edt.50.2020.02.20.02.54.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 02:54:34 -0800 (PST)
Date: Thu, 20 Feb 2020 11:54:32 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/2] tty: serial: samsung_tty: build it for any platform
Message-ID: <20200220105432.GA24587@pi3>
References: <20200220102628.3371996-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220102628.3371996-1-gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_025438_180307_A7466F78 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Donghoon Yu <hoony.yu@samsung.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shinbeom Choi <sbeom.choi@samsung.com>,
 Hyunki Koo <kkoos00@naver.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 11:26:27AM +0100, Greg Kroah-Hartman wrote:
> There is no need to tie this driver to only a specific SoC, or compile
> test, so remove that dependancy from the Kconfig rules.
> 
> Cc: Kukjin Kim <kgene@kernel.org>
> Cc: Donghoon Yu <hoony.yu@samsung.com>
> Cc: Hyunki Koo <kkoos00@naver.com>
> Cc: HYUN-KI KOO <hyunki00.koo@samsung.com>
> Cc: Shinbeom Choi <sbeom.choi@samsung.com>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Jiri Slaby <jslaby@suse.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-samsung-soc@vger.kernel.org
> Cc: linux-serial@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/tty/serial/Kconfig | 1 -
>  1 file changed, 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
