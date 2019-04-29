Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6306FE871
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UPADULH2P8iSGtVN2DRsoGln/6i07mRUwj0R916pJc=; b=gq7P3oD0FpDEVF
	yLXmPRCRS4ZmEih7PPSKfZN4eQ0i+O//8b4Md5gxb60LvatXnvuV4rIVt0w7Eqg6nMF06e3LQcz9x
	194QcnvljWl/q3o2UX2uNnUdHfNk4LdXIBcsNdabAgG9Y+Sc0xTTmv+BYKE8PkGXT/IqlScWHOkzq
	kUV4e4NFgyCniQv3rkd4Uf7rgEAXG74MOtV55cw5ioPwwHs99yLV/1Qt2Y9FmfKnPUKDFGFonUJ6f
	4yGjtyIfrA3+XTErBqPI9qaESPIalLGrfXTymDrBqP43mIh9nWDh/QrXBobITv0peyr3YOF/Z2+OA
	10cigkwrUPYWh3hASGrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9nY-0006Px-AL; Mon, 29 Apr 2019 17:10:36 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9l1-0002yT-QI
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:08:05 +0000
Received: by mail-lj1-x241.google.com with SMTP id c6so3563568lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2EDG9k5xBQAGPzW9mILcB9aaLrz/g8zmiYqG801xB04=;
 b=chBQj3LqwpyRfrDGZZUK/NhBlvLES/7qXRe0aVFfWbvXa3HyWXxkyJdCuQTDZWCoW2
 jPo711Kpt31bEepvNEvNwiCBYrt2mRAD5YlyZ7bfyqchK399ztsMPj7ZBLIgORfGa004
 wT+W6hGcvd/5CdFUTxR/xmyRkEB1XVsjhKSmnMTibK7mfUvb/G6ANACb6Gp+aq0Q4w6s
 NGBXcXkcXLa6q4m3wB9Tk9pn61PzAOSE94jOR+NwwMcj/vCxWoveheLsCjDgBAb6xfTm
 VAIlL7LD+tkBkaTd26We/uEJZbg7WCZMlzhXK+4Uc5GxHOLTBUy9Pxd2Hfmmqr7RmQqR
 3hzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2EDG9k5xBQAGPzW9mILcB9aaLrz/g8zmiYqG801xB04=;
 b=Ep7u69UZqwk4Gr2tl4o9TuNm111aZp9X+XXbXGdE61Ps6oVb0/cNE+ecyW8iuPqM6U
 HU1nRd4SPCdTIxJHt2ahNchhUG9hM74IBU3cFsOWg3/UCtQhXdE/gAfBkGWBVO8EZnku
 iwv5HnuAXVc6ycwOp0OIaZ4atUW+Vh3/HvMvVvu8Lamku6efpGJ3QvaUqT8wIYaYxe9O
 orZVTM+Fbwt6wcLOl++UXj2eRIF8/8acpE8AN36KMezLnJvHzNFFZJloag2/8nqDZr9V
 TCrY7QmTIKuViP03FVPogMQCDr3jba7fhXHfT4JnQNiKYr0w5QhxC32K7UV0kLPn2l+E
 zm6g==
X-Gm-Message-State: APjAAAWFF3miMA/qzQ/+qq3pN9yx19ZJ0sBCFAg137P9ysj5xBO+qz67
 6AXiALsuxR17vdBKmh+GkESe0g==
X-Google-Smtp-Source: APXvYqwUiXD9zCibVIqba58oL91cYaoY0R9OWiUUA9jlop4hK7X5i9mDSoSvs7S/S/rHIClFsnHUVQ==
X-Received: by 2002:a05:651c:d0:: with SMTP id
 16mr33036533ljr.150.1556557678221; 
 Mon, 29 Apr 2019 10:07:58 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v24sm741007lje.31.2019.04.29.10.07.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:07:57 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:41:13 -0700
From: Olof Johansson <olof@lixom.net>
To: Andy Gross <andygro@gmail.com>
Subject: Re: [GIT PULL] Qualcomm Driver updates for 5.2
Message-ID: <20190429164113.ndyyomqy44hpjjzy@localhost>
References: <1555997248-11513-1-git-send-email-agross@kernel.org>
 <1555997248-11513-4-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1555997248-11513-4-git-send-email-agross@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100800_260118_62E57CC9 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, arm@kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 12:27:27AM -0500, Andy Gross wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/agross/linux.git tags/qcom-drivers-for-5.2
> 
> for you to fetch changes up to 2616b3deaf9c5db18f78689968d4c998bda8a983:
> 
>   MAINTAINERS: Update email for Qualcomm SoC maintainer (2019-04-18 23:27:29 -0500)
> 
> ----------------------------------------------------------------
> Qualcomm ARM Based Driver Updates for v5.2
> 
> * Update MAINTAINERS for Andy Gross's new email address
> * Add support for mmap in RMTFS
> * Fixup for QMI to change txn wait to non-interruptible
> * Fixup for error code in probe of cmd-db
> * Fixup for slot number check in RMPH-RSC

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
