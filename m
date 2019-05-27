Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE622B9F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRlTceh+K1umKFLArGMNbWjUHkESQS61sfQdFn7QgU8=; b=QVcKuV0XT+vOD3
	UgCIYsuUdiNnpD6oPI2JKyjVIDp0qTXPCIyFQ1Mbcoz213q4vInTfDc9XhGUNgZwdZ/F68zg5g2z3
	NDyQ7b763fYLAhqYjgPMxKjpXWeDmbbXQdTi8KaBgTgeXTqtX3tRIjyfPEWXnQ8QvIQIkgNNBhgi7
	RufLFGkUqbnS176Ea6mHykRRetz5HZLzB5qkG9hAPYE4VDAX63CYCxMOIpcp1t4k9JiYPq6yMKv8X
	YcuZrwZfF4vEq8KPPSyRtjcl6uD4VfRhR98010Sn7QjnmlhAWF9/fsjFnX73BWEPlng6TjL16d+dy
	+HPZPF4PZUxKKpbVM9cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVKA9-0002Ap-QC; Mon, 27 May 2019 18:15:57 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK9r-0001wh-0a; Mon, 27 May 2019 18:15:45 +0000
Received: by mail-ot1-x344.google.com with SMTP id j49so15466452otc.13;
 Mon, 27 May 2019 11:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CZXI0Vn72E/kvqUVtGm0iU9miuWChUM3kAYpzpVGfLI=;
 b=tSvoWWkLsY1P3+leYGrD5X5mo8Xnvw2PuTio2xXbcEWt1z6dDw9GiJpKsm1oJTF99b
 fua5Ifgyz51Rodgs5JkfzurKlGPoPYJdBuLN1m7OIvMoRemkDDdZ/DrNo7Tj6AT3/O+g
 hvuX/BVFs+41JDZY87oxiQcURLyGoACEjyGRe+Kj/42h4Bjc2ddBpQwWxY3FuKhkUjw7
 CzbYIRM24oxp75+WPr1CAzTjmoXRl74YS99VRGYTXjtF4u7pDRKaokdXGFuQ+/oZrbu4
 7wfs10chpRgTZsdocsWxitwrK2bByBfUSMB3bpm/RC9AtGRaRTl9LGvp2Hu3xyfRyxEd
 zQUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CZXI0Vn72E/kvqUVtGm0iU9miuWChUM3kAYpzpVGfLI=;
 b=leEPXUzP3anrWWmQGomxWmKxc9g+8HOOu0wHc3jHUX9fMDBQfvBwg8/q5x0CD2vWlB
 vecqZIXj5W4eF+x8T1WmbzhsQtUHH5v9+KERsA/YnaXji2oQa/aobaggyMXJbw94lKG4
 Iml4geGPn0kpBb0h8TXn+TSv/eb5ofTedZ2lsAZbZPDy+I83H69tju+yLsah/KPT3lPB
 rixnbDzKhkqXWipJ1Gmb5HCln+xqD1XMW6M1vO9kUIvkWzb9TAZZYiKmaDvx8h+AqdOb
 3S6AOtpgGHpzW8vYZ0j/kFymKjbznhGsyuFrxM0/zrJP6cAceAC9SGrYIyXhKvA8DaEn
 aQ2A==
X-Gm-Message-State: APjAAAWgV6sAY8M7l2ixul9tZ3+zzYTG33+oxoVaaXHtRyNaO7Me8Aeo
 zEWFadAWvlUSwajtzwI57EnHhh9apdL75sLqMHE=
X-Google-Smtp-Source: APXvYqytYrC2eskykBQx9xuR6VQWqrtmKRbQrCEpy1SQnswhueDhG3nDNwT5nAwRtA3pcFaY0y+7otf8sm0gM0iP2V0=
X-Received: by 2002:a9d:2f08:: with SMTP id h8mr71839920otb.42.1558980938237; 
 Mon, 27 May 2019 11:15:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190527132200.17377-1-narmstrong@baylibre.com>
 <20190527132200.17377-4-narmstrong@baylibre.com>
In-Reply-To: <20190527132200.17377-4-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:15:27 +0200
Message-ID: <CAFBinCBJwVT0uMx--NPuuAYS7k2Zx-X-Ew+qNmRQiPV+Cmv=KA@mail.gmail.com>
Subject: Re: [PATCH 03/10] arm64: dts: meson-gxbb-wetek: enable SARADC
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_111539_691455_F43797A1 
X-CRM114-Status: GOOD (  10.43  )
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
> Enable SARADC on Wetek Boards.
as far I as remember there's a story behind this (and it would be nice
to have it documented here):
some of the SCPI firmware revisions don't enable the SAR ADC clock
when reading the SoCs temperature.
if the SAR ADC is disabled in Linux then the common clock framework
will disable the SAR ADC clock.
now, when the SCPI firmware uses the SAR ADC to read the SoC
temperature we only get garbage.

enabling the SAR ADC in Linux "fixes" this issue

> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
with that:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
