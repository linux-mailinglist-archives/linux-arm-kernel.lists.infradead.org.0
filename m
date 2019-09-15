Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA548B3264
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 00:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYH+FoBWr3A74U2mYNOC+he7727p58hDdpUter/MNwY=; b=gZvpmFCgSw5sA6
	X3uoLuSOUfw6VAxVUTSo5vXG4TkGCrDWLxr0YHt2kh7/cnQVQl7DdegAnywUQ6uGsIHxkQoyM90OW
	iQgDvAqYIeMJRXxCWUz37naLa7YMswUQdd5DGj8NzIHfnt/cHWLmKVAM+eWRuRlPpi5fPzmwokjj7
	HS9hsa9zb9vBsjgzxLf+FpItSmQ9fVgraB24VjF0CpXFzyiIwgDgM84V1PGhkKgmtcPoaysc/CtHe
	gLUrakdb/gkbqetddq+sgO3+8NSaLJTO4CC33MlWV72NqNcw1x5xMjwnoZQlM5k4M4gYCJ3PZy44P
	NNKOXHU12kM2U+Rxi7gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9ceh-0003rT-L3; Sun, 15 Sep 2019 22:06:03 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ceG-0003fO-KK; Sun, 15 Sep 2019 22:05:39 +0000
Received: by mail-wm1-x341.google.com with SMTP id t3so8046335wmj.1;
 Sun, 15 Sep 2019 15:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/qGRId8HPyCcUJt+meL2ndjhZqkfHIvlq5BmskD0fJU=;
 b=KgVwyPhL9h+l8sXGn+rFQxxI8Av82WTT1v8slexgQxOB2/eB1TKgxmHQvRuoiTsQnT
 NLiWuqa5CiyD97Mutk/Q0L/6joKRL3N8W8R9+/1/7JLEMCj8NRSZtnZha4h/WF+/1LeM
 svF5PcawhWr1bmkLdn0DSXnaz2A4K122sB44k8qtlAES+RSa966YSPFuzDxboa1MH9ui
 DpnvryDvPz0Oyd2bQg70uZ9qHYuDerMblZoX9ap21i9PJGEh/okbfJPbxgt0BxUQG3Hs
 anm2qtzrmGC9jP7zS6172aGeTMw5fo9GsnMiylnRfyGFRpRtYOgY120LGBuesC8QmXSV
 WIag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/qGRId8HPyCcUJt+meL2ndjhZqkfHIvlq5BmskD0fJU=;
 b=YUCiOAo3EQ0KiLmsFXSjYnQvoe6oTB8sYZoT3wVTakaoLIL4x3x2vHhLdKbCCh59dC
 wpW7QrYOT2Fa8C4HjzyHWgnqh8aoLH7NP2L83R+Pz88sRtHxXzizZBPRhXsuBut0Dblk
 aO0WtPXp2OwAPWDdmN/ohaEiik9v7z8s8+9CuxpLReEowSB0tDCpAmUZt9Rjn4m3forn
 Hn0WOGseiy95sbL3C3PnHoTUTh8Q/dzGe+uABgqri2FUcHaSbHvLucheViSdP6wig5jk
 5x6Wl3l3w3QPcXnbf/ae2OAgBQSDPx5OioRfvy5tzHjg1neJuRY9/PNIKoVwSAiMq+oC
 SBPQ==
X-Gm-Message-State: APjAAAVWBR80KC0ciwOmezfXBkS9KGWCCFxV1HMr7RFMsSEiwSmNjw7C
 CzBt2lB7IA9VzjOm/TpYnu1EvLi0uehuIGXX8tU=
X-Google-Smtp-Source: APXvYqwoxJamB2WY3r2L0UosojzF66nkNlzWYjucDWD6h26BMykh5xEl2EB9gd/wu0AtkvkIx4p8MhEZE2TowqWrUeM=
X-Received: by 2002:a1c:1d4:: with SMTP id 203mr11441862wmb.104.1568585135428; 
 Sun, 15 Sep 2019 15:05:35 -0700 (PDT)
MIME-Version: 1.0
References: <1563451437-15725-1-git-send-email-stanley.chu@mediatek.com>
 <CAFLxGvwLTTN+S=Bd0gZWKJbjvanCe_HV_dfmoZzyb1hzWkkGpQ@mail.gmail.com>
In-Reply-To: <CAFLxGvwLTTN+S=Bd0gZWKJbjvanCe_HV_dfmoZzyb1hzWkkGpQ@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 16 Sep 2019 00:05:23 +0200
Message-ID: <CAFLxGvxG3rhr6w7xNthJco1nHgZgGhw+cda0anHuNz4OdD7ntw@mail.gmail.com>
Subject: Re: [PATCH v1] ubifs: support page statistics in vmstat
To: Stanley Chu <stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_150536_693007_55FC22A3 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linger.lee@mediatek.com, Artem Bityutskiy <dedekind1@gmail.com>,
 Richard Weinberger <richard@nod.at>, kuohong.wang@mediatek.com,
 Adrian Hunter <adrian.hunter@intel.com>, linux-mtd@lists.infradead.org,
 chienwei.chang@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 21, 2019 at 10:15 PM Richard Weinberger
<richard.weinberger@gmail.com> wrote:
>
> On Thu, Jul 18, 2019 at 2:04 PM Stanley Chu <stanley.chu@mediatek.com> wrote:
> >
> > Currently PGPGIN and PGPGOUT statistics in vmstat is only
> > hooked in submit_bio() for block device I/O path.
> >
> > This patch adds this feature for ubifs as well.
>
> While I think updating these counter for raw flash makes sense,
> I wonder whether UBIFS is the right layer.
> Why not directly in MTD or at least UBI?

Ping?

-- 
Thanks,
//richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
