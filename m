Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 040E291647
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 12:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKlFupXIlOY612B9wdo5rowOLHm/ca9wUaJ6r45NYis=; b=UHj6D2QMeQvNFD
	6wNK3olgoJFd7xkSXkwECw7uXyVEBvoXXUf73fVg2ILU21oruO8R1ucicOLsaxTvom3kZyu7wWSbJ
	U2N/QtezpFLTx+SX9FXIwxzSvuYcQI68KPJKq4yZEjjp4eFFvOsgqk6iDa+1pFDs5TmVAC360Y39y
	nhbXi4CLEdzj59235jZvHV/EEFuWPCgKvIcfD+WKwoc+syUGUHUGfUBIjMpcelEJi3GZ9sOVCXGlD
	Y1FgS+S8X88lSBbONHFT4oND+EUZutRTnUNChA7O/VY6gA6DVBv9G08WMb8Nu57sYtS3GsMK6K47j
	xfECM5SshENwJRDoq3kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzIoN-0001Y0-57; Sun, 18 Aug 2019 10:53:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzIoG-0001XD-AS
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 10:53:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id b16so5727896wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 18 Aug 2019 03:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mn0/40nGtsUo2sN2YIw9csG972CA1XynNu3U+6JTsm0=;
 b=CCa3VEV9nHAUmx9d68iWDWylBayK+lIy9Fl8HxkaDXZXvQ5XEignxTOAdpmhokSt1v
 yejAXT8PPiFVIAw2v+9OgCmaz9L7Xc9KTXC1kiu+pEFKgIbau4pSd1mYju6fbP2aZbZS
 hEGsPfzVDGLJ/zhsk83x0Fjke5qBo8+mU2IGU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mn0/40nGtsUo2sN2YIw9csG972CA1XynNu3U+6JTsm0=;
 b=AFIMDFoXwQGCnyVvqHSP52magCCRJavJgdyvTo94xmYeW1kAKyrqIyU4G2f6I+ERHF
 ACq+uzoxtPK45hHjhgU0GFnLPf3aI01f/A4OxAbA1XRYlnyRPTdh2kcOm/c0kGoF+Idt
 2Wgj0ZTdmlEGhyR/jbyomYZZnc0dgToklsNfQEJJmlZDzdaItGDU3ZroNWeqaWA2+5iB
 rAnmDUN/rCoN4oYI17gK9THbkOPLvYDeVyol7zVi6b8oYaLFHvfVf20GaMX1L6Me3uI/
 sDKEoIbcPNCGSNNZFWZm4B6c5ir8GURuo+2+EOmDQ9axxNLFpeeDdzBYVgsFRT+AfKGU
 6EWw==
X-Gm-Message-State: APjAAAVjAAoi30mjI/4dEv0dfPgNSIRa38EWVjz9mOhlrmYqSxu3ul8i
 SXhokH3LddW82nbNsvXV11ISC8Xz73TA6UI8R40tmg==
X-Google-Smtp-Source: APXvYqz7k6CPy+IQHrODHc6nnFCPtvXkIF9aMkK4LlE5z8uwq98J+HZFQPuQhZFEPsFDPCIgfem690EfOnrfjI//yH4=
X-Received: by 2002:a05:6000:104f:: with SMTP id
 c15mr19997152wrx.225.1566125593062; 
 Sun, 18 Aug 2019 03:53:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190818104629.GA27360@amd>
In-Reply-To: <20190818104629.GA27360@amd>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Sun, 18 Aug 2019 12:53:01 +0200
Message-ID: <CAOf5uwnUx3mtGGHFGqKB30qcb_AMhMEhHLp2pf-4pUdhi7KP7w@mail.gmail.com>
Subject: Re: wifi on Motorola Droid 4 in 5.3-rc2
To: Pavel Machek <pavel@ucw.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_035316_504328_E8D35CAB 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mpartap@gmx.net, Tony Lindgren <tony@atomide.com>,
 Merlijn Wajer <merlijn@wizzup.org>,
 "open list:TI WILINK WIRELES..." <linux-wireless@vger.kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, Sebastian Reichel <sre@kernel.org>,
 nekit1000@gmail.com, Linux OMAP Mailing List <linux-omap@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On Sun, Aug 18, 2019 at 12:46 PM Pavel Machek <pavel@ucw.cz> wrote:
>
> Hi!
>
> First, I guess I should mention that this is first time I'm attempting
> to get wifi going on D4.
>
> I'm getting this:
>
> user@devuan:~/g/ofono$ sudo ifconfig wlan0 down
> user@devuan:~/g/ofono$ sudo ifconfig wlan0 up
> user@devuan:~/g/ofono$ sudo iwlist wlan0 scan
> wlan0     Interface doesn't support scanning.
>

Try to use iw command. iwlist use an obsolete interface that you need
to activate in kernel for back compatibility with old command. Can be
your problem?

Michael

> user@devuan:~/g/ofono$ sudo ifconfig wlan0 down
> user@devuan:~/g/ofono$ sudo iwlist wlan0 scan
> wlan0     Interface doesn't support scanning.
>
> user@devuan:~/g/ofono$
>
> I'm getting this warning during bootup:
>
> [   13.733703] asoc-audio-graph-card soundcard: No GPIO consumer pa
> found
> [   14.279724] wlcore: WARNING Detected unconfigured mac address in
> nvs, derive from fuse instead.
> [   14.293273] wlcore: WARNING Your device performance is not
> optimized.
> [   14.304443] wlcore: WARNING Please use the calibrator tool to
> configure your device.
> [   14.317474] wlcore: loaded
> [   16.977325] motmdm serial0-0: motmdm_dlci_send_command: AT+VERSION=
> got MASERATIBP_N_05.25.00R,026.0R,XSAMASR01VRZNA026.0R,???
>
> Any ideas?
>
> Best regards,
>                                                                         Pavel
>
> --
> (english) http://www.livejournal.com/~pavelmachek
> (cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
