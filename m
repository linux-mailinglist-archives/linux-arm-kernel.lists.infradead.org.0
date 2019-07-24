Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5B572EE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 14:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kotfdyHyMm89oQsqkhMPOcuWxg0HAwxCwwPdP8NFsA0=; b=SlLQ410yRx2qPB
	xHgOA70Dzh0TAyxsoeplg2KSvzd2mwy2He6wo42JXnrS3cfVfDep9xSsN969CaimcEdZdOfNFUzgx
	RgL6sGZVJ05V6YOM6MZP562MAeMm5mSEM6c8JCyNu06RbDOxeKZ2WeVtz70pFGgWmmJPwFiP9p/hz
	0bHc3tcle0s+8ut2BwO/kCLrudGaCFThXkkRoeP/k8nffnaeoqNGkuOWNixAmVfuec5VztYlR66NF
	0aJBsiILzB1FPxRJifPz/j2aqi5u3N2SYHlx/qfvXwGo9PIzcqNFWbaSIFFHXZ4RTNEOQFG4TLdBP
	TMchqbUEybQI2upISVkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGSW-0008T5-OZ; Wed, 24 Jul 2019 12:33:28 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGSN-0008So-Mm
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 12:33:20 +0000
Received: by mail-lf1-x142.google.com with SMTP id v85so31801607lfa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 05:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X7kS5ybLEu9f+0d0ORBluh1Iea1DKw9wPyo+P2zv7nU=;
 b=U5LKoKOHcjVoVpEjsIlvqHSGVMxp0l/IvE/3HS3WSSzG3rIaHsjERsN3xAJcKhHiBZ
 agNocCeScCzkjLkEcV78/wF5qEJzanfry+P55q13YsSD847Y3zlhgxel7MnYXK8SvMbu
 pf3sNFjzjsMDtE6d0kG9CYq355vNcgo3eQe79fOO5BfouaKJG1rW9gXpL8kFAig0HIJb
 a0uydKJdkyi0zb6SUEu4g1yMmXyOWwvCTBkNJbjS20bzRwVKwrsFKiIkTardEcWeDPvF
 mkQh/cqUw0FVWtaXX7SQII1T1D86RDgy6qiHH8/NDLevmFyCz33+z9d4P/nJpFYbCHPx
 Br0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X7kS5ybLEu9f+0d0ORBluh1Iea1DKw9wPyo+P2zv7nU=;
 b=Gumewf9lnegKwWA7Hw3pQOq701DZ0x42HotE/CBcaM9rIAjyyEsCyeh7br4WDP0QK6
 y+7AkfYNmrBrL7p+lFHlVdFyqV/iRV/ktQZUOwnVfmRQncflFomOx8vQThOM5vFRDZdJ
 5YOFoBzqqXPzdDaXyDQ3rZjrNuISYJjZm4qPAlIML0ZQUB+DlrEBXbUh77WDG+q6BcPH
 GkYLZVPO/j3JzDM4r17vnz7OSLuyzn75bYO1j2khCloupBhB3Ayo8SYVG3GfL9gFHf9y
 UspoyMBy2wFfjnIy2wmo28Gk/bD4G0/HoJ9DXzQCNFP0HW8cnf6C3GAI7Sary9EDr8ht
 qhig==
X-Gm-Message-State: APjAAAVK+jy9zZIpxeMIFKl9ZYRIk7ogF9gJobjl01n4+qDobHUbzqQ4
 LQO63X12uhG+N9DzCsZELMsKbGIw2nRePr9oXqPLbQ==
X-Google-Smtp-Source: APXvYqxF9+lZImdaWVw2qDAanbZBmG/zxRqdtKg/JeSUyBHG5btyFc/m0EUT/jR3A7N9H66HWGbnKaViaV05x6HnPu0=
X-Received: by 2002:a19:7616:: with SMTP id c22mr39077348lff.115.1563971598026; 
 Wed, 24 Jul 2019 05:33:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <20190723133755.22677-2-linus.walleij@linaro.org>
 <1709073.y2qmsckc0Q@linux-e202.suse.de>
In-Reply-To: <1709073.y2qmsckc0Q@linux-e202.suse.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 24 Jul 2019 14:33:06 +0200
Message-ID: <CACRpkdYAgLJ9asftN5EafeN5EVEyH_xHVdwjbecZqvgz-JJ98A@mail.gmail.com>
Subject: Re: [PATCH 1/3] RFT: drm/pl111: Support grayscale
To: Fabian Vogt <fabian@ritter-vogt.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_053319_749301_062A87EB 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Tang <dt.tangr@gmail.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 5:19 PM Fabian Vogt <fabian@ritter-vogt.de> wrote:

> I gave the series a try (virtual CX and TP so far, will do on a real CX later):
> OOPS with a nullptr deref during probe.
> This diff which just moves some lines around fixes that and the LCD appears to
> work properly.

OK I folded this into my patch, thanks!

> Once I verified the 24bit depth and clock speed config on HW as well, I can
> give you my Tested-by, or would you prefer that I resubmit your series with the
> fix below?

It's fine if you test it just with your patch as-is, I didn't change anything
else.

I would be amazed if it "just works" now.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
