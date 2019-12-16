Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA46611FF3B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 08:53:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yXD+6BDYnUMi9PDIiMIERejQSVAw31YdprC3jO0m7M=; b=STw0wUkdOJ4YAZ
	huICuj7rxZFrSgxafWh61jG1xqxwLKK8iRnRYpuIqD/d0Zt5FdzpcnXExc7fLnPbXzw+TnkRjC+YX
	jkMhyfyznD1wKtAbY470k5U83BI7KvfbkeJ2eHALArAVO5wc8aANCMb0/z9JgCm9JEe9tGEwruz9P
	NtR0jjYDd40ApsRsS+yWvD7uE+x1/rCwQW/EZTadOmTU3t7foz2CsymSnps1GnCxPRAyr23x7pwuz
	+pUcQQDiKEIYwfoRXBLeeKkEVZNmiotLoYUNfm+XIHU/5VF1wN7KGbMR8Fo7g8SDIoCcnKJzBuwRO
	HB0n+vysxzSBUHzg0LDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iglBY-0007g5-JY; Mon, 16 Dec 2019 07:52:56 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iglBQ-0007fJ-KD; Mon, 16 Dec 2019 07:52:49 +0000
Received: by mail-ot1-x343.google.com with SMTP id 59so7975478otp.12;
 Sun, 15 Dec 2019 23:52:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=teaKbuiwSImi7RfIBsT5A595WaRZ9qMw7uZTBvgzoPo=;
 b=T9+hyjIOYswgHEv4Tk1y+UNP7CGTbnEox9pCdGBWORd9ZZ8iJyE++oJ17Ew7Pahdw8
 eV4gf9dCyNCNDRSAH/6T+z2+0xICmVRXxTvFJK3lXXeCq+konXyjj9WGgZhxkc3ABdiF
 JEM7Gm1bSUKBl2NJoGdxXv/p/bAUz4rzX+FTOUyLZb6hIqR2WQMjUJNm42ULZRiJZZoc
 ga24v8E8mr7DcvLxPW8MMCvY2OXxWEnyGfPcU+z0xN5sXyUwN7CB3kpXsWqkjc+ot3QR
 6s8GOULh2ygu7Y0nuPsI8e9UL1ThafpjTBl47lNjqSxsBLfirQSGATt1hukDBeom5QaS
 NYZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=teaKbuiwSImi7RfIBsT5A595WaRZ9qMw7uZTBvgzoPo=;
 b=t8D8b7rvWOX8CB6wEXz/LXwTHyS8P6AXkEXnIj7M0rskIORtEYaIYDahKdO9e6Atf3
 2SADEGaK9P65KMVirKVHdFN0SluRU5dVi/DIY+dbxrG4IJ1qql9BmL5zOnMnTyFGvomz
 YYIJy4mU/lqB3I4g2xFqJvLHhgcmOQzSODJC4oSAP/w+xNx6jYQf08KdzQM9pJMGYkUq
 9c/p3iRXHSwuFD9HEMxXC5cniWUMQ7Ghqu4fJ0vAYryNSj1nEdIpx+F2kwuU84P3Zyj/
 /T5B6pBkwXKCE5vQMOZ3cPNjxxUVCaQPFdDkK8YgnwC5D/0GkmhoDOUlazCugcmtWuSo
 UntQ==
X-Gm-Message-State: APjAAAWF2BAOfOy20w1i6uf4B3WvQTygvs99RXOyvt8YbxopNaBvvTCd
 fafWRqVRWrAelkl67Ju46eeQsyW3CFoBAS7q2Vo=
X-Google-Smtp-Source: APXvYqzJWsrCKHBWPt/+qDVqGaXSw/dwYOelFmuU1LMlbhh0onKHLZCdb9U0GQHZ+rXpK2GlmhJM1lVnV2qMLZqENUI=
X-Received: by 2002:a9d:175:: with SMTP id 108mr30137165otu.325.1576482767410; 
 Sun, 15 Dec 2019 23:52:47 -0800 (PST)
MIME-Version: 1.0
References: <20191213084748.11210-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213185011.GA170447@google.com>
In-Reply-To: <20191213185011.GA170447@google.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 16 Dec 2019 07:52:20 +0000
Message-ID: <CA+V-a8u7RO1L1ExPXwHuSpKrCA47iRPFySUn1royEGoOxy0=2A@mail.gmail.com>
Subject: Re: [v2 1/6] pci: pcie-rcar: preparation for adding endpoint support
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_235248_688869_96E23BEA 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-pci <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, Catalin Marinas <catalin.marinas@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Jingoo Han <jingoohan1@gmail.com>, Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

On Fri, Dec 13, 2019 at 9:06 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Fri, Dec 13, 2019 at 08:47:43AM +0000, Lad Prabhakar wrote:
> > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > this patch prepares for adding endpoint support to rcar controller,
> > there are no functional changes with this patch, a common file is
> > created so that it can be shared with endpoint driver. Alongside
> > this patch fixes checkpatch reported issues.
>
> Can you please split this into:
>
>   - a patch that moves code only, with no other changes except any
>     necessary Kconfig and Makefile changes
>   - another patch that fixes the checkpatch things
>
> When the checkpatch fixes are buried in the code move, it's impossible
> to review them.
>
thank you for the review.sure I'll split up the patches and resend.

Cheers,
--Prabhakar

> > Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  arch/arm64/configs/defconfig            |    2 +-
> >  drivers/pci/controller/Kconfig          |    4 +-
> >  drivers/pci/controller/Makefile         |    2 +-
> >  drivers/pci/controller/pcie-rcar-host.c | 1056 ++++++++++++++++++++++++++
> >  drivers/pci/controller/pcie-rcar.c      | 1229 ++-----------------------------
> >  drivers/pci/controller/pcie-rcar.h      |  129 ++++
> >  6 files changed, 1242 insertions(+), 1180 deletions(-)
> >  create mode 100644 drivers/pci/controller/pcie-rcar-host.c
> >  create mode 100644 drivers/pci/controller/pcie-rcar.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
