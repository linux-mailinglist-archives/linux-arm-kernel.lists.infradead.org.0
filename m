Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C1E9C5DB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 21:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K2OO9DCLAWACe3pcmpEVaeKssWyCqVh0np8iBHTdoHI=; b=VHTkyQhw6dOS9V
	Q6I8dyIx4Sk/HAlSD4eXPTBYHbvP908+9vofLM8UJSkmtO+8CMR+zxkNFqIBa1HDNMMkYboeTq3dh
	QG2wHnkvFc9P5RAX+Q/LLb/E30UZX5ZeIHfDKIzzRLVsVlenzh+30zzoZwRFoP74yV7ExbMB0ijwo
	SehaAEz6OS+2cQNlWOKp3W7KnPT6HCRW8Z0x2VdwzxdKqyvirho6B6c2gtDvCjhDnXe0XN/TATpjh
	ruuFMO2L+Uyqdq8KdIVtRFzLoX62IbxlzHLaW0Z0Btp8iHkgx25Po0H3FQiH9DBY0ilOrfFz78guw
	q3kUYREyYe5fmaiNWEIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1yLs-0001eL-Pt; Sun, 25 Aug 2019 19:39:01 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1yLi-0001dU-T4; Sun, 25 Aug 2019 19:38:52 +0000
Received: by mail-oi1-x244.google.com with SMTP id v12so10596839oic.12;
 Sun, 25 Aug 2019 12:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=chkqvuhekHGQhYnW0yA1AUvunv0CUeXBozcgE5RCGR0=;
 b=u0cppoVMppKPI4R3tE0oQQPUsjzQdBiwzIVOtcPozizIdOfQcPFCm4jdFut4NLyLHl
 W7ia+LzopmIt5jWdEAFGUgT7HxX8pm5XT+F4VWzuako2kqYDtXCS2WaL0eRYHmbhut5i
 Wx6Mqe9uay3JAyeHjmznXMHzmTGUENFoFJwfcWYbHOEEZpQN5h8ragkZrjd6CBuQPEC3
 /DHI0LFnSIkbSLRhr8D4s+ip6Bfaj4gjbeP1qf2DNlVlLlNC1Jqu10ePv2ESrd+OUisf
 vnRxY9V6p8RAh4ddtvYeGfnqMu+SgFkdQH9PV+AqPXPIE6Ou6MviSIidgWdoyT00Oo2j
 Nq4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=chkqvuhekHGQhYnW0yA1AUvunv0CUeXBozcgE5RCGR0=;
 b=RZ7glQpRULv/HYicaBhLRpsum7hsq20xmZdjabH2E+CSJPFZOyJXUPTDQP3ln4yPbP
 7a5HW7yZHZ73I14Czaf4e6u+nlxEHKNm4VTnJIB+pQ8kpz/Re8xtvfgfeSh4iqhjDeal
 nAQHIf6ykzIPi2VijoV+AWlPD3PoVanIozG7acKqoIekMkwvYyzFvOEovsWilp1SBGqw
 V3kzjZAZM9XP/Y/kZ0zty9oUZz5qsez9vSAPYSSQ7WRhh6O/XA12naNfBkwC1WjOIF4H
 ZAudfbGd7DT4/xNQssIEaZCC//418E1h73LzoeqY/Kwq/khGszzB6ZMWD01aday5KUnS
 oDOA==
X-Gm-Message-State: APjAAAX0XrEi1RcWZ2xLKHDudvRGqGEkp/QG4LM1iZaO5GG4UkQ57JUs
 s6xuJsDNmTYkUgabHHga+BwTNJVTfq7rkpKmEps=
X-Google-Smtp-Source: APXvYqy1R4zVYwEh8pivnSC69fyaMBLMJemyEus17wAdFf0HZLtZeNrG0Fme7e3Pe3MsSQoUcaWkpnlg8DlAMDncj6c=
X-Received: by 2002:a05:6808:30d:: with SMTP id
 i13mr10330434oie.39.1566761928007; 
 Sun, 25 Aug 2019 12:38:48 -0700 (PDT)
MIME-Version: 1.0
References: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
In-Reply-To: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 25 Aug 2019 21:38:37 +0200
Message-ID: <CAFBinCD0uhE9Fj1we2MkaTbk7RwtmKh7Fn1C-2nn9wiWqCoNfg@mail.gmail.com>
Subject: Re: [PATCH 0/7] arm64: dts: meson: ir keymap updates
To: Christian Hewitt <christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_123850_969321_B880BE90 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 6:03 AM Christian Hewitt
<christianshewitt@gmail.com> wrote:
>
> This series adds keymaps for several box/board vendor IR remote devices
> to respective device-tree files. The keymaps were submitted in [0] and
> have been queued for inclusion in Linux 5.4.
>
> The Khadas remote change swaps the rc-geekbox keymap for rc-khadas. The
> Geekbox branded remote was only sold for a brief period when VIM(1) was
> a new device. The Khadas branded remote that replaced it exchanged the
> Geekbox full-screen key for an Android mouse button using a different IR
> keycode. The rc-khadas keymap supports the mouse button keycode and maps
> it to KEY_MUTE.
>
> [0] https://patchwork.kernel.org/project/linux-media/list/?series=160309
>
> Christian Hewitt (7):
>   arm64: dts: meson-g12b-odroid-n2: add rc-odroid keymap
>   arm64: dts: meson-g12a-x96-max: add rc-x96max keymap
>   arm64: dts: meson-gxbb-wetek-hub: add rc-wetek-hub keymap
>   arm64: dts: meson-gxbb-wetek-play2: add rc-wetek-play2 keymap
>   arm64: dts: meson-gxl-s905x-khadas-vim: use rc-khadas keymap
>   arm64: dts: meson-gxl-s905w-tx3-mini: add rc-tx3mini keymap
>   arm64: dts: meson-gxm-khadas-vim2: use rc-khadas keymap
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
