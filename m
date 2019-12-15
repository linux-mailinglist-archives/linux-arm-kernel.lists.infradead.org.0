Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD65811F643
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 06:29:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1nHoxt0zQ3UM8Rp3/0DG6yE0h8aBD+S2acB6w4V+v18=; b=nCkPnFZqKdoQIw3t46UvpOnKd
	2UGFq98AOZFNyCouD4+ywVhx5gr5xQavuuscdqSQLZOPWRfOKb7LRkOKfi7Hp5f2dc6Enmk5kOxj0
	tr94GWK/4q1dGZyneenThPzczasQvkFWqrCOJppN7kxzoaqMCdecQxXrT6toZojq9obio2su35rq5
	dytqfmsGqXfunAXk7Iw7gK5SLPwUAY/3DaD6bn5L6fcDZVL3dg+YyIY7yvZaqabKMLv8abjTA/eh1
	EV7hTmBPdzSX8OuFaC7P+EWu9OqR4wnPGXLuloFUvfVMllGzEMVrI+32Ph4PcBUoWfrhdosUDwtYC
	KuJXe+nlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igMSm-0006uC-F3; Sun, 15 Dec 2019 05:29:04 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igMSc-0006to-Gf
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 05:28:55 +0000
Received: by mail-pl1-x644.google.com with SMTP id g6so3016920plp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Dec 2019 21:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VArzzSYeZEnpsaB9lSQeUL2zfIxu29Y0Zz4FR1tu7JY=;
 b=tW5F+Zd5b48NbircyveTalm3eEyXXvDX8uDfvz88xAzAwDaT8J0Re2vrTvVcLwZ9M3
 vxDPYkpLYoJl8UHGMgbTkJPutIhO+kBbIzpFTp7zA9MFR+UFkvJMvXDyxi/ShlE4MRGE
 SIF6FIvwY22x6q2C5udfBWCTRyU/hmnwrIw1IFQtFWoGrZIl8PASzNODgHp3vfZPakJn
 9opaNNNcdVVzCT79+U3OMO33Jm9wDp4f2SoMmd7prQ+00iwE1TV8qoSL8H8NBgHYtIFd
 cuOJGmKfjLnjasI0pwYp3DmoC/R52MA1On2GVW4lRp9DO6+/3KCK1L4vJhfX7VMr5RW9
 jq+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VArzzSYeZEnpsaB9lSQeUL2zfIxu29Y0Zz4FR1tu7JY=;
 b=YQkDshCq+qNVycJ5WAU0hCpNFcv5In6+HQL87pEHYHwX9pLykq2p5jZHoyZDPgQXpL
 J3FXL8GR9KcwooXP7DW9nJ/dxQrDdP803DzDiUmMs04MtyKlzD6p5q9DvDRCo481k4n9
 YGBso+LH4jhO12HZWK1HMxrgsK+ytE6T2wY3m6C1X0lYrYYKwXqj/6HHVfDxEL+msEu+
 IzsNGykT4ZKtqbG4KdROW5Cu9V1D5j8OSlHL27P4KwaJOGLBqiVt8lH/lgU7/3xrwU1B
 0T+lIRIauGTQP/nww5Pw+WdFUrNOmoEeLfoopTLxO8Wjnuv8HCI7MJVjXavzcp3hf0Dg
 UF1Q==
X-Gm-Message-State: APjAAAXkvu3NXQaKukrAVY7XH0opCK6xUjvhzaqehMJ4lkLwR5SZscvj
 e+IJ7pdyYvSYOG3Dz5/Ld7g=
X-Google-Smtp-Source: APXvYqwSSKqqUXTBl3k08aWoi2vzBg3H+3mYhqmyTE9INsm/dJratjDB0m+59ebJf0tP26Egm92aYg==
X-Received: by 2002:a17:90a:1b45:: with SMTP id
 q63mr10587989pjq.118.1576387733685; 
 Sat, 14 Dec 2019 21:28:53 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 a15sm17884108pfh.169.2019.12.14.21.28.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 14 Dec 2019 21:28:52 -0800 (PST)
Subject: Re: [PATCH 1/5] arm64: zynqmp: Add firmware DT node
To: Michal Simek <michal.simek@xilinx.com>,
 "Edgar E. Iglesias" <edgar.iglesias@xilinx.com>
References: <20191018160735.15658-1-m.tretter@pengutronix.de>
 <20191018160735.15658-2-m.tretter@pengutronix.de>
 <20191208223814.GA21260@roeck-us.net>
 <dbba2a25-cbf7-60f4-99f7-056512e28d00@xilinx.com>
 <4821742f-2d60-b722-b954-263de975bf2e@roeck-us.net>
 <20191209074840.GP32392@toto>
 <d2e63acb-c076-7bfb-c492-0355ec106cbf@roeck-us.net>
 <fa36a9e9-9e44-d1ff-cfdc-22d0484318ff@xilinx.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <573f0472-9779-c5df-f199-4e0958753fd8@roeck-us.net>
Date: Sat, 14 Dec 2019 21:28:51 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <fa36a9e9-9e44-d1ff-cfdc-22d0484318ff@xilinx.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_212854_557876_D0D2F1D1 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Rajan Vaja <rajan.vaja@xilinx.com>, Michael Tretter <m.tretter@pengutronix.de>,
 qemu-devel@nongnu.org, Edgar Iglesias <edgari@xilinx.com>, robh+dt@kernel.org,
 Rajan Vaja <rajanv@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/9/19 7:02 AM, Michal Simek wrote:
> On 09. 12. 19 15:32, Guenter Roeck wrote:
>> On 12/8/19 11:48 PM, Edgar E. Iglesias wrote:
>>> On Sun, Dec 08, 2019 at 11:19:33PM -0800, Guenter Roeck wrote:
>>>> On 12/8/19 10:42 PM, Michal Simek wrote:
>>>>> Hi, +Edgar
>>>>>
>>>>>
>>>>> On 08. 12. 19 23:38, Guenter Roeck wrote:
>>>>>> On Fri, Oct 18, 2019 at 06:07:31PM +0200, Michael Tretter wrote:
>>>>>>> From: Rajan Vaja <rajan.vaja@xilinx.com>
>>>>>>>
>>>>>>> Add firmware DT node in ZynqMP device tree. This node
>>>>>>> uses bindings as per new firmware interface driver.
>>>>>>>
>>>>>>> Signed-off-by: Rajan Vaja <rajanv@xilinx.com>
>>>>>>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>>>>>>> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
>>>>>>
>>>>>> With this patch applied in the mainline kernel, the qemu xlnx-zcu102
>>>>>> emulation crashes (see below). Any idea what it might take to get
>>>>>> qemu back to working ?
>>>>>
>>>>> Driver talks through ATF to PMU unit(microblaze). I don't think A53+MB
>>>>> concept is working with mainline qemu. But crash is too hard. It should
>>>
>>> Yes, QEMU doesn't support the Cortex-A53s along with the PMU MicroBlaze.
>>>
>>> My workaround when using upstream QEMU is a modified DT without the
>>> PMU firmware
>>> and with fixed-clock nodes.
>>>
>>
>> I can't do that for my boot tests. Normally I would just disable
>> ZYNQMP_FIRMWARE,
>> but that is hard enabled with ARCH_ZYNQMP. I'll have to drop those tests,
>> unfortunately, if the firmware driver is considered mandatory.
> 
> We can make it optional.
> Rajan: please send a patch for it.
> 

I'll disable the related boot tests for now. If/when this is fixed, let me know,
and I'll re-enable it.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
