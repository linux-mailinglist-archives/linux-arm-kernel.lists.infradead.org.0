Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB74C116770
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 08:19:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d2lP2PzLrdq7mrfDjTYpB9xcZsHmWBGPDEdiLED4b+0=; b=rz83JxXN9i4RVa60rQvHFaoL/
	4LdNCUc9fGVfIMoQnyDZGCZzX/rBO+ktKQrSa7zRtzPS0MGI0bHilFlOEiqz53tp7Vn/7F2hqbkJ8
	PUTvrkUGO/zQTBw/d04zPRU2YBplbnpph8q2io3ohTirwFP4NK77Qp0lMy1L9fYGP7VU8xPuxOGGu
	8Y1RlyEwANKbUdRdoexCcNyTCznKTEMJQItbZOkibJg49krubnxRDDwJTSxyI0Gnf2oPuzXjWWpkF
	bTQbShlEdnjJubTiC4CuDcNmR8pjdYQnYwdyDOTfN1PpSgA5F+ghc5wxv1qWECdDrLMU5lZFkA3M4
	VHdQF5nRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieDKc-0003aj-1a; Mon, 09 Dec 2019 07:19:46 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieDKT-0003aO-Ak
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 07:19:38 +0000
Received: by mail-pg1-x542.google.com with SMTP id r11so6664228pgf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Dec 2019 23:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=O8bqF1rn+PqYoAZ5jE0J4xonAxc3tFJdFvY8mPt2Gxs=;
 b=cPFLhZRASEQKqD7ZtOtMjP5jjTIByuWYE5vyg6zaCTg1Vudr5kjEULBUPCrcEKTVgq
 Ae4OeuMq9gPL+Yb5BwBJ4HT4T9xF5qcht2sGiQF8G2ZNid0Fv5uXVUpBOwfBHrIhFhj4
 cQoyFKLZR2U7ulzwacEnGLACGM/E3VnBbmoEYsZistL+4LGcalRNR542zXKeFUYhN++Z
 Yld/9gwDTc8YMU1eNU/4dv42xmPl1QopRFSm2FrDsZC4gFeS6gPBzrtZRFU3q+cz+ktP
 RITgfcebpDgoSg76Rx3ou2umOF0nOGQ6g4AJHU56s+nTltGH42er+oAQ0AzMoCzMZEEt
 GirQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=O8bqF1rn+PqYoAZ5jE0J4xonAxc3tFJdFvY8mPt2Gxs=;
 b=n1IRL8PySyn8aPH4PAffffaj89VXM4w6wyQQGyJvFRjjUg2jNLygYBbw39UA0cgUxq
 bsQbuWyJEM+ZQEkYqcbX0IksA1VOaDZOyJiadUrjkp66XIqvtNjr/Ek76D1DVs5PSDBO
 5tq2ZqofAXy5EQ3LtNi/FlCXZDx7LgHdBHcykg0BOROjWGfGVB/44CW5AA7G7celYSgs
 QdBKCHyASLr2GNw82MyqoWXhNPBpsrhCxnfsyEqhS5v6ipOsbo4TgqUR65N5uERPM2yg
 d2MmZtOTY8YKeAwok/0aO1E0MssWaDQeFZdghX+E+NuQdjhD+3KL3v6aOgAVfRJYQ02X
 yacA==
X-Gm-Message-State: APjAAAXsA8iPWdGhLzcmwp1SJla2Qny3zPigGsDQXpP2vyR2+UoO747k
 6V2uGIfOAUkzScae90E6GRc=
X-Google-Smtp-Source: APXvYqwHloqb0aqrMx8HQTaT6TBbDS8TGtvjqWZT9ihks50OUaEdKge8ntMkD4ezAwccpWwpiGGLhg==
X-Received: by 2002:a63:b64a:: with SMTP id v10mr17573243pgt.145.1575875975572; 
 Sun, 08 Dec 2019 23:19:35 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 z7sm26058060pfk.41.2019.12.08.23.19.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 Dec 2019 23:19:34 -0800 (PST)
Subject: Re: [PATCH 1/5] arm64: zynqmp: Add firmware DT node
To: Michal Simek <michal.simek@xilinx.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Edgar Iglesias <edgari@xilinx.com>
References: <20191018160735.15658-1-m.tretter@pengutronix.de>
 <20191018160735.15658-2-m.tretter@pengutronix.de>
 <20191208223814.GA21260@roeck-us.net>
 <dbba2a25-cbf7-60f4-99f7-056512e28d00@xilinx.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <4821742f-2d60-b722-b954-263de975bf2e@roeck-us.net>
Date: Sun, 8 Dec 2019 23:19:33 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <dbba2a25-cbf7-60f4-99f7-056512e28d00@xilinx.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_231937_395236_9840B7BE 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Rajan Vaja <rajan.vaja@xilinx.com>, qemu-devel@nongnu.org,
 Rajan Vaja <rajanv@xilinx.com>, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/8/19 10:42 PM, Michal Simek wrote:
> Hi, +Edgar
> 
> 
> On 08. 12. 19 23:38, Guenter Roeck wrote:
>> On Fri, Oct 18, 2019 at 06:07:31PM +0200, Michael Tretter wrote:
>>> From: Rajan Vaja <rajan.vaja@xilinx.com>
>>>
>>> Add firmware DT node in ZynqMP device tree. This node
>>> uses bindings as per new firmware interface driver.
>>>
>>> Signed-off-by: Rajan Vaja <rajanv@xilinx.com>
>>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>>> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
>>
>> With this patch applied in the mainline kernel, the qemu xlnx-zcu102
>> emulation crashes (see below). Any idea what it might take to get
>> qemu back to working ?
> 
> Driver talks through ATF to PMU unit(microblaze). I don't think A53+MB
> concept is working with mainline qemu. But crash is too hard. It should
> be no response from PMU and then this panic.
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/firmware/xilinx/zynqmp.c?h=v5.5-rc1#n728
> 

Isn't that a bit harsh too ? Normally one would print an error message
and abort driver instantiation.

It sounds like you are saying that qemu's xlnx-zcu102 emulation is
no longer supported and expected to crash the kernel. Is this a
correct assumption ? If so, I'll drop it from my list of tests.

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
