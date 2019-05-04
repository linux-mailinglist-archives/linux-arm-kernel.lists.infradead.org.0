Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D01D1399F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 14:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRHluoLOWsd8u7W6xgu2AbcbB9E1UYajfC0kQtKr5pM=; b=GTkysSsc4dIvpY
	bb+8aQzBvzvd91+EPjCdH+5751m/Iao+lpin5JjIiPgqSy2vm4UuZavp0THFq6lSe9FBOfcuOVVHF
	cNUvaun3mtZ62FFy/rfIwbwc3NlsTN2dHQA1/p099jamLfyZYbZbk0weW3HGWPPJRsZgwcmZlYSLv
	DZy6B5BFGcEG4ecXdoh6ODZljfIp/inpLkpmfKwIO/hFYflnXY5e+ol/KYGQGyk4CbGpUgPyPG+ZB
	wLaA8KAIvav7BoOunt9tqsCd5OEWmhm2Gs3yFWjEmK6VPcfDak0TUZDcKi32obZo6pnujVMU2tY/G
	ntjOcdDzMxIfBOYbRP4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMtLA-0006SK-9D; Sat, 04 May 2019 12:00:28 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMtL3-0006Rg-IN
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 12:00:22 +0000
Received: by mail-lf1-x144.google.com with SMTP id v18so3953020lfi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 05:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bVUZ/YdfIbEAyeXyxlZd8C1Dn3iXlSts8Rn7bzFJXgo=;
 b=kGhXJihKafot6irmobTIl6Oc/jaJTM7ilojeVby1fdeUoYY1bwyJyEkb/fkyPxsS4/
 kTevTY+CK++MYB+OpW/NTSerAKU2rgWWFs2K6XhP9dXhN1d/HGmybKLJb54DfeM3SNCx
 u5SOLWs3HwSZDiKzbJ55SvmB17Zv8nlf3Op6P6yDQrCi+QBLwRGAmG0iDB0AiJ3fAuNQ
 vJnkoCwP1yNvLBBUEDHEH8EnYehG045loHp7wED4F9xcYUCsy3gfmKlQyIluiAH3a/fq
 LbwWJC+sGQXQxYFKLltphezTZ18/M4FaSvSbsqUY2bIoFcpYuhOJ48I+nAR7W55F4pi2
 WSNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bVUZ/YdfIbEAyeXyxlZd8C1Dn3iXlSts8Rn7bzFJXgo=;
 b=p9l3IMXTvn60s1h8ef4ICk/sb6Z8KN0EX4hn6jmYSox5uyi8VaTetCh92BjgE01sDS
 SpzSyY4Gxk9Ez7Dqg0yUp+g6VQvydm2YHUF0nPsrL90eU1cx0pCaTXN00EWkgsbMdm1q
 3YqRMsPGHNs4Ke1Rf2nVUCOls9dUBQ0/6wrNNUR5VohDYa9ze8yZdaXhzt+MNPRhxYyq
 bS9EhDVciey6ZxjGRvVA0c/NPmp6Yb9xOObNP6I5vuJRiTaK8LvCzcWieNkLzMtC9NmJ
 HjJPpV7VY4sMHtVuszth77CRM0YYAKB9MDStvalLjuq760F+Q6W8qOtvMyhaKxVYztA/
 LVkQ==
X-Gm-Message-State: APjAAAU4Lut17xTSvneB7UprlFMRZnZrwl6HR/McWHY5K7jaP9KZ8o9v
 X3x4DAD+dgwzxn7pNzI00I0FQKpgddvT3rcibkitmtNBVAM=
X-Google-Smtp-Source: APXvYqzHb3J2SQJgpBCRN+rySa3T5qo6CkgHRVTBI6q3LGfhjNT7Dye0M39QqMKy0La/eziTVGqnfSlDJ08oWBgpIEA=
X-Received: by 2002:ac2:51a1:: with SMTP id f1mr7143976lfk.129.1556971219802; 
 Sat, 04 May 2019 05:00:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190504070318.56760-1-yuehaibing@huawei.com>
In-Reply-To: <20190504070318.56760-1-yuehaibing@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 4 May 2019 14:00:07 +0200
Message-ID: <CACRpkdaN+BeaKA91rvMJwJsSW2epEb1YJPzpvXoJ=+M=Ly-7tQ@mail.gmail.com>
Subject: Re: [PATCH -next] ARM: ixp4xx: Remove duplicated include from common.c
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_050021_607130_7AB08167 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linusw@kernel.org>, kernel-janitors@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Halasa <khalasa@piap.pl>, Imre Kaloz <kaloz@openwrt.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 4, 2019 at 8:53 AM YueHaibing <yuehaibing@huawei.com> wrote:

> Remove duplicated include.
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Patch applied, thanks!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
