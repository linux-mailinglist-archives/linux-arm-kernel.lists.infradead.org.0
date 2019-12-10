Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AE0119996
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:47:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2WMm9+SON/PFhOSS9emwgTZpzczRmLCyuI+LDtFppXw=; b=nX+sR7asDEKzO7
	+tdpb68ZmX+iasx4M0jGLSVD69xdt6SHp0ZQn7FdLNq5r4IGSYja7ClF7A2mrfYe7Nm9XmA8eNdpi
	xYexeFtEBOKSScf0O06nH0G4kJbD76B/rambdnXkqaDide9J730C7ymef2GrAW97PsIWAvKCViLO0
	tmEFqZ5gsEHLR5uPWsqeS99In15iUQJ+rJIN+xS7GATJG3R/sBugRRT31r4s4kV/Q1VuclzKRGVDr
	wRSmoBUohSWEhzcIcByr+dQmr/Bd10QtpyzfBHi6jP3Zb8BFLnxuQo4caXALZDPKD1loubsnbn4SU
	I55zYc+Y1U5mJ0OrPwfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ienLm-0001ve-Ow; Tue, 10 Dec 2019 21:47:22 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ienLc-0001tz-E8
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:47:14 +0000
Received: by mail-pl1-x643.google.com with SMTP id bd4so389971plb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 13:47:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=iqFEfJ5VTHI7kv90uHb92Xkx2XtyoVgSFCJnm1RQLQU=;
 b=EFHEE4npHM3CozjgfjX1aweI4Bpjv9tMkX7xoMDlYeDvYISZA1sB3lk/hc1BhVkwtP
 dIuPZnj/E+ceF7h3Lg/s6mSR+sX02nUmEwnoilqX5KdbLwi4R8FOG1pyrZwWvIxQul4l
 yDXbRQB8pTU8Q6o4BhW36BY/0LNhm55Qyx66I1fZVehSiVDY4Dy1hEe75GmrPHauDAn3
 CYyTr50CFdq/4RtMbtJitPUhC98IGnL0uiQ87KciKaY12CPMslMMGAOlsmfy8DFhva2W
 Z5IaHcTcHflle6A/9NHtMDvq0Kxrofj54cjqMwbMsl2tqxES0SWNEBT+iqIYuS5mhuYB
 BTQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=iqFEfJ5VTHI7kv90uHb92Xkx2XtyoVgSFCJnm1RQLQU=;
 b=cnBSr4ZAywEQgwkIdkHmFkCewfx6wa/sthVX74s8+0NnX2/x16AJNogNSLvcivo5ha
 BsY7gFYFhD1sV3Scr8tm/+3PLoJ2GTZR/keRc3rdSzfJeXF76R0uGuYu9CcJ3NnPGSX3
 uuRRByT/sIyQ5gk9tXmmmmzdVi4zlJMZQLlIw65jASXM3GXI+jl5qARGmARSkwz8eEAK
 kxYDGxrbY1khcZzQ/rYlRVHceHz1Tq3AiD+rjzPZjPDWK3Y8vQ9hUMWq5ixw6Z+NOOgG
 5VxQTU8JTXBsi6+Do6iksAD3iK6bAuwiIGcQNZFDoTPzmDrULTNsFv3ZQGYtWsJqIuo6
 J9lA==
X-Gm-Message-State: APjAAAUbpBqxOIcOw9Ye6OdOgJ9IZTcfZwQgiOF3Eeen/f4wUfRxlI7Y
 u2EmzgwDsFlbfu60Vi9FTzexAQ==
X-Google-Smtp-Source: APXvYqyWouSgn/WCq+jtqr4txQVR8xZ2GAJa0L6IdvZrZdsbAFw3Sl3H8rvTIGgfc48jOCynsAqafw==
X-Received: by 2002:a17:90a:86c7:: with SMTP id
 y7mr7936504pjv.102.1576014431457; 
 Tue, 10 Dec 2019 13:47:11 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id z1sm4338pfk.61.2019.12.10.13.47.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Dec 2019 13:47:10 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [RFC-next 0/1] Odroid C2: Enable DVFS for cpu
In-Reply-To: <CAFBinCBfgxXhPKpBLdoq9AimrpaneYFgzgJoDyC-2xhbHmihpA@mail.gmail.com>
References: <20191101143126.2549-1-linux.amoon@gmail.com>
 <7hfthtrvvv.fsf@baylibre.com>
 <c89791de-0a46-3ce2-b3e2-3640c364cd0f@baylibre.com>
 <CANAwSgQx3LjQe60TGgKyk6B5BD5y1caS2tA+O+GFES7=qCFeKg@mail.gmail.com>
 <7hfthsqcap.fsf@baylibre.com>
 <CAFBinCBfgxXhPKpBLdoq9AimrpaneYFgzgJoDyC-2xhbHmihpA@mail.gmail.com>
Date: Tue, 10 Dec 2019 13:47:09 -0800
Message-ID: <7hpngvontu.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_134712_530589_198756F3 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> On Tue, Dec 10, 2019 at 7:13 PM Kevin Hilman <khilman@baylibre.com> wrote:
>>
>> Anand Moon <linux.amoon@gmail.com> writes:
>>
>> > Hi Neil / Kevin,
>> >
>> > On Tue, 10 Dec 2019 at 14:13, Neil Armstrong <narmstrong@baylibre.com> wrote:
>> >>
>> >> On 09/12/2019 23:12, Kevin Hilman wrote:
>> >> > Anand Moon <linux.amoon@gmail.com> writes:
>> >> >
>> >> >> Some how this patch got lost, so resend this again.
>> >> >>
>> >> >> [0] https://patchwork.kernel.org/patch/11136545/
>> >> >>
>> >> >> This patch enable DVFS on GXBB Odroid C2.
>> >> >>
>> >> >> DVFS has been tested by running the arm64 cpuburn
>> >> >> [1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
>> >> >> PM-QA testing
>> >> >> [2] https://git.linaro.org/power/pm-qa.git [cpufreq testcase]
>> >> >>
>> >> >> Tested on latest U-Boot 2019.07-1 (Aug 01 2019 - 23:58:01 +0000) Arch Linux ARM
>> >> >
>> >> > Have you tested with the Harkernel u-boot?
>> >> >
>> >> > Last I remember, enabling CPUfreq will cause system hangs with the
>> >> > Hardkernel u-boot because of improperly enabled frequencies, so I'm not
>> >> > terribly inclined to merge this patch.
>> >
>> > HK u-boot have many issue with loading the kernel, with load address
>> > *it's really hard to build the kernel for HK u-boot*,
>> > to get the configuration correctly.
>> >
>> > Well I have tested with mainline u-boot with latest ATF .
>> > I would prefer mainline u-boot for all the Amlogic SBC, since
>> > they sync with latest driver changes.
>>
>> Yes, we would all prefer mainline u-boot, but the mainline kernel needs
>> to support the vendor u-boot that is shipping with the boards.  So
>> until Hardkernel (and other vendors) switch to mainline u-boot we do not
>> want to have upstream kernel defaults that will not boot with the vendor
>> u-boot.
>>
>> We can always support these features, but they just cannot be enabled
>> by default.
> (I don't have an Odroid-C2 but I'm curious)
> should Anand submit a patch to mainline u-boot instead?

It would be in addition to $SUBJECT patch, not instead, I think.

> the &scpi_clocks node could be enabled at runtime by mainline u-boot

That would work, but I don't know about u-boot maintainers opinions on
this kind of thing, so let's see what Neil thinks.

Kevin



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
