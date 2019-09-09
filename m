Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB75ADCCE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 18:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOSOG64MR+CTe2Kf++nrD2r1hT0s9cpn3OeM5usP/6M=; b=hcPA5dODlTOTzA
	6yWq11BvZSIgseqSzsH586HM9Sm9XNrj1zFqIsp2UcXeAdLh7590X/JYfY8mJ7QT/JNn6tKNT1j8z
	bM3kUP0Kuthb/ooV5g9tYbr4bQQFCkiNzn2jYGCsVaOtms6zT0MmVhFfeNHQOnbUiqeQgG1p4Tn2s
	Ca2zJcDWup15aoLlbcJosuGmeEoQ8d3St/BH36qOlIIzb1ivwNUrdYLaODwSq1h8ruWJmi4FY8Vnd
	X6jRxm9SLHXpOJRjnAqr35BfI17eXQp/vzJCpbZ/m3Xigv93dqQ4lnUGHuhcCKM5/wWUFo16MXfsX
	K8gROuXSDXK+z4LWcPmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7MGm-000483-7J; Mon, 09 Sep 2019 16:12:00 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7MGd-00047Y-DC; Mon, 09 Sep 2019 16:11:52 +0000
Received: from [192.168.0.108] (223.167.21.35) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Tue, 10 Sep
 2019 00:12:33 +0800
Subject: Re: [PATCH v2 4/4] arm64: dts: add support for A1 based Amlogic AD401
To: Jerome Brunet <jbrunet@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Kevin Hilman <khilman@baylibre.com>
References: <1567667251-33466-1-git-send-email-jianxin.pan@amlogic.com>
 <1567667251-33466-5-git-send-email-jianxin.pan@amlogic.com>
 <CAFBinCBSmW4y-Dz7EkJMV8HOU4k6Z0G-K6T77XnVrHyubaSsdg@mail.gmail.com>
 <be032a85-b60d-f7f0-8404-b27784d809df@amlogic.com>
 <CAFBinCD7gFzOsmZCB8T1KJKVsgL7WMhoEkj3dRzyqwAnjC0CNA@mail.gmail.com>
 <1jv9u1ya3o.fsf@starbuckisacylon.baylibre.com>
From: Jianxin Pan <jianxin.pan@amlogic.com>
Message-ID: <b8350c34-1fcc-76b8-6722-1e3309089c04@amlogic.com>
Date: Tue, 10 Sep 2019 00:12:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1jv9u1ya3o.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
X-Originating-IP: [223.167.21.35]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_091151_447405_63313B6C 
X-CRM114-Status: GOOD (  11.60  )
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
 linux-kernel@vger.kernel.org, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Tao Zeng <tao.zeng@amlogic.com>,
 Qiufang Dai <qiufang.dai@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

On 2019/9/9 19:36, Jerome Brunet wrote:
> 
> On Sat 07 Sep 2019 at 17:02, Martin Blumenstingl wrote:
> 
>> Hi Jianxin,
>>
>> On Fri, Sep 6, 2019 at 7:58 AM Jianxin Pan <jianxin.pan@amlogic.com> wrote:
>> [...]
>>>> also I'm a bit surprised to see no busses (like aobus, cbus, periphs, ...) here
>>>> aren't there any busses defined in the A1 SoC implementation or are
>>>> were you planning to add them later?
>>> Unlike previous series,there is no Cortex-M3 AO CPU in A1, and there is no AO/EE power domain.
>>> Most of the registers are on the apb_32b bus.  aobus, cbus and periphs are not used in A1.
>> OK, thank you for the explanation
>> since you're going to re-send the patch anyways: can you please
>> include the apb_32b bus?
> 
> unless there is an 64 bits apb bus as well, I suppose 'apb' would be enough ?
>
There is no 64bits apb bus in A1, only apb32. 
Unlike the previous series, For A1 and C1, we can not get bus information for each register from the memmap and datesheet.
Do we need to add bus description for them too? If yes, I can add 'apb' .  
>> all other upstream Amlogic .dts are using the bus definitions, so that
>> will make A1 consistent with the other SoCs
>>
>>
>> Martin
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
