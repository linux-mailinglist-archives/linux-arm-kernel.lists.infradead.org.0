Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161B4116875
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 09:42:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sEDVTQ8n0sYXJ+aJcSnHdAxwQdyJT66yIMXxcAXkEac=; b=qyyAnogweubqKsrDPhdUn8yO0
	c/yN9YyeTTP8XGwHRmBllmOmMkbP4ZUH+Z6sRdXcO83PSGNr0A8M3qDh3XWK6j64G5M3COGkY+NbB
	l9s1RE+ntbnCFPO5g/IrjUeng5cyns4eDKHrSKWbNdZIFQia7TPYOoa2xenwLSbEZBDyK+nYvWXmF
	P654sHOgsTzXzFhik/fvfmhQoHVQ1b6SLJW/ecxtc8E21ZxzJ4J69MYWE/w3F629jZdp2seRo/Lf/
	xi7jPfAyMrhyIloHS3ggT+TS7SuVuxmt/GuAEtzypA6fU7P/KbeoCsIv1b0KscIGAH/pGHmpHey4i
	nkE9dlVwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEcS-0001bE-Sj; Mon, 09 Dec 2019 08:42:16 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEcJ-0001a9-UG
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 08:42:10 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 66B9D23061;
 Mon,  9 Dec 2019 09:41:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1575880918;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4lmBHexH2u1zCGxgB5xX8u8yHRjYzvB2lEnUX5hi7Qc=;
 b=BUmLXXbBGj9PZyoO7eIRIf3tzs+ZY5q5Kym/nF4EBsMBF7AKkwPobKT0rZby/SmCIlzJVd
 sUpmwh8pfLUukm9Nt4zmdstMFUPEHJYj1S6S1Pte4oS4lLoGSVKnX1lQtXhK7mpwgjyydb
 uHHPGqCKhcKQaIle3S9m0b3cuDm2Yno=
MIME-Version: 1.0
Date: Mon, 09 Dec 2019 09:41:54 +0100
From: Michael Walle <michael@walle.cc>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 1/4] arm64: dts: ls1028a: fix typo in TMU calibration data
In-Reply-To: <20191209062436.GB3365@dragon>
References: <20191123201317.25861-1-michael@walle.cc>
 <20191123201317.25861-2-michael@walle.cc> <20191209062436.GB3365@dragon>
Message-ID: <8af33988267ee1fad9cab3bc54b60939@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.8
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 66B9D23061
X-Spamd-Result: default: False [1.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[8]; NEURAL_HAM(-0.00)[-0.664];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_MATCH_FROM(0.00)[];
 SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_004208_135023_D0AF809F 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
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
 Yuantian Tang <andy.tang@nxp.com>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2019-12-09 07:24, schrieb Shawn Guo:
> + Yuantian Tang, who is the author of existing code.
> 
> On Sat, Nov 23, 2019 at 09:13:14PM +0100, Michael Walle wrote:
>> This was tested on a custom board.
> 
> Can you add more info about why this is an error and how it is being
> identified?

sorry. there was a more elaborate commit message. something went wrong 
here.

-michael

> 
> Shawn
> 
>> 
>> Signed-off-by: Michael Walle <michael@walle.cc>
>> ---
>>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi 
>> b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
>> index dc75534a4754..f2e71fd57b20 100644
>> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
>> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
>> @@ -573,7 +573,7 @@
>>  					       0x00010004 0x0000003d
>>  					       0x00010005 0x00000045
>>  					       0x00010006 0x0000004d
>> -					       0x00010007 0x00000045
>> +					       0x00010007 0x00000055
>>  					       0x00010008 0x0000005e
>>  					       0x00010009 0x00000066
>>  					       0x0001000a 0x0000006e
>> --
>> 2.20.1
>> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
