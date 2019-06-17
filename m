Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6634748179
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:02:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vEnxRKBFdHtBRTDTqJKMyxj99tmLXGOQ88oUENlGRQ=; b=ntI3g1z1A/CWKl
	YiA/KyJ19phIviHzz+DFjX/cDcml7Hq1ohTo7yos2iFo8GtOmettcKZuDM0HCYPHK5SLY2GJe0Dch
	8bTOo0Nu20BSvIZWj9o+VTK00GNR2Tbu/KkAsCoD5T0oam3cNlB52OKj//nbJ0WQVYCbMvLbrupPS
	zTBsy8lH1mwHocHcD1SHFDlQpJvHTGVAjpL0X/3wkwdRiXZtXd310NdyLJYZI6PMhP0F2OB3hQhoE
	UguYJiJPgWkM1uyyH8TDo2rfdsrhfNbACC9kmsi3qiQy191LSr1C3g/oqId+StxaZeWql1wcROZKm
	nL6FmXnVouDynVCcz+jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqLS-0003xt-TA; Mon, 17 Jun 2019 12:02:42 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqJn-0002uK-8G
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:01:00 +0000
Received: by mail-lj1-x242.google.com with SMTP id v18so9020027ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LfLpeuHmQaiTLgbEMWhAqMLDAcRWZpH7xfnejlqZ/MI=;
 b=Zq50HUoh2hPOsan+loEPQPpccKw3aAP+2Jv/UcW7NAHUWPEZD8T/o4/2F2i5Rwy+HG
 uEJ/PZUEdWccQsw4RkTaftFzQXQqZM1K0/CWOtJ+EWVRGkWvQZOrxkuhmbypLEus+gs2
 o75xUjBCFguVXNwb2jcZ9nEkAfxnPuvuMI2mmVcAP4bnLvm4K7fm99rM+5CqhItmwgWm
 r8ml6PxIB2QYNntNLunHFUusd7mSVQn8hvKttcsTiZZPBpZqSL4aaMIQZdMgIDbLMHky
 DJr//m8no6eW8gAO7cGP6WtKjek6mnvfXSPgvM7ubY/RL5SuuTah8piaAaX0W5Zvttt7
 PrQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LfLpeuHmQaiTLgbEMWhAqMLDAcRWZpH7xfnejlqZ/MI=;
 b=HD0LdKnMsrYQ513hcarCpKdkEMXSQoVl9NISFzgoNwn9gF3FAqhE6MGd12gqaYmOwV
 NOOj1/58k7VxJ/75Ge3e8Me4Dxf3VIMD9Gum3vRlkSUIWOxB0OLX9RyMMUP+Yl+ZkFH0
 +4FqFsETwC/+rw7n/y7nreDNDpGPAXHy1qzMPa6eW7aQTtFYnQ6wxRhT7OlD8Y2o6XGK
 L86rEmqmq71XRbW5/gc213gaYHTcXLfYESfjUZVlgAAaU7pI20apNo5PanlMVX0Ud0Yi
 gLh7PuZpzsZrfGkXAf7+7t+D6As60FOzzQ79ed/mutOH0H9v8XJBlGsA5y0HObdyRHtB
 w5Zw==
X-Gm-Message-State: APjAAAUrLO8zvAChHUaBTQr8QvBvd3z4ARmLWqXDLyMCq9Iu8xrgNseE
 AlRxPUNG9n5JKx5zaCGNTa9GHw==
X-Google-Smtp-Source: APXvYqz2BySWxhDgh4jKIleBwbpRHsScE6lpgMXW5GMNwoU0gcWMOjz8fJ3N4RyEuf9Zt7aOoFXTbw==
X-Received: by 2002:a2e:2b57:: with SMTP id q84mr12238860lje.105.1560772857169; 
 Mon, 17 Jun 2019 05:00:57 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id h4sm2118160ljj.31.2019.06.17.05.00.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 05:00:55 -0700 (PDT)
Date: Mon, 17 Jun 2019 04:53:10 -0700
From: Olof Johansson <olof@lixom.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [GIT PULL 3/6] Broadcom drivers changes for 5.3
Message-ID: <20190617115310.k62wwiatm37566hp@localhost>
References: <20190612025028.13118-1-f.fainelli@gmail.com>
 <20190612025028.13118-3-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612025028.13118-3-f.fainelli@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_050059_312076_68373504 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: arnd@arndb.de, khilman@kernel.org, arm@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Markus Mayer <mmayer@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 07:50:25PM -0700, Florian Fainelli wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.3/drivers
> 
> for you to fetch changes up to e3b7472362ba5ec84642e1c8d2cc8db6781afe4a:
> 
>   memory: brcmstb: dpfe: introduce DPFE API v3 (2019-05-20 09:32:35 -0700)
> 
> ----------------------------------------------------------------
> This pull request contains Broadcom ARM/ARM64/MIPS SoCs drivers changes
> for 5.3, please pull the following:
> 
> - Markus provides a set of updates to the DPFE driver to support a new
>   revision of the API to the firmware (version 3) and provides minor fixes
>   about how the MR4-8 words are read for LPDDR4 devices
> 
> - Florian removes a print of a virtual address in brcmstb_gisb.c

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
