Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9824E18498C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 15:38:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uYBv1h2vduWuDZx02estbeUWp+ppFsq0yQEEQVbxsh8=; b=lK8hqovn+rZ6H4
	eII6M0ubS7qVarZu3ab60vEXi6bO4yacIuU8wLD2oMoBocPlt8WUSofOCudNDgH8YSCfNGSzR8sdF
	QUMp4zYAciCfFAfN31D3jxMW2Z/LRmvw1YRv7PzJwJHsZZPXbSR2zE7hB+g0vNyUqSn8FLw25GkLI
	1Pqjr4jY9peilPAyRL85fpVRwJdR31AARkdDTtyvsDii71B7sKhMBFlfIojTnyb08vngbr84UjLwn
	SSC3s8B+8AOHbtsXG00PlHrJeLwUKNWClGjQOv6qPxILPZVmgSxDTOwaDPvz6kqyrV3Jcf9uNvCMk
	UZwaoHNrlfKyMXb1FiBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jClRk-0004ni-Uc; Fri, 13 Mar 2020 14:37:56 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jClRc-0004mr-6l; Fri, 13 Mar 2020 14:37:49 +0000
Received: by mail-qt1-x844.google.com with SMTP id v15so7663520qto.2;
 Fri, 13 Mar 2020 07:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IWiLFXJoL3qzIWPZA+/ObRS+WhWUeKdoLxXVkW4bKYs=;
 b=brZ2kJbjo1lXXEUpoExW2a/8G0/kWb1PeWR+PPjo6qWE07rGKGJJJfKSYDBWaEOBfb
 HY2Zuz1UULlojcdDUKrOG4Mgy1PsVmYAIQdf31LXqqWJMM2Ty+twX9y8qAArRwNuopbS
 hbvBiStgtszXEpjHoeNm4f/jTFXWmNGbx9Hb/HZYh2krtxLnDdKp8slf8rMDcDMdeVes
 KreGLJHoT4ZlcBvE2unTECFt8JW2/OE4AWozICObqdK80uWYqvALjqzAaJI/ymPGI6wQ
 ptUYbezk4AEjWaXlSmzvkjiSbmhUVQCbzfDkXTBRv32wB1TfzHnOAbh5pi1SJoQzPbRW
 be9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IWiLFXJoL3qzIWPZA+/ObRS+WhWUeKdoLxXVkW4bKYs=;
 b=iEjZaJ6hpKB2LYJ/MZL7WN3ozKYp6LXxXHSNzc3N7KbQXlqad7e5KRDDIs+7K62ZdN
 mHhZsJddRS/8FLv3LYp7tx+NOw8UsSis1TTNSOvefGzoohC3VcMRi+bPBqZ9EXkOUso+
 og3I7QchIvOZfjCic8FLpI2XrX8Lxyue3w/dVFbAmOQjTc4pgHOdh9POdG4cxLYpGNKJ
 m5sM9anH7s6j7S1dQVzriXt9ELb7hEIi63eX70aIygAUjcrEFz/j4rrvK7XvEmvD+VVS
 OPkBheIUVqafUCw4/aAOAkdyxbjXHoE3AsxqBsO3KnzMB/OACvs+RQ+EZGnvA1NixUc9
 s0FQ==
X-Gm-Message-State: ANhLgQ1dP/gzbRaRTZLFsSq0LCIwwR5PvuyJ2OkZHWTvKf+rXoegukzU
 1JRo+t43+xV3tpN+UzLVBbA=
X-Google-Smtp-Source: ADFU+vvlub9/e063qHJY4ONDofRHLu3BpPYkMPUk0Qd2gV0L32YCNySXCwj+Bj5/yZrupMY4cVTAkg==
X-Received: by 2002:ac8:ac1:: with SMTP id g1mr12820614qti.287.1584110266692; 
 Fri, 13 Mar 2020 07:37:46 -0700 (PDT)
Received: from ubuntu (ool-45785633.dyn.optonline.net. [69.120.86.51])
 by smtp.gmail.com with ESMTPSA id w30sm5476313qtw.21.2020.03.13.07.37.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 07:37:45 -0700 (PDT)
Date: Fri, 13 Mar 2020 10:37:43 -0400
From: Vivek Unune <npcomplete13@gmail.com>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add Hugsun X99 IR receiver and
 power led
Message-ID: <20200313143743.GA92675@ubuntu>
References: <20200313000112.19419-1-npcomplete13@gmail.com>
 <7f294dd5-3188-e2d6-dd49-4b2afb04455a@gmail.com>
 <20200313142005.GA25349@ubuntu>
 <4deb154d-3095-7d18-fbf9-85b60f57765f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4deb154d-3095-7d18-fbf9-85b60f57765f@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_073748_275058_828F560F 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [npcomplete13[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npcomplete13[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, akash@openedev.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 03:29:59PM +0100, Johan Jonker wrote:
> Hi Vivek,
> 
> On 3/13/20 3:20 PM, Vivek Unune wrote:
> > On Fri, Mar 13, 2020 at 09:32:27AM +0100, Johan Jonker wrote:
> >> Hi Vivek,
> >>
> >> The 'power-led' need some changes.
> >>
> >> From leds-gpio.yaml:
> >>
> >> patternProperties:
> >>   # The first form is preferred, but fall back to just 'led' anywhere in the
> >>   # node name to at least catch some child nodes.
> >>   "(^led-[0-9a-f]$|led)":
> >>     type: object
> >>
> >> Test with:
> >> make -k ARCH=arm64 dtbs_check
> >>
> >> arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dt.yaml: leds:
> >> power-led:linux,default-trigger:0: 'none' is not one of ['backlight',
> >> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
> >>
> >> On 3/13/20 1:01 AM, Vivek Unune wrote:
> >>>  - Add Hugsun X99 IR receiver and power led
> >>>  - Remove pwm0 node as it interferes with pwer LED gpio
> >>
> >> pwer => power
> >>
> > 
> > Hi Johan,
> > 
> > I'll fix those in my next version. Here's what I intended to to:
> > 
> 
> > 1. Rename 'power-led' node to 'led-power'
> 
> The first form is preferred.
> Put 'led-power' in a regex tester with ^led-[0-9a-f]$
> https://regex101.com/
> Your regular expression does not match the subject string.
> 
> Test 'led-0'
> Full match
> 

Hi Johan,

Thanks for quick reply. 

Indeed led-power won't work. Although I'm trying to figure out the dtbs_check
Currently, make compains that it's missing.
I'll verify this properly without having you to verify it next time.

Thanks,

Vivek


> >>>  		regulator-max-microvolt = <5000000>;
> >>>  	};
> >>>  
> >>> +	leds {
> >>> +		compatible = "gpio-leds";
> >>> +		pinctrl-names = "default";
> >>> +		pinctrl-0 = <&power_led_gpio>;
> >>> +
> >>> +		power-led {
> >>> +			label = "blue:power";
> >>> +			gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
> >>> +			default-state = "on";
> >>> +			linux,default-trigger = "none";
> >>> +		};
> >>> +	};
> >>> +
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
