Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E943199B6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxwBih1CMv+WUDS78YDA45e6hegg6dyE8kz032E67OU=; b=N1lWscV+gxZMoL
	5tvWNPVhDpt5f3MoVcEleQNiwmKH2J+CRRU1/hczTduU79vExaa83+j8BcYapZ9+QwXPoyzpFoi3s
	SOZya/hsBgsSQd2djRsdDWalZsykJv5lIWmYzFR81LOYkBI3MOeL38zcwT4faCxVdZe5Y7gNk1bln
	XOsRjkn9fRTG7EY6KnV9CrDJgqqyzVlYhF34V5tVdupyQxt3l0GzeIHsTz2U0qXJuxZ1/F2dxkBBC
	aWLrLA3Jof6xLlPNXMLW19ZoGh8TD2XQjL3+mcfqg7PvYKip6F8rG0P9hHX1/WodfNzKT1tIdXCqk
	gFO+ra1QcjC5+lrlQjkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJji-0007GV-RB; Tue, 31 Mar 2020 16:27:34 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJin-0006fo-A0; Tue, 31 Mar 2020 16:26:39 +0000
Received: by mail-ed1-x542.google.com with SMTP id a20so25911716edj.2;
 Tue, 31 Mar 2020 09:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nwQ6p0kjxHWUaH6A6bVvx98gfYpYtkPqYfqeOSPqSBo=;
 b=ceJi3zIySsmcUUoMmbHyJIINyLKe1RaNcCjos5UDdJyQw4zHK+W9pBsv/ATDJMWnx7
 gqi08d8eB+GQcLMotvF2luheKYoJ+pMkCW6SOAlIrXTHusdPn+5UcgJ2yr5Hnr8L+CUc
 6vglca50z1wEpzPK3t4w2fQi9Uu2s55eRg03uSO+wUkvcUKQPFYMES3TXyAL5Gom6JmO
 5w0XUDYTiTG1UahLy/9VNjHRy5Nx5EeNDy8tZHKcQVCqfAKM0i8XsoCZRYNk6o+5w89A
 UyaN1vXpkdI0wsq0CcavJkv01KK86hVYk93wPvOpT1/+G1kaS/L//0UtSjqePGqLt399
 sOXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nwQ6p0kjxHWUaH6A6bVvx98gfYpYtkPqYfqeOSPqSBo=;
 b=Cpv//9NI6zJmD4lW5iB4nZozqVMEbEFBd6k90/Vfckw73vHZpQb6egU3QATEI6epCt
 LT6lbiJk9vuGSB1NZ4132lRNkjlbSMIQ/qpI99jHgYEweiALYc/QQEc8WjpyFL8oOhvi
 HRDL3j/9k+SCXphLyCFgzYhP8E4nzihA/pEE+Pv4m3YSwesB8Fu/0AGHW6QXNCnsMtNG
 vLpKZJAHL1YgGr8TYfEi7oP7roMuZUEQBqhBkKzz3/vBmeX07HTU+kxrRgLAJS7RnnqN
 UKhSB9luz/oVsf+mKNdqexTTfWtX1+VXQFx9jUcJ5p3Azi7DzdQtquV+mDXnlmIaz7mg
 Tq1g==
X-Gm-Message-State: ANhLgQ21bOqC/5imtsHKupReKINEa8+0jUnCidmWDUbE5x/SSKjDcuo2
 wLuiR8jZDC9r7BOmbkvT7VpA/+8MF0CoU+8qUCZwVqUf
X-Google-Smtp-Source: ADFU+vsUMbwWMvrTmly08wlYEdvS8JaGTqzQfOyIFOyynV49KSGBzq6rwLnsJZGo0uibBQM6JWfp7zNbBSCAn7fUy5I=
X-Received: by 2002:a05:6402:b14:: with SMTP id
 bm20mr15236694edb.365.1585661493777; 
 Tue, 31 Mar 2020 06:31:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200330221104.3163788-1-martin.blumenstingl@googlemail.com>
 <20200330221104.3163788-4-martin.blumenstingl@googlemail.com>
 <05c15e30-3e20-6fce-d2ca-87b8762d0fef@baylibre.com>
In-Reply-To: <05c15e30-3e20-6fce-d2ca-87b8762d0fef@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 31 Mar 2020 15:31:22 +0200
Message-ID: <CAFBinCDdjz8FqwAvPOKRYF-KMm6bMMa9D1j7x1=Pkvsx-zRrUg@mail.gmail.com>
Subject: Re: [RFC v1 3/5] arm64: dts: amlogic: meson-gx: add the Mali-450 OPP
 table and use DVFS
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_092637_555263_B3E02CE5 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Tue, Mar 31, 2020 at 9:44 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Hi,
>
> On 31/03/2020 00:11, Martin Blumenstingl wrote:
> > Add the OPP table for the Mali-450 GPU and drop the hardcoded initial
> > clock configuration. This enables GPU DVFS and thus saves power when the
> > GPU is not in use while still being able switch to a higher clock on
> > demand.
> >
> > While here, make most of meson-gxl-mali re-usable to reduce the amount
> > of duplicate code between GXBB and GXL. This is more important now as we
> > don't want to duplicate the GPU OPP table.
>
> Looks good, but please add comment about the CLKID_GP0_PLL assigned clock rate.
I can do that - do you want that comment to be part of the patch
description or in the .dtsi?

> I'll ask LibreELEC people to have a run on these patches (including the clk changes) with Kodi.
real-world testing would be amazing!


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
