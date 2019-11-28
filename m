Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2528910C6BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 11:31:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YoqZ3Rr4qaz2QzlXi6KrtvE2Y6PZ1VfvNoR8sRr4i/w=; b=ihc4uHivnxghB3
	kXOp9vRyHpn/vGVnNd+Bchj4zh9aRd53BLOZ7BQ9mxF7+2Djs0gZQpxP6Lg6mqZ25gWN8X0zds4ZV
	SlxwSa3WaZ3TBBtpA6loYYmTi0JtO9Smx4qUioPbckDGg2RPhWeSj2mrVOgdkabaG5id3DFftJojQ
	8Ky9o10HLr1v7UlGRZ+5txWxBr+O36tEbKflY4NCUJv7IXfnULB+3CnjIEutt1NUG/ZTomTrF3eD9
	EovvU8V4r3Jy3JtDsAws1RsnxzYpj2HO3IHhj0nYB9Fqci9OKsp4xhZ23MdPE/uCUGKl/lhJM5vOF
	VIgJGNPQVS25dcKN9UJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaH5U-0007yq-5F; Thu, 28 Nov 2019 10:31:52 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaH5G-0007ws-5V
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 10:31:39 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 7AFA22056B;
 Thu, 28 Nov 2019 11:31:35 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 6BCB2201B5;
 Thu, 28 Nov 2019 11:31:35 +0100 (CET)
Subject: Re: [RFC PATCH 1/1] arm64: dts: added basic DTS for qmx8 congatec
 board
To: Oliver Graute <oliver.graute@gmail.com>
References: <20191029122026.14208-1-oliver.graute@kococonnector.com>
 <20191029122026.14208-2-oliver.graute@kococonnector.com>
 <9b865fc1-3c7a-f1bd-8ef2-65088d64b314@free.fr>
 <20191128095514.GA2460@optiplex>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <ed8b6139-a67d-d5d3-c65b-260d020c95e0@free.fr>
Date: Thu, 28 Nov 2019 11:31:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191128095514.GA2460@optiplex>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Nov 28 11:31:35 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_023138_354036_D08E1B18 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: DT <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/11/2019 10:55, Oliver Graute wrote:

> On 28/11/19, Marc Gonzalez wrote:
> 
>> On 29/10/2019 13:23, Oliver Graute wrote:
>>
>>> +&fec1 {
>>> +	pinctrl-names = "default";
>>> +	pinctrl-0 = <&pinctrl_fec1>;
>>> +	phy-mode = "rgmii";
>>> +	phy-handle = <&ethphy0>;
>>> +	fsl,magic-packet;
>>> +	fsl,rgmii_txc_dly;
>>> +	fsl,rgmii_rxc_dly;
>>> +	status = "okay";
>>
>> The two fsl,rgmii* properties do not exist in mainline.
>> I suppose there were copied from downstream?
> 
> you are right, I'll remove them.

You should first check what the downstream driver does for them.
And check if there is an equivalent action in mainline.
These delays tend to be required for the PHY to work at all.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
