Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F24F1FFC6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 08:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQAFaf1cVoJ9ORb6XqEUkiHhFUjBsp1sc/ENaPNXKqY=; b=K0AuUnyhPp07/E
	ya7AHMcpMhRtII95nYgAjJGwO6eNUq6fFkd/sCQA3o2z3CKBIi9v3m54hB3LgHH1+wpf93nThbVKe
	rUuJbiHTdOa2gAWSqiHYWLZ814/j26jbvQSBVA5+baB4teyVcKLDFKywHAHmFV5dvG+tgp/62ypIy
	uHAYEpETVwqBWZQXfB92+6TzV8I3UULQ0Zupm+aGAnDxkCUEaxwX9iK+9R9FQqsGbbCrqDY8R+pAW
	kln5d9EZhYn4vTOdCqrulVLsQqnuysKPdoEFr5SLkHjyhnOITJPRiL9neW4VCgF+YWXcmPxhqqn7h
	jZZOSwkM8WsSL240pXJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRA8D-0005ir-35; Thu, 16 May 2019 06:44:45 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRA7L-0004d2-8Y
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 06:43:59 +0000
Received: by mail-lf1-x142.google.com with SMTP id h13so1700217lfc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 23:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GPlmit5J4L2vnfkjUhtxIZ40dgEx6//Ymk6m2Tvq99w=;
 b=PmqDKluZzoB6CfZuErP9a5qCJPHeaaXNt+nf3/VlDv/pFU4e+AXF/HQjq6DED8vfHn
 9KOq6WQxxDbg8Ihx50CiuEI+cSP49I4/WaWPIdyTX2OoQLwh4nitBEexe03dQFnwwEK8
 SmSVQZrgRdGKe94FSdEogEvDiWTewm4J4y3S/IJet+j51NsgbuDRJMexKm6Tgqs10ODZ
 4fxuGynpbaVc6u6kpjkbiKSEjhUpmy3mwvDEkIjw3pOwYc+R85FM3uy7pH8a/hOiH+32
 iqrNNp1FIRksthjPGvgKXPWFn2dtVOYpH8Wu1qFaW+61BIeF785kH6zoQ+FQ8I0f0nwX
 RUCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GPlmit5J4L2vnfkjUhtxIZ40dgEx6//Ymk6m2Tvq99w=;
 b=RTWF8F+hkeOpQELhoWHf6NxS/Jx6A1nu9awuiJ8gBSKWuk22tlTLx6nv2VMETk6kqk
 xgfad6ktNki1SyeDnJAgYUi7EYQfLcZIsJxx7vdO6Wbc1K4QTgdp+YGjprGsR0N4uePX
 cZhcStWPakCFT3keh2i+O0hRV07ZsSqujrm+VWQMukoN6GDOcwgSb0QPUJ3TuXMlWWYr
 LIH2x4EMICY98dTDKy9bCMQccS3fJkgOgDPPRcpvISTqhXsW7aFt+ai2Qi//F2CLAsG+
 7LQrhtUuORS716X3/pp+UJTG41mSSClsKSQAV3a5yaCdrpYkFgItdGBBJBzdDIXHATTv
 AU9w==
X-Gm-Message-State: APjAAAWK+RuRVdkRoFNWQFhY9grobMXYqNGVGZ024P4FBExyHXWvZoQ9
 DeQSN7d41TC328+wUcy0/WPqMg==
X-Google-Smtp-Source: APXvYqyeMTa10H4s9XOIW2EU+e8qUbd9J42a+cI/L8ghh9cOeEQ/dOe7y/sFsn/hFHhT/yD/FSJ4gg==
X-Received: by 2002:a19:96:: with SMTP id 144mr22079294lfa.29.1557989029397;
 Wed, 15 May 2019 23:43:49 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 29sm724406lja.35.2019.05.15.23.43.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 23:43:48 -0700 (PDT)
Date: Wed, 15 May 2019 23:21:58 -0700
From: Olof Johansson <olof@lixom.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 2/3] soc: ixp4xx: qmgr: Fix an NULL vs IS_ERR() check in
 probe
Message-ID: <20190516062158.zgaykg6mas5ydq5n@localhost>
References: <20190506063109.3072-1-linus.walleij@linaro.org>
 <20190506063109.3072-2-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506063109.3072-2-linus.walleij@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_234351_738323_5DEB4669 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: arm@kernel.org, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 08:31:08AM +0200, Linus Walleij wrote:
> From: Dan Carpenter <dan.carpenter@oracle.com>
> 
> The devm_ioremap_resource() function doesn't retunr NULL, it returns
> error pointers.
> 
> Fixes: ecc133c6da60 ("soc: ixp4xx: qmgr: Pass resources")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ARM SoC folks: please apply this directly on the IXP4xx
> branch where the IXP4xx rework is pending for v5.2.

Applied to arm/late, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
