Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D250B48372
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3KHStl64tN8OcplGCw71F3pAyr4XIr6Tj+V6q07NM1o=; b=WmxUYvXFSuST0P
	6F8BJt6PJmRPEN6RX1TUBYOUbDnBY1J7jOnS3Z+GgcbCGHYqcALWoaYBFDFnYV4rwjh9lNJYaaTd7
	T0xiHT9excmJVbRInr+in66PmvDYi/eNKVgk3iidQAY/La+f2Lk53uAvDTXEvxJ1FZW5uPLViRn0+
	ivQZtZoMP/yZFMfQoAgWSs25cjzqDJ4sPfHV9Md5yMEkO2mtAYJX1/ixFm/GNxr4tikCH2no2VQH5
	C+CN0Do5iblK+CttSd8iSc7CSQd3VFF9koW39QoX/5pl1gQX3+Cq5TEkvqaZ2ZurwAXBVVOKwHAbt
	g/nAIX4a70vt+v8lDJhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrKW-0004s1-BT; Mon, 17 Jun 2019 13:05:48 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrK4-0004eD-BP
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:05:21 +0000
Received: by mail-lf1-x141.google.com with SMTP id y17so6472989lfe.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 06:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VR+PSpwkiJ0pxUl/JuGa2P7EElXY/GbyVQnL/+xwiBE=;
 b=wXmRB/CJa/kmsIk8RQY5f1sRfVEe5ugxU/EZon7w88r1Q1fFKaNSaBRjZYpRXSUtnH
 TAlwu8MDAgvGClS2GglqEQtTFYurop32Ajt+fBLpj5MsiqarfaLWuoi9Zx3KhBY6s/Tk
 vK0VbpeqEdggOi9qlEaMwh98QRth9IUEoproWhEothxHoxFFkwtBb5yA714ZOMKMHNuX
 8x3+RXruZUtu3lqOdIYv8LsdH5+UhBXmvS2dIh/awqcbde1e7rlKWGUIxGCLA+yULfSH
 rXcEYrivNQlhKB3qgN5DvFgSI6VOuR2zbthtZzQgFeJarq9YarTkZclHfgAsncKCYmOr
 O4wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VR+PSpwkiJ0pxUl/JuGa2P7EElXY/GbyVQnL/+xwiBE=;
 b=M3Q2Su5ky2PDoNZVip42voxZqcaeSHiTb5ckrnZWUyCfUsiVmXHhCrcgF46BvK+rbI
 avkc12aVVyQW1sfJvwOSdnRSfI5HFL/MjKYIJfnFlwvwVfM1F8w6+pMye2b1Y8UFU8rJ
 LnOyLQoMmggNCT7VSYL/lBqb0V1I/XgdmK5rkfRtgwwvgTu+509Jt8/jryioXpyu88Nx
 jRd5RSx1AvcD9iM6EkSmNR9fynUy/fr2STJ234pAfWQSKJJc+zEjuVXMc/JwKAhHAsvV
 HZv4X1MzvxEtFa8IgrW2QGKJjk0zg2uJgd2ErmOQaMyesLwPQ0Lw6gqHhJxnZpznf+4j
 pzHw==
X-Gm-Message-State: APjAAAX3SASlsPcPDiwagOiZO25zZEF/FpCTdvCqLJFdsUoFzyzaudZe
 A51LONl/T9OX8s+uJJj2Qz2WMXI3Lraqhg==
X-Google-Smtp-Source: APXvYqyLO8N6hIrl80HPuUYHVOVXUmLPcZ04wL68KAc/ksX01sg+ote3auulgvQfUcO2hnRAR+4svA==
X-Received: by 2002:ac2:5601:: with SMTP id v1mr41529458lfd.106.1560776716214; 
 Mon, 17 Jun 2019 06:05:16 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id g76sm2086871lje.43.2019.06.17.06.05.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 06:05:14 -0700 (PDT)
Date: Mon, 17 Jun 2019 05:11:24 -0700
From: Olof Johansson <olof@lixom.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [GIT PULL] Delete the mach-netx machine
Message-ID: <20190617121124.hkzmwesac64utguo@localhost>
References: <CACRpkdYTgA1i_uFC7NVYVmXf4WhoPHucC11-SrTRYFDUWLtXNw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdYTgA1i_uFC7NVYVmXf4WhoPHucC11-SrTRYFDUWLtXNw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_060520_394775_84715D91 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 01:21:20PM +0200, Linus Walleij wrote:
> Hi ARM SoC folks,
> 
> let's pull this in and get rid of the unmaintained mach-netx
> machine so we don't see more occasional maintenance
> for this unused platform.
> 
> Please pull this into the ARM SoC tree.
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
> tags/armsoc-drop-netx-v5.3
> 
> for you to fetch changes up to ceb02dcf676f41d281af84c9d6000fe27651ebb0:
> 
>   ARM: delete netx machine (2019-05-22 13:55:50 +0200)
> 
> ----------------------------------------------------------------
> This deletes the NetX 100/500 machine support.

Merged. You get a C- grade for your tag though -- I brought forward the patch
description into the merge commit too. :)


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
