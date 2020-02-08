Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A309156759
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 20:17:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/1TUcJS5//H9DcyuOBTud1B80ZXSi7v1fGvKyFdmw4=; b=noUpAV84tNkLYj
	6emorn0mUR4TgT4AdzDxLNc9GXHOitprknuDuHvL+aEqxHgD2IsmkIZoKdYt5/VrsiS4eb3TsiI9h
	D7x6tiv6q5bxCn/3r9Cui0J08XOiYQH0ttdi0+x4LKA8d1Ys8qj+fGaVJkqXZrXSI55Quw901QkiU
	3GGjslXMWHRUYDogYGShQP29pKcoiYQbABNPM5pxOhepqZ8ZPiVVFsitG+QGYwyPOXVwP+dskOc78
	fiXTHuIPQ9BcDW39LJbA4vcKunRyZDBcEJ8KMfw+Q85NUTOQC2UgRgTDqFmbWj1ZZRmGZb3Q9TIDj
	3rgoisrXcNaQkJ+xTh2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Vbb-0006vP-W8; Sat, 08 Feb 2020 19:17:28 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0VbU-0006ut-Aq; Sat, 08 Feb 2020 19:17:22 +0000
Received: by mail-oi1-x242.google.com with SMTP id b18so5438776oie.2;
 Sat, 08 Feb 2020 11:17:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NSeIAIUmAhkC5M6sFAkxYgTxB387Xcn3PJ9kLvph2pg=;
 b=l6KsokbtjWXGyT5bwmgRrkdXtF+FWNl3A5J8QcFXXd4/no5zZWZOI5jJxOgx2irUmh
 o/cLraaYWQfJPTUXU3Q/9/4TrdRVb0vp8bjNFTdq4IS7B2f1Gx0nYvicwqkqBx8OsMty
 WcrwYl9UZWi7fNZAMumyBdFzlW4H73Q8cyfgHmB4G4HccUlxO21sd8DJ+WoB6zYVupIE
 fbN2tMd0JaShcmqsPQ0rhVCjNBWZP01g+pzT8I0oQBqK02AeQHn+d7agP7PbiybtgU31
 +zALunsJLs3ZOeLb/YmwfzuL0waui1q10Dq2EY5JoiLWgKmykWBdP1cn9MIsQVyq7Br7
 qWZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NSeIAIUmAhkC5M6sFAkxYgTxB387Xcn3PJ9kLvph2pg=;
 b=px0NuQ4Hd7sI57gUXdKfpJwKJ6OCa8LXerefMo0lZNBy1fzLSMiTujaO78wF26f7JU
 yOyxtH2uvAaN6uxE7P4jzPZmIwA3RdhMqcH1ZvLisg6KPlVJ2jQgewhegN6G8HZyBIkW
 +AeNRujVFhqgSi8htH3XdgXKVza3ZLpk5Caj2a1C5OGHVyIwqInZgqCo8NPJ/Q+6ALAW
 bW/BCYVx9lV52MMkaVQ8ligIO+oLC5yr9wKS3zfDn87nuzNVnV/ky+7UYn/OAIK8gCCe
 atR2BT2lc5YKvVy45SMNPHZFn/DZuKWSPgNTRcmy2F+ARydaOUny1JjbTKvV2iVCs3ho
 Mw5w==
X-Gm-Message-State: APjAAAUUWFtyWnoiEUGESsh+5KvYvdWhEJ9rBmSDKgVAVqhnEOHwjRok
 jkNdVn3o8sHrjUZ7zosY+vUCA82Q7TwoTP4tu6A=
X-Google-Smtp-Source: APXvYqzD3XmPXLz86r03TtR9E5AFzlwq6F2JlxS+aoZ3btUNJri7WcjtT31Kr7YAEJQ22zusmaQnQtJqbsRFDTnL7AE=
X-Received: by 2002:aca:5a04:: with SMTP id o4mr6111624oib.71.1581189431309;
 Sat, 08 Feb 2020 11:17:11 -0800 (PST)
MIME-Version: 1.0
References: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200208183641.6674-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <374e26ca-cd3d-fd12-edad-5f24622b9d3d@cogentembedded.com>
In-Reply-To: <374e26ca-cd3d-fd12-edad-5f24622b9d3d@cogentembedded.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Sat, 8 Feb 2020 19:16:44 +0000
Message-ID: <CA+V-a8skgpMqCRhVERiiEECyb30s8eGvaC+oY=F21oXZ7DJ-Vg@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] PCI: rcar: Fix calculating mask for PCIEPAMR
 register
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_111720_680574_48A68411 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Will Deacon <will@kernel.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sergei,

Thank you for the review.

On Sat, Feb 8, 2020 at 7:07 PM Sergei Shtylyov
<sergei.shtylyov@cogentembedded.com> wrote:
>
> Hello!
>
> On 02/08/2020 09:36 PM, Lad Prabhakar wrote:
>
> > The mask value was calculated incorrectly for PCIEPAMR register if the
> > size was less the 128bytes, this patch fixes the above by adding a check
>
>    Less than, perhaps?
>
Oops shall fix that.

Cheers,
--Prabhakar Lad

> > on size.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> [...]
>
> MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
