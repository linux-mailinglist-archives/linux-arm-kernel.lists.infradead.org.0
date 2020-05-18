Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 598B91D893A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 22:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f2NnhyWQUBS0aLmvf6IFnJz8QJldHFkUc/qtUUrJ/aE=; b=sV9cLvfb8FP9Zqz0JVOJisOPo
	cuFkkW6xC9Egwpa/B6pn8htV8R4xVYs7wv5KJuaXGOw1gPBDtjrCSjfD0P0DSTj3zEGz97pLSweKI
	A3KBRSJ8J2u50C2Sc8fAKKKti38lW5Tugl3DYKCqwUL3VEac1ovoRCkhKR7wBCKh7x9bFE8ZzTdWb
	eCEn/BhUK2v1fbtKv6tegS/K582dIdpff79PwtnnASePX1mYKHmdg5p5aHyHj9OmEbsqk0uOBT5oi
	Rshfmboz+3+eqAmUAzeWB6zBvWUV96OdcjctRiPx6haCFhlfHWUxZCq7ZjmWZt4HFOVseJJUC/tw/
	NjC0eGp2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jamTF-00078V-MB; Mon, 18 May 2020 20:34:45 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jamT1-00077l-T4
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 20:34:33 +0000
Received: from [10.0.0.249] (c-24-19-135-168.hsd1.wa.comcast.net
 [24.19.135.168])
 by linux.microsoft.com (Postfix) with ESMTPSA id 57B3620B717B;
 Mon, 18 May 2020 13:34:29 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 57B3620B717B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1589834070;
 bh=6GRSvZ+sGLVcKGDOcmVDyb0gXRdx/T0QTMk1YgrIXo0=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=LW4xKvNPjvTQHNTCPc5dw87VMVrDKT0UTsZNlxXJSb2DhjQsGt1aArwi+2Pq25xMN
 S4zSHJ+EQn4yAg/KghG/RYbBFjia5QNFJZWhHHgsJ+dbDFHzqYrmxyRfw7yrJDSiU3
 PE4kQbDFbQkwN9xGgKO718cCWGbRNXaZolR1rV5E=
Subject: Re: [RFC][PATCH 1/2] Add a layer of abstraction to use the memory
 reserved by device tree for ima buffer pass.
To: Rob Herring <robh@kernel.org>
References: <20200504203829.6330-1-prsriva@linux.microsoft.com>
 <20200504203829.6330-2-prsriva@linux.microsoft.com>
 <20200512230954.GB2654@bogus>
From: Prakhar Srivastava <prsriva@linux.microsoft.com>
Message-ID: <8b8bb74b-a3ac-1eb8-4b21-d00402a2bf62@linux.microsoft.com>
Date: Mon, 18 May 2020 13:34:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200512230954.GB2654@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_133431_962814_316B54F8 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-17.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: kstewart@linuxfoundation.org, mark.rutland@arm.com,
 gregkh@linuxfoundation.org, benh@kernel.crashing.org, bhsharma@redhat.com,
 tao.li@vivo.com, zohar@linux.ibm.com, paulus@samba.org,
 vincenzo.frascino@arm.com, will@kernel.org, nramas@linux.microsoft.com,
 frowand.list@gmail.com, masahiroy@kernel.org, jmorris@namei.org,
 takahiro.akashi@linaro.org, linux-arm-kernel@lists.infradead.org,
 catalin.marinas@arm.com, serge@hallyn.com, devicetree@vger.kernel.org,
 pasha.tatashin@soleen.com, hsinyi@chromium.org, tusharsu@linux.microsoft.com,
 tglx@linutronix.de, allison@lohutok.net, christophe.leroy@c-s.fr,
 mbrugger@suse.com, balajib@linux.microsoft.com, dmitry.kasatkin@gmail.com,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 james.morse@arm.com, mpe@ellerman.id.au, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/12/20 4:09 PM, Rob Herring wrote:
> On Mon, May 04, 2020 at 01:38:28PM -0700, Prakhar Srivastava wrote:
>> Introduce a device tree layer for to read and store ima buffer
>> from the reserved memory section of a device tree.
> 
> But why do I need 'a layer of abstraction'? I don't like them.
> 
This is a common path for the all architectures to carry over the
IMA measurement logs. A single layer will avoid any code duplication.

>> Signed-off-by: Prakhar Srivastava <prsriva@linux.microsoft.com>
>> ---
>>   drivers/of/Kconfig  |   6 ++
>>   drivers/of/Makefile |   1 +
>>   drivers/of/of_ima.c | 165 ++++++++++++++++++++++++++++++++++++++++++++
> 
> Who are the users of this code and why does it need to be here? Most
> code for specific bindings are not in drivers/of/ but with the user. It
> doesn't sound like there's more than 1 user.
> 
Currently the path is exercised by arm64 kexec_file_load path. A slight
restructuring is needed on the powerpc side to use the same code path 
and other architectures can follow to add carrying over IMA logs over
kexec with just a few function calls.

I have attempted to bring the code path down to the highest common 
layer, however please do suggest if i can move this some where else.

Thanks,
Prakhar

>>   include/linux/of.h  |  34 +++++++++
>>   4 files changed, 206 insertions(+)
>>   create mode 100644 drivers/of/of_ima.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
