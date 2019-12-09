Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CC41168D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:02:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T0asE06YYqqKXW1Ot0+WQIdxTp6+vUlhXFwTtz1Hjqg=; b=jg5/qYmgc8tJFmpykGzDFL/8W
	BTCMlgMpv157bqDCi07itCWSXKsqBsnWljydFbX4O6i8hMuqBQB478asVNDupk5Q9LgKVNAw4Ghnb
	wcXvDuQv9hkpPxzHsxQa2XIjCK/X/dFYu6U5sXd/CiYU8bYLZc8CYtQxR7lD9jbr26rJEYov8lrN4
	I252pE2rhFeRvk12ImcLpd5HhI17s0LNahGncsgikNPr93JmR0metiw/dq+MpnihaZu62wMHTNZo5
	4uu6Fq6KIKCapehpZ7tIFI4vDvDEJw4iRGz5kxVumqRlii9ifGcm5ZFIR37lbY1fIRNeKCGt/27mq
	7ALQkO6bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEwL-0001hP-Ck; Mon, 09 Dec 2019 09:02:49 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEve-0001Kj-4M
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:02:07 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 96AA423061;
 Mon,  9 Dec 2019 10:02:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1575882122;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=A+S+3RFjVcWK0eGQU/wCN8y+0aJTyPpQt2Yx6PrB4a0=;
 b=BmOe7vHMwSZ3b0Nh7ICW9Ztz0DnvAGQAwNpiPP7/0aSs0/MvLB0Qc7s5OA6prXbQn7MaPZ
 RO0oTQ9WohcxvPwAF/1Hc/MDA8q1Kn2dGy4mCMGB/3oz4bxbMfwhoRsTni+57+BqUwvwd1
 EcZgmdH89vEgBYG4X/gTZWwbMh2ig8Q=
MIME-Version: 1.0
Date: Mon, 09 Dec 2019 10:02:02 +0100
From: Michael Walle <michael@walle.cc>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] arm64: dts: ls1028a: fix reboot node
In-Reply-To: <20191209034722.GZ3365@dragon>
References: <20191123000709.13162-1-michael@walle.cc>
 <20191209034722.GZ3365@dragon>
Message-ID: <67346b48fa7e236ea31e3ecb1a108f28@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.8
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 96AA423061
X-Spamd-Result: default: False [1.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[7]; NEURAL_HAM(-0.00)[-0.679];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_MATCH_FROM(0.00)[];
 SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_010206_346130_40415A92 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2019-12-09 04:47, schrieb Shawn Guo:
> On Sat, Nov 23, 2019 at 01:07:09AM +0100, Michael Walle wrote:
>> The reboot register isn't located inside the DCFG controller, but in 
>> its
>> own RST controller. Fix it.
>> 
>> Signed-off-by: Michael Walle <michael@walle.cc>
>> ---
>>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>> 
>> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi 
>> b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
>> index 72b9a75976a1..dc75534a4754 100644
>> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
>> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
>> @@ -102,7 +102,7 @@
>> 
>>  	reboot {
>>  		compatible ="syscon-reboot";
>> -		regmap = <&dcfg>;
>> +		regmap = <&rst>;
>>  		offset = <0xb0>;
>>  		mask = <0x02>;
>>  	};
>> @@ -161,6 +161,12 @@
>>  			big-endian;
>>  		};
>> 
>> +		rst: syscon@1e60000 {
>> +			compatible = "fsl,ls1028a-rst", "syscon";
> 
> Compatible "fsl,ls1028a-rst" seems undocumented?

it is the same with fsl,ls1028a-scfg and fsl,ls1028a-dcfg. So maybe I 
should just drop the "fsl,ls1028a-rst". What do you think?

-michael

> 
> Shawn
> 
>> +			reg = <0x0 0x1e60000 0x0 0x10000>;
>> +			little-endian;
>> +		};
>> +
>>  		scfg: syscon@1fc0000 {
>>  			compatible = "fsl,ls1028a-scfg", "syscon";
>>  			reg = <0x0 0x1fc0000 0x0 0x10000>;
>> --
>> 2.20.1
>> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
