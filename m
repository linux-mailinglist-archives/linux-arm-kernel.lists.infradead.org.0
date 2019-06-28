Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC7659432
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 08:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkc2zYG9b3UBz0YWgPGuDAain9XYxOJ24oMTEFebJWs=; b=DXwi1YBs09ryIq
	/LAr7Z05V4ojHK9nc0PwkXPWMvE/VOhBlSg2Y/SdCyHnUvwileUmfkvpMZHaLUY2NEBXGfs5W0bj4
	p5J9U8yUyK9TBPsqVkFFttg4xynLeeQeZOVXi/mmKN0NzulG8laenIUCS2Q5xu58Lsbaj6fc9Nmb0
	JmnA2FmWMYVmBi3sfk3wprGW3TnbKoTQydLcvrESdxHuVM796D7zhYhqHW/puvEysUJAtjCx4Bppb
	FFEZubb2OrRFlFErr5i3Y/R8+JkBcSXFb0q5wH6FUrC/czJMnWGNJO/3yItucrKBhqIlUwLhQnvzi
	EUe+ljPuLij6Uk0Z9Tkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgkOI-0003RQ-Lo; Fri, 28 Jun 2019 06:29:46 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgkO4-0003QU-0s
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 06:29:33 +0000
Received: by mail-io1-xd43.google.com with SMTP id s7so10126891iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 23:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yzdMu9wmm3sT//zZC0WGHtjFo3HffuvV4wa2Jufeytk=;
 b=hEf6FU5gQSt2RhXB3QMF6tTZmHNr/2cV3SkScLpMDBVwX+GjqNwijSVRQcysUiAbEg
 I5p4jqappCKkhMJFjnTYsijKCMdbjvTc9XX/Vcc7NWLI7ysJWG+C8srNfPReoAh8wwpY
 lTyVBtgowHU9ND0uamYCDEgzU9fDbn/75zoqU0AEafJIQnpudhWA+TwNb4dqrA0CzkqC
 rDh39Md3WOy6aGJhrWryJtfuJvN1LIxzM/wNxqyYaaXRe2R2uPY50VKvo6ilf3BiIwae
 MH8nIXBfmhho+TgNWCuvF8RJ0tHvCGDgUWMQcpbAg5RjQ913c/rzyYBIhgiY+5TFn410
 B6qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yzdMu9wmm3sT//zZC0WGHtjFo3HffuvV4wa2Jufeytk=;
 b=Ll3K4ZoOjBkSjDOqEbz8JvcpGzOmIFjPSGzGLtE0lU2JUliQb6tgWrYxGnYdwJNlvu
 KgulykznCrOfJBLyoo1N9EO6ryFTa36s90aEruFP6NMP/uNzGV2BClK+TAQt/h1l6wp9
 ZJvtLTwy/K3QFOIWD6DK45ysnlbszSK0C47hSevobAwoVPpbQtuROx/S2mYApddzcqHq
 axBcKvm0WEFuvi+nebHBYiRi7H853epC/HNPE4xQ4CDbZUMiqGJ30XIuMsBP/n0plCI4
 ytdaO+NWNqSYe0Xst/frMPZ1envYM1uXVp5rIRA1rN0NE7JqdvTuz+o2A0GeiyG+VueF
 1jyg==
X-Gm-Message-State: APjAAAUEXqEP0V/FLHieMhwPIyWvmwhrYlWfslgtilSu/PBCkHGv4Ig2
 K7tBpIbMXGeq2GZJtJ2NMXTzXGQQfGZSSBs/ACXsMQ==
X-Google-Smtp-Source: APXvYqwBFox1JXGIEl2wH0JghlBvyept7dRaynmj11z4pFrRjtaIr0i0sREvQNzUv7Ybu5uC+ZMeE61et116WVQ9aEY=
X-Received: by 2002:a02:c519:: with SMTP id s25mr9025538jam.11.1561703371334; 
 Thu, 27 Jun 2019 23:29:31 -0700 (PDT)
MIME-Version: 1.0
References: <1561700182-18108-1-git-send-email-agross@kernel.org>
 <1561700182-18108-2-git-send-email-agross@kernel.org>
In-Reply-To: <1561700182-18108-2-git-send-email-agross@kernel.org>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 28 Jun 2019 14:29:19 +0800
Message-ID: <CAOesGMiTrSaWPb8T4waNbHoHVUVAiCpcgor-C-FKuzr=4ZfVpQ@mail.gmail.com>
Subject: Re: [GIT PULL] Qualcomm Device Tree updates for 5.3 Part 2
To: Andy Gross <agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_232932_066250_AE9C66AB 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 ARM-SoC Maintainers <arm@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 1:36 PM Andy Gross <agross@kernel.org> wrote:
>
> The following changes since commit 489bacb29818865d2db63d4800f4ddff56929031:
>
>   ARM: dts: qcom: msm8974-hammerhead: add support for display (2019-06-16 11:27:45 -0700)
>
> are available in the git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-dts-for-5.3-2
>
> for you to fetch changes up to e9146339515ece09ee651f122a51a26ae652ab80:
>
>   ARM: dts: msm8974-FP2: Add vibration motor (2019-06-25 13:29:32 -0500)
>
> ----------------------------------------------------------------
> Qualcomm Device Tree Changes for v5.3
>
> * Add vibrator motor for MSM8974 based Fairphone 2
>
> ----------------------------------------------------------------
> Luca Weiss (1):
>       ARM: dts: msm8974-FP2: Add vibration motor

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
