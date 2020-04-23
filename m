Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEBE1B5FDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1lHMeBVqrWxeju3xh6+q/lmDC9eclCG0XixSGjwU1WM=; b=OYPlDaH0gKl/I6xkUfawndzS8
	3C6XMD80TZ6AhZ+JFhSvVc5vdbLne06UNtwXmiSTtXkYhuU50oz03tEpYbZ3YeaBsPoaryJcnmj6Z
	VDqlJIl0+uOfTFwm0YwDJaisDPBoD3ikyHG4pK2UsEKU/fH6ZyGnBtlUhsbBjRumo0mlCVfTWGk0N
	z2wi3rlJeHQeYaxxDeZxPi3uHBXn6FzpfTGRJtk8U3q78ExvxVvTLDkuBfNVsVVCkAMm6gPkkTe0C
	Eab3ZlWnpg+l5MnV5stA9WOFJ19JbOHwSXQtmUBN63IcAlSYwrIwiTzMaCWsg5OPWxx5q0qdwP2Yj
	Z3v8jMF8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRe4G-0004nz-05; Thu, 23 Apr 2020 15:47:12 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRe45-0004lm-JH
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:47:02 +0000
Received: by mail-wm1-x32d.google.com with SMTP id x4so6946821wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 08:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=gexsfzJrWQOn4i3Pq7SNyCJbao42w3cesdQKpJpl5r8=;
 b=hrwao3YwPmfTB2ywD7Jch6LubuZqoTMsMePjZGu0bDegj53Uu4CilC25U98EjqH8Uq
 f4+98L+bniHA0DwjGKutR6f3EqykCxgTLKmp1ve2FvOzJ9kr1JzFh4mXiabgJzCH46U4
 3tz+5skehkyqQO+ZJ6HeiT3axwKotBq2ezejAlsTj1mr+sqTobtdiVyfyBPxoQzJ4ly3
 2ZoVgQL/HUg4F6nPQDr8Ykv5IzZwZszZX9e2Rs4xLeaIn0+f7Itjk4kaPMR9VkpcBgWP
 9N4AUDqO1Qhrlao0siWFf5xP8hLgzDxiJR9vQ5NYMaFxctPukkacxm6YpvrWXHc7FdU0
 zbKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gexsfzJrWQOn4i3Pq7SNyCJbao42w3cesdQKpJpl5r8=;
 b=C/lg6EMTdIIQLv9aqdreI8Lnec5f1tFWRIOlo1SdYtUaNdTMo6iTd51HP7qoa1wKv8
 qXzy9zqK44hE+eGl9NFx+wdLQRncOK5ixh/Y3ZwQBxScXWE/ovptQJHTUaGnMLJxenLk
 IYoJvo8d1f2NnJBaLg7Yo4Bnk98PMuSA/WoeJqpu4ZYP/rfBfd5TRa6UPobw6qG34iI8
 JTjuVygtAJp/+FwYSTD3vvCn9ONxAng/pDE2oYJtu5XDMEJMyUDp01SjOXVYuAwKoM/H
 zy0N9dY0Ultt4LYhfpYPDRSd3ecS/TkM4UVJ4WuyUZuqvil/e3d2o7WrIEyPluz8BrUT
 FBwA==
X-Gm-Message-State: AGi0PuaCewnzWRC5INAMSpYKZTc4hOfC/8axZ37DNpiT9idotG0TL7Pu
 ArSVLWaplpt8LSQOlwHdH6w=
X-Google-Smtp-Source: APiQypJAhweB5DTJ9gVc3XAzKWIz4J2EmUXYFAeqSON8LkVyBJRSY8a4TlgTT3EAPufV9JrRElWatw==
X-Received: by 2002:a1c:2d02:: with SMTP id t2mr4819878wmt.98.1587656819721;
 Thu, 23 Apr 2020 08:46:59 -0700 (PDT)
Received: from [10.230.188.26] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a24sm4072415wmb.24.2020.04.23.08.46.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 08:46:57 -0700 (PDT)
Subject: Re: [PATCH -next] tty: serial: bcm63xx: fix missing clk_put() in
 bcm63xx_uart
To: Zou Wei <zou_wei@huawei.com>, gregkh@linuxfoundation.org,
 jslaby@suse.com, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-serial@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1587472306-105155-1-git-send-email-zou_wei@huawei.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <4d5b3f7c-e516-2a4e-3594-1f8f705c16ab@gmail.com>
Date: Thu, 23 Apr 2020 08:46:54 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1587472306-105155-1-git-send-email-zou_wei@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_084701_654629_C50BD529 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/21/2020 5:31 AM, Zou Wei wrote:
> This patch fixes below error reported by coccicheck
> 
> drivers/tty/serial/bcm63xx_uart.c:848:2-8: ERROR: missing clk_put;
> clk_get on line 842 and execution via conditional on line 846
> 
> Fixes: ab4382d27412 ("tty: move drivers/serial/ to drivers/tty/serial/")

The driver was doing that prior to being moved, and since this is an 
error path, I am not sure the Fixes tag is really warranted.

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
