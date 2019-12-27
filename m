Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1534812B46E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 13:07:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1Ov3jLj4itWpGb47nBa7zSx5s34RpnYFsRQXAwXyC4=; b=CH83qE1/BHOAC7
	+2EZpHCQGeKVuo1YQWw0OFHs8UM1hNd74Jab3cDJg844j/87rYmUqW6r1wyYKWcWKbE3GnQSuBTE6
	5OfN+nE+UJggJlGBZLEd3eNW1I7HsdyzSgdwna+TZLn/9O620wWVsfZ+9137pqtqwpZH93pux9Tvo
	3tC9A0mSYjihPXBPcnTEmWDsxrd/cdy+H1HNbGwaOM9quxQp8GdB+VdrQciDwEycSkGOLEwkksMFz
	bVK+N98o4BAEoTYp3lgF4ODj0e/O/i78d/sWsbgMjOHlennuLYhNHFoDLCzFhY54Ln+MFFCkOdmKT
	GVJpu37gjIx6JVNU+vOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikoOP-0006oR-Iz; Fri, 27 Dec 2019 12:06:57 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikoOG-0006nm-El
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 12:06:49 +0000
Received: by mail-il1-x142.google.com with SMTP id f10so22285923ils.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Dec 2019 04:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WmfgYIlZWxDaZizS0/2PUuLY/qX43M07m582qEI148o=;
 b=X98BOIzumlFPEjdZ9sUuhS3iBBqL1VUK/pjvCrlYXSS/VMjrahfV6GK8V4NLfCKstl
 FcnTl8ezBueGukai4CUwLYopsLt6rhnipVOq02y3UOM+V7ta4pYmlEnbudPT6SoSqQ0Q
 Juv11hh4tpO9NcgZfbm1TSYgDn5hSdsHO8H24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WmfgYIlZWxDaZizS0/2PUuLY/qX43M07m582qEI148o=;
 b=ePSVAFF0O3Zs263UNRnhID8KqknzMV8wQMQ3eKyoUpSFq65Q0h0s6cOot4wtCvd2FN
 WGoHuA5ZvOHf0x4LWE+wLEdgyU75JZHyRMKnHIIa/bYb4vqEUsfftNnQJjzf2PS8lTBG
 hReDdL55Dfdp47BXioOd4fBuKCFIC69XCMT6NAf4HTHrfMKxBFl4eakSPHGp0n1eVzI8
 AX8joHwPaovifg5LkCuf7r48Ypf6FdsI16yCLepum9li1BPDW0cwaInh2PgIm4EdsUod
 h9UiC8DxOpmyOzPfqsKdObifigZ4k2+gUkClS9kmvXK8ElzwjOzRvCom4dhoranHFYoR
 NaUQ==
X-Gm-Message-State: APjAAAVX+cbUBFmhfwpQFWBiu90vQNdOdMNyQ6r+B/pL9Pum7ChM3IRB
 CdFg9t6DtBWrfarRACJRJhDxjtlfU36+BfYD0EtjOQ==
X-Google-Smtp-Source: APXvYqz0avfFPQ7KqEa1gHijLD//RP3wLx7cUiHD8+e66tZOfTYRzPwEjDOnRq8Z7uRAutkXR/PIyTrnPMOIPxZ6x2s=
X-Received: by 2002:a92:860f:: with SMTP id g15mr42716158ild.297.1577448407609; 
 Fri, 27 Dec 2019 04:06:47 -0800 (PST)
MIME-Version: 1.0
References: <20191222132229.30276-1-jagan@amarulasolutions.com>
 <20191226093952.i2jttp7tr5hie6jl@hendrix.home>
In-Reply-To: <20191226093952.i2jttp7tr5hie6jl@hendrix.home>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 27 Dec 2019 17:36:36 +0530
Message-ID: <CAMty3ZA9VBj6OxaLYE21Qt01nnTYGhsS8c2JHc5esDMeWe0qYw@mail.gmail.com>
Subject: Re: [PATCH v14 0/7] drm/sun4i: Allwinner A64 MIPI-DSI support
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_040648_494420_65EAD77B 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 26, 2019 at 3:08 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Sun, Dec 22, 2019 at 06:52:22PM +0530, Jagan Teki wrote:
> > This is v14 version for Allwinner A64 MIPI-DSI support
> > and here is the previous version set[1]
>
> I applied the patches 1 to 6, and fixed checkpatch warnings in the
> patch 5. Make sure to run it before sending patches.

Looks like I missed this time, sorry but usually I would do. Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
