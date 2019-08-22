Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 391D798FDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arHX5Iquty9SrmPeShvp5y22dIo25jzYkKm2HWiDvI4=; b=mn3y3NL9OIiTPr
	euDqFQvCgCDMVgnauEXaWz9ifvTiLsFkwJ3gN6SCvtiB/vCFFxWWPLrTm/QAYsc7TnszMLOCjOBZN
	nvcaaqyeR1fU/L8mY7POZUnkwhWgDMVdChNtaXJ5SBpC7Qbi2vhJ7Lx57XTuFwpkpv1X7JYEGqDXa
	+FAySW03I5ms98FIKyB/Qis0vSPqEaZezQ8hDJWrsBNZkmAkgUpclPuhHgCuU58rgCWm3VOKrPX6B
	GCdkwnhPkkUfK+UFSMdbCmVIqSLSoO232pi9xH+KMCgHPixbjjQNzgDI2e2ZXiG9rRL2cZ7nSTyOe
	/+l65K/awXGffhdk6Zrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jZ1-0004RH-N8; Thu, 22 Aug 2019 09:39:27 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jVB-0000sE-D4
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 09:35:32 +0000
Received: by mail-qk1-x72f.google.com with SMTP id u190so4524136qkh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 02:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NO22HbaMZJynJgD6+PgDdcz0IJRAkX2Q/TUAe3LAdCw=;
 b=COEUpB7lH+sa1Wm04QhSBmeEb8LEjrit6+KDHW0QV3SkhpdO+Ce09Rz+f5uPxJLN+u
 PvMmv4NQgj4yXMULkRZbPjXReODK5MwhM0rU94n4s3sxouvbYUUhCxBwPE8eRv4ZupU3
 KQx7RAWff5qZ1RW5IQeQjBsJA5gjRhDWjOiSM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NO22HbaMZJynJgD6+PgDdcz0IJRAkX2Q/TUAe3LAdCw=;
 b=VG3ncQNiFy+FLql6f3oiUmBjb3rwpqOt09eQbJ3Z9w7kxO1zAcxTh8i4rPnm+C7GYU
 4jRJoKFpubW/GO4ODYRpW923gmZJJXvuopQYFriQAx7+0NIl5nAmvoC2lc91KuYTgEfW
 qd53Eulx2pacM56SMR0RVCEPlUbxEWKfaqK7MxBqo4d9dvaoR+ubEFmx4FUDt3fAZSr2
 Eo17I7qZO1eRN0vM3fZ1Ff6aP4s5mBLs0zdCaqgCID4OjHLAQ2m6C25GwNg7LuWEofAy
 TZIFyaPkG4G3EeZFHZipTBg5JsjGQ2sDKNPUVIgiDoIGHwEEC7wANQLL4grECUj/SEtS
 ZuDg==
X-Gm-Message-State: APjAAAWHHhw69pC5RJxMLWqaLpRt05MM4knYWL5HtmZOOorTVEbqegdF
 6la0ruv1PKEAWc3KvnpcAE9MiUeqluKeNTnfy8FbHA==
X-Google-Smtp-Source: APXvYqyJ0CJid6ew+jYjIZdViygDbZ1nSFTHSvRIEbJVqYXbQji9bHodn6KVX4KP8QmHSXLnWIh+hxt/IGhXvLaxdp0=
X-Received: by 2002:a37:47cb:: with SMTP id
 u194mr33199821qka.342.1566466528133; 
 Thu, 22 Aug 2019 02:35:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190822055737.142384-1-hsinyi@chromium.org>
 <1566462278.26641.1.camel@mtksdaap41>
In-Reply-To: <1566462278.26641.1.camel@mtksdaap41>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 22 Aug 2019 17:35:02 +0800
Message-ID: <CAJMQK-hr5m_YETnObsgw8M5etm+9xL_KY=54V6==fSbY191F_g@mail.gmail.com>
Subject: Re: [PATCH RESEND] i2c: mediatek: disable zero-length transfers for
 mt8183
To: Yingjoe Chen <yingjoe.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_023529_583988_89EE563F 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nicolas Boichat <drinkcat@chromium.org>, Qii Wang <qii.wang@mediatek.com>,
 Alexandru M Stan <amstan@chromium.org>, Wolfram Sang <wsa@the-dreams.de>,
 Jun Gao <jun.gao@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 5:24 PM Yingjoe Chen <yingjoe.chen@mediatek.com> wrote:
>
> Why do you need to change this part?
>
> Joe.C
>
You're right. We don't need to change this. I'll revert this back.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
