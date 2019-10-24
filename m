Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E3CE3C6B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 21:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDZt9dqmrRCerv7cDfhVpzjU+vF4vKn6bGX+1/a+ofI=; b=AueCMKVDkdKVx7
	nvgCJVNwLp2V9xbFm8ZKw0qamFfuwwzIY/B2cyADuF60DHJyp8EgRWrhN93z69Epbl/7K319jpnkC
	+Xy15/1pEf9fn18PnAe67xcWHi+X02enkcNpoY2sm5To2wYdK5xsjUZptfR4OqZOlLdEK5FKoTB23
	HiyMP/clk22Hef1HH/wmuStjSpXHEc3NFpE7fAtmXPzyvdmlf4dnYOdFS+//phvbNLYDlygY1jCW2
	onrkDNFTLkTkT14uYVPTlF6MyKh18YShY8j5YmvrvAMGGnO6qaLHUJMBDyybK65E643pryGz0MWVy
	A68OLW44f/Jai8M0bsRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNj8Q-0007rG-Rk; Thu, 24 Oct 2019 19:51:02 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNj8E-0007py-O4; Thu, 24 Oct 2019 19:50:52 +0000
Received: by mail-oi1-x243.google.com with SMTP id j7so2983060oib.3;
 Thu, 24 Oct 2019 12:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=obOaJfYPGUFMBdJ+GFQAYWd7jIJzRz2RvyNeFwhCwqc=;
 b=NCfTLHjlbgJYN9lpItCC3wyK0gNVuM4U9DSlxbPK0EpUIoR4v5tAhulLLZtiiIO7Sf
 6VOOfxx4kF7UZCx0vTa8gWHltGDFLyzVVSKJWoNH5Yc4+G99eA8vVCVCi7bH2TW0CF+U
 BQPpM8M5NsvjEUV31BQMA2SQL9JeKZy3fpGrrDkl9ZdCCO0NX61tJi1OW4NgJNJM2lZa
 LBAGeN7fNx3FUeS3GP+/TAbus4kdH5sCNx5FbueK9qM4weHgda+EVFJ2dIY8VpZeeJuo
 AGU77VNP8VPk8VEe8qzdOSFPnOL/oHOqwmsGtSpDEEFpZSPk2ImzImmCD1suJLEEYjQP
 9e0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=obOaJfYPGUFMBdJ+GFQAYWd7jIJzRz2RvyNeFwhCwqc=;
 b=r7CZWtAGcvR/Gjj5++0EenO1a9cT/Le6MKVuVipKQLS5txGaHF6VHCr1O9wdHBARc6
 o1QnxKvo1omHd/eiLC1qyZ1GafXwcckV0MECfYvv15R8UEdM4+O/wktfrmCanNaVrPF+
 h9MabZzu9UuBWwRJIdFddgNIqxjtN0q3Hp6buqLukjPmj8Wh7VBxR5cerIMN46RwKyDD
 XsR/JNpSELGfL4rofzx93MXtfYGy7ennve06r+S2idPGDeFQ8tRbii74pBLVLtKoo/XF
 rV84rzxntfYVIMYuTHqpH/PLxnYTLbkJhZeq9R8DPq6OJhafoBomni2Wn4sqg2mtR2u6
 TknA==
X-Gm-Message-State: APjAAAVQgH2aywvyB3HtrO4U736MQ/SOF2nJDUjCJLhLNX+LMkHq+sAC
 Q3dlWgNiPGRQTi5ioDYuXd65na0sf3Bnx9SQPWY=
X-Google-Smtp-Source: APXvYqxQGKa/dRUXVPSOSFXXQKDj8etCne7ZHnOYBVb6ZrUtCaweeYFBd5Yj1la5eq8jLWjRNlFy65R3H8uw+cSuBYM=
X-Received: by 2002:aca:dd02:: with SMTP id u2mr954574oig.39.1571946647940;
 Thu, 24 Oct 2019 12:50:47 -0700 (PDT)
MIME-Version: 1.0
References: <20191021142904.12401-1-narmstrong@baylibre.com>
In-Reply-To: <20191021142904.12401-1-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 24 Oct 2019 21:50:36 +0200
Message-ID: <CAFBinCD7NzK8EphtVTx77aSQxRytm4F8JhzbJMZ1aXfaQyFVMg@mail.gmail.com>
Subject: Re: [PATCH 0/5] arm64: dts: meson: new fixes following YAML bindings
 schemas conversion
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_125050_807999_FD0AEDA0 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, Oct 21, 2019 at 4:29 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This is the first set of DT fixes following the first YAML bindings conversion
> at [1], [2], [3] and [4] and v5.4-rc1 bindings changes.
>
> These are only cosmetic changes, and should not break drivers implementation
> following the bindings.
>
> [1] https://patchwork.kernel.org/patch/11202077/
> [2] https://patchwork.kernel.org/patch/11202183/
> [3] https://patchwork.kernel.org/patch/11202207/
> [4] https://patchwork.kernel.org/patch/11202265/
>
> Neil Armstrong (5):
>   arm64: dts: meson-g12a: fix gpu irq order
>   arm64: dts: meson-gxm: fix gpu irq order
>   arm64: dts: meson-g12b-odroid-n2: add missing amlogic,s922x compatible
>   arm64: dts: meson-gx: cec node should be disabled by default
>   arm64: dts: meson-gx: fix i2c compatible
for the whole series:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>


Thank you!

Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
