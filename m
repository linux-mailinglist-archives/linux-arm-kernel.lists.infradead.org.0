Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D91CC4A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 23:13:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLvQt2MkKHs1gNEgAg0vWrBdLL/U8VevuKU2o3XGFOU=; b=OdTXfy0SQgqwXS
	gNr3Y398f0WqQTZcBpqv50S7tJV7hYMD7RkwD5OBQVzSN7wDqtx+7M1HRh+oP4YuQWhr4LcHdAl2u
	TLZm5BlIPucyBqnt0QBXCEvctXh5d+UwZNCXwP24BAEGxkP3+QMhQcxKNBMtmNq1pKCUu8gnkDTjJ
	H8Ud9NAXCw8GZRyyvDDakfmYbzm/F0BcpYgZiVRM2A9G9tdbxzQz1Ar1Akr+aQwQTXBGfjby3dnLi
	iJbJer5hhlLcRXrv1fS3CUdo1KKL3RybMoZBCzjmozMpjPpnqwwbnapwWth+Ub8K4YqcVkQqcFnPU
	4GDiexx2Cu68oOJEnZeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGUsp-0007h2-6M; Fri, 04 Oct 2019 21:13:03 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGUsi-0007gS-Hr
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 21:12:57 +0000
Received: by mail-lj1-x242.google.com with SMTP id a22so7889413ljd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 14:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a1Da9827hi9/wbo3EAdgAkbnWQLG/mFfM9TO9uvcqwE=;
 b=KlNygbH1zENjKcNNSgMRLwKHCOGFoMzqAzuQQx9tl7N4+1tVL59+OACoSZIqgNt7+u
 k7quO4ksG6r7elDNUd/3m128bn+TVUC09KOvympjCO6spkPH+SiEh+/4KEBZefHU0tij
 85tt68DftWXkNAAbtogwLqFs+OYV23SSQlXE4KmRWnpXOS9Z1OJ7cC5Bd4dKfNBrbagZ
 OlbMn4PTkUaQToAqsKMIoI2Y9enqsFO53iarbwxVddNyIQdNf8aXgsor4hVv2lqldmXX
 d5da/p/mKSfoHWurhEbCiudKbkYgptlBbl2B2d61ZSCNwFgCcGVGTT/kYc7mgnHCRxV/
 m68A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a1Da9827hi9/wbo3EAdgAkbnWQLG/mFfM9TO9uvcqwE=;
 b=ifG1yiOT5hfKKzBdB9Z1ijJ2x9AtKni0/b7TjPwj8UEFJGovIdwKde+1PM5PxRDX/f
 6g6HRr/XuYQlgySb0n//eeydJxcctWgoYamaViZ3gmVOveBlc3N1bH+LbX0fWveW/Gnl
 umVliBHi1G0A300pQ8mt+wfFUHWtjn2R7kzDGTWELu2UBj3dcrk/GwaTNNg8O5XcyI1J
 j2U0IWumQtrtAiETvCXM9xj6n3cccfZoMq7/KTGjTvD+ICpyO9ghnFDtOF79c+BRgVPr
 BaT1cZkva/6X5loEMFyEiT8r8FblGuiRQP3eW0zoTEkPhTpijaoM5vWxixheVNh3mWOz
 gsqA==
X-Gm-Message-State: APjAAAVXP2XJSUX477GHxVPcASfBE43cbYzs6McAsPiYOZOrwEzT0kWZ
 yZXQiX/LLya9GF7CFeDRf/ca87EZVGeEzRQr9QHHQQ==
X-Google-Smtp-Source: APXvYqyKcRPj97UgiYipb3Wl1ZHS6B7yy/aWMzuW2KfQHGn4WCcJqQrnvFVQvUYZvljZcePoHULd5Po9U65cqe8PuP8=
X-Received: by 2002:a2e:9094:: with SMTP id l20mr11099995ljg.35.1570223574942; 
 Fri, 04 Oct 2019 14:12:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190920153622.14616-1-robh@kernel.org>
In-Reply-To: <20190920153622.14616-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 4 Oct 2019 23:12:43 +0200
Message-ID: <CACRpkdaY8G6LT-FSr7BQrGyskBTXqMmhooKBpHDVMBuv7uAQeQ@mail.gmail.com>
Subject: Re: [RFC PATCH] arm: dts: integratorap: Remove top level dma-ranges
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_141256_652591_EE7BABA2 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 5:36 PM Rob Herring <robh@kernel.org> wrote:

> 'dma-ranges' at the top level doesn't make sense. 'dma-ranges' implies
> there is a parent bus node with '#address-cells' and '#size-cells' which
> is impossible here.
>
> Likely this translation needs to be moved down to sub-nodes that need
> it.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Patch applied! I'll get this to ARM SoC with some
other stuff.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
