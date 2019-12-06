Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6101156DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 18:58:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6nvOcC3ghIcY1MaF4ELCKwvuN92Vr++Z4bgkkxsHbo=; b=RWrKS6sIRhhRN2
	4ZieuhtMSqJzzuXEyvSTDzx9GCZ2BGleAFFhibdIt5FZnFQfiqz70oSTfh19a6mO5vf+Y1kk3ZWGB
	RPcM10BiI4YQorasdF9fHNr0NWyvVlMcOQrYnBLAxYUmBe+S9JxpZaW5a+Fy5HwIhKlwmcYdTo45D
	8YEfukZegS9stAQH8cqNBRIGW8EH4I1TlyqNowF86bdk01Y1/alNXaWINd1jiXfder1gtRegpagIx
	7Y7esxoW2Dz55L1qHwhzZTrnhIzOlqKNoLEXG8Sb1J8MjiTb9bp1DRB/8pOHmfGQwkv8LxWokCRF9
	AgKP8uJPfk3Xsvgj+XwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idHrt-0002KJ-FY; Fri, 06 Dec 2019 17:58:17 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idHrk-0002Jp-Hv
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 17:58:09 +0000
Received: by mail-qt1-x842.google.com with SMTP id v2so7914562qtv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 09:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Kv7PKT3RJppr5jJNmsz7aLEf+1pNL9YBv/3STz+QhV0=;
 b=zGiLMcGVYQvuNbzXUV7DuknNoSLECg/tSjWJt6M6qJaZkyGrxA3No6AlfCfcJfm3X+
 uYQfiUYU6mD9O8Xf770AsGu0vDgmZLyYBXlOHNF/0tmIBEcuU+75ubwYZaBZMR9yPCeI
 h1Pp8FsGZ+N5M1gSMZ8pzvz357KLWac1ztjsgaNUl1RFijT/KqrT501VzonzCS+Zheab
 LsF3fpUBlMV/ynC4USwOheFDtVXRRjYczwj20aVQxeO9AKlYPExscUTbsQiQYTBoWizr
 QjNJ1HoSzxLyjneN4dw2+7praGMYtjFmvrWdJHnZhVrwDVvXCXG3xZjVt4/xhqRY6gTd
 ZixA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Kv7PKT3RJppr5jJNmsz7aLEf+1pNL9YBv/3STz+QhV0=;
 b=ryJgui412RE01Y1NCYhObFalLKpm40jNxxyn+nbO5ok3ZDBnshjGvR48UCBcwG7hGh
 uiAZkOFuKr0fFpv+WUowqzVyJ2CticeQYW+lN/E/LQlqreb9bdp8ZbpvauVlUN+9wH5C
 siJ5aOXjDhhUfXN8LfWrrEn+YfgFT+5+AoBv3SbaW4SuZH0+hecKVDpTIq9xXDviInyG
 Svg/bNvdsZio8S8auI8rd6DkwOsjd1JbnPjvNxZ4kDlcrRe5DhdSPA86S3u/3H64Yx3A
 gw/OpavAf4vhbx0To9+D4IJTJhqTEZmWGSLEbfAWuSEzHrl4XVcCHMK+sqNrLnxQd7Y2
 Bzeg==
X-Gm-Message-State: APjAAAWdZf2DZW9UTpG2m8Gtdur8QXfK5gdXcbG6JouzMJQD3RNX4y/x
 S+XlcA/07QAM0jBZqv5lFeFnawfSbuRvSJ2gcRx1yQ==
X-Google-Smtp-Source: APXvYqxoKRU9YX/OzOYBOke7neojht5Ijup8DLVEc2JCgKKHSgPyzJk1Z0/HluGJuqxcu9fTQbZ4dEqsuCuSfYyIfKo=
X-Received: by 2002:ac8:5346:: with SMTP id d6mr14187281qto.49.1575655086001; 
 Fri, 06 Dec 2019 09:58:06 -0800 (PST)
MIME-Version: 1.0
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
 <20191106220406.4aoq5suvwww6c3ov@localhost> <20191206050222.GC289401@yoga>
 <20191206163237.t4ohf7fviz4ywkck@localhost>
 <20191206172841.GA10830@tuxbook-pro>
In-Reply-To: <20191206172841.GA10830@tuxbook-pro>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Fri, 6 Dec 2019 23:27:55 +0530
Message-ID: <CAP245DVPFkGhgexzQYqAunROyMarVN+zoyQ1Ma9aWeJz_7uaBg@mail.gmail.com>
Subject: Re: [GIT PULL] Qualcomm ARM64 Defconfig updates for 5.5
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_095808_604135_DC39DDD6 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: arm-soc <arm@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Andy Gross <agross@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>,
 Lists LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 6, 2019 at 10:58 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Fri 06 Dec 08:32 PST 2019, Olof Johansson wrote:
>
> > On Thu, Dec 05, 2019 at 09:02:22PM -0800, Bjorn Andersson wrote:
> > > On Wed 06 Nov 14:04 PST 2019, Olof Johansson wrote:
> > >
> > > > On Wed, Nov 06, 2019 at 01:33:56PM -0600, Andy Gross wrote:
> > > > > The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> > > > >
> > > > >   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> > > > >
> > > > > are available in the git repository at:
> > > > >
> > > > >   git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-defconfig-for-5.5
> > > > >
> > > > > for you to fetch changes up to a36612b7469cf76953cf237a2b9a62f6c97730bb:
> > > > >
> > > > >   arm64: defconfig: Enable Qualcomm watchdog driver (2019-10-20 23:04:59 -0700)
> > > > >
> > > > > ----------------------------------------------------------------
> > > > > Qualcomm ARM64 Based defconfig Updates for v5.5
> > > > >
> > > > > * Enable Qualcomm cpufreq, watchdog, prng, socinfo, SPI, and QSPI controllers
> > > > > * Enable SN65DSI86 display bridge
> > > > > * Enable QCA Bluetooth over Uart
> > > > > * Enable various Qualcomm remoteproc dependencies
> > > > >
> > > > > ----------------------------------------------------------------
> > > > > Bjorn Andersson (6):
> > > > >       arm64: defconfig: Enable Qualcomm remoteproc dependencies
> > > > >       arm64: defconfig: Enable Qualcomm SPI and QSPI controller
> > > > >       arm64: defconfig: Enable Qualcomm socinfo driver
> > > > >       arm64: defconfig: Enable Qualcomm CPUfreq HW driver
> > > >
> > > >
> > > > Hi, this turns on the driver as =y, when the option is tristate. Other
> > > > cpufreq drivers are also modules. Is this driver truly needed to be
> > > > a built-in for a generic defconfig?
> > > >
> > >
> > > I see Linus merged the arm defconfig PR today, but afaict the patches
> > > from this branch is missing. Please advice on how you would like us to
> > > proceed.
> >
> > I think I was waiting on the promised validation of using =m for the cpufreq
> > drivers and an updated pull request.
> >
>
> Sounds reasonable, I would however like the CPUfreq driver to be =y;
> there are several other drivers doing this and lately work has gone into
> ensuring that this driver probes as early as possible.
>
> In either case, I presume we would change the =y to a =m in an
> incremental patch, in order to not have to rewrite the branch?
>
>
> @Amit, have we done any validation with the SDM845 CPUfreq driver built
> as a module?

Yes, the driver works as a module.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
