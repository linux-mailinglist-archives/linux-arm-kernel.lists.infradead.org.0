Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E714EE8739
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:34:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n6wY9wtaoDeVl9UdsxnhkK2aJ5vHNCZcCOHWv4sJAaY=; b=LQM5tUN7rZyfVKOhDvhNk2hQR
	ot/dc99aWUbbEzk4XqJoYXp2S5X391cADqsbQZaB1UJKnNjoOnI7rmpE4WMhLArHate917qEN4qNG
	UlkCObEXXwd0kB5sFIss8izuBMzkxdiz41CSUMcVfPvAnKhlYEXGqltdd5doXIXcQ63HA/0O0Wn6s
	DaJAuE13FH5mzfoJ+x17MbtJ33BT3B2a6cXDuwlh2myQ7uKnwbSOO0P09fjAIEExR/7GGBwWMShQM
	SndNXJVQDCZgHDN3anivjB2QSZP5iVBlcEN+HFnCpcAyvDO/pQoHb5D5r3XACV+sRkQ/u5LbYQg8d
	TbWZNGppw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPli-0004CS-8w; Tue, 29 Oct 2019 11:34:34 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPlX-0004A3-Mo
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:34:25 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9TBYE6Y026265;
 Tue, 29 Oct 2019 06:34:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572348854;
 bh=RDinzMR4Ria3R4mBnaWd0juZSdCsUMS3GbDYK5lHLNQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=OF+PtD0A6jilz+Gk9mhlGVOIboLizXeeBqNcNLDQCZ55L8oFwn1XcvqCAKNDeOzkY
 uriNa0eR/uDjp2xnFK46kFctySB8VS93SwUE1jQRA9Sw5fRvkmmQkVshsSWUFjHFJu
 MhO6Gnk4Djkwy/ZGrk0TmWs9HBaGizyoBOIDBC10=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9TBYE5p093662
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 29 Oct 2019 06:34:14 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 29
 Oct 2019 06:34:01 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 29 Oct 2019 06:34:01 -0500
Received: from [192.168.2.14] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9TBYCoW061133;
 Tue, 29 Oct 2019 06:34:12 -0500
Subject: Re: [PATCH 0/2] [PATCH 0/2] arm64: dts: ti: k3-j721e: Add USB ports
To: <t-kristo@ti.com>, <nm@ti.com>
References: <20191028093730.23094-1-rogerq@ti.com>
From: Roger Quadros <rogerq@ti.com>
Message-ID: <d684ada8-5a98-b02e-be0b-c133e2f44b1f@ti.com>
Date: Tue, 29 Oct 2019 13:34:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191028093730.23094-1-rogerq@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_043423_830238_D3613233 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tero,

On 28/10/2019 11:37, Roger Quadros wrote:
> Hi,
> 
> This series enables USB 2.0 support on j721e-common-proc-board.
> 
> The USB0 is available as a type-C port. Although it is super-speed
> capable, we limit it to high-speed for now till SERDES PHY
> support is added.
> 
> USB1 is routed via on-board USB2.0 hub to 2 type-A ports. USB1
> is used as high-speed host.
> 
> Controller side DT binding is approved [1]. Driver [2] is yet to be
> in USB tree. This series is safe to be picked for -next.

Driver is now in Maintainer's tree.

https://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git/commit/?h=testing/next&id=387c359b84f71ca29c1a9fa24293c65a257f6bf5

> 
> [1] https://lkml.org/lkml/2019/10/25/1036
> [2] https://lkml.org/lkml/2019/10/24/371
> 
> Series is based on top of Tero's ti-k3-next branch.
> 
> cheers,
> -roger
> 
> Roger Quadros (2):
>    arm64: dts: ti: k3-j721e-main: add USB controller nodes
>    arm64: dts: ti: k3-j721e-common-proc-board: Add USB ports
> 
>   .../dts/ti/k3-j721e-common-proc-board.dts     | 35 +++++++++++
>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 60 +++++++++++++++++++
>   arch/arm64/boot/dts/ti/k3-j721e.dtsi          |  2 +
>   3 files changed, 97 insertions(+)
> 

-- 
cheers,
-roger
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
