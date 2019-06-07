Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987053986F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 00:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZnbPFoux/8A6oq6GA1q+b8NMUGh19tGTK0uaov5aMbM=; b=fV8JcL+h85lUFx
	Y4/uxPoFYUtLPnhhiuNfmGqIgj2PH+lNKAjqs6mMI+7TP4zd2OfNRxXK3UfyoxqdBk27aStlsXNHP
	DgWa+XFyo9z6x2X0b1hyQit8w1x85JB8Xd+2v8drLA6p6wYfQt5LgsKKqv12on0sPIoNY3TDMJgjr
	nlj5YBKxditGfBWYDCBeZ4ewZNWSWNeq7fJEtGE41P1CWmRoptMB7b7qniK9hYkaHb2X/xHiF5qnz
	wXBFiyY6SFl/JX+7mpPimqsKkXFQe5l7C0933redUU/vxKpH/ZYGefx2M2ie3UUFS+B6BdgfhsVs7
	bSlKDsG/78B+vYrcTvHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNC8-0005X6-8o; Fri, 07 Jun 2019 22:18:44 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNBw-0005Va-Jn
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 22:18:33 +0000
Received: by mail-lj1-x242.google.com with SMTP id v18so3018654ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 15:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gldb3yKNAdLFuCuMW3i8lSkcWD9AeAuQqWMCJcjMt1w=;
 b=G9jAqm4GrJw44aseApNTMp1ZjQ/aMJNeUyiv8kQagv/gNhX33BEX/CzFFfoO08fSPB
 FIRt58LdAq424pNBetPm0eg6QkNKMjoFW09a34suTKYEqckDAocINkl4cJNxDodCE96C
 HhxaX0N2dtDsMgQTRenOa3Zz57TDPLOznIac0ahpARr0gBzRph6O+fMw7xfyM5gNCyc4
 ZEwFIOTj8bRtPvpJ/TJwP+iooxqBStOJPX265Lu/PgJ4qiYq+EqEOfo3dHGcStjFlqV7
 i7GxnfE3GpXg8kAr9/410RMqCH8UFTsX34P3RGCzpBMeWL/RtxobGuc1DPYjYqXccE1K
 XzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gldb3yKNAdLFuCuMW3i8lSkcWD9AeAuQqWMCJcjMt1w=;
 b=dECS23NqPDwt/l8/v/fdxjQ0RX1R+MrNro4Gxe4PTZ3ANYm2eGULnuzUg3uj5EsKMl
 5B4GFIpxGys6sGI11yHZU8H3TKz2/NmK7oqqKWQ5WGcUo9Lbds9R0OFQEG2vFVh4UVsw
 +X51NmVavfIP5S9CNoBWGzgAGN0XLn1XmgSwfzEqcWSxAgmden11KKlBeDeskvFGf3G+
 vMExvKpO5d2NH3+QgHYNrcOcjGufT0B67zr9TTkzmv6vmayV/sHjnCByPREP+9IC1dmU
 JkJ3SprMp5NYnmq5t+w78ubaTRSAp34hehU5r5uccApuE0LgoPE+Bp8X/vjCt6luHgFf
 Lm5g==
X-Gm-Message-State: APjAAAXIvNnUzoDbevrjOAlaYyE/7mP5MJN9jyqcNBZRbKMHnJI9PWXL
 HaCnN6CC1YEWflp3SLDiy8zYjvdlOiEmWYTW0E3cSA==
X-Google-Smtp-Source: APXvYqxOTBAeYX+u/Eh9xZoqx5z1jjeiP4aVzSBSOMzDg0FyT03H0TfU69azZbe7G7oS0gd/G5TcR0QxubMS3IbiYDI=
X-Received: by 2002:a2e:5dc4:: with SMTP id v65mr20370501lje.138.1559945908563; 
 Fri, 07 Jun 2019 15:18:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190604165802.7338-1-daniel.lezcano@linaro.org>
 <20190604165802.7338-2-daniel.lezcano@linaro.org>
In-Reply-To: <20190604165802.7338-2-daniel.lezcano@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 8 Jun 2019 00:18:20 +0200
Message-ID: <CACRpkdazSvjt0G58dQOr=cw6mJTptNd3ZmEXduXVh4=01YHNvQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Define values for the IPA
 governor for rock960
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_151832_685311_787B4028 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 6:58 PM Daniel Lezcano <daniel.lezcano@linaro.org> wrote:

> The intelligent power allocator PID coefficient to be set in sysfs
> are:
>
>     k_d: 0
>     k_po: 79
>     k_i: 10
>     k_pu: 50

With all the other interesting parametrization in the device tree
I kind of wonder why the PID regulator constants defaults are
not set up from device tree?

Any specific reason?

To me it seems like the kind of stuff userpace will invariably just
get wrong or forget about (somebody just runs a different
distribution without the extra magic to set sysfs right) unless
we supply good defaults.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
