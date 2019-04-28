Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6D4B6B0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:32:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nbwSPuWbjNS/POd44SJ8hZBsZHv2UindAQo1sWxzKVo=; b=F/QH0dJ45Nj0Jh
	APATsFRR/4WQKPgTYscIfkV33QfFU38SRKYYlw2gMxOV5vxNlfWGFqgXANW/TkagvUl5qeP5NFtmB
	Ibg5/QmIQfRCeaQ+4ufE9HfrSp2Wg5Z/544yNfIijXvWUqCcYzLWkVd9M80qaLZ22tVpk6QCM6Oml
	no3omNd+DlSMeNptyQgoVlJQGU2C+TpicBsqTGQiURtfPfxoPVJdlx1hONLlSA0fdRtViRYYoexuK
	ppGGlseUrShHdG+s9bJlqL7c+98/K5hIIESVOniMfjmqI82hIVPYtxhmcSIfa/RMSapVMGaYwsmQX
	kAneXsjzek3dn3EkzONQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqTm-0005ut-FU; Sun, 28 Apr 2019 20:32:54 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqP2-0001xM-SW
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:28:02 +0000
Received: by mail-lj1-x243.google.com with SMTP id k2so7448181lje.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vIKbPPRzPgMT6fVTcOsL78ef4paCMJZPM6tz30HKBtU=;
 b=OUMqPCsLpQe3Y3E7lMPubtN1fBxp568ArAeSAtRUNz5PMcNQVwp4tvIDRqSLR17Gjp
 EOKR6fE06JvhDTj46nAiE50LdS/ZQmCK2R8zaMMXXcU+rOPnfsu6LdvNo3uImN0ezFbW
 Ae5yRfKRC58ZLNau/1YSeHKIAvEkSYdyEI8my8Rto8cKBL3dyrzzleDaFCnQ6+0CNyvJ
 ufLd6sa8pw/8+f8LtH0KjlD7VHZVWc2IYOWoUzZgJt/7y3/Q1m2eGM0BQgAR7hfOzcBW
 lgxsA36zdO1zZIBy40z242o5WyF8nx1jP01sd/OWrsIwhwheXF5kl3ORYfKUbtrmzY9/
 R8Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vIKbPPRzPgMT6fVTcOsL78ef4paCMJZPM6tz30HKBtU=;
 b=SQhnPqp/Xb+BXcG1Olvni/tpppiFFa4X9kUmyI42ltYTjhaUf2T8Vr3+qsMAu0r5aa
 6Sku9Aht0chGp/EWJVtgtr4EjsSBtFzyJEL7ZCD51UsjSpX4mDk6V1TjjKJgw99wMxwi
 S/OHWpZS8Q1v0jVlW2rEH5K3EHHFGYNQBfq7YJFAReBdmEvCWnN3zd3L/KjB0m49u3+3
 I9Qn8zjtpZcR4yQe2G+Ci2IpKGkYMaGxFBqp6COz9YYxqoDdoRBPHu2HujvP1rP0XEh2
 Ye6wNMQ3PQ3B8mOUCvqyxg/Iu58pEYXYWesqMCEqKmsafuigagH1RFx2gVpp6ERtCS+D
 XZow==
X-Gm-Message-State: APjAAAWYe276oMzMiHySXzUDx2rWv3DOiUeAPvkKfNfNjIWBewBl9JDk
 kSQEpCKHDYFiXfuFBqRiWmxqzg==
X-Google-Smtp-Source: APXvYqxkCiMT1pmHOtSO4Vui9yYdiA+Xd4GixZC7VWDiqYZQfllWPEoEUkGo6iv5kDtZ17J5AQyG/Q==
X-Received: by 2002:a2e:99d2:: with SMTP id l18mr16360869ljj.27.1556483279327; 
 Sun, 28 Apr 2019 13:27:59 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id i64sm7490586lfe.18.2019.04.28.13.27.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:27:58 -0700 (PDT)
Date: Sun, 28 Apr 2019 13:24:45 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL] i.MX fixes for 5.1, round 2
Message-ID: <20190428202445.3kdmpmdfzlujgki4@localhost>
References: <20190415090546.GA18917@X250.skyworth_vap>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190415090546.GA18917@X250.skyworth_vap>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132800_920543_5BD4846F 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, arm@kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 05:06:07PM +0800, Shawn Guo wrote:
> The following changes since commit 507aaeeef80d70c46bdf07cda49234b36c2bbdcb:
> 
>   ARM: imx_v4_v5_defconfig: enable PWM driver (2019-03-22 09:56:11 +0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.1-2
> 
> for you to fetch changes up to 7aedca875074b33795bc77066b325898b1eb8032:
> 
>   ARM: dts: imx6q-logicpd: Reduce inrush current on USBH1 (2019-04-11 13:45:03 +0800)

Merged, thanks!

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
