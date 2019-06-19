Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF594BA2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYPKypt0WRwLj16UTkBqv8duGdCI+Yycg+yyUbnDfIM=; b=QYw+6r+ogsIFdJ
	hwrlmlam5CCOK/3OPwwncsshIr9SzxGlN0B20kaqFUKpmr204NYlXBz/NBb8wHcIbZ3ZqMJ58N8Eb
	JZjtf+dTy/Bt75fey/IrUFiVW9M5h+jRcZFkpTHsLN9EfxmaYS3dCkk2cJdA5/Ay2fSdljXXfCPb7
	p/cP4zT+vdJfKAlMuB4Xg74C9Zpmvrn8t+CFN6FHZyGLocLSmwZ+gkWvFOvy0a4IspystHPmpInDN
	Cv8wfbzyT/FM57fBqjkYsjt/6nuWMMd88Z332jP5yhPMi7D5+bNR12vU3jQzDgbrpIcaumOrq86Ax
	dNc2RfPGmbnQQ4HC/Adw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdao3-0007T0-ES; Wed, 19 Jun 2019 13:39:19 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdann-0007Ro-OU
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:39:05 +0000
Received: by mail-lj1-x234.google.com with SMTP id i21so3317821ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 06:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TZTsu054fFhjvBbOLNzhEneSIKF1BiUqY++x6OWY7jY=;
 b=QELy8CA6pBNAZuC+pDDNj2K1yyRt/C0hFMobgxkOPsERU03mDrFGaXXJ8e8CCZFfv/
 Nxb5ZE2/MiQ1tXXCMq0DVN1EetW5b7PP5O6Bu3/zjL8CS6pqrcSOhla1+igmwiniWVu1
 YyafP04BtIsrg6MUVr6QW1othYst71Hqs3zpxw8PpZGhJvN+CYq5Xmn9YLqW6OU2ygpt
 DlCAqjcmuHe5bZ5hu+AXjs3M4QpHkmv4q0isYWT7cpsKAP87i7JExtnn7iAnBo/dPakl
 eGeSoPl5AjZHA4RHPPsthCdPAXi74Aw/uW4fbVRY7bJ+Wgg423s75HvF+Fo/Le8uOF8k
 iX7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TZTsu054fFhjvBbOLNzhEneSIKF1BiUqY++x6OWY7jY=;
 b=BKjWa2++PTC/8iWTE6F8giQsnS41sMrME+AZLScjwSNe8qroa1QMq8IJl6AIHkXDYM
 JZXXQ184fFRKHe2ux8Bzqk8iAUuHDCopyD+VF4xToSYDtAjL9upL2nlp86/JmpMdQtGR
 skpOM9ZCC2yp3RpJvRpnU9jxrilZhKKww9qD0JHXGWV2BwXOLRbRcgo96T79u4B//58G
 QNenA3DCiwxNZDNpeLVPN3fSHw+QWmOvBISPUppoT6yzONcjcyxTBjYL5HnPZcuzdChO
 vvHKO7cRY0wkpOHEF4v9tC1Qp14VlRJLrVG1+zsQrF3GnW/PHGMQnzWT6b9lpgRoAvJo
 9+vw==
X-Gm-Message-State: APjAAAVBcdc9W2lYaXE590iVTUYlSoI6Pfc7rVwGJy4i618T7w3zB2rT
 oExUy+j7Fvrb+rdggFbXt67YYw==
X-Google-Smtp-Source: APXvYqz0gJjEwx6KWU5GUHXIoLM5DU/Q5mc5o5x9ahjbu4X8dSqFa0BsMsMQBj7QoTX7nEtFP+qk1g==
X-Received: by 2002:a2e:5c88:: with SMTP id
 q130mr38478713ljb.176.1560951539796; 
 Wed, 19 Jun 2019 06:38:59 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id g76sm3058439lje.43.2019.06.19.06.38.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 06:38:58 -0700 (PDT)
Date: Wed, 19 Jun 2019 06:15:59 -0700
From: Olof Johansson <olof@lixom.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [GIT PULL] Integrator DTS updates for v5.3
Message-ID: <20190619131559.7x5mbfwlzp6psjql@localhost>
References: <CACRpkdYLcCB6zA2dYj9A0bJU-gQF3QuhmFd0oGt++oa+gSE_Cw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdYLcCB6zA2dYj9A0bJU-gQF3QuhmFd0oGt++oa+gSE_Cw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063903_941759_F5AE9AB9 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 11:19:00AM +0200, Linus Walleij wrote:
> Hi ARM SoC people,
> 
> please pull in these DTS changes to set the flash partition information
> right on the Integrator boards for kernel v5.3.
> 
> Yours,
> Linus Walleij
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git
> tags/integrator-dts-v5.3-arm-soc
> 
> for you to fetch changes up to 62a5017bf825c9e4d3176eb975a01c329a9f364b:
> 
>   ARM: dts: vexpress: specify AFS partition (2019-05-20 16:40:38 +0200)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
