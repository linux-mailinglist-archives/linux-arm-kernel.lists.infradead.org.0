Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D578CB865
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+xHAwjaii4DvSVIlm0uYfo2keSr/WOWNZffnEbueUY=; b=RNteWHyB1ZGfSX
	PHD54TpW85D0fx0knvh6wthPj1z5dLKBd9d0MZTwVvgaPGY7UF5gVbWKb40X/ZhrldnXXw7Rg0l2E
	JmWt5pecbEW1Jq8fe9LwjbFNpmevAAVbutxqP2PxHlCcFHcJzpdEFdd8Cd56HOOrPIGi87/ZI3PVG
	h7f427KNXnXRm3nWrDbtIFFMaumhO2xMvsHOdx4AqXODXtq+yUVn4IYXMMUtd9C6zkNeCoJmiyTvY
	B5kWJAtWewKxxGKADABXAr/VDtYEMJiQj3GxJQUkr+z1Yj50OZ3od/Nr+bmHYB/W6GtwA4POILb8J
	frfrQw5EkrUpxB+kWIBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKvg-0008Lw-GQ; Fri, 04 Oct 2019 10:35:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKvX-00085z-BM
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:35:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5697515BE;
 Fri,  4 Oct 2019 03:35:07 -0700 (PDT)
Received: from [10.1.34.132] (unknown [10.1.34.132])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1850B3F706;
 Fri,  4 Oct 2019 03:35:05 -0700 (PDT)
Subject: Re: [PATCH] ARM: NOMMU: Fix exc_ret for XIP
To: afzal mohammed <afzal.mohd.ma@gmail.com>, linux@armlinux.org.uk
References: <1570102888-13426-1-git-send-email-vladimir.murzin@arm.com>
 <20191004005616.GA7046@afzalpc>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <8b9cdb77-9215-a494-e1d7-46fba75c069d@arm.com>
Date: Fri, 4 Oct 2019 11:35:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191004005616.GA7046@afzalpc>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_033511_431529_7165885F 
X-CRM114-Status: GOOD (  11.68  )
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
Cc: sza@esh.hu, linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/4/19 1:56 AM, afzal mohammed wrote:
> On Thu, Oct 03, 2019 at 12:41:28PM +0100, Vladimir Murzin wrote:
> 
>> It was reported that 72cd4064fcca "NOMMU: Toggle only bits in
>> EXC_RETURN we are really care of" breaks NOMMU+XIP combination.
>> It happens because saved EXC_RETURN gets overwritten when data
>> section is relocated.
>>
>> The fix is to propagate EXC_RETURN via register and let relocation
>> code to commit that value into memory.
>>
>> Fixes: 72cd4064fcca ("ARM: 8830/1: NOMMU: Toggle only bits in EXC_RETURN we are really care of")
> 
> Thanks Vladimir, cc stable as well ?

I believe they they watch "Fixes" tag ;)

Cheers
Vladimir

> 
> Regards
> afzal
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
