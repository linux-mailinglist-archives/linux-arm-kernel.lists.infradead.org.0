Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414E14D237
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYZpEE5iGRn0quOlsaCeljOyBAX7uiu6ftG8d+P+9L0=; b=USgYeLZHJZofLZ
	28x1U7CSX9t28DuPPJ2BO3exH2quRStGvHCsDH2wTHQ9F4JyCBHehNCdPRP7NvR3PDw3PVh1Z6yIJ
	Lu00CkIHOLqhhIO91QtV9++TCYULeyqsXGo/hohznT9kq6bSHkV7LZTDxpikfCoUvL+enl+AE8d+d
	OZiHWHVy67Di54zQ0olY8QKraE7JxG3aCOXlg8J9qSxA9kF3CMz7XankD2D+ahl0ATnFOa3Nk39+a
	OgBiYUSIimSTp3H24YyQab0EncIdJpbTFSkjoAAUDzWYOiSNYSpuLE2GKSJb+TN/HWwuVRl/t9NGp
	LFA4/32/coZ9o5Bm/kWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdz3I-00059U-0O; Thu, 20 Jun 2019 15:32:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdz31-000599-Kp
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:32:25 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so3491904wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 08:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=twKREVP4dM76TlVVsHi0mp9knkKfShom6a8O1rWrEqA=;
 b=h3I2j4ciufcpKsQ5gfJM/DTpOBVP9ObrBX99kiBPaZ3Mfqh40mklLdWMeGl9lg2mIL
 sKfcEyRUOXUMxrXO37Z5miyEthTdi0anVI8MIAfOv16cWbo+89vGWTBivfwhb/NlK8z/
 KlklbFZfP1n3aVJqPFP1HMpotaneYBS6wCEs3jJ7wt5U5PSPl5p4SDdgG9U6eNJcjMru
 +CNoYQ3pRBHs/rFR+tSpwZAa8yB5IgiZVJcL5ntVJTY4M06nJ1SHTbFyZ/e/VYbJHCwy
 JxNU9Dah4QdXuKEaLlE6tjzzifk6aGOgs+PIiLcedS2+fE1gBEY9npPqmQ4X13uS01Wt
 9nXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=twKREVP4dM76TlVVsHi0mp9knkKfShom6a8O1rWrEqA=;
 b=BKhu4VweJy3acPgISJqqJH8Jj5Tti5wdtCoQrSh9g0hPnlZeBAovxHK+CT6HF6S1hp
 xOUa1XMnwdkb8HUNupZljiUZ8ox7E2cGsx0Dyb2Z3s9KLyOATWc1GlMNkIILOGoWSVT+
 97sUlU4K9YNepKbcwv0N7pQczCRuum8BwoIqznrgAooL8W6OLETJa7aSR2dURMVGXy9j
 5/FZKjvuZAmBslrRHPqwrnYjMci8QS5NC7B75vq/cis6prPYZUzBEi2jAMVrp4Npif05
 6yTAqwYj2aLCTN2JuU/Bbx2lOugIKnamM2InwGbFBWgi6u3AkrLLPuZRGadLoejtQzpL
 3v6A==
X-Gm-Message-State: APjAAAV4h3pMDlqxbRdSaz9sm/SjyiCN8UawtqAFQ+lb4j5lyTEDLund
 /0Xjw8QNY1wynw8/nxHhWA0RjFKEmoE=
X-Google-Smtp-Source: APXvYqxezO6uB6L4KgkL7Xs0u+cI6dkJWDdisTd5axsPvkukVNXGFDtFUmm2ifdZ4GWp24gRMXMJJQ==
X-Received: by 2002:a5d:4fce:: with SMTP id h14mr14572739wrw.231.1561044742105; 
 Thu, 20 Jun 2019 08:32:22 -0700 (PDT)
Received: from debian64.daheim (pD9E29A96.dip0.t-ipconnect.de.
 [217.226.154.150])
 by smtp.gmail.com with ESMTPSA id w23sm6218936wmi.45.2019.06.20.08.32.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 08:32:20 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hdz2y-0003SE-6i; Thu, 20 Jun 2019 17:32:20 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH 5/6] arm64: dts: Add ipq6018 SoC and CP01 board support
Date: Thu, 20 Jun 2019 17:32:20 +0200
Message-ID: <2600627.FlAEz51UtF@debian64>
In-Reply-To: <96fd8992-e333-6b3b-15c0-2845984120aa@codeaurora.org>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1981742.H2rzviYcjI@debian64>
 <96fd8992-e333-6b3b-15c0-2845984120aa@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_083223_716985_95F44114 
X-CRM114-Status: GOOD (  29.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
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
Cc: devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 agross@kernel.org, linux-kernel <linux-kernel@vger.kernel.org>,
 =?utf-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-soc@vger.kernel.org,
 linux-clk@vger.kernel.org,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Sricharan,

On Wednesday, June 19, 2019 4:42:11 PM CEST Sricharan R wrote:
> On 6/15/2019 2:11 AM, Christian Lamparter wrote:
> > On Wednesday, June 12, 2019 11:48:48 AM CEST Sricharan R wrote:
> >> Hi Christian,
> >>
> >> On 6/10/2019 5:45 PM, Christian Lamparter wrote:
> >>> On Monday, June 10, 2019 12:09:56 PM CEST Sricharan R wrote:
> >>>> Hi Christian,
> >>>>
> >>>> On 6/6/2019 2:11 AM, Christian Lamparter wrote:
> >>>>> On Wed, Jun 5, 2019 at 7:16 PM Sricharan R <sricharan@codeaurora.org> wrote:
> >>>>>>
> >>>>>> Add initial device tree support for the Qualcomm IPQ6018 SoC and
> >>>>>> CP01 evaluation board.
> >>>>>>
> >>>>>> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> >>>>>> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
> >>>>>> --- /dev/null
> >>>>>> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> >>>>>>
> >>>>>> +       clocks {
> >>>>>> +               sleep_clk: sleep_clk {
> >>>>>> +                       compatible = "fixed-clock";
> >>>>>> +                       clock-frequency = <32000>;
> >>>>>> +                       #clock-cells = <0>;
> >>>>>> +               };
> >>>>>> +
> >>>>> Recently-ish, we ran into an issue with the clock-frequency of the sleep_clk
> >>>>> on older IPQ40XX (and IPQ806x) on the OpenWrt Github and ML.
> >>>>> From what I know, the external "32KHz" crystals have 32768 Hz, but the QSDK
> >>>>> declares them at 32000 Hz. Since you probably have access to the BOM and
> >>>>> datasheets. Can you please confirm what's the real clock frequency for
> >>>>> the IPQ6018.
> >>>>> (And maybe also for the sleep_clk of the IPQ4018 as well?).
> >>>>>
> >>>>
> >>>> What exactly is the issue that you faced ?
> >>>> Looking in to the docs, it is <32000> only on ipq6018 and ipq40xx as well.
> >>>
> >>> We need just a confirmation.
> >>>
> >>> Then again, Currently the qcom-ipq4019.dtsi is using 32768 Hz.
> >>>
> >>> |		sleep_clk: sleep_clk {
> >>> |			compatible = "fixed-clock";
> >>> |			clock-frequency = <32768>;
> >>> |			#clock-cells = <0>;
> >>> |		};
> >>>
> >>> <https://github.com/torvalds/linux/blob/master/arch/arm/boot/dts/qcom-ipq4019.dtsi#L144>
> >>>
> >>> Which makes sense, because all previous Qualcomm Atheros MIPS and the
> >>> future IPQ8072 SoCs have been either using or deriving a 32768 Hz clock.
> >>>
> >>> For example: The AR9344 derives the clock from the 25MHz/40MHz external
> >>> oscillator. This is explained in "8.16.9 Derived RTC Clock (DERIVED_RTC_CLK)".
> >>> Which mentions that the "32KHz" clock interval is 30.5 usec / 30.48 usec
> >>> depending whenever the external reference crystal has 40MHz or 25MHz.
> >>> (1/30.5usec = 32.7868852 kilohertz!). The QCA9558 datasheet says the same
> >>> in "10.19.11 Derived RTC Clock". 
> >>>
> >>> For IPQ8072: I point to the post by Sven Eckelmann on the OpenWrt ML:
> >>> <http://lists.infradead.org/pipermail/openwrt-devel/2019-May/017131.html>
> >>> "I was only able to verify for IPQ8072 that it had a 32.768 KHz
> >>> sleep clock." 
> >>>
> >>> So this is pretty much "why there is an issue", it's confusing.
> >>> Is possible can you please look if there are (fixed) divisors values
> >>> listed in the documentation or the registers and bits that the values
> >>> are stored in? Because then we could just calculate it. 
> >>>
> >>
> >> Really sorry for the confusion. So looking little more, SLEEP_CLK is derived
> >> from an external 38.4MHZ crystal, it is 32.768 KHZ.
> > That's really valuable information to have. Thank you!
> > 
> >> Somehow the clk freq plan etc seems to mention them only as .032 MHZ and misses
> >> out. That means i will correct the patch for 32768 and probably the
> >> ipq8074.dtsi as well
> > 
> > Ok, there's one more issue that Paul found (at least with the IPQ4019),
> > https://patchwork.ozlabs.org/patch/1099482
> > 
> > it seems that the "sleep_clk" node in the qcom-ipq4019.dtsi is not used by
> > the gcc-ipq4019.c clk driver. this causes both wifi rtc_clks and the usb sleep
> > clks to dangle in the /sys/kernel/debug/clk/clk_summary (from a RT-AC58U)
> > 
> >    clock                         enable_cnt  prepare_cnt        rate   accuracy   phase
> > ----------------------------------------------------------------------------------------
> >  xo                                       9            9    48000000          0 0
> >  [...]
> >  sleep_clk                                1            1       32768          0 0  
> >  gcc_wcss5g_rtc_clk                       1            1           0          0 0  
> >  gcc_wcss2g_rtc_clk                       1            1           0          0 0  
> >  gcc_usb3_sleep_clk                       1            1           0          0 0  
> >  gcc_usb2_sleep_clk                       1            1           0          0 0  
> > 
> > with his patch the /sys/kernel/debug/clk/clk_summary looks "better" 
> > 
> > (something like this:)
> > 
> >    clock                         enable_cnt  prepare_cnt        rate   accuracy   phase
> > ----------------------------------------------------------------------------------------
> >  xo                                       9            9    48000000          0 0
> >  [...] 
> >  gcc_sleep_clk_src                        5            5       32000          0 0  
> >     gcc_wcss5g_rtc_clk                    1            1       32000          0 0  
> >     gcc_wcss2g_rtc_clk                    1            1       32000          0 0  
> >     gcc_usb3_sleep_clk                    1            1       32000          0 0  
> >     gcc_usb2_sleep_clk                    1            1       32000          0 0  
> > 
> > but judging from your comment "SLEEP_CLK is derived from an
> > external 38.4MHZ crystal" the gcc_sleep_clk_src / sleep_clk
> > should have xo as the parent. so the ideal output should be:
> > 
> >    clock                         enable_cnt  prepare_cnt        rate   accuracy   phase
> > ----------------------------------------------------------------------------------------
> >  xo                                      10           10    48000000          0 0
> >  [...] 
> >     gcc_sleep_clk                         5            5       32768          0 0  
> >        gcc_wcss5g_rtc_clk                 1            1       32768          0 0  
> >        gcc_wcss2g_rtc_clk                 1            1       32768          0 0  
> >        gcc_usb3_sleep_clk                 1            1       32768          0 0  
> >        gcc_usb2_sleep_clk                 1            1       32768          0 0  
> > 
> > or am I missing/skipping over something important? 
> > 
> 
> Sorry for the delayed response. So what i said above (32768 clk) looks
> like true only for ipq8074. For ipq4019, looks like 32000.
> 
> That means, there is still some thing unclear. I am checking for precise
> information from HW team for ipq4019/8074/6018. Please hang on, will
> update you asap.

Thank you for looking this up! I'll definitely stick around for the final
verdict.

Also, I think the "xo" clk of your IPQ6018 dts should get the
"always-on;" property (any maybe sleep_clk as well?).

Paul discovered that the QSDK had this extra commit
<https://lore.kernel.org/patchwork/patch/1089385/>
(Maybe the changeid can help you look it up internally)

For IPQ4019, this enables the high resolution with a 1ns resolution
instead of 10ms.

(echo q > /proc/sysrq-trigger can be used to check this just look for
the "resolution" value before and after.) 

Cheers,
Christian



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
