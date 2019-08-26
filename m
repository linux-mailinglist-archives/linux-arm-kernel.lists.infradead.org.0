Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4B39C874
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 06:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eemEqI+VKecWZmeCxaazwKAtyiU0HMUJmHwEceZhDSw=; b=TXb2dQ419rrPEj
	suzbAlg5Sd6JlxsQ9gqIMsmk0j1W96hdnBYj5G1T7yeV3OrU9zWDn/eCnmfu2kdT0RSfGln9IcW1J
	u3tJ1VZ24Rf0GIid1fPeGulPIqUfkOCQ5sHTMZzjzbGb24koan7KqI3wzveHCxW19lVywU6kek5nL
	9KOmjOWkUTQY+ovWYmNWvTaGC2QS1VK4jG9m6aJ7vdoz3FvYLu2JWYkQGmrA/B5ueFzl1zGtreuKN
	qNrUGgqtsD86VnfuhLPOAy9PLAKrXtho/cbxSMYEQPSWJ+tzTsge/ZkJ0Yw+WZJExYp/mZFgQFttw
	v/DKiBQ5IE+HHde85arg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i26lr-0005Ne-L4; Mon, 26 Aug 2019 04:38:23 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i26lf-0005N9-7A; Mon, 26 Aug 2019 04:38:12 +0000
Received: by mail-io1-xd29.google.com with SMTP id x4so34036615iog.13;
 Sun, 25 Aug 2019 21:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b1exAYWMUyyRgKmul096n+B+OJhwM6f4sJVMKQ8yVO4=;
 b=sNQY2SpHNTmIlNk/wEGcudVnHQM83F7hQaS1ETEjI79e15eMZ/xtylyHzPmznM+1R6
 1IA03XGhcgR92W7/4Jezb2kbTUHRHGW4TRqQTKB7ssDi1YSl+eQvvPiSk3hy/aOjFHc+
 3l1PR0QAE2VQsmxiOJwbV6clUiMsSCrMoAcb72aw4cNsQZWt/c844lUQLo4RLaFZmuNi
 iLMbl/Ggw7uLD7MVLEMbeww3FeArGoHVn/PyZG/gcn8HH+sZTalWC8u4742g1hxkd9Zp
 01oU8R2vwCiRvGUawpE99qLI/drjYNbfoEH6BEkNM6s/tm0vknYY9BWV/PKXQKn18hW1
 Orig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b1exAYWMUyyRgKmul096n+B+OJhwM6f4sJVMKQ8yVO4=;
 b=RD2olp1jlZVLYEyw5xq3ApdpU8zbKG7GuBc3dpkBhkmsGmtOTUd0IrU4ZEUb0l82bc
 qnAVjLbUxRPZ9ZjOWK9tqSRee1FLnthotal2hdAXmzunCmiTXRbxrfrh1FhJkUbSSmaR
 zveQayRix5IKjqTARa+e5gEaKeWHvRCqjxOa1n1tK4tP5Guad4APclVEJFqhVdvySl8c
 yKofUtf1TWxLCdaqQRg4cqGFcKpqqz4W/U5PmA8qpoth9rBrbkO+ZIbIEBgOlugnpGo3
 fRb6lV9mMHkQ4iq/lqz+pktYGx5tq1RnHpHh4Os2i3Ubu0hV+wNyUxDGlEhY9a8XV7+p
 q4RA==
X-Gm-Message-State: APjAAAWA+wUC/08BS60CGF+lHPr1WvzCkdhd5A6yCH1Y8RR51/gSQ4Ve
 TouexCsOP3JAZ8NjlQnqgldr+tT+sovtzqxNVKM=
X-Google-Smtp-Source: APXvYqwEEY4HsG8gz1jj+r6ZLb2rp/DiM2S4ZMAN7B0+HDDxv6FuAymB/Jnl0NRYtaRzdacjMIKfIX+oi2ihc+NiIOE=
X-Received: by 2002:a6b:4409:: with SMTP id r9mr22335208ioa.75.1566794288499; 
 Sun, 25 Aug 2019 21:38:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190824184912.795-1-linux.amoon@gmail.com>
 <CAFBinCCkEE8==-Sqqj_=Ofnx7_H-970dETwEmEPohs74806ZMw@mail.gmail.com>
In-Reply-To: <CAFBinCCkEE8==-Sqqj_=Ofnx7_H-970dETwEmEPohs74806ZMw@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 26 Aug 2019 10:08:01 +0530
Message-ID: <CANAwSgTsua_x6fi7NzC2XjcV19OJcN3NhOT_niKXN4RR4X+qVQ@mail.gmail.com>
Subject: Re: [PATCHv4 0/3] Odroid c2 usb fixs
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_213811_288954_46508FD8 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d29 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

On Sun, 25 Aug 2019 at 02:48, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hi Anand,
>
> thank you for the patches
>
> On Sat, Aug 24, 2019 at 8:49 PM Anand Moon <linux.amoon@gmail.com> wrote:
> [...]
> > Anand Moon (3):
> >   arm64: dts: meson: odroid-c2: p5v0 is the main 5V power input
> >   arm64: dts: meson: odroid-c2: Add missing linking regulator to usb bus
> >   arm64: dts: meson: odroid-c2: Disable usb_otg bus to avoid power
> >     failed warning
> this whole series is:
> Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Thanks, I have some more patch in line for this board.

Best Regards
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
