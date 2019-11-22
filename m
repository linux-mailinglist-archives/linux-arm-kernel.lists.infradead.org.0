Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE772106752
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 08:52:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ro2iazvE0RXtbhefc23PrH2Wf1Hns8BlSFl/8KjZQk=; b=HimvcEbayQONIg
	PgkbkW0kBwa35ZAgtK4msg4UBXSm+YFBlCxeoW4irGMo8bQfzTWMTJPfg8CABodPd6rK8CWkFNVWR
	LIB1pI7CF8mjtPs85b83hj76RhD0hl9FC3bOBwroqTieBg48fnnuzO+FWZ1IGGu+Qs+X4QZ3j5tTk
	ThallL/6y/8NtMwC01CCxuSPgWq36ILG02HmBpxNszrEcnqC/nkZNDoVTGhYgqfqy4KuylTptoVim
	bFRWPTl14XFCwGRAgIUDiaNw9mOe+vRU1i3UcMFGaqNAJuTgplRrsdt5BxtFn82qPPboHfDpHoATQ
	tr8KITwqbkX0vI5oYSHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY3ju-0007vz-G7; Fri, 22 Nov 2019 07:52:26 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY3jk-0007v2-FG; Fri, 22 Nov 2019 07:52:17 +0000
Received: by mail-ot1-x344.google.com with SMTP id u13so5446846ote.0;
 Thu, 21 Nov 2019 23:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6CId69ZN8zw9ohBvU0FF7D9FcvCyDU1hZuuZbIs9xAk=;
 b=PgrQz9rjrPYZ3pN21PUePSus0Hm7Ex00MnpWWh+EGlQaEENkCr3yOLM3yDfYHWbblQ
 HOb4YnlLrWToHw9YIfP/xz9Td70mOM/w9HJn2rKpov5QOs7jtTaI9jX5F4bpG3CutoVd
 uoi90EAPJuxx8v8Zf1d4i9CgE1mJR2TjNapHNly5J/S5FnJ49gOYj5U0UQY5c6uOGOlo
 AUO0MhH7SX8/pl1qICwScMBngGfSb01TVj1ROQGMAtuoICBM4UpBO0Ty6BCjP+Vr/dEO
 rDuEprwXAsTDP0dYHmvhMDQa4pZRKndT+en6x+jE2O06OQIjZBogDi398DpnI09Y2Mau
 wW7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6CId69ZN8zw9ohBvU0FF7D9FcvCyDU1hZuuZbIs9xAk=;
 b=qsnz4pOAFrXzjDDb0YjrTJICjaaHEYOZs2f8wTsmTv9Q/50/QLkKUfR0wECM4vbeTg
 kSW/XOGA4dM2Uxk+glQN6IbxBSDkM5rB4l5C4NXLz94A51FiqZO37hR5v1eZn+IJTeup
 q5KczxoZF2SVqLlSrBEIFh9JyQWU7JEsqXBlwMh6S8PEN++aey9anfN+IEh29BOxQxTg
 IwfRLfh3cibKmxU3ZaGAkGGtwfVqyfWFSLBhPbkXOM6s1dUqwOCAvWIaeqqJyTl3gXtE
 cM3H9q4Y3m2Gld4gR7lbfTq8pRNv9RWjFEuA2k9kM5J6edKtJPU/bYKTIe8CWz+vQqkJ
 rsoQ==
X-Gm-Message-State: APjAAAWS+DsQ5JDN6G7pRPqn4plsFET05c3hpm1un2ckphlo6YrwsmQr
 EsaryFTRn/Z0XjMRH/iVQWaXCmdR8SxJhBWt1fk=
X-Google-Smtp-Source: APXvYqzeFxfrw01grEvs/XEDH0mG+F6i0yHJyLr4ROGX1swFEompn0SBsemnA3Zd+YXdUloDWqSTQ1PHx0UrFRvl8K4=
X-Received: by 2002:a9d:3e53:: with SMTP id h19mr9832272otg.98.1574409134946; 
 Thu, 21 Nov 2019 23:52:14 -0800 (PST)
MIME-Version: 1.0
References: <1574405757-76184-1-git-send-email-hanjie.lin@amlogic.com>
In-Reply-To: <1574405757-76184-1-git-send-email-hanjie.lin@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 22 Nov 2019 08:52:04 +0100
Message-ID: <CAFBinCDA=ZekRC0hgQnPLRZM3LMnqBZ6TWCvXhyixAmgDyTAsw@mail.gmail.com>
Subject: Re: [PATCH 0/6] arm64: meson: Add support for USB on Amlogic A1
To: Hanjie Lin <hanjie.lin@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_235216_533575_311B1170 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 devicetree@vger.kernel.org, Liang Yang <liang.yang@amlogic.com>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Hanjie,

On Fri, Nov 22, 2019 at 7:55 AM Hanjie Lin <hanjie.lin@amlogic.com> wrote:
[...]
>   dt-bindings: phy: Add Amlogic G12A USB2 PHY Bindings
>   dt-bindings: usb: dwc3: Add the Amlogic A1 Family DWC3 Glue Bindings
>   phy: amlogic: Add Amlogic A1 USB2 PHY Driver
drivers/phy/amlogic/phy-meson-g12a-usb2.c seems very similar to the A1
USB2 PHY you are introducing here.

>   usb: dwc3: Add Amlogic A1 DWC3 glue
drivers/usb/dwc3/dwc3-meson-g12a.c is also very similar to the dwc3 glue.

I have two questions:
- how is the PHY and the dwc3 glue different from G12A (or SM1)?
- why do we need a separate set of new drivers (instead of updating
the existing drivers)?

We try to use one driver for the same IP block, even if there are
several revisions with small differences (for example the SAR ADC
driver supports all SoC generations from Meson8 to G12A/G12B/SM1,
because 80-90% of the code is shared across all revisions).


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
