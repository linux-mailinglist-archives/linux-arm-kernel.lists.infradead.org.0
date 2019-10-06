Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE78CD226
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 15:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JoeL2jeLmEsXl48DY7STbVzp8yOTySZTAqJtnAE9TpU=; b=VA6s4Tp0oN/ELG
	rn1ZSKi/Ll0PKoGeMbRZm57UoXV80dPGa3U5lAjTeIt6G5vj9IBAzqe7M4mFdTWfZbqpjwnucu1M0
	L+FVznB7WhO2kkBRmiJipvbkoZh/gD8Yn7yDtFEAox2Kcr1tRkcffS9kHYHIwSXGrck44nZUJd320
	hZFZX/tL8O2hnA2WPisbhUALrkiKHs9fOMaBW3ONI1OfnxkVyAfMiiU49TZj+JirzLhOmwmrJwlmB
	kHlcH/rCpOLNZ5CUokONy0YMmCd1ncF6fyyYdRnekvFBXSccMlWycVtd6BE2mpy9pAvhjWq/sEJ0w
	gSj2KA13KvyGac9/adtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH6ah-0001lr-8s; Sun, 06 Oct 2019 13:28:51 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH6aU-0001lU-Rg
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 13:28:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570368504;
 bh=YIsVpoV1ErSzJOZxoENNeyGAnPQ8S4fL4An2ClUv/hs=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=f7xdtjumN7zj1Bw4bMHMQc1koLr1Bu08fjyMNTbRk5PY9TUCzc1CDwKh2860Y/INM
 +kmG33WpSamvabYtJLF/gGhmyy0QSsYzFLovAq2jZ43UzRocnfCdpKXjmHbsgITerH
 RI+STlE0SNiYIOiRP/BhibbH2otKFOOPhyagW9FU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.116]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MPXdC-1iUng53QX4-00MYiS; Sun, 06
 Oct 2019 15:28:23 +0200
Subject: Re: [PATCH V3 7/8] ARM: dts: Add minimal Raspberry Pi 4 support
To: Florian Fainelli <f.fainelli@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <1569672435-19823-8-git-send-email-wahrenst@gmx.net>
 <77b0a773-912a-aa5b-6eb5-5423c2c07e58@gmail.com>
 <7d0414bb-fea8-e3e5-8b85-c18615a56c94@gmx.net>
 <e9e6491e-c53e-7255-98cc-dabdfa7ba753@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <4bc598da-e895-7223-73e8-b4ce6d2ac074@gmx.net>
Date: Sun, 6 Oct 2019 15:28:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <e9e6491e-c53e-7255-98cc-dabdfa7ba753@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:l9xetwDrYztZ0iQMsXfOU1ZYPFaHCj+urOcdSv54wel5oo+qjUz
 WC4Fyjo4BKKDggnVQn24SH6++q7Gzf6M8pNXCya9fF4O/yOdi2l8bVt/HIHhhoR3HTU+iJK
 FkVf16zqVYG3hSnqtvrK46nld6Xc46F7MZOjGkpGxc8P6uX8MSs+I/gNsjaoy55SK/vLl3n
 r0Bucxg8lPOuwhwyihJSg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wgBiszdeuzA=:Ul4ujxVhd+TgQC949XUkgW
 XiUZjVEXGZPD2Sm33grMbfHIg83OVPFKrixhp2OGuA6yraOo+BxxEOypYx0i+k7hPUUCIFLY4
 LReeLOH8T22VDicCdSvCE3qAliBrG+0aBbBK1U+S3PLtfGX/OkWP4JlSG6Hyvh1feruG+jsPG
 oMrwQrD/E0DdWqj9G3pzbgTSrJ6/XRW7PCzhhzxQvr7nVeakpZ9OWV0IWXMhe08/hHUqQ3eJf
 RmeMY1V5Rbb0/PVIRggOzh/KovQke71bG/rJPiPtjNloSjyEuWrxEfF9B7120DYUIkmVpGXaP
 hq1Dy4t3IzGatQf6CG9QMvoaiilr5GrovOX+oS+uRtzyDVN+ZMuUkHbRnT52qSTeRAxPas5lw
 5CZFphbojZLDoZuwc+VPuvjxK3tVQ15rkf/kArjGxYeRnFWvSdFOzn7xoHKt/S5MPV0rF9K4m
 pM9FR8vWmWpXxElag0HoRJnFt4c0pqlHRhsbN/n/zI1XRXx5wSo5OHLhTY/o/cd8EmNM68Y0o
 foSHbuDXo1kcrKTEgHclwWyR7aCxRlja49peTsAZoTKgrLofz0OUOMZGRgiaPukQkefwPqyiX
 L5Wwv2GYm290a2AJNw47XDomOaIKR0lh6L5NuWa0ZXZKmyY7p8/Iuh7koO90wR7FzRAb/Sr/4
 t27za2zxzx++pa50N6kSb9OXasCW6Q+bsKe1O7hk9V9b9N3r+x64+1GoNwoCEfBBYEGNgKiVL
 YeXMeuf/Bf0WujFGYJ2FH56cp/tJUHVwmFauNl2q60SUblSQMFIOxvKI14j9D+6KvgUNBN1Af
 lBRVyIgGP3QZFP9HYEUfGpX0L39vMp5vko3XNmtNSuApebdvQZixpS92ySQa9cshsKPPMVQsk
 fyhXCJMfK20ads03fjRUtMGLjnkg2s77psMf9At0By242kgfgn6rHBRm587YHLusEaGLNECOk
 Y6YcuIzunBdc+eo1T7b3nVqHeip+UMyl1fW+kACl30yidxSSK83+TmLGR+P5tn8yq+rGHY3kn
 ZkwGzAY6hb20xkDye4YCAWGzregDQGuFy6XAzupIuhtWc9Ss3qt85aTVOTig0f4mCkbmQ1s2E
 DmwPB/IWx1PZXBFIhj/wkrwhEQ2K+qhrrXochq4ua6HnivxatBMLsRcYtjIwFFFgaDlM4wpnL
 71L5pIJvhmRe0iB17xWE7VuaqjFTMgYSifwKdgufmQ4DCc9pin7ktOmsqafnZRmJQvbmmHKTw
 Kkhgrl6q0ilPEfN0mkmw0E4zDQyBo/dMOmmeHXu/zqT19ficu8gcRZluyJcQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_062839_231689_F2C4EF5B 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.21 listed in wl.mailspike.net]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, devicetree@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 02.10.19 um 18:43 schrieb Florian Fainelli:
> On 10/2/19 9:24 AM, Stefan Wahren wrote:
>> Hi Florian,
>>
>> Am 28.09.19 um 21:58 schrieb Florian Fainelli:
>>> On 9/28/2019 5:07 AM, Stefan Wahren wrote:
>>>
>>>> +	memory@0 {
>>>> +		device_type = "memory";
>>>> +		reg = <0 0 0x00000000>;
>>>> +	};
>>>> +
>>> [snip]
>>>
>>>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>>>> +#include <dt-bindings/soc/bcm2835-pm.h>
>>>> +
>>>> +/ {
>>>> +	compatible = "brcm,bcm2711";
>>>> +
>>>> +	#address-cells = <2>;
>>>> +	#size-cells = <1>;
>>> Trying to see if we may need a #size-cells property value of 2 here, for
>>> the 4GB model, I would assume that we would have to, unless we are fine
>>> with supporting 4GB - 1byte of DRAM?
>> I will try unless this requires a lot of adjustments or break the
>> bootloader.
> OK.
Unfortunately this breaks bootloader or firmware. Since the BCM2711 is
able to address 16 GB RAM this should be fixed later. I will open an
issue and submit V4 without this suggested change.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
