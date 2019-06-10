Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C703BAA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 19:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bn1BC+sIEfRrDiQgJ0UYNVt2BXd0Q64OlmiWhDuncw=; b=cnQrXopZEG9pZE
	IJ5voHl9UFeBxpF6+o4ZTqiYUhsA71DfimR3b3cTMrQuY7mEBJbPmxEozfq5REK4T7h1FHh666yqk
	JgGkUCIXqrvPbsxVjJj0rtusaDqaBWb5ZdZ10T/gyWTX/oUOxL8tcUBbEfookfdLAf7pVXNWvidA3
	IMXc8xVl3j4tNFpBHjMyv1ioyi5uoZo8QHCZjMQ/H0aCzkG5vcbMbNrs9Thv+BlOZPCZLT9AiuqTt
	WJRH2AKu92nNDFUJeLVwad+eObyBbOOuCiokv+zsfkCUdewW26FHylc2uEbZma0QxbDrp2Ld9Xn5O
	61fzslGdil18nsclBHUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNql-0007h9-Lg; Mon, 10 Jun 2019 17:12:51 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNqa-0007fr-9j; Mon, 10 Jun 2019 17:12:41 +0000
Received: by mail-ot1-x343.google.com with SMTP id l15so9001903otn.9;
 Mon, 10 Jun 2019 10:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3JnaLJmHCQcBLWJZGsxiSkHwMrFrHuZm5L/F2rfhVWU=;
 b=pp0WsTPZ7OMTL/JJzGLjdzNV9I7yQgICLYWc/yOxPt9S7laf1uppD0WyctgGOvxrRz
 gq/z/PStMuv8OB7T/+MfqM0s8pWMz6luGy3OZtC9GU1IKuXLcosNdY/rfx1OMVMu7e4i
 oNz1VenR2sDfDASurROzhHyrYf5AFOiEvRM55CGFj8F9D3bQYguZQ/CB6s0hJT7lmLn+
 rTJ8ddzV1TJctXFt00xr5SWlGD9rVweyUH28ytqFAuzVpuuKguGSfULoOJpSIzMYdNY9
 W/U0VWyiy/FCEf52FVujCEo+nX3ucCFF9AnXAW1jjfTBzScc2rJND8azIIwaxBrV3gEU
 +fZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3JnaLJmHCQcBLWJZGsxiSkHwMrFrHuZm5L/F2rfhVWU=;
 b=GTjEluVrvZ8WzlG79AVkjVfelOR/YlSao/xsMY4hsHJ5O7Bt/5xknTercauP0NeOKQ
 qTvIGVosBPR5FJ2e7Owxzog1gWKBEml7+WNFOPtVENN83TUo8+CkJmpJoFe3IIxfHqXw
 7TwcTxa/YE5XVlLfFR5e3rztlOU4H5Vm+N9EJFrK++GXj+EEFr0nEjKM9dtgqVg8SHb8
 Qika6LhBaBRiFn/rJ/zcezPR1vG9PCTE4uo3mpDh4CUyfGx+rGcSxNNvw6pCeXDVRNPh
 P/T8bDV86ozMciql+SAaWPrMykVnnPVEBbi2DXivdAmj2PaV0QIG5SaHI/2JWwEVD8sV
 bCcQ==
X-Gm-Message-State: APjAAAW1bhxM9tVemSIpl/R6HxtKN/WQxNV7wleaHa2UbhQ0KBpjHfb1
 1Z+88q/lkdou8Kt150pYAKF35XXx/4e3fb3D6Rs=
X-Google-Smtp-Source: APXvYqzcpo4BpZAPqLLLpYSSE01zvU5EUgFlHr+Ht/clKAFUTErJOnLx9oCYmXCnhsHdXKqFqknUD8gL4WoFQP0RIMA=
X-Received: by 2002:a9d:23ca:: with SMTP id t68mr29361498otb.98.1560186757760; 
 Mon, 10 Jun 2019 10:12:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190610163736.6187-1-martin.blumenstingl@googlemail.com>
 <20190610163736.6187-4-martin.blumenstingl@googlemail.com>
 <8075d0ee-36fa-c4f3-f640-98cf54aba87b@arm.com>
In-Reply-To: <8075d0ee-36fa-c4f3-f640-98cf54aba87b@arm.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 10 Jun 2019 19:12:26 +0200
Message-ID: <CAFBinCC8wGZX2B7hc=U7qCHGwQEt9khdTwNinNVYhH=sZtFCZg@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: meson: use the generic Ethernet PHY reset
 GPIO bindings
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_101240_363283_60CB95F3 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, khilman@baylibre.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Mon, Jun 10, 2019 at 6:54 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Hi Martin,
>
> On 10/06/2019 17:37, Martin Blumenstingl wrote:
> > The snps,reset-gpio bindings are deprecated in favour of the generic
> > "Ethernet PHY reset" bindings.
> >
> > Replace snps,reset-gpio from the &ethmac node with reset-gpios in the
> > ethernet-phy node. The old snps,reset-active-low property is now encoded
> > directly as GPIO flag inside the reset-gpios property.
> >
> > snps,reset-delays-us is converted to reset-assert-us and
> > reset-deassert-us. reset-assert-us is the second cell from
> > snps,reset-delays-us while reset-deassert-us was the third cell.
> >
> > Instead of blindly copying the old values (which seems strange since
> > they gave the PHY one second to come out of reset) over this also
> > updates the delays based on the datasheets:
> > - the Realtek RTL8211F PHY needs a 10ms delay (this applies to the
> >    following boards: GXBB NanoPi K2, GXBB Odroid-C2, GXBB Vega S95
> >    variants, GXBB Wetek variants, GXL P230, GXM Khadas VIM2, GXM Nexbox
> >    A1, GXM Q200, GXM RBox Pro)
>
>  From the datasheets I've seen, RTL8211E/F specify an assert delay of
> 10ms, but a deassert delay of 30ms.
thank you for spotting this!

I don't have an RTL8211F datasheet, but I now see what you mean based
on the RTL8211E datasheet.

now that you pointed this out: it seems that I made a similar mistake
with the IP101GR PHY
The datasheet mentions: "Chip will be able to operate after 2.5ms
delay of the rising edge of RESET_N"
However, further down in the datasheet it states: "Set low to RESET_N
pin, for at least 10ms ..."

I'll wait a few days for more comments and then send a fixed version


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
