Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAD1A62F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 09:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YBom6BxnqTxqGtG7RJO+tzJbReUq7zFm2y/hcYcbeyU=; b=R/ET6VTaYozl3w
	9EKlVd3h7TcurCd+NGzuTyHpj5ha6MsZKU4n5j7bpp1g7xCl0nJmpfySdD+syO7WfpcdHEL9DWyX0
	81yBLNyYSS0g8g7Q/U4QJ4D8XCwCjPU6mEBgbPDQ5nO/W2/+EutLPWoypGAJZU6NPdKyEYt7qfiUJ
	+csaHfL2od/pohmxRgfhd0QTAU5SYhonCtjSPjP1nEGnyENTJ1ELYP/2zo0sVFJBOWxJxI0qXM2N0
	LeGDiscqO5O1A55UEq9TFiGYv4LOLXnsc0/IthGmfdaIfZsY6rbUxwXxPR4yATwTHCd/uJ9gkyyvA
	j/D0kj+WkgMQFc7Z7E1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53Ve-0005xj-4B; Tue, 03 Sep 2019 07:45:50 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53VP-0005wP-42
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 07:45:36 +0000
Received: by mail-vs1-xe43.google.com with SMTP id u21so2351365vsl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 00:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=benyossef-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cFrdK23ABQ4OmIay3wgO+JPOpB+v5jDpV220cb1264Q=;
 b=ufwLEFaxFvvebslcyBbnlbc241i8XCEIlYE9wBiVJzjKucNO4eL1Na+LBUvtqz1FgL
 0nI9xN8fOYPappYKOskoqbaYYxhCb3PvLx9y4Wny7CjinopqfC0cv3EIvJ/tIXAhI4vz
 E2fyfXxycZQ1V9MaJ5KrZ8n//JHLSaT3S3mSjjxjsGU1LuBvEYlxEQyL5b/F3KVpIFiP
 N3NFsrY+79vToYlc7OsQuMRZr4xpv8JWicFnaCsy143PuOIncx321v5ZzrJHufsTr/CI
 BUGGU8MQvYhE3W+DRpd/1UQmERT3DAY8x7i5MtUQm23Ix019VfmAutO3WtSiyRx3lM8R
 mOog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cFrdK23ABQ4OmIay3wgO+JPOpB+v5jDpV220cb1264Q=;
 b=RyfLZrxZ2iGr51ooBD2/566HZCULsnnAJNj9us5fPLk2px7Knk6arpBQ0SSlppIUOt
 sy4Uh6d3A4m+/bH6kU5UrbAVPIQtw6VppFppuMss1iLbZ63cmcyNN6wQF9Y03USS9/Un
 tqg+Jy3VsmWTDajzlCxG7Y68PDeP0BLGGI2ynxOndijd+B8uXQ0wKrSlrOBWzDnlh9Qq
 D8G7PmKa0DDMDaR+GEWN7Bi2C1y0t/+OIO+1XX6dww8KdxKm5oymwDT/hjHbGrbisu7h
 c6RRb0euhHrLjjP4X4fHBw4SznAzYobWmRMe72Jy8VHCYLK7NWV50KMyMszRLk81kMip
 4DbQ==
X-Gm-Message-State: APjAAAXvB0gef9D0yPZczXskeISIETID3S126f+9i6AOEp1erJg2zZRH
 mzdqCvft1t0IxqUY+EawQEYj6GEoRyvNRGcrA80o3w==
X-Google-Smtp-Source: APXvYqwbodlz7C9/rGshgIf7/qYpAxUq0gr6cTRVIP3xE0GyOpy2iRluovRfONJrQ0fD8bl9acvTKe0dYnil3LY22UY=
X-Received: by 2002:a67:e886:: with SMTP id x6mr9386146vsn.117.1567496732233; 
 Tue, 03 Sep 2019 00:45:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190901203532.2615-1-hdegoede@redhat.com>
 <20190901203532.2615-6-hdegoede@redhat.com>
In-Reply-To: <20190901203532.2615-6-hdegoede@redhat.com>
From: Gilad Ben-Yossef <gilad@benyossef.com>
Date: Tue, 3 Sep 2019 10:45:21 +0300
Message-ID: <CAOtvUMdd+V5pesw+O-kk9_JB5YpxUM+hU+Uu=kiMvOL9d0AziQ@mail.gmail.com>
Subject: Re: [PATCH 5/9] crypto: ccree - Rename arrays to avoid conflict with
 crypto/sha256.h
To: Hans de Goede <hdegoede@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_004535_308044_76C3523A 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-efi@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, "H . Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Atul Gupta <atul.gupta@chelsio.com>,
 linux-s390@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Eric Biggers <ebiggers@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 1, 2019 at 11:36 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Rename the algo_init arrays to cc_algo_init so that they do not conflict
> with the functions declared in crypto/sha256.h.
>
> This is a preparation patch for folding crypto/sha256.h into crypto/sha.h.

I'm fine with the renaming.

Signed-off-by: Gilad Ben-Yossef <gilad@benyossef.com>

Thanks,
Gilad

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
