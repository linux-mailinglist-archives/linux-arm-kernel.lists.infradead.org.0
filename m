Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCEC1727B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:33:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5PJ8m+vP0ut7epUrjcnwHrr/++gQU4jR2QHWL825io=; b=qE/0oPt/evyljb
	JYqW+TH3jwRK8LO+TCGTx6HZxMd3JEjY2iYWTweyylL+PFf4WChgIlftvO28a/PigCQKH/vtg2wOD
	83JulDMyR/ecHPIYWWF7vqpY2/eGCfT4CTTvnxAJDDaTJQoZsIZquq4RtK1uWkGHNHfLdpvkSJH08
	fwlTgSot7W73Eh1NOn2tL4ZuQMODn1O2W1alHyRYFE1dgB0p6yoAyvOD7w3rs/orwYW8NJM9OzNID
	bP482+rqunhemx22Ilve3q+aaPeS7hvX5Ru/y0dQaWzaEPkU9mFVMtS/4IsHFsvFl4oU9eOG/yNgK
	oSSGOq9P5ffk5fAnJo2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NyV-0008CI-VA; Thu, 27 Feb 2020 18:33:32 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7NyM-0008Bk-Su
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:33:24 +0000
Received: by mail-io1-xd43.google.com with SMTP id c17so560678ioc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 10:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E7WO/NUxGv82Kf1dVrT+16+HfZ68MhNea8HytDwhqyw=;
 b=dDlTY+HgwgsvQ5xJ8+Hk1X+IRSOVAMCit/kiKPiZmFv2sjbZZqgHkNQR/RafnMCRZY
 hwdlikXVytW/mOAzi/NlUvfQpKaIriHabsmG/zfSsACtuxMuAPVHZYFo2wN/HW+SYNsQ
 9OslPFaPXicUrUv+kQQGObGg7bXRXoMuaKmD5jiuAzXD7xqnp+XjAE5I1yXeUMaF+WAf
 QXF0zuZMsdxBDgteXJHgLBFj6MD5AaKn+QIEHppS9A9BkWkrOeQsILX1HzZ9AYXkYHJX
 YRJ0RWxZdIW/QslG3vFML8SuUSTcYpAS8+YgE+6/wrlyjqYp9myE9D/RFX4hhzdK619u
 pKbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E7WO/NUxGv82Kf1dVrT+16+HfZ68MhNea8HytDwhqyw=;
 b=Avq5snrLbDAxBxdMjiHWWxjXwuJHpa2nGQyGBsXx8QEnNnsycXEHf9afOFD/sw1eh6
 L9Av34ZGjglkMGaXWYq8Qv02SEv2zeVP+A2BeP3PDUskF09G+PVqel3x+ODTToTME5Pe
 6FJ4y1tai/XsjJgnkNhEY5TAztba2HEDhvybwh4Kb4Y9t+f2LIEdJYtZ3vCNyqdSi2hN
 btiUKvBEFVojNaffKbD2Y1jv+IubewL0LtZxzHe/SqjLWA2LDKMTVErpyzap8r0RqY14
 AN6BFl1E7K5lrQSHodeb5qFxbMiSHAX58UcVXT02U/3QYEjDLsvWOEK6BVOSiIGNuJlw
 2LYQ==
X-Gm-Message-State: APjAAAXQRBtJOTp9k5msbpFv0zuF2Gke5POLCXP7CIsniT2FIQHR/Osy
 2B9IXNC5wxxFUNhVSt14vkqWNQ2A5z4Uj7+i0d47UQ==
X-Google-Smtp-Source: APXvYqz0JZSMiGAn9FLjoYzJKMf64V4rXpI5AxwNpHCGrUsfgeFrJ/5Bi1clENFNl5NoGK6MW/yqNoXQYEb7zczBpL8=
X-Received: by 2002:a5e:d614:: with SMTP id w20mr496610iom.278.1582828401861; 
 Thu, 27 Feb 2020 10:33:21 -0800 (PST)
MIME-Version: 1.0
References: <20200226110221.19288-1-geert+renesas@glider.be>
 <20200227181018.5nixs7o7lght3mug@localhost>
 <CAMuHMdXa1Kjmp+9_dWGGF1Dz-6op+-6iSdF56PHSZFgWOAXEgQ@mail.gmail.com>
In-Reply-To: <CAMuHMdXa1Kjmp+9_dWGGF1Dz-6op+-6iSdF56PHSZFgWOAXEgQ@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 27 Feb 2020 10:33:10 -0800
Message-ID: <CAOesGMjVm1TMjhBtFG9-acw=c7COhkcoErdmkJjz0ZG0QraH3Q@mail.gmail.com>
Subject: Re: [GIT PULL 0/5] Renesas SoC updates for v5.7
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Konstantin Ryabitsev <mricon@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_103322_933317_51471578 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, users@linux.kernel.org,
 arm-soc <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 10:19 AM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
> Hi Olof,
>
> On Thu, Feb 27, 2020 at 7:10 PM Olof Johansson <olof@lixom.net> wrote:
> > On Wed, Feb 26, 2020 at 12:02:16PM +0100, Geert Uytterhoeven wrote:
> > > This is my first pull request for the inclusion of Renesas SoC updates
> > > for v5.7.
> > >
> > > It consists of 5 parts:
> >
> > Only 2 of these were sent to arm@kernel.org / soc@kernel.org: 2/5 and 5/5.
> > Mind checking your scripts to make sure you send them to us so they end
> > up in our patchwork? (And please resend the ones who weren't).
>
> Strange, I used a single git send-email command for the whole series.
>
> I do see them all of them at
> https://patchwork.kernel.org/project/linux-soc/list/,
> https://patchwork.kernel.org/project/linux-soc/list/?series=247609 ?
> Lore also has them:
> https://lore.kernel.org/linux-renesas-soc/20200227181018.5nixs7o7lght3mug@localhost/T/#m2ec32842569b4b4dc25d4ecda668e509edaba98b
>
> Perhaps they got lost on the path to your inbox? Recently I had a similar
> problem with some patches, which appeared at the list and patchwork, but
> never in my (Gmail) inbox.

This is how the email I got looked like:

From: Geert Uytterhoeven <geert+renesas@glider.be>
To: "Linuxkernel+Patchwork-Soc via Email Integration"
<patchwork-soc@linux.kernel.org>
Cc: Magnus Damm <magnus.damm@gmail.com>,
linux-arm-kernel@lists.infradead.org,
linux-renesas-soc@vger.kernel.org, Geert Uytterhoeven
<geert+renesas@glider.be>
Subject: [GIT PULL 1/5] Renesas ARM DT updates for v5.7
Date: Wed, 26 Feb 2020 12:02:17 +0100
Message-Id: <20200226110221.19288-2-geert+renesas@glider.be>
In-Reply-To: <20200226110221.19288-1-geert+renesas@glider.be>
References: <20200226110221.19288-1-geert+renesas@glider.be>
Precedence: Bulk
List-Unsubscribe: <https://linux.kernel.org/g/patchwork-soc/unsub>
Sender: patchwork-soc@linux.kernel.org
List-Id: <patchwork-soc.linux.kernel.org>
Mailing-List: list patchwork-soc@linux.kernel.org; contact
patchwork-soc+owner@linux.kernel.org
Delivered-To: mailing list <patchwork-soc@linux.kernel.org>
Reply-To: patchwork-soc+owner@linux.kernel.org


It no longer had the {arm,soc}@kernel.org recipients on it, instead
the internal-only mailing list that connects soc@kernel.org with
patchwork. Very odd. Reply-to rewrites are undesirable too.

Konstantin, anything on your side that can shed light on this? My mail
filters locally expects to see soc@kernel.org and arm@kernel.org
recipients still intact in the to-line, and it's really odd that 2 of
the 5 emails looked as expected.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
