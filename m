Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D88C558151
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 13:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFc7vCN+uU0G5GXkLhOUaiSbC6iOVsWOaNGkkxJQYWs=; b=TL6HzthcdZJ0Fj
	L7thZ8umcPZGSkMuV0KcrnZLYXBdM/nIps/d99I1PZv3eiFa+xgLap2tgm3xnc3lioxZb2Tzq8Y1L
	7emproRDy0I7oPSM9urXrAPFrpn/3v5nt9fY1lYPUIUMSCMhCjahQ2srKPyfWTfG6lnNtlEICTWGe
	Xtf0FD/HZBxf/nrGUNQ7+LGJPjf3+RZwP0GaZWSUg2qTWYvk5iq9DfaWpYKKWBjvrtzhLBnyaOcC4
	OhpJS0Yb74AqXxPM2q8cbExNoQsdY/4Hsp/47oiMZgNfcFPUXssojBf31PSxl2SzMGlSf9fgi3ZMB
	+iUhyhuzxiam3jIwgC8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgSQX-0000Hc-Hi; Thu, 27 Jun 2019 11:18:53 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgSQE-0000FA-Ok
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 11:18:43 +0000
Received: by mail-lj1-x244.google.com with SMTP id v18so1924229ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 04:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8n9+wAZmn5Fd4Bzu+75sf62mEboo0TEMxpHy4S/JDDc=;
 b=cEL9oCZ+zomWJ2LmSGc4fuxflwhDPejxyVo6c+Rrs/G5ajtyDASQo492gEPQbHBHeC
 kq2jja8VgsqeyP+QTo5k9C1iud716f33VVhYiaF0S1ifrCTPqGBA3agxt3h4qp8PogBb
 HAjqSFBfrIo3Brf1SoGU3Lrycq3Z/djnv+/ohRmtMo8JSvOptyWZ4wR2DbecRgcyamsL
 sAkedb2FQ4o9w3DtYSfbMDvQNMVvQ36osCybYA/9i+32Df7OcVRSOfvO1IubOE+6SGOy
 pCkSz7JgrJFkWpR8mCBCB7y10iOSH5pbaz+CXHodmK0K3BaNNWlRFQbn954OwIf5nzV0
 hYUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8n9+wAZmn5Fd4Bzu+75sf62mEboo0TEMxpHy4S/JDDc=;
 b=lMaiKALUgl28dABiBJNH4VOoiV5dAFvBqlbkQjM60GsFWK8xgeOpf9Nsd+qMijP0Kj
 foRv+vLgxx84PBw9Z2SnWXVZdsGLpkK5pc9sV1aLREt63gs42Dzazw7M3Fx/GvBJS/pH
 lci2E1jShIcShYMNV4GYg7cIodo+OnHPttKe/c15qzOKaXKbYGFwXipDWbxPInUYbq86
 QRRcrndeP2wOiVC91+Zv2djh3//yA4plvC7wtPfPBzZBThJ7eS5x4pxJmpa9rhiXQNJf
 m6u5UU95TNjaG3NmVA5plmylCo9dyGLHv9bQQ7zoICz6pJxtk0ErURrsT1YILfOOJXFb
 IqQg==
X-Gm-Message-State: APjAAAXcUo7Tnd8rYU1ZfMsG71Qe6P/oJ6aRKKOsMa8CWvgoQ/vBi37X
 cO0K7T1RKShV/GmYwCgr6spkUCBUF5hku5QB4umrDA==
X-Google-Smtp-Source: APXvYqyJgd2+Ftd/iJyvgwExAYZa4Qg2yTKy4cVImG+ErCp4ffuDePBsvOgPaNQqma8bvu1LdZ28/ackt3s9WUPQPiw=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr2275133ljs.54.1561634312954; 
 Thu, 27 Jun 2019 04:18:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190625163434.13620-1-brgl@bgdev.pl>
 <20190625163434.13620-9-brgl@bgdev.pl>
In-Reply-To: <20190625163434.13620-9-brgl@bgdev.pl>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 27 Jun 2019 12:18:21 +0100
Message-ID: <CACRpkdanZPmKrRwY9nvEGx=BzoVFxzU7ENgvoOzH+0u=-YTC0A@mail.gmail.com>
Subject: Re: [PATCH 08/12] ARM: davinci: da850-evm: switch to using a fixed
 regulator for lcdc
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_041842_597517_E4A4DFA8 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 David Lechner <david@lechnology.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Jingoo Han <jingoohan1@gmail.com>, Kevin Hilman <khilman@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-fbdev@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 5:35 PM Bartosz Golaszewski <brgl@bgdev.pl> wrote:

> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
>
> Now that the da8xx fbdev driver supports power control with an actual
> regulator, switch to using a fixed power supply for da850-evm.
>
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
