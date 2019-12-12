Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 488A911D7B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 21:10:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCj8O39Z1zPaQEYzbemA3oQlMv3VWA71qw6dwVlqIHk=; b=IeWjOfLDNWGsn4
	uHj2u+GkH/i/LsEdD00mUUlXqL+V/MF0GzodLSQhDuQObUx/o/fjUhe/QV9xcqZBydVtdovssFcKt
	c5q4ief2iRCmk9vdA15QS5Wht47T69Ys9IxvRE3yX8wMTHuS4sggGf3cuWoVwdGMVvKcZ7f+i9C6k
	TisbJAnqX8ZAe717437WNV6FJZhcR2O8CMtiA3m1KEFEL7xdwBUC5UhvbNqPsTSw2QH6qa+7WUzPV
	olLMWAY7zddIGHMZjCqSCEA6uqXr/4HIObUuI5Hdhipi9XJFYqH9kVf97LzGCY4RRWtHk5YdwdTYg
	JwVKapJYETTBNdRpZzEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifUmu-0002P0-Dw; Thu, 12 Dec 2019 20:10:16 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifUmk-0001q4-P9; Thu, 12 Dec 2019 20:10:08 +0000
Received: by mail-ot1-x344.google.com with SMTP id r27so3281374otc.8;
 Thu, 12 Dec 2019 12:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7qXkeZV74bje26NgCl5xWXQcNmUybdFUwUsZ8xV5JBg=;
 b=osM2qIGr3hGnVVczgOggDP8yZ4BLwi4bJkQh+zYOWI36YpgtY/j+xU9LCtmyq32DBd
 Mjj+23mFP8L9FoYlLmufBfmOpUomC9vzeHZhOTYaVZMVXfgww5OMb9Zy9INqH79IKoad
 /gGQVB82TujuEl87tkDn/MLsgvd5yiqExg2DcudusJa9+yXkl5Ctv0VpGy612OPSnW1Q
 QZyUEdPErjULdppAUQ81I9t97g81kQ4pUJP/wJrdnPGjO+hHvbRFUZiIIt6DQA2dWGeT
 ege3a93qQKLb/1GCRI1m1kxyBKmDUdrKmQk4Goby+4PYPaU3QJnYMqFySOBG8zcHiV72
 v2Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7qXkeZV74bje26NgCl5xWXQcNmUybdFUwUsZ8xV5JBg=;
 b=o5htSHddKVshDG5+WWAzf0udDGI7okDJk3XCDbeLw2yrtUf4GPG8b/XaqGDfUQGzMV
 jca2BBhmtmGwV3t1G7oJNeqP+e6U/BKN63zSP2AVUK4TxK7/0ZqgtEyAw2d2Ury9501+
 0On2adARVhuk5QJWh18+bkXjU8Rl6+YwY5dTYlIgzoTQ/s6vxk8O0ixvokDvu1//nTPS
 rugpR1WqKaaaSTQRvvvpkiwVhMjtgbMhLOUGMUUln0G149i/KmB3oM9oWIkXT16XJkDA
 JZwt0OHV1OL4h6HYHiFAgfQMZrsvy/Lnc9tZEax8zskBsPrFO8MMumvJ7lD2L+vKBzfC
 DUcQ==
X-Gm-Message-State: APjAAAXbAAu6mBpDAV5QCgbCjYnzWREp6eGW6u9lx4RLTdMwTB0Yh05b
 R/So6Mw/1f7yLKSVLxnmiIcmxbPOKRlGFv7Klio=
X-Google-Smtp-Source: APXvYqyyXC4xCET3bH9d4JwztvKF8qJ5uMa+OdBlTIJYxnxVioR5wZQgPot30XdCsn1UDNUkV//KHNktBacycDlqK1U=
X-Received: by 2002:a05:6830:2087:: with SMTP id
 y7mr9659452otq.96.1576181405915; 
 Thu, 12 Dec 2019 12:10:05 -0800 (PST)
MIME-Version: 1.0
References: <20191101143126.2549-1-linux.amoon@gmail.com>
 <7hfthtrvvv.fsf@baylibre.com>
 <c89791de-0a46-3ce2-b3e2-3640c364cd0f@baylibre.com>
 <CANAwSgQx3LjQe60TGgKyk6B5BD5y1caS2tA+O+GFES7=qCFeKg@mail.gmail.com>
 <7hfthsqcap.fsf@baylibre.com>
 <CAFBinCBfgxXhPKpBLdoq9AimrpaneYFgzgJoDyC-2xhbHmihpA@mail.gmail.com>
 <7hpngvontu.fsf@baylibre.com>
 <4e1339b4-c751-3edc-3a2e-36931ad1c503@baylibre.com>
In-Reply-To: <4e1339b4-c751-3edc-3a2e-36931ad1c503@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 12 Dec 2019 21:09:55 +0100
Message-ID: <CAFBinCCgKcwXSLxS_CRvz9JZvQo8PcUGm=egBbabVZSrkSc30Q@mail.gmail.com>
Subject: Re: [RFC-next 0/1] Odroid C2: Enable DVFS for cpu
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_121006_835671_1704F242 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Wed, Dec 11, 2019 at 9:49 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 10/12/2019 22:47, Kevin Hilman wrote:
> > Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:
> >
> >> On Tue, Dec 10, 2019 at 7:13 PM Kevin Hilman <khilman@baylibre.com> wrote:
> >>>
> >>> Anand Moon <linux.amoon@gmail.com> writes:
> >>>
> >>>> Hi Neil / Kevin,
> >>>>
> >>>> On Tue, 10 Dec 2019 at 14:13, Neil Armstrong <narmstrong@baylibre.com> wrote:
> >>>>>
> >>>>> On 09/12/2019 23:12, Kevin Hilman wrote:
> >>>>>> Anand Moon <linux.amoon@gmail.com> writes:
> >>>>>>
> >>>>>>> Some how this patch got lost, so resend this again.
> >>>>>>>
> >>>>>>> [0] https://patchwork.kernel.org/patch/11136545/
> >>>>>>>
> >>>>>>> This patch enable DVFS on GXBB Odroid C2.
> >>>>>>>
> >>>>>>> DVFS has been tested by running the arm64 cpuburn
> >>>>>>> [1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
> >>>>>>> PM-QA testing
> >>>>>>> [2] https://git.linaro.org/power/pm-qa.git [cpufreq testcase]
> >>>>>>>
> >>>>>>> Tested on latest U-Boot 2019.07-1 (Aug 01 2019 - 23:58:01 +0000) Arch Linux ARM
> >>>>>>
> >>>>>> Have you tested with the Harkernel u-boot?
> >>>>>>
> >>>>>> Last I remember, enabling CPUfreq will cause system hangs with the
> >>>>>> Hardkernel u-boot because of improperly enabled frequencies, so I'm not
> >>>>>> terribly inclined to merge this patch.
> >>>>
> >>>> HK u-boot have many issue with loading the kernel, with load address
> >>>> *it's really hard to build the kernel for HK u-boot*,
> >>>> to get the configuration correctly.
> >>>>
> >>>> Well I have tested with mainline u-boot with latest ATF .
> >>>> I would prefer mainline u-boot for all the Amlogic SBC, since
> >>>> they sync with latest driver changes.
> >>>
> >>> Yes, we would all prefer mainline u-boot, but the mainline kernel needs
> >>> to support the vendor u-boot that is shipping with the boards.  So
> >>> until Hardkernel (and other vendors) switch to mainline u-boot we do not
> >>> want to have upstream kernel defaults that will not boot with the vendor
> >>> u-boot.
> >>>
> >>> We can always support these features, but they just cannot be enabled
> >>> by default.
> >> (I don't have an Odroid-C2 but I'm curious)
> >> should Anand submit a patch to mainline u-boot instead?
> >
> > It would be in addition to $SUBJECT patch, not instead, I think.
> >
> >> the &scpi_clocks node could be enabled at runtime by mainline u-boot
> >
> > That would work, but I don't know about u-boot maintainers opinions on
> > this kind of thing, so let's see what Neil thinks.
>
> U-Boot doesn't anything to do with SCPI, SCPI discusses directly with the SCP
> processor, and the CPU clock is set to 1,56GHz by the BL2 boot stage before
> U-boot starts.
>
> The only viable solution I see now is to find if we could add a DT OPP table
> only for Odroid-C2 dts to bypass the SCPI OPP table.
my understanding is that mainline u-boot (with whatever SCP firmware
it uses) provides the *correct* OPP table
in this case it would be "safe" to have SCPI enabled with mainline u-boot
@Anand: please correct me if I misunderstood you

my idea to "enable SCPI with mainline u-boot" is to have u-boot update
the "status" property of the scpi_clocks node.
u-boot does something similar with the mac-address property of the
Ethernet controller for example.
as result of this users of mainline u-boot would have working CPU
DVFS, while users of the old vendor u-boot would run at fixed 1.54GHz.


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
