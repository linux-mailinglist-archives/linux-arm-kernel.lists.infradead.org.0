Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0231742F8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 00:23:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67kf9ZZocmhKGA0PHHu2rYTLqhfNo/QKpxbFnS3C/7c=; b=aKfmWSCI89Ijaj
	yWEWD0SssSQFe6YlLpSsNqZiSzx3ARWqZHRC6dK/C9opH4Kn0DqaTsNU80MsmoKH38guwJmlJgeyu
	BFn0bCIoYGAOpjScZ70iP3lsgGBMafNt9Q0K+hL3JTeGJcSPMfeZGWVEnXMsva8Aufj5O+PaCi03W
	MsZMBVqJFQMcVHNpz70chTVSsBNvewPgoBnoSTxi+fKUdpFr2bzSSfhg7ZRt/agSRoEdjyvKzEoIB
	kudcFlSIEM0jFWZD/8HJnQZssw4Ccfhqh4kyEYyO7/LhUuAhutLga+5Gok2IVX8wap5wYp6MH9B5v
	UXvzMrrBFfDpROo8O3Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7oyI-0005RU-Av; Fri, 28 Feb 2020 23:23:06 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7oy6-0005R8-B6
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 23:22:55 +0000
Received: by mail-lj1-x242.google.com with SMTP id d10so5144268ljl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 15:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2eqxeoYIrVLOIQ7hh1SkaHG4jTSn1JrLp5pMhF228gg=;
 b=fa//2cfD9xxk9b6pZ6Yw33KdAqjyxP/fqbFuCPrtvpvcXafVEnloRfDXvaBe0dN0Qa
 fINSDiTXoEkKpAHbZR0/CdQGXzw4BkWxKqFbvTTlF2t30WImNasawyhoby7EbJk0v4sP
 eFf8Y1wTo/G2c4D/JkpUKxEmXnYI5Cv+VsODpIJdCdKwfbE8trfou+O6r4JHKG9284Qv
 VKRG+jTEXuy0aWblF9Jkk49FRn1B4uyIvX52L5y2JhQ/ZLISwAnuVEoiuN976mSXrGfs
 khNSj9gFNkG3O9Qxt+VkpLOxS+pBmxH+KEZlYmCfeNRuyviRcA4DHcXPIw388fNvkykP
 RL9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2eqxeoYIrVLOIQ7hh1SkaHG4jTSn1JrLp5pMhF228gg=;
 b=UxoCEaFb2uHhy4IH8rNeXLflV0DOUSOcdmiR5eCVVTmpuEcdkFQD0FHbZBa8NJxbio
 aJhfH/TgimrpVeksLFjxLvN8EQWymaVZqXBgZDPRfhpf1T+ZIAh+hvHAN8tShP8aDQeF
 fXdriCYEElvuADvhHNZ7J65hhozJzuF02u4txr/yRNKPrJl54NMxnxVeK2t1ucVL1MUw
 0sSWFKy5EVAAkbHMenbqmLjzf4XFmSpdh0YlfaZ4O+TNf1glvCRhWMHl9Lrt1BMwWVd+
 qYyHGVlypJKxdoR+Vo7eIj6O3Dcqnix/4H3gija6ODlpWytPzLNB4Uuzrwi1vPKl+cJP
 tXjQ==
X-Gm-Message-State: ANhLgQ1PlP2I2ZAv22AzBdI6xEqSDAXCk2gj1GqwMl1ij/qO9l9vLgL3
 wYs+X1C91AkVbJB8Co3Giacw582uuNp4A87Q3DvRwQ==
X-Google-Smtp-Source: ADFU+vv4jorIIrhlu3IkFg1e8VzFI1djLIzV0XhA4c7hYwnb2v6uJwaQ90o8fQbNN3FP42H3eq2tJ/643zwjgaSocV8=
X-Received: by 2002:a05:651c:2c7:: with SMTP id
 f7mr4238077ljo.125.1582932172096; 
 Fri, 28 Feb 2020 15:22:52 -0800 (PST)
MIME-Version: 1.0
References: <20200222060435.971-1-yamada.masahiro@socionext.com>
 <20200222060435.971-3-yamada.masahiro@socionext.com>
In-Reply-To: <20200222060435.971-3-yamada.masahiro@socionext.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 29 Feb 2020 00:22:41 +0100
Message-ID: <CACRpkdaj8jiABWU8Nj1p8=8HbDoi3zh4yMedVQ9C9BppqMT65w@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bingings: pinctrl: Convert UniPhier pin
 controller to json-schema
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_152254_389774_2294C805 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 22, 2020 at 7:05 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:

> Convert the UniPhier pin controller binding to DT schema format.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

I see this was applied, I had some comments on the previous
version but they can be addressed with follow-up patches.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
