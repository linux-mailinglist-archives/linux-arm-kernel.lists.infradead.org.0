Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56461AB657
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 05:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nlqQGMBCpIX4XajHTQPqsPx5j27s8ypdnQ9gl3ZdzFE=; b=gVziA7qq/+Sl5piNnxtu431u2
	VcEofjn2Cd/XkCH+PQuBq5arSnWV6tuERRzwLn4p0MrLW67IjeWZcZm5mFHqqEfjljENCW+3yrAX9
	ZZ5eNHZXDU1y3Bpb1gs3k3Tmid4ZEoMKqALh0cvS2mLr70I2uc/q1OqTlDUHTIrxy3KWqLPDyWnDO
	f5rJR1jPQZLOO6pIaqVYe0VTrtBokdWLOi/MF0Zvi7w93aW/Mye/mIz++oQLeR8oAVY9AyVoig38m
	a3ahbhrajQpHWyVOq1gwvdChUiLz7ubEuwCchfGYfCCKX3ZXcPJmtAhd0s7ZinsJ+8/HRFTf/TKPr
	Ume3uYYwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOvVp-0002Xy-1n; Thu, 16 Apr 2020 03:48:25 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOvVg-0002XP-B1; Thu, 16 Apr 2020 03:48:17 +0000
Received: by mail-ed1-x543.google.com with SMTP id ca21so7519510edb.7;
 Wed, 15 Apr 2020 20:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DYpMfqz1zq603rQOEBVoeHDA0i7zRzLf7WtuMas81V0=;
 b=nbS0fnm2kL0TuWyAi2j92YFqSqLz+HfnG3IgHQj8GPxpp7u741zE35wyocrJn4HY23
 5s8tEPOfysRWq3EzaQGDouDfSnyxAsPKmrQEEI3MRTMQQrG9bq0y0vrGY0Bd5UIm+kSu
 JeLdRoIrFWsyy5b6u7P2CzFdIZ2mdZXZAMbfnLgPvpsM8UNabPf1+Tro+yD3q0xB8dWO
 4R8fAhNA4k85vPrN9Emcab0Zdd2Pu9jLhYjk/iXCUNuRLa0a2VNacLy67AVmCjPwUmAW
 XrjeuFqb3QzgAX3eJiFh0wwdx599gVN+qHfrF7nI9m4Y0Fk6eeAOLwAIuABj0puwFZCE
 LjsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DYpMfqz1zq603rQOEBVoeHDA0i7zRzLf7WtuMas81V0=;
 b=ou9YuUMyhqn370xOkoMcQXTr4p16qjKwjNT2MRMbLQO3Gi+2IZEZ01q5q1OrA+ybde
 G2es/7q9plLS4x44PUtJPiAxe4ggdF4hsp0tRKhjCLjHNSWm/yjRIucZERtq3Y0Eh9ka
 H9CNal5FHGSHDttDFv7ltn+RJpfJF8onBq++v3aiZYwCOaZNa0g+pkqPID3crE0w72cL
 Ygyo6i4QCRmCmaUhB88JHkosoY46GvpGbCOFZQB7F8CoxwDH5xrFQmD6/NwfHFTcYXLC
 KlZiGeQ1UZLEknu9IE+MaYha0MbzvZTR8Zqs4Z/MWJqzSBHjiQPmJ/rNnMR6jZa1O6t2
 TUaA==
X-Gm-Message-State: AGi0PuZEOISEko0t/cjh4NPBz9cteXBor/ts3CDutaxXfrjzxv1phEVI
 2AiEIQd2Si1eivTP7qtUbIM=
X-Google-Smtp-Source: APiQypIt7jQVi3Abg6f3mCTFeiI/2xzq/WIEpbJIuP2F9eKdtVCa6kXtTpUFZhSg0TzcsalgQy7FRg==
X-Received: by 2002:a05:6402:2208:: with SMTP id
 cq8mr4833460edb.293.1587008893775; 
 Wed, 15 Apr 2020 20:48:13 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 c14sm2477020eds.79.2020.04.15.20.48.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 20:48:12 -0700 (PDT)
Subject: Re: [PATCH v2 0/2] Add a watchdog driver that uses ARM Secure Monitor
 Calls.
To: Julius Werner <jwerner@chromium.org>, Evan Benn <evanbenn@chromium.org>
References: <20200403052900.258855-1-evanbenn@chromium.org>
 <CAKz_xw0gV+w_gMkLfB4qUBdULLfFoiv1TBWp9_PHy33wP_XWyA@mail.gmail.com>
 <890948ef-7276-fdae-d270-eb30eff3eab2@amlogic.com>
 <243e107c-35c1-2d14-5285-c9e13744963c@amlogic.com>
 <CAODwPW9RSB37+4EJ2QXAwz=ShFB23L1GKC2mLYE5L5JuQR2tPw@mail.gmail.com>
 <20200415231215.GA182398@roeck-us.net>
 <CAKz_xw0+gKBM1jp-Avnd+4j9vSxUix67RZBX-NNbStb0+ri4+Q@mail.gmail.com>
 <CAODwPW9Vt7TcWfKYDmRgLndb2-+5HoNvA6XMJJznXCudQDngqw@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <9d029a04-2a37-cbbe-1932-be34d34f6b69@gmail.com>
Date: Wed, 15 Apr 2020 20:48:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAODwPW9Vt7TcWfKYDmRgLndb2-+5HoNvA6XMJJznXCudQDngqw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_204816_406815_A7C20B2A 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Yonghui Yu <yonghui.yu@amlogic.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Rob Herring <robh@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/15/2020 5:56 PM, Julius Werner wrote:
>> Can anyone provide advice about making SMCWD_FUNC_ID a device tree
>> param directly, vs using the compatible to select from a table.
> 
> Sounds like most people prefer the way with using different compatible
> strings? (Personally I don't really care either way.)

The PSCI binding itself has provision for specifying function IDs for 
different functions, and this seems to be followed by other subsystems 
as well like SCMI:

https://www.spinics.net/lists/arm-kernel/msg791270.html

I could easily imagine that a firmware would provide two functions IDs 
(one for AArch32, one for AArch64) and that it could change those over 
time while not changing the compatible string at all.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
