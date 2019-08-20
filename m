Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA4796A86
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:29:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+hWufFQ5VTGyR3JSvNFIs2Io3R/O17hDoAKuoJlBLs=; b=fAIJvt9BH5IPnJ
	5/ytrOiOt/lzTSt4C4XOiamo+MFVVqW78GJKJF9yKDl5YZX6q3DAP2LiUmjQebJxBWgpW6LGXxdHQ
	gEuhqEBPJWT1ZjosjF+dQdOkhk4NhG4igWRljEXgT7LohtrZh/dVMoFqe5dWjk2vuS40xFJ9uG+/y
	EL74vu1vbLHvGAUNBwDb9Z1ZKA65BritM2JeyrQVxHVzOoMPjEazqI+2TXYrhEMP4vw5pOcyxTRVJ
	40ZMtQ4JAl50JA7JPrgzy5maekOafum4t8fOSBir8d3ZP93PfgGbyynE2jiH9TXTIb4SItIqZ6Pga
	9gBLZnM7UAC0rOqHrFdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Akn-0005Fs-HV; Tue, 20 Aug 2019 20:29:17 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Aka-0005EB-Hr; Tue, 20 Aug 2019 20:29:05 +0000
Received: by mail-oi1-x243.google.com with SMTP id o6so5159228oic.9;
 Tue, 20 Aug 2019 13:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j6E1lyHDsgDU8DiTt3vegXCDVprFaiy8n8sbPdFHGho=;
 b=tj0pYCCsetgnZSZRPyv4P8EZfHeUJz7Oq8sYze0pLvO5MNR/8KfKlfjvm9LnjZtdMm
 0RMWONs9gPFVr72LH7qMEQaEahe0nxLAEmcZK4hT7DbaqF3ExCtLpAUcIPePe4dsVL08
 InHaq+2NNvkD1PvM3BFhNrUF6owR6q7I8EHUsxO1iMoFI0OzCfCT7MX5tOM6rtC/eaNy
 yflsKa6NMo2TrgHCdqfo6WkirtzOMWWRGc/OqEEAcfE1T1skJEklkJlH+x9BBsYITb6N
 +vj1lFUy2wLbIMeXdS3Rvx9h1lDOX20owB9/qpH7wPO6FuWYUhsE2muoOAF1Ea+xnyjd
 7HiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j6E1lyHDsgDU8DiTt3vegXCDVprFaiy8n8sbPdFHGho=;
 b=ApumVFvcuQy4rw+VPdWrg3n8lBPOskXXtZEVRjXv8fXz+Ngkr//YqdGWcDJxvYhI1j
 /GZjmk0ISQBTqlKwMb3kxOevP3lQeXL6OEERxPfpQCK7W7jdzQBC6WXd8IpEWOYdDIxK
 hxkpq1aXiSy33jm46fZKl2zNei2Rh56AoiYbXyNrGkB/VewXXpiBH68HsiMweMYQwGdL
 Fx8WCuFlsJavegswVtq+VL6qDhuavNOqM5nsLQZR8iFJOQD9NjjnwsBlKNA3ks0ZOQmw
 yifZFGfY0e7xMHwnT+/fy9HdpucAvRgAhe2xud6ZCS7NI6uST7BSt7VTYVd0HzJNb8Uy
 pplg==
X-Gm-Message-State: APjAAAXCx0ZVcATo57Z0LLFPw0huZg9aULURIxj+y3HzuDnFmGWSQRyt
 5HW9B8z/E0pPDXEcnjmIJ7Dt6Xxwr2+H1SGa3tg=
X-Google-Smtp-Source: APXvYqw0L67k2dTpl+TcYZzMhdPd+8VdAypm5lktacA1LHAmxmKNHY2j19AbzoOhGAoriRZFeI/NEDh66fA5zXBXjEM=
X-Received: by 2002:aca:4f17:: with SMTP id d23mr1354353oib.154.1566332943483; 
 Tue, 20 Aug 2019 13:29:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190814142918.11636-1-narmstrong@baylibre.com>
 <20190814142918.11636-3-narmstrong@baylibre.com>
In-Reply-To: <20190814142918.11636-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 20 Aug 2019 22:28:52 +0200
Message-ID: <CAFBinCBQwsoO1dGKzzkE4Jh9VeqDhiy__m96X=CZBKSDRrHDOw@mail.gmail.com>
Subject: Re: [PATCH 02/14] arm64: dts: meson-gx: drop the vpu dmc memory cell
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_132904_617482_5392AB6A 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: khilman@baylibre.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 4:31 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This fixes the following DT schemas check errors:
> meson-gxl-s805x-libretech-ac.dt.yaml: vpu@d0100000: reg-names: Additional items are not allowed ('dmc' was unexpected)
> meson-gxl-s805x-libretech-ac.dt.yaml: vpu@d0100000: reg-names: ['vpu', 'hhi', 'dmc'] is too long
if you have to re-send it for whatever reason I would add:
"
The 'dmc' register area was replaced by the amlogic,canvas property
which was introduced in commit f1726043426c73 ("arm64: dts: meson-gx:
add dmcbus and canvas nodes.") and commit cf34287986d0b6 ("arm64: dts:
meson-gx: Add canvas provider node to the vpu")
"

> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
