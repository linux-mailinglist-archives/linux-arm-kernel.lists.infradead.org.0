Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26B113D0B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 00:41:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hGvHJ145slS+8LrZi5RI6kISPL6oVbllC8xm/cn6tdU=; b=GjEPN9y41JX7+Z91qobVzC2Koe
	xsPqnx+R50vul6DOE3d8ZBsED0lUFOpEXHT2FQz/uc8KNm4UBiGbiyqqvg2W/V0QQ9an92LdmyJ/x
	vUBbLP0cWy3G918wlDdxfqsVSFTvJA71cODas+3A/18qdhXUi6JTGdbgZURL3omvr76/d/jg0S2fL
	KFcuv0TECiKyzXa+XVDV8ScFPV16Yfhu+N59dhoN3/hkM3KZSZqkxb4/6F5r5vtCs1FI8RzkK5p7m
	iZwLdNumMYH79o0ShK6LS1/Eqg66VLMc0Z/RcLfaNwvoio+FDntL1RteQsbiAtyKBi+GQoiGJooM3
	kCr9DJlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irsHX-00061d-Dt; Wed, 15 Jan 2020 23:41:03 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irsHN-00060Y-Qc; Wed, 15 Jan 2020 23:40:55 +0000
Received: by mail-pj1-x1043.google.com with SMTP id d5so635158pjz.5;
 Wed, 15 Jan 2020 15:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AzbtYII6ZVOKx6F0wY5VC0oFwSgB112mnSOGZkVBBbM=;
 b=MCmVuyT4rQe2DIH3kN8C3aiPBlTcuRPbUqaB0AS6IkaQTDwQ851ULpadpoLfZEGZEI
 rt55jt+QGD1Oho4uKmWmc4dxDMmBvb9AUySg7ruTAjoshyxoTNOFj3GkZyhojMuVHysy
 bGyLReIheavsFYG9Uot0bLQUi5WOXaepzfz5EoJn183CPJrXVC3eTJUnuYx+8d4/nB5d
 QBaTdvZuU3ERzdholPzl2tiNwnc/TI5rYx8VijpeKTua1cAp2F0tf21T35KEkDD6zABE
 OyMdBv6rpQU9lNBZ6it5xXT4R5miXA2lrr0B8H6op+ZMKrGvn5E1AQHxzLGZeLoFcVu6
 ij0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AzbtYII6ZVOKx6F0wY5VC0oFwSgB112mnSOGZkVBBbM=;
 b=pLB0jlf+dXHT/GYa5LGs/aobqaHQPtmvt16n+Mw7C6owGyGBmxpCKwyzayXM/FDgvw
 RMwzGYpi5WylZnG8i75qD+OMm/49LQAmvCarSoPnXCbsqRn82rnnEZm8wunsxyNHOWpM
 XFKGsRNjYnYGLxV4C/v4bMRM4hcMKvw4EciW55CliwSfwaZAl2lc9HWT1aUrD1NwySqf
 dlnZcu3Tl+JOn07DxiXvYVTjt6w545qwwM3eSxeEwZ/hFEdEPbWmQvTKXhoAdrOEW93E
 zVD+jxlpSF1m5POUG4d13+Nr+c1pc2IDtsWJ8HTeNVABhKLVmPoSBTaxOCgHjJnOoW5k
 6fxg==
X-Gm-Message-State: APjAAAWu+n+zsVAlbLCVk36GflTSe87DKEX5YktqeG4WdGT2eN0zENmd
 Ox11obDuHL6j2jNL8Kc1ocTR+ABq
X-Google-Smtp-Source: APXvYqzQJQYQH9DjDTHOiuAVrravKNL8ADSaJjt7EbkacKAEQPVfGrTVHybO0GiGnbz3t1G4TQUvVw==
X-Received: by 2002:a17:90a:a409:: with SMTP id
 y9mr3020162pjp.119.1579131652518; 
 Wed, 15 Jan 2020 15:40:52 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s21sm22905918pfe.20.2020.01.15.15.40.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 15:40:51 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH] ARM: dts: bcm283x: Unify CMA configuration
Date: Wed, 15 Jan 2020 15:40:50 -0800
Message-Id: <20200115234050.30408-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110172935.19709-1-nsaenzjulienne@suse.de>
References: <20200110172935.19709-1-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_154053_866671_57EA8759 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, phil@raspberrypi.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 18:29:35 +0100, Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:
> With the introduction of the Raspberry Pi 4 we were forced to explicitly
> configure CMA's location, since arm64 defaults it into the ZONE_DMA32
> memory area, which is not good enough to perform DMA operations on that
> device. To bypass this limitation a dedicated CMA DT node was created,
> explicitly indicating the acceptable memory range and size.
> 
> That said, compatibility between boards is a must on the Raspberry Pi
> ecosystem so this creates a common CMA DT node so as for DT overlays to
> be able to update CMA's properties regardless of the board being used.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---

Applied to devicetree/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
