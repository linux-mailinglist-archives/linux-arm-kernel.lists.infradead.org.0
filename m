Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A9686E9D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 01:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+ZT1TR030Ui3WldM/TZ4D6N2rFnxjUrm3a72mTmZhA=; b=pOg92HFs094Nm3
	RvBT4iRfA5ucouOCdRKeWETVj3oOAu0dMQX+hZV6DGpHhXmrlmAVCE7d1NnMGXcBN9EVHT5SfvZqn
	8dmb2PnE6ExPiqYbjA7zBvo8fo0ftxUxPC4HGX0nrzMcJAAv0408fRwP7Mw+++xILQsXR+XuhQ7iO
	eomyeC8tVNMaqWJaCdTWzuZ70SH+Zd9OsP9OD3WzM0JcQrihED9HbkWrAP/Yo+Z3qyJTTYUkCGtSB
	IUAVkmVAcyGhc9cWhfGsuBpR7foSoFAGc7J2CkB/dPKjFNDPYi19hMfpHqIkHMI0byCUTgAhymYkv
	4rbDmlOLc+jxFl74mU9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvsGZ-0003q5-UZ; Thu, 08 Aug 2019 23:56:19 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvsGQ-0003pV-Sd
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 23:56:12 +0000
Received: by mail-pl1-x643.google.com with SMTP id w24so44197610plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 16:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=biT4M0YoucThQSlA/K5VgSiTRUXRF7LeVpBHBAObouA=;
 b=bs5i/HLmqpFLNfigz0Plz7De8d6lkN6hXwBWct8V8PSzTT1gZmybZTTSaBX2gcQz1v
 v+7+2uQleyUr9NGkcELJe3PZuhNx3AsEC/S1wtLUp/oqgHJGfSCL+kZAfe403EZ0iOCe
 azgHd3tVGBsX1d6DBelSeXFm62Bh1g95sWpPcBua8YwMfpdyLVBcgR9LF76ZyhwBxF3m
 C24AakAWdz7BY4zFnxV4GkBN9U6qMBYkKu9X5km6u7ECs7tXBSzZZ4Qk/ZLt5264adm6
 MhUQF+1Slcha3iS9i5kCM0BIBkkTfEW8+DF8B6M3mEy55X1AmkuKRcgq8LX0XDlU8PDS
 UFFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=biT4M0YoucThQSlA/K5VgSiTRUXRF7LeVpBHBAObouA=;
 b=jOniXzly6cjPX7Lt8uvV2Xc3u6wwwkKrZkGqkoXiQLVTur7cla21ApnanO5bi4NdP1
 BHPYj0FG7TCORWDJFX3azLmD7clduShwxjBcGhKrdCGC560xQ0LWArIX8WkWgBRruxOX
 2IM4hXd9GnuKsZyJLAYH4bSJsDTLVmT+zlOUaQcqxkxxODWiML/w+IBdhWOMx7J0YWbJ
 Co+b26EnCWUnMFMPBzXZ/S3MQ6eHpShc1/3LkOyLGzJFj8yrkY24hL8gb83hv6i6GuxC
 6C5dF/96P+7BRPSXYGGcFNpozI61qAdLU10hoNnx7xiYPdgy9mJMHdeZMR72WrH+5Mek
 bNaQ==
X-Gm-Message-State: APjAAAU5RfgupkUbRkQWGZlsD1ATzECWc5hQGnC7M5sAFGtxdKCBYZsW
 fjH2vfoA/HI0XRNmst9vDZopGw==
X-Google-Smtp-Source: APXvYqxps1OkwzB/X0vvisKNGQAqs8R5cKyD/OoIPRFmJS3FKuqkJGigsszmdTGeScs7OS0FWzmHGQ==
X-Received: by 2002:a17:902:b713:: with SMTP id
 d19mr16472342pls.267.1565308570262; 
 Thu, 08 Aug 2019 16:56:10 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id h14sm126117376pfq.22.2019.08.08.16.56.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 08 Aug 2019 16:56:09 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/6] arm64: g12a: add support for DVFS
In-Reply-To: <7hwofrh1md.fsf@baylibre.com>
References: <20190729132622.7566-1-narmstrong@baylibre.com>
 <7hwofrh1md.fsf@baylibre.com>
Date: Thu, 08 Aug 2019 16:56:09 -0700
Message-ID: <7hk1bn43fq.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_165610_945869_44CDE465 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kevin Hilman <khilman@baylibre.com> writes:

> Neil Armstrong <narmstrong@baylibre.com> writes:
>
>> The G12A & G12B SoCs has kernel controllable CPU clocks and PWMs for
>> voltage regulators.
>>
>> This patchsets moves the meson-g12a.dtsi to meson-g12-common.dtsi to simplify
>> handling the G12A & G12B differences in the meson-g12a.dtsi & meson-g12b.dtsi
>> files, like the OPPs and CPU nodes.
>>
>> Then G12A & G12B OPP tables are added, followed by the CPU voltages regulators
>> in each boards DT.
>>
>> It was voluntary chosen to enabled DVFS (CPU regulator and CPU clocks) only
>> in boards, to make sure only tested boards has DVFS enabled.
>>
>> This patchset :
>> - moves the G12A DT to a common g12a-common dtsi
>> - adds the G12A and G12B OPPs
>> - enables DVFS on all supported boards
>>
>> Dependencies:
>> - None
>
> Not quite.  The last patch to enable DVFS on odroid-n2 has a build-time
> dependency on the clock series that adds the CPUB clock.
>
> I'll apply the rest of the series to v5.4/dt64 until there's a stable
> clock tag I can use for the clocks.

In order to test this, I noticed another dependency needed for the PWM
regulators to work:

   https://lore.kernel.org/linux-amlogic/20190729125838.6498-1-narmstrong@baylibre.com/

With that and the clock deps, it's working well on my odroid-n2.

Tested-by: Kevin Hilman <khilman@baylibre.com>

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
