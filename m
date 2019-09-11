Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC04CB051F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 23:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dw/iuQcEhKJQgwfykmAoBoX+WlyPlTOUjnbxKUaISXE=; b=IYhUfHZGCSRxoD
	DmiE3sTCHU/BCKlxOR2iNTCvmKjHFw6rL9nQ8rDtC70LuEo5J9u6RjefX9farLBQ62yPx5jujydRK
	dgnburDRJCF8lXum5HTRdfpo3926Uc/0JAFwDmhlgVJefuLmaAyh/FNl765wZA9q2skyJs9VR9IHJ
	6SGSazWIyO7RG7ZRgRo8qO4lB+wP6UNE4jmYTKw3vvUdF0Os3fzJEO+mWO2ZBUvBqIrLTOTwMYPgs
	U7Z2kvngC0QI2ohXXbwcqDv61dEtb57vEzln8/S/aV/i7eVa48K6OsUh0lENbq+b15+p71Hy0cakz
	VDrH3dvKfEOLXay96fSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i89sv-0004z6-Cx; Wed, 11 Sep 2019 21:10:41 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i89sh-0004yN-LV
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 21:10:28 +0000
Received: by mail-qt1-f193.google.com with SMTP id g13so26706312qtj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 14:10:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=23NrFChKykdY1EKYDK/1t31I0Xos3EvXXWZvJnu/Dj8=;
 b=pTb2r81kBjvVUl5uXNoOloayF5/qAd98lbod0DKHUQCUYdtTUOoMV+5UlC5YW4Gx/G
 FQyvw0EpPik6ugGP4jMjE6MNDwY6yY47bx3r8n0j6VtEtpF4bimOpt7010Ii6RZha24M
 ACtbFDKLz2/U2LE20hN1ciSYjKNAj1FPrvNg2Pj0Gae6XBK6YJsfnNAAyNEBRWex0sRV
 V2Nl4d0zminxy5ip3EIjtSw/6iu8DY2PnYfkDb2mXgAEuW9g+WQRvcy5NHaWrBkzygw0
 a6Gbbug4/Wplibl5N0WuFzqypTV2spqEzeBcyIBW30fBX1xnELrCHIpgnAKmlyVYtBpa
 Iuiw==
X-Gm-Message-State: APjAAAVpFEDPqCV7XjaOF30kd8bfDAvqgHLJIV93wAoLGu1UbphE4Vxm
 Z1JViIKr6NlrWRl3KNQpBvqJp0IriRA+4T3zJ+0=
X-Google-Smtp-Source: APXvYqzlhYH1AZxPoUWhLlKAi/3cz5wBak0YHxRnRpq/UZvZhmQwxva9MvOWocpwez0hO+aGpdkH/w0NIKo5Lc5rV+I=
X-Received: by 2002:ad4:4529:: with SMTP id l9mr19566057qvu.45.1568236226485; 
 Wed, 11 Sep 2019 14:10:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190911183632.4317-1-krzk@kernel.org>
 <20190911183632.4317-2-krzk@kernel.org>
In-Reply-To: <20190911183632.4317-2-krzk@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 11 Sep 2019 23:10:10 +0200
Message-ID: <CAK8P3a0OBOrYKnwY8pCMiPQneXyrg3-O-LfrBF4=qy+HasU17g@mail.gmail.com>
Subject: Re: [GIT PULL 2/2] ARM: samsung: mach/soc for v5.4, second pull
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_141027_708493_5D2D2168 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 8:36 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> ----------------------------------------------------------------
> Samsung mach/soc changes for v5.4, part 2
>
> 1. Fix system restart on S3C6410 due to missing match of watchdog,
> 2. Enable suppor for ARM architected timers on Exynos.
>

Pulled into arm/late, thanks!

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
