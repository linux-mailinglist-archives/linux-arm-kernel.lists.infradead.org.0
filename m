Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB32D3BCF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 11:00:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XZQKYtXn89KMPx5uIQRBKE2c1c+2d+QORwf4lRcuKrc=; b=RYkkxXk0l0sawijk1Sp2ZMb21
	CDNKB4X+L6n4m/+bB0hKXHpdIzZtQpIdXqYcvR/U5MwexxAmS0OpHhc9HwyWOpCfDE9o4LoYLkBPs
	J2J5tCmmQp4fkcl9Bwa2qRLwkgK/byLryktTHzIJwaHeaWkOoAOLc9nOD/Kpr1mMsjRjf5H1Dfd5E
	DM4vxaAzxFiQZe6ICveUvh49ZNcNImKk6G5GfIm40vWAOqYD/SgaiShFZ/PfrgU3JlKIqS/Zi0yXj
	Pnw66ZEXok+4ZEWFKWd5CE/RiFFWR6uS9WdBC/zksNCb59qjnaGzKUpxS1H2h4CTVYBcblkAi5R4x
	qdr67aNFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqn8-0003s4-SA; Fri, 11 Oct 2019 09:00:54 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqn1-0003rQ-DP
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 09:00:48 +0000
Received: by mail-lf1-x142.google.com with SMTP id d17so6487935lfa.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 02:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=D5J4x6iVABhyT7MQ535l1DTGxw0inOgPAWVql4OaM3E=;
 b=GVa5+K0sA3bT0teEuW8q6lBeCPvC/40O+4wY6c68FbMZ+KXqDbDDktIBeN+MBHZl2n
 iQ2m9GnynAMroFRCCyGrM6OSITGyeEOmhKXIAj9oVcwbq4c31d0RQ2x5Mcv+VnOAW87p
 fRcgD9E5A0Wz/TtGb1c5+1VYwrJEdc1trrhZ7/TOHkttJD6Id9n8G0yXSuIVeqWa/mDO
 TJGLfem2Ft1XoHqjIpY2SVWVFCz7sravp3VkL/oT5KLmf37DL7Fti8eqAC3507+C6Til
 qeLoCJ4FSx5t2mOzru0EFZlur2UdQBepGMVJp2dzcVhjOBFxdOxQ80bfbw8o/JXdnLrm
 F5Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=D5J4x6iVABhyT7MQ535l1DTGxw0inOgPAWVql4OaM3E=;
 b=HGZ1fbJx3EZB0RAyukAUmB/dCjFTMH+zMnHJfUwb54R4b2f4SBhiizkEamcM2UtX2a
 7aRh9ncH9MAfg1JISjajESTfETBI3UaTc2N2B+MbrlKuN0PdttY+WAlUQ0/z2Yo9qhD7
 61D0EHM2pCR/S0KsxJonoDRv7V9nk8WBkb/Licefn2wTz0lwCCLaTnewM/2JqSUelH3S
 EBx0NE0Y83BPkJK9/BMTO0hvvKxvNAD+WF3qydRtM6BZDGi5x/XEoeRyt8Id0lbjDqFO
 D/OJ87gm56LxF9QVhUZl4yVIChI+OkWY1p1YTa6Y8KPjqUlTc9Kxvl6V9k17mJrzpwra
 /JaA==
X-Gm-Message-State: APjAAAUA8F54ODDFNEg0TCIXj6mhy/8p50WMx1VaKKPdLDnn+5mLgqIt
 U6zMXDVEQ9jZ0zyqw7NA7Izsfg==
X-Google-Smtp-Source: APXvYqwQtqvuB1NOLWSlqNK6UF4AaRNCs+oaXZCrTHa1FIXAYVyqdbzs7ivri4cr5rF8kRboVQEyHg==
X-Received: by 2002:ac2:5610:: with SMTP id v16mr8173294lfd.93.1570784445097; 
 Fri, 11 Oct 2019 02:00:45 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:86c:2e5e:9033:59d0:e194:cd55?
 ([2a00:1fa0:86c:2e5e:9033:59d0:e194:cd55])
 by smtp.gmail.com with ESMTPSA id g27sm1806349lja.33.2019.10.11.02.00.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Oct 2019 02:00:44 -0700 (PDT)
Subject: Re: [PATCH] MAINTAINERS: Remove Simon as Renesas SoC Co-Maintainer
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>
References: <20191010123046.15291-1-geert+renesas@glider.be>
 <20191011073515.2933918c@canb.auug.org.au>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <fc7ec17b-c61b-842e-13d9-1e154ce2a654@cogentembedded.com>
Date: Fri, 11 Oct 2019 12:00:29 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191011073515.2933918c@canb.auug.org.au>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_020047_452967_76FDA8F2 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Simon Horman <horms@verge.net.au>,
 Olof Johansson <olof@lixom.net>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 10.10.2019 23:35, Stephen Rothwell wrote:

>> At the end of the v5.3 upstream kernel development cycle, Simon stepped
>> down from his role as Renesas SoC maintainer.
>>
>> Remove his maintainership, git repository, and branch from the
>> MAINTAINERS file, and add an entry to the CREDITS file to honor his
>> work.
>>
>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> So, I will remove Simon's Renesas tree from linux-next and rename the
> renesas-geert tree to be renesas, OK?

    I thought Geert's new repo is called renesas-devel?

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
