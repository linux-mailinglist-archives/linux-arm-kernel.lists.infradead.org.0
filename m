Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F5C2BA2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:33:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xsKa1vbqXeq8a0w73ZVPyr018rNU0hQYGgi9dGqrg+A=; b=SBxvRWHvWNC6g9
	9G8YbJUsg/gLz+2rGIAlM1XIa2ss1JjooZGBw1bsH/+XQaB8p7s34YQTXszxV50agBAuN9Up4sp57
	klj6rSwH4ao5NNsn8u/S9dfMZtSzjtMtJo8BG0GY3DXA26TXm8yIRvPaQwLEDy6+3dPvHA7QdUf+K
	1btlKmAad6lSLJBTkfLUAd0DsLrSLDRRk9g8wAJjgtczzXK0y7xdkI9KsNuO1dk9mKjw/0Fenfm6k
	KE/46f4+Tgjg4Q+0BKedqfs4yOmxlZTD1A8dVm463vV/siMYlPNoesacIoaLLpFg1xCVNWM+BRskF
	COuF0OYR1PqatSbBOgoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVKQx-0000xF-NS; Mon, 27 May 2019 18:33:19 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVKQp-0000wA-1n; Mon, 27 May 2019 18:33:12 +0000
Received: by mail-oi1-x242.google.com with SMTP id f4so12467618oib.4;
 Mon, 27 May 2019 11:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S+zfvQdj9FnUsclchCusxb5xJgJGQtK3Vq/yGcWOHbM=;
 b=Qwju68uT26kSUsNGz9ECyX/QmQIUYdN0bXLJQ2iqz9YUkr7O0pMNJQfbARhG4gw6/Q
 KTobXi+lze+W5BZKejwZx08yynKbyloFDgDk/VGCKMER+VEmJ60guYTJb0GHQ7MFCdkf
 x+Rbun65sC8s8UBKooH8StlKmW18EcM1P3ctHRETKl0NLrG2BckZU7cqNCEQAkPGJ5xj
 G+Hxde8BLzqNS+CRaaI6e0DFnfaj7eZZ/PYVxbkhdmKi0Maj7bfVOOtVuOEnZ/Cs/Sey
 AGm7NAle/1CeA16DmFkAtWXxN+c0yxxJN8oeRaUJZq2vksaws9kf+Tuyb3HdJAVJXclz
 EUyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S+zfvQdj9FnUsclchCusxb5xJgJGQtK3Vq/yGcWOHbM=;
 b=H6twrkkDLX/HRxBe44orF5GKNVJtYMNzFlmn3IDRfnq/tI3H+yCqxt9309i7wHl/jD
 01cHC73xeH4kp0GAMHkYI3KW+algmoFchCo2u0xu4ueLC3PDIH0BDnELGndde2EWJ6Su
 YG1vSfRmziN/l4u8KTSQk2bOCLwMcoiOUgkNa2SuiYrtZ6dbTpQ4HffXlSsqzlGoaRPN
 uDNfo2BypDeyAcivdgk7XDlDpvLFFDOgWVvxO6hkkNn2SNydzVKwfpVKXWC9AAysMfpw
 sFKy1feTQwcVhENp/BAJJ+2QRB6NQGZf8fNQwY9pILNOL3dM4SItLbqlZQe/Dnb6VOHM
 78XA==
X-Gm-Message-State: APjAAAXVyO9Vf0nxENAlJou3RJ2YbMup7TVutEVOHyzfbwE2w+BkTmb+
 k1QdG3R0OHma8z3DF3DX23lW1wIOKHrsKpiN0dU=
X-Google-Smtp-Source: APXvYqySfT2vqPTVM4SYEzWI5e34ATqeldWvpzGysG2wnPt7WXQGJZSA/rBCSZvvFctmaav3G5VWvp/bJDDNojbX7Oc=
X-Received: by 2002:aca:3545:: with SMTP id c66mr199156oia.129.1558981990179; 
 Mon, 27 May 2019 11:33:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190527132200.17377-1-narmstrong@baylibre.com>
 <20190527132200.17377-2-narmstrong@baylibre.com>
In-Reply-To: <20190527132200.17377-2-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:32:59 +0200
Message-ID: <CAFBinCBhdJdHzof0jmy65GHnQi6b8A+tmBUvhZJAf_Nbw1ADvw@mail.gmail.com>
Subject: Re: [PATCH 01/10] arm64: dts: meson-gxm-khadas-vim2: fix
 gpio-keys-polled node
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_113311_116914_7972C1E3 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, Christian Hewitt <christianshewitt@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:22 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> From: Christian Hewitt <christianshewitt@gmail.com>
>
> Fix DTC warnings:
>
> meson-gxm-khadas-vim2.dtb: Warning (avoid_unnecessary_addr_size):
>    /gpio-keys-polled: unnecessary #address-cells/#size-cells
>         without "ranges" or child "reg" property
>
> Fixes: b8b74dda3908 ("ARM64: dts: meson-gxm: Add support for Khadas VIM2")
> Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
as well as:
Tested-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

> ---
>  arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts | 4 +---
there are more boards with the same "problem" out there
we should clean these up at some point as well


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
