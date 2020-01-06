Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BB4130D46
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 06:49:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/gy/IhspDDCm+sk7XlXZFzlRFFHItmDLqjITtG8KUeY=; b=aOGKCZ5LcaXXOu
	8vDiV7IWnJIDraBsJVWVwN7t+B8P6UmrpQp71pi3AsHEm+F4j0Iw1YHPably5HXypgqfbBuvyONED
	5UQjW5YUXAWmTV+Y7vNwAysRism9OvXfSaVNCN9hhXOp193mnUCtTSUviiL6/4WCKVG0Qq4GpRuK1
	L79YE/MQm4SOdlOOTALIhrp0qugU/ZUbfQgjQVlqcTwnA1fKLJbLuaLE8HVErydJ7vYERmiDsPofb
	9MF5/CcyESeS7XUwVpUpE3vRNuv995P8jXT1JG5J6N1rsfaRMy1v2K+owDVgG9BEijM6GzxKAqPmu
	wNGDhyIRfti0UX0acM5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioLGV-0000dJ-Pq; Mon, 06 Jan 2020 05:49:23 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioLGP-0000cr-46
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 05:49:18 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0065nD1d081324;
 Sun, 5 Jan 2020 23:49:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578289753;
 bh=R3i1Mbg4typ+Pc2UOirvRsZH9pZWmKV1X2eo8bAsA4M=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=oU5zQVfiS9SSdzW4TUNv90U1pdkjLl5x4r5UBkg/hZeHCOLzscNGjt0EOMLcQfr0q
 sjvWMsXzeSu4vvRiMzxvhXDW8GDryZ+TjUwZeCT4X9gA1RaH6P3EG7NE1rKqMP6bNb
 XMETQqYbTs2YjSg2RaLlbLf0ePLYxhs/XtNH2hqM=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0065nDLk106433
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 5 Jan 2020 23:49:13 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Sun, 5 Jan
 2020 23:49:13 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Sun, 5 Jan 2020 23:49:13 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0065nAPa097986;
 Sun, 5 Jan 2020 23:49:11 -0600
Subject: Re: [PATCH v5 13/14] dt-bindings: phy: Document WIZ (SERDES wrapper)
 bindings
To: Rob Herring <robh@kernel.org>
References: <20191216095712.13266-14-kishon@ti.com>
 <20200102095631.1165-1-kishon@ti.com> <20200103223421.GA9017@bogus>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <769f6bdb-cc39-06fb-f7a3-3a6831d80f2d@ti.com>
Date: Mon, 6 Jan 2020 11:21:16 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20200103223421.GA9017@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_214917_205356_5B72B157 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jyri Sarha <jsarha@ti.com>, Swapnil Kashinath Jakhade <sjakhade@cadence.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/01/20 4:04 AM, Rob Herring wrote:
> On Thu, 2 Jan 2020 15:26:31 +0530, Kishon Vijay Abraham I wrote:
>> Add DT binding documentation for WIZ (SERDES wrapper). WIZ is *NOT* a
>> PHY but a wrapper used to configure some of the input signals to the
>> SERDES. It is used with both Sierra(16G) and Torrent(10G) serdes.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> [jsarha@ti.com: Add separate compatible for Sierra(16G) and Torrent(10G)
>>  SERDES]
>> Signed-off-by: Jyri Sarha <jsarha@ti.com>
>> ---
>> Changes from v4:
>> *) Fixed the indentation as suggested by Rob v4
>>
>>  .../bindings/phy/ti,phy-j721e-wiz.yaml        | 204 ++++++++++++++++++
>>  1 file changed, 204 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
>>
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Thank you Rob!

-Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
