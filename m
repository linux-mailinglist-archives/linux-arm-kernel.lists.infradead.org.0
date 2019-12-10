Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65401119249
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:41:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KzW5md9s3PGZnfD8lDOCKZ59CA1XKXdsGVoEQft1Cqg=; b=ZWEpUbAB7qQEhX
	QvNl6mIo6nFT/OIGwobK1rhELcsMSNVQg1KWDBV9grs/8DpQMJUjPOZDixe9ioSY2QI8XZWPrntqY
	OAzXgC5z+xUuSXorwTz0cFHJV7yV0iqKGGZ+Z5rz06Hn5Q28qgJqw6NsEcYMCX9n/96z7JAMIjMOv
	zAMZS+7eLoHmFmTtWVtXK/4fmRKOaZG5cxLFTX67mswe1tg2jiVXSMk48eQ3/fMMJ3MPLQ2Cm2s0l
	CggZP538NpJxGFNGzvkyzlCkvsnaIElfR5vSvWyTVBsnWBaVgT54ttqRAFS6ToToHUTgbSIAlyUnm
	DJMxOIwmpMBLGUpmfSZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemKH-0007HS-Ih; Tue, 10 Dec 2019 20:41:45 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemK8-0007Fy-Pe; Tue, 10 Dec 2019 20:41:38 +0000
Received: by mail-ot1-x344.google.com with SMTP id d17so16820800otc.0;
 Tue, 10 Dec 2019 12:41:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M6hdh3Yasu69i9dWWMioWcRGOBc9Yi+2xpwtcGer3X8=;
 b=bvvbWxH6cM1+GBdK66ZeOEclRZ+hs5dAr5g57Qtv+PidTPCCFpmLBzNDOyubU/tZtU
 pMp1R/p4kq7XXYVPTyouGb6uKLph86sAvsJhS2blwcY45LMVyF7NXREAUwiYDsa+MLLI
 fCgSGUolyjBRMO3sT67pWEcsU/LctDd/qNv1rLmIAiR+G3JRDPb8yi1XjOMIrN1V0eFK
 CQ9zSthXI/LYvo8KxfQR2zq14AbEJ96UR0MdbuEVrWQtxtgvVaPfX4EKMTBfQDvXOAzi
 1OArGY1aso91OqOqVrquwLr2p3nr+mXp1Hz0J6rOtgBR937RVdzBLhRfq1LGQv+PoRG6
 tbHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M6hdh3Yasu69i9dWWMioWcRGOBc9Yi+2xpwtcGer3X8=;
 b=YPFL+Oqisjw0x80P3J6vDcEJMLhqnPdVNVuph69lZMTnr4Uleyb4Vr/3yy2xX7iJ1R
 NgMrGi4Y7M5wa8LAhEFChVstZzdH2d1F0Nb6Yw75mk/fyqjo9t5Dp4v7THrMl3jOT+Af
 3Kek2WVHJWeU9A/njX1pl8VLE7pMfVs4BSi9+r00re4JNatBW80Nh89e+n92fwjg0GL5
 rXgst3iNb9mynuKzh2xHwmfjBs4cZhP15Kcp0EOE5lxHGLevGNl4dkekpkLPPCQSn7i9
 tsEhzfi9qOQUnO2ONETp9cDcCIXvSojrDd5nBwn8lav4qVwb4rygSmWKD2JTfKKWZnZY
 rTtQ==
X-Gm-Message-State: APjAAAUlv8QnkxgLrlnrCr+iNpRcg/cWVJaMFTTTWCc+FdjhRA3aaNh5
 kcJCMK3shtEioWXDuHri1XZfHk080fmMx8rlKlo=
X-Google-Smtp-Source: APXvYqz0tm1N8+ubqYR/OOBcKGeaKmNmUTLZ3Lsf+UNuSurmjY+qD+u50hP0NL/44rNmRakKxqujcYRZann1YBKO4IM=
X-Received: by 2002:a9d:588d:: with SMTP id x13mr26062357otg.6.1576010494766; 
 Tue, 10 Dec 2019 12:41:34 -0800 (PST)
MIME-Version: 1.0
References: <20191210203149.7115-1-tiny.windzz@gmail.com>
 <20191210203149.7115-4-tiny.windzz@gmail.com>
In-Reply-To: <20191210203149.7115-4-tiny.windzz@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 10 Dec 2019 21:41:23 +0100
Message-ID: <CAFBinCDOoe2-mYVf_eD6BAcFyc7GvHH_Sk8te_QKeWON8QUWpg@mail.gmail.com>
Subject: Re: [PATCH 3/5] nvmem: meson-mx-efuse: convert to
 devm_platform_ioremap_resource
To: Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_124136_858501_82F9DE5C 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: treding@nvidia.com, mans@mansr.com, rafael@kernel.org,
 gregkh@linuxfoundation.org, suzuki.poulose@arm.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, vz@mleia.com,
 bgolaszewski@baylibre.com, wens@csie.org, srinivas.kandagatla@linaro.org,
 khilman@baylibre.com, mchehab+samsung@kernel.org,
 linux-amlogic@lists.infradead.org, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 9:33 PM Yangtao Li <tiny.windzz@gmail.com> wrote:
>
> Use devm_platform_ioremap_resource() to simplify code.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

thank you for taking care of this!


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
