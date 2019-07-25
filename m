Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BE074A67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 11:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z6JdTovjMa9Eqtg3i78TKH6c6Oji/t/X8jTH1MnsX8k=; b=IjL5xm5TpO2Y4T
	DZBuOgpHHP+XZ7mD6Rczrdue0594YPhgAl/Er39z9Y2tUtdgQfCjHboJejotrGK5fTuyTOaLRyFG5
	XpD3vXFCwZH8aULJD50WCEHkxFX9x6RtNwf45qOB5CHsy3MIrniczpGfrlxq6LKL19ONeizHvjok7
	mHE0mYSU3BERcgmQu27Oll+yj31fvs3+H4yiAC/pcIh2Aku1V3cZI9lLPmzlGm0bhLcytk+ZlTRuU
	sqAtylYUiGuVQS3FJFRfMjWwy2YMVi0o/xwN31E9Xc9pCpsbcFFfE1eHOQzgets+cSYa8qnyksgKU
	1jGIoiANm1swZVtsj8gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqaQL-0007cB-KP; Thu, 25 Jul 2019 09:52:33 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqaPz-0007Ys-Ph
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 09:52:13 +0000
Received: from [10.37.62.160] (unknown [83.137.6.249])
 by kirsty.vergenet.net (Postfix) with ESMTPSA id 40AE925AEC0;
 Thu, 25 Jul 2019 19:52:05 +1000 (AEST)
Date: Thu, 25 Jul 2019 11:51:59 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20190725073530.GA1323@kunai>
References: <20190717125739.21450-1-horms+renesas@verge.net.au>
 <20190717132607.GA1458@kunai> <20190724105203.thykr2staw22gdj3@verge.net.au>
 <20190724210441.GA1559@kunai> <20190725055721.37mcdtpeer3knrxa@verge.net.au>
 <20190725073530.GA1323@kunai>
MIME-Version: 1.0
Subject: Re: [PATCH/RFC repost] arm64: dts: renesas: ebisu,
 draak: Limit EtherAVB to 100Mbps
To: Wolfram Sang <wsa@the-dreams.de>,Simon Horman <horms@verge.net.au>
From: Simon Horman <simon@horms.net>
Message-ID: <D8A18074-5398-4EA0-B11B-93E116317980@horms.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_025212_033660_5A977E75 
X-CRM114-Status: UNSURE (   5.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: linux-renesas-soc@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 25 July 2019 09:35:30 CEST, Wolfram Sang <wsa@the-dreams.de> wrote:
>
>> Sure, how about something like this:
>> 
>>                 /* TX clock internal delay mode is required for
>reliable
>>                  * 1Gbps communication using the KSZ9031RNX phy
>present on
>>                  * the Ebisu board, however, TX clock internal delay
>mode
>>                  * isn't supported on r8a77990.  Thus, limit speed to
>>                  * 100Mbps for reliable communication.
>>                  */
>> 		max-speed = <100>;
>
>Yes, I like it. If DTs have kernel coding style, there should be a
>blank
>'/*' at the beginning.

Thanks, I'll fix that.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
