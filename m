Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB624119176
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:05:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XzuM5gn0zPZc3xfTvHLTSgxd8K8SkduDoiAeeptSJ8U=; b=eY38jrsqQ8cXAT
	YkgDPoJw6PJ6Ym4bmy+aX335LJH/CTviieigJUV6eYgi6fNqM78idAYTK6iiKvH9rj1gUyKHyguxG
	nqvwSwi4zrHV14QV2OGWmlt7uH0y9MuycfM9ZN3A45Lg6YTjmuk6OV/dzZc9rl1OW8cm4Fupg96oM
	qCL+snLbextWoj4jlyGxwdGYFhFbgrBy1ie5bjt/p1Bjj0vh2cgpmxN9U35D1w0fgbF2lZjeJSh6s
	hv1f31y6EAZZjrz7CpWIwgiceDMKjVe93SXOzxwTdzKFZFohcQhVM/2TBqfb/S88fBu7tTo8Cwpxv
	GPBwsCZiJkKj05Sp48Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iell1-0006fQ-Oy; Tue, 10 Dec 2019 20:05:19 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielkl-0006C2-0I; Tue, 10 Dec 2019 20:05:04 +0000
Received: by mail-ot1-x343.google.com with SMTP id o9so16675669ote.2;
 Tue, 10 Dec 2019 12:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ffu1c8lDFafmMWH7UIK/Jm4IFvQzvK0JEWcwhE/AfdQ=;
 b=NqY1B5LjJU0vM1d4WpeD0ZeoqgIt8hI6csNKV63oMHCy3CIGP/mE+VFXtRsCWysuOH
 cBLhJFhVVWspwhg/0iJ+LYahN59cIYX4PzSNnSoLhTclj18oWAVTNbPbGXKwVUcG1m5b
 vIqO9tIcWm1mHn3TDhenvm/Kb7y5VviWObIh9zOffAVbOM+2BsUKYe/3mp7ItszjjpU7
 4r0dzTo0MHzXV0SdMbgtbegD81UW42uChbRS654dX25anJKmSBszdBRt0XPRpcJGh616
 Zi7BSVuJofr6eR1H3qChHVMLTUpJyFOV8FSWll960WfMQRcJGW+9xU5/6Be4ts7TsrE1
 dVPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ffu1c8lDFafmMWH7UIK/Jm4IFvQzvK0JEWcwhE/AfdQ=;
 b=pKZsTLx+lpswzJWHMTxc0saNTHUv4vc15/c6tEY5lesCEB5flNGoXTFi/s4OsvGQvu
 /uk57y+JIlmnuGmNsz5uI5JfDjE+fkWr/F7X88vHnEsXmpGRuLrDbTkIYNcRG8dbEp9C
 7DY68ZHYBniYatf5+lHZAjY2v2qOqk7cVu0ga/7uR692ZgXjwmde0rCO8Oq1u6W50Atn
 664TSVPbwtxbk7XjyQ2I+6d1IdbUd8dOW+AglKQQdvsGfSptnJzE+te6Nzij7Gjb6V7F
 tweb/88icHQ4QaiXlJ4ZJnuaiwOqGd29XzHaG1nP7j9qNGFx32S4Ya839ZmFlXLTwDuv
 Hqjg==
X-Gm-Message-State: APjAAAVdJKgMRmXiffATSkI5JcLDhRE6AOizCSBbEqJVs9wVnVdXwtWl
 FDqUD6oGjXliS8a4CVGgMtMv0k63hReXRKv0YQ4=
X-Google-Smtp-Source: APXvYqyQXxbMb0eeNtonRVid5JNsQL8VWcdzxoDr8Caq2Q5ouK3M+5t6gh12myZjJdQRIwE/4kJ8HDen46CJJDc7XCI=
X-Received: by 2002:a05:6830:1b71:: with SMTP id
 d17mr19510797ote.42.1576008301566; 
 Tue, 10 Dec 2019 12:05:01 -0800 (PST)
MIME-Version: 1.0
References: <20191101143126.2549-1-linux.amoon@gmail.com>
 <7hfthtrvvv.fsf@baylibre.com>
 <c89791de-0a46-3ce2-b3e2-3640c364cd0f@baylibre.com>
 <CANAwSgQx3LjQe60TGgKyk6B5BD5y1caS2tA+O+GFES7=qCFeKg@mail.gmail.com>
 <7hfthsqcap.fsf@baylibre.com>
In-Reply-To: <7hfthsqcap.fsf@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 10 Dec 2019 21:04:50 +0100
Message-ID: <CAFBinCBfgxXhPKpBLdoq9AimrpaneYFgzgJoDyC-2xhbHmihpA@mail.gmail.com>
Subject: Re: [RFC-next 0/1] Odroid C2: Enable DVFS for cpu
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_120503_068352_60F20AE8 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 7:13 PM Kevin Hilman <khilman@baylibre.com> wrote:
>
> Anand Moon <linux.amoon@gmail.com> writes:
>
> > Hi Neil / Kevin,
> >
> > On Tue, 10 Dec 2019 at 14:13, Neil Armstrong <narmstrong@baylibre.com> wrote:
> >>
> >> On 09/12/2019 23:12, Kevin Hilman wrote:
> >> > Anand Moon <linux.amoon@gmail.com> writes:
> >> >
> >> >> Some how this patch got lost, so resend this again.
> >> >>
> >> >> [0] https://patchwork.kernel.org/patch/11136545/
> >> >>
> >> >> This patch enable DVFS on GXBB Odroid C2.
> >> >>
> >> >> DVFS has been tested by running the arm64 cpuburn
> >> >> [1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
> >> >> PM-QA testing
> >> >> [2] https://git.linaro.org/power/pm-qa.git [cpufreq testcase]
> >> >>
> >> >> Tested on latest U-Boot 2019.07-1 (Aug 01 2019 - 23:58:01 +0000) Arch Linux ARM
> >> >
> >> > Have you tested with the Harkernel u-boot?
> >> >
> >> > Last I remember, enabling CPUfreq will cause system hangs with the
> >> > Hardkernel u-boot because of improperly enabled frequencies, so I'm not
> >> > terribly inclined to merge this patch.
> >
> > HK u-boot have many issue with loading the kernel, with load address
> > *it's really hard to build the kernel for HK u-boot*,
> > to get the configuration correctly.
> >
> > Well I have tested with mainline u-boot with latest ATF .
> > I would prefer mainline u-boot for all the Amlogic SBC, since
> > they sync with latest driver changes.
>
> Yes, we would all prefer mainline u-boot, but the mainline kernel needs
> to support the vendor u-boot that is shipping with the boards.  So
> until Hardkernel (and other vendors) switch to mainline u-boot we do not
> want to have upstream kernel defaults that will not boot with the vendor
> u-boot.
>
> We can always support these features, but they just cannot be enabled
> by default.
(I don't have an Odroid-C2 but I'm curious)
should Anand submit a patch to mainline u-boot instead? the
&scpi_clocks node could be enabled at runtime by mainline u-boot


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
