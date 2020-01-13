Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5038138F02
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:27:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jLBd8cUl6OyIP1LRkk+zUMkx45PmBbF2RW+RKLN8GZQ=; b=ux740zLoTlnqPzb9e0kPI9LTP
	TAEfriKxgleTXRsPnTgVxkve/HdNRNXaC6plgYkuD2Jl+CCMiCKFVm0kZ3MCBx6uSgiGo6Be8mIBw
	O2jeNU9xz401ovDN/YKZeVkT1Uyw7LYVe+x1EtBRhLEyL8FJuQIg35eYXr3LzfYK6ZAiQUOZwvglr
	zGFqz609KItNaeOq+U8Ti3lJKCVD1TzEwCsv57qK084UmkdsInOtbYLaoOykWEpkkPFIVeEcLkUSz
	0PizIipeLJN/G6hyC7c8sxBe4DL5chCvLV6WP8sRQWPMkGST0oWefNOxgTEHWlmd1Q0SBibbvxMz5
	urYkOODGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwwT-0000BX-C6; Mon, 13 Jan 2020 10:27:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwwI-0000Ab-0S; Mon, 13 Jan 2020 10:27:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6570413D5;
 Mon, 13 Jan 2020 02:27:15 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5AC473F534;
 Mon, 13 Jan 2020 02:27:14 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: add reg property to brcmf sub node
To: Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>
References: <20200110142128.13522-1-jbx6244@gmail.com>
 <CA+z=w3UjX71Nw7W+iiGkQh=UJkPMsEn1phSdp25d--O8QM-ETQ@mail.gmail.com>
 <2116127.mXfZQK7onI@phil>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6159eaa4-4729-0c3d-0967-e855e2652772@arm.com>
Date: Mon, 13 Jan 2020 10:27:12 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <2116127.mXfZQK7onI@phil>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_022718_096899_326CCD8B 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/01/2020 9:26 am, Heiko Stuebner wrote:
> Hi Johan,
> 
> Am Freitag, 10. Januar 2020, 16:40:24 CET schrieb Johan Jonker:
>> Hi,
>>
>> Question for Heiko or rob+dt.
>> Where would should #address-cells and #size-cells go in the dts or to the dtsi.
>> In case they become required in a futhure rockchip-dw-mshc.yaml?
>> ie. Should we patch all XXX rockchip,rk3288-dw-mshc nodes with them?
> 
> I don't think it is a required property for the dw-mmc itself, as only
> in special-cases do you need subnodes there. Like emmc and sd-cards
> are completely probeable without needing further information and
> only the wifi/bt chips _might_ need these.
> 
> So I don't think that this is a property of the controller itself, but te
> connected card - hence should stay in the board file.

Indeed, and in general dtc already warns about those properties being 
present unnecessarily, e.g.:

arch/arm64/boot/dts/rockchip/rk3399.dtsi:1812.27-1847.4: Warning 
(avoid_unnecessary_addr_size): /mipi@ff968000: unnecessary 
#address-cells/#size-cells without "ranges" or child "reg" property

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
