Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D97317482D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 17:55:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20GI3zA5kjbDWfSMJE5ctew6XxTgZt92UQQpzZQJCI8=; b=P+Im2oQBMfR3Lf
	0iiYov5+1O2ncPMCRB79IDPLEfXnnmzMC3/HkZOaV9s488ca4B+xgcS6zooBQoBfHjVHoVGPbsodW
	88vfacJtxdPdCbWSq8LJH51sUf8ViI3pnsPauMH95QiuEB/oHyaGbNTfH/cjcbKsAoPrPSMofLW9C
	sknhHYu7/NstrZjKeMMrcXiIExkzdAQTYfCqKygB5P5ZR2HuR0vCvkAwDAWegW/VoNByymlP6WlUH
	oclmh1u+ACggA0fJ/Zl5xzNaIRABTQTR5ke6KowVVR8cL8ru2czwkfdxGNPbOH9OzCFRXIwsZhBOj
	5HbZW+1GXQn1jGpCPhWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j85P3-00063W-BT; Sat, 29 Feb 2020 16:55:49 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j85Oq-00062F-Fo
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 16:55:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id j16so7196357wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Feb 2020 08:55:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=d/eDOfaq0VJ/SLOUD8o7N9AIT3f4AtWAyVbS0HbmA+Y=;
 b=ZDfEfSIbwFOP6KOSjbayNzj2YbEZkQX6Z41YrmSJXwXfIh4gcrTrC0ucxSb/UYemLq
 9j5cCBJkMzkTvxX433AP/ieV1mdL1BQJEccbZjHRV5QkQrVpE500qmNZgFUHIJ/wRWJO
 X6SQfLREWXeMkvz104rKMdxzDeIup0/o0ASv3tTmCBoWnqWrqyT5vrf9a21vuMGfldQt
 Ge9ByOggpCLLbHQ5ykfL+5aivVBTM0k8ro5eOMSpz7qA9F5MiWXKn5MY6N5W8crsCrDn
 pQDEBa+Fto/kFy+CaM2qOroDjpISsdzWG3vtB9T5Igz5ZbFx/lG5P6a66rKemJ0IFjd7
 gJ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=d/eDOfaq0VJ/SLOUD8o7N9AIT3f4AtWAyVbS0HbmA+Y=;
 b=Km3o1p/N8UankHSzABMsSHRpkGyhmwQeVA1R2fgIbHYD03QHV1x6C4pOP6N9PxBlzQ
 T73lpk9+GK7+te4UK675xpfJ8zCcFEHEH4VgG+uPThI6gnyRVFz7AyRsgP0nt39bZ/Q1
 Ho2M+NRCe4fMH/bc5jkXfdavtHkebIG5XBXNxdUjbMz6he4Qhw+CbwQFLlNxFRt2UFPg
 nTRb1GuhUNCCOmitjYg7126OIfjFis3PfAr6Z+sHQN4y/0wN8HfUtDtrMRuhqy7X1MNd
 HDyAR9Q+7/SxOeG64v/35F9XrqCO+BIB4Nb5aZSYTMEcu2X1WhF+1V8h/9BGMWI4t44d
 mDdQ==
X-Gm-Message-State: APjAAAU70Qb8LRraD+0oxL4bCP0odSbwoj2Y6ocnmd88uqXMZ3B7DXi6
 n6B4mHBLVuElY6lWrZoM/QUyGw==
X-Google-Smtp-Source: APXvYqwKHZ29xYaYamtjaiSWnMeUqe2YZDrHRDyBGKpmsUJX9UY0hoeQvKhbYqqayRN0+5Hv35ysoQ==
X-Received: by 2002:adf:f58c:: with SMTP id f12mr10964595wro.22.1582995334791; 
 Sat, 29 Feb 2020 08:55:34 -0800 (PST)
Received: from localhost (229.3.136.88.rev.sfr.net. [88.136.3.229])
 by smtp.gmail.com with ESMTPSA id d63sm6703261wmd.44.2020.02.29.08.55.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 29 Feb 2020 08:55:34 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>, Carlo Caione <carlo@caione.org>
Subject: Re: [PATCH] soc: amlogic: fix compile failure with
 MESON_SECURE_PM_DOMAINS & !MESON_SM
In-Reply-To: <20200224101654.530f1837@canb.auug.org.au>
References: <1581955933-69832-1-git-send-email-jianxin.pan@amlogic.com>
 <20200218080743.07e58c6e@canb.auug.org.au>
 <20200218092229.0448d266@canb.auug.org.au>
 <20200224101654.530f1837@canb.auug.org.au>
Date: Sat, 29 Feb 2020 17:55:32 +0100
Message-ID: <7hzhd19vuj.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_085536_525780_03992E67 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Jian
 Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Stephen Rothwell <sfr@canb.auug.org.au> writes:

> Hi all,
>
> On Tue, 18 Feb 2020 09:22:29 +1100 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>>
>> On Tue, 18 Feb 2020 08:07:43 +1100 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>> >
>> > On Tue, 18 Feb 2020 00:12:13 +0800 Jianxin Pan <jianxin.pan@amlogic.com> wrote:  
>> > >
>> > > When MESON_SECURE_PM_DOMAINS & !MESON_SM, there will be compile failure:
>> > > .../meson-secure-pwrc.o: In function `meson_secure_pwrc_on':
>> > > .../meson-secure-pwrc.c:76: undefined reference to `meson_sm_call'
>> > > 
>> > > Fix this by adding depends on MESON_SM for MESON_SECURE_PM_DOMAINS.
>> > > 
>> > > Fixes: b3dde5013e13 ("soc: amlogic: Add support for Secure power domains controller")
>> > > 
>> > > Reported-by: kbuild test robot <lkp@intel.com>
>> > > Reported-by: patchwork-bot+linux-amlogic<patchwork-bot+linux-amlogic@kernel.org>
>> > > Reported-by: Stephen Rothwell<sfr@canb.auug.org.au>
>> > > Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
>> > > ---
>> > >  drivers/soc/amlogic/Kconfig | 2 +-
>> > >  1 file changed, 1 insertion(+), 1 deletion(-)    
>> > 
>> > I will apply that patch to linux-next today.  
>> 
>> This fixes the build for me.
>> 
>> Tested-by: Stephen Rothwell<sfr@canb.auug.org.au>
>> 
>> Also, please keep the commit message tags together at the end of the
>> commit message i.e. remove the blank line after the Fixes: tag above.
>> (see "git interpret-trailers ")
>
> I am still applying this patch ...

I've fixed up the trailer whitespace an queued this up now, so should
show up in linux next shortly.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
