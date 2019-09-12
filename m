Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D34BB0C16
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:57:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/N52mgNRsnhhATuGUNEXJvkPvGl3V/dF1BTqpB6pqk=; b=HZbIpg6Azo+UsG
	2xe9K0vHjfCVqHIzA2fd5VzZle+Aj1G2+0dHm3ivKW+GbVUHwSXzRKeF4rQTchHJMrejOkrAaMkyw
	O/9D+Jl89QJNJOGoJ0KQzYikzizCI5d6YyiUlfx+E6P+5/JWEYaYW+RyYokR5Cot7WvHAWvUCGjTq
	sruUPpftnJPZ2Xs1VXzDvBAKRliIFjU7mmVEXX9MgWKvQFY1/A7KZn1lAydBPW457go4arZJLFYxW
	jzuBSAjjF8APKfj2aghgThH3XW5dPVheY2zGxrUVSJzxohfrMqc5NZADcAZx1MPGP6EiWurIwAyVP
	IXSQjbsXUqmrkKmLtw6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8LrF-0007vD-Lc; Thu, 12 Sep 2019 09:57:45 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Lr4-0007uv-Mz
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 09:57:35 +0000
Received: by mail-lf1-x141.google.com with SMTP id d17so959837lfa.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 02:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2riQYjdYJYpTusYyd81I617wQxn19uT6YXDHRH2PAKQ=;
 b=Wa+2PEDukS5xcIvafDhQDAUFe/6aib6sQO4rzmCZBV2shVTZUYc1Choz82sk5OFlY4
 Bo9nnua++u8b1NHvGuy4ZyRHUTqiv9yNQ1Le+4c+DDg4LxYvMeWN1vZkPO6DSyKALmST
 JQs+2L9fU4+gJB0XEjgm4wEZV3/VG5yPx/tvHUAvcCMR4rb+u0ahVsRi2iD5rOB7D0Dw
 itytXqdFtRF0c1+O4/P/hZnw2nBp0lFAIDf3Vk2ld8q4WPhesgOwyBilOa3+QFL7dE1C
 +zU8XCekX19X9mjOhiBsdEgbze9BbOuoD6q50i0dwt+3KPh8tABZkoemY8ChK4cIGYgE
 IaOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2riQYjdYJYpTusYyd81I617wQxn19uT6YXDHRH2PAKQ=;
 b=N17QqJi4JXquJzc+E5fbQ30lSFzyAWcKDe8cdvq4aQoTulcd9cuVHepHuJC0594+8H
 IlFUupA0iFdFcxjh4k2o+FuH2M+bfpCk88slgPiuk2dyCaCB0YbhsQgSDWfgPeuQNxIx
 kDhFEsr7sSVIy/mWd0AGMHG6b+GvXC5H8zKSvOVSEwqFHI8VrpfiP8SYc8/mz0ibC9HX
 XAjsdl8EFnyBM0xPD3pGxrZo1Veioz3ZEJtnUzshgHk8nb5ak58NocwCDEfA+EnuxFBB
 BgdUIg+RqaSXdrXOt8KKQKmd8mNPr3IATLEP63TU6gfCpPXF7YlEfOs2Gj9UKIIkw45/
 faWQ==
X-Gm-Message-State: APjAAAVtH2CXS7IcshWnyWVQDGPX5dBMg2IUn0GYb/CZup0hyjvLCbDq
 g/tsgJy+RnQOMZm7/iCXqYdRpPeptWzTmx4nJH021A==
X-Google-Smtp-Source: APXvYqyuzJ6eZWaK28dmU7yeuYfU71UXRJhDCit17aW8lgp5kYPE3UpXMIT+KK4butOImbh6RmOSQqr8crN9DXph8zE=
X-Received: by 2002:ac2:5c11:: with SMTP id r17mr27613759lfp.61.1568282253045; 
 Thu, 12 Sep 2019 02:57:33 -0700 (PDT)
MIME-Version: 1.0
References: <1567054348-19685-1-git-send-email-srinath.mannam@broadcom.com>
 <1567054348-19685-2-git-send-email-srinath.mannam@broadcom.com>
 <CACRpkdZe2btC-vjRq1rPaHA9pXUi8N_cZT-RQ5m=PxjmkASieA@mail.gmail.com>
 <535f7569-70d0-1a7c-e15d-b77301867629@broadcom.com>
In-Reply-To: <535f7569-70d0-1a7c-e15d-b77301867629@broadcom.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Sep 2019 10:57:21 +0100
Message-ID: <CACRpkdajpxFM+2VNdOiKk3a=dYfeAOud6C_SXBdL+3L0uYqHcw@mail.gmail.com>
Subject: Re: [PATCH 1/2] gpio: iproc-gpio: Fix incorrect pinconf configurations
To: Ray Jui <ray.jui@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_025734_757752_522803EA 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Srinath Mannam <srinath.mannam@broadcom.com>, Li Jin <li.jin@broadcom.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 5:55 PM Ray Jui <ray.jui@broadcom.com> wrote:

> These patches were actually all internally reviewed by Broadcom
> maintainers before sending out to the mailing list.
>
> Obviously you wouldn't know about that, :)
>
> One of us should have explicitly given our ACK, sorry...

It's fine, the process is not perfect.

Thanks!
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
