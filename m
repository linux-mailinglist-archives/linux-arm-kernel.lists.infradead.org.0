Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFC2CC4DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 23:36:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bhpxfeh6IDmLGBYM28tcsJQDiFx2dLRKUcqSQCRjr0A=; b=CIk+EWUyG0qMEy
	eOEl0rCfyIdDWSGqkipGXsE6FCjpoHjNUyB7gZJxXeavO+7kZWdvNQLMWTJoKuoqEqj6pte1TCBlG
	8Hgq/6Motwc274XA3OwNjxMAK2CQ0iK5fNNZxvqe71hLtN+VvqRIKdrNYv0eZW25p0O6nrHojqV1M
	X1IwZkShUdF2dYWTQDnMXKrTQlQEr7ECrwSZ0zw2atj8AWkxmCN2QeiwK6hCXj6z6i/XgLSfx2mqH
	c27qvaREJg1SuYdjFhj4DeDBUZI8mBIyLpgG1uWTFbgCEgC22O7r6on8z7zsiBrk59fcEgCAtNxG1
	/BWYaqLGfn0YSls96Rxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGVF4-00074j-KI; Fri, 04 Oct 2019 21:36:02 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGVEy-00073H-C2
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 21:35:57 +0000
Received: by mail-lf1-x142.google.com with SMTP id q12so492556lfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 14:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RYthbBkktNxFNhA79P5qBlET/NRolFGJmUsKm1pDpdU=;
 b=ia8HRhn9/1Kb63Pb1AAPb/dgwBMU5zFZ/1YLS7IUAE9m0YIQWEO2j/RrZdK3RxeSD3
 TtHn7kbGsN7lGIORGHe0PYGozFS6gfKxBMW+UDACqZ7EUlIQIzSIXchUtcZU6uHJcZaz
 3cgHGwnkSZjHnecmmiGhql926ZgQbOIo9K2f/DOZuljvPTdYuNlEV91+UpJOY1IsNaPJ
 mjkuLx7dgkvxGiI6+h4lVXWgsv20J/KWizv0ZPcWW9Hc8BxfYLUvBFDSbYt2VjozwvmW
 X92sfwjd0K+/H3d0P+kHqRwGSJP4UaLdS1MMPfwFy2Fu7iCnWuHc2XOk0zK9OXRfe735
 WXQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RYthbBkktNxFNhA79P5qBlET/NRolFGJmUsKm1pDpdU=;
 b=FQzu3tX1WDg3DZlq77UUDPtwbgPFVlboz7vVdZnrtlIIMRYV9FlHx0+oJUmYIFLXVG
 6tsiSrOC1858z2Kcq3RYdzcTz8rbbTZQZMokhkeDelOBDRVEvMidazSEK2yquwfdoi37
 4UyCGRJ3KquCc8L2pMdKRjIQd3sIOSxXIjXMh9v/ElKHfqNUgKiTMLoYIkMfBZcSZlzi
 sQV/Jod7+LCjoQ8Mz7dpaBvCEh2EdJeeFU8WEXTp3ZboGkDtmwOdGFMWZmk0WTPKH49+
 zLRFb0oD+9KMf1zTLe/JQm6r32O+jRHF8NCepKckzWunO98rmg8DG2myB/IqQhVnr/aR
 YFQQ==
X-Gm-Message-State: APjAAAVRfg9O5R7iSZTDqLEX1A1Eka562uo+E9ujxDXW9pOA2kSft4vD
 zf9de5C+z/ZqtsIZGyLMezksxTFFncq7tMmUDuTADw==
X-Google-Smtp-Source: APXvYqze4xi7TbiTueWqhSS4nrOSZaQhkR1K84HJxk9c9uMTj1SYrkWkL0PxrWyDOmIY4NQ2Sl8HEDV0XpI2eV2MksE=
X-Received: by 2002:ac2:46ee:: with SMTP id q14mr9407136lfo.152.1570224954613; 
 Fri, 04 Oct 2019 14:35:54 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1569572448.git.baolin.wang@linaro.org>
 <e991666ead56cac30a7ef9cec85e802b57d47458.1569572448.git.baolin.wang@linaro.org>
In-Reply-To: <e991666ead56cac30a7ef9cec85e802b57d47458.1569572448.git.baolin.wang@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 4 Oct 2019 23:35:43 +0200
Message-ID: <CACRpkdbVP9MsNZGJNEw3gYvg4bhf75gh6WKDPFcbKK2eQuc_5A@mail.gmail.com>
Subject: Re: [PATCH 1/3] hwspinlock: u8500_hsem: Change to use
 devm_platform_ioremap_resource()
To: Baolin Wang <baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_143556_417088_2EAD9436 
X-CRM114-Status: UNSURE (   7.41  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, linux-remoteproc@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 10:28 AM Baolin Wang <baolin.wang@linaro.org> wrote:

> Use the new helper that wraps the calls to platform_get_resource()
> and devm_ioremap_resource() together, which can simpify the code.
>
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
