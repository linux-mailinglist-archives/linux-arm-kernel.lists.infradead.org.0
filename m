Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAC3AF706
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 09:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IThpTfyKP8tWJk2yvX+i57ZiLP3U8ri6WlsY9YP0uUQ=; b=BEyawlEJvtAEu9
	h7ZytWcPmG2sMguP/s5ecmqu7rZ7zGEQUoRpJNQprHDIho2MEPgy4dRLCw6eNX5HkOVuO2nm08HQM
	lTQEZkPgy1ixz6vYydGnuue1VOGW/Wm5d2O14o9ldUFTx8Ti/s0jd1u+88+8q/g3LlcveoL+qXRgE
	kUNjO+GeOM0Ab/ogSqcIEdRWG7Ib+6WYWe1eYoFw5WPC0R+3ptk3l7ued04VZVapkEp+550pFPNF4
	4AYlist8kjhomfSvjl3mXfrdC+C08gjL5ZZewEDCS1FRPFPx6dfF9mO4HGnJhdss1hDFxu/dzXjbT
	jFme9wyPj/g9J+OfewLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7xBl-00055U-Vr; Wed, 11 Sep 2019 07:37:17 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xAp-00054e-7n; Wed, 11 Sep 2019 07:36:21 +0000
Received: from [10.18.29.226] (10.18.29.226) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Wed, 11 Sep
 2019 15:37:02 +0800
Subject: Re: [PATCH v2 4/4] arm64: dts: add support for A1 based Amlogic AD401
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <1567667251-33466-1-git-send-email-jianxin.pan@amlogic.com>
 <1567667251-33466-5-git-send-email-jianxin.pan@amlogic.com>
 <CAFBinCBSmW4y-Dz7EkJMV8HOU4k6Z0G-K6T77XnVrHyubaSsdg@mail.gmail.com>
 <be032a85-b60d-f7f0-8404-b27784d809df@amlogic.com>
 <CAFBinCD7gFzOsmZCB8T1KJKVsgL7WMhoEkj3dRzyqwAnjC0CNA@mail.gmail.com>
 <a82336e2-44df-5682-1c86-daf8a8448d30@amlogic.com>
 <CAFBinCAJG4=M3BSXfREGU+iadMPkc7=yt3AdcqA1KAhQx6Wh9w@mail.gmail.com>
From: Jianxin Pan <jianxin.pan@amlogic.com>
Message-ID: <09d7f5cc-9063-28f4-b68f-79f21fca500b@amlogic.com>
Date: Wed, 11 Sep 2019 15:37:02 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCAJG4=M3BSXfREGU+iadMPkc7=yt3AdcqA1KAhQx6Wh9w@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.18.29.226]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_003619_437492_E8D15178 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Qiufang Dai <qiufang.dai@amlogic.com>, Rob Herring <robh+dt@kernel.org>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Tao Zeng <tao.zeng@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

On 2019/9/10 1:24, Martin Blumenstingl wrote:
> Hi Jianxin,
> 
> On Mon, Sep 9, 2019 at 2:03 PM Jianxin Pan <jianxin.pan@amlogic.com> wrote:
>>
>> Hi Martin,
>>
>> On 2019/9/7 23:02, Martin Blumenstingl wrote:
>>> Hi Jianxin,
>>>
>>> On Fri, Sep 6, 2019 at 7:58 AM Jianxin Pan <jianxin.pan@amlogic.com> wrote:
>>> [...]
>>>>> also I'm a bit surprised to see no busses (like aobus, cbus, periphs, ...) here
>>>>> aren't there any busses defined in the A1 SoC implementation or are
>>>>> were you planning to add them later?
>>>> Unlike previous series,there is no Cortex-M3 AO CPU in A1, and there is no AO/EE power domain.
>>>> Most of the registers are on the apb_32b bus.  aobus, cbus and periphs are not used in A1.
>>> OK, thank you for the explanation
>>> since you're going to re-send the patch anyways: can you please
>>> include the apb_32b bus?
>>> all other upstream Amlogic .dts are using the bus definitions, so that
>>> will make A1 consistent with the other SoCs
>> In A1 (and the later C1), BUS is not mentioned in the memmap and register spec.
>> Registers are organized and grouped by functions, and we can not find information about buses from the SoC document.
> do you know why the busses are not part of the documentation?
> 
>> Maybe it's better to remove bus definitions for these chips.
> my understanding is that devicetree describes the hardware
> so if there's a bus in hardware (that we know about) then we should
> describe it in devicetree
> 
> personally I think busses also make the .dts easier to read:
> instead of a huge .dts with all nodes on one level it's split into
> multiple smaller sub-nodes - thus making it easier to keep track of
> "where am I in this file".
> 
OK, I will add the bus description for A1.
Thank you for your suggestion.
> 
> Martin
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
