Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA277D07AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 08:52:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4Svjkj28t19g1BBVENAGToKkBz0vJ/FUBo078Duj/ho=; b=mUlz18XlQ027f2mnf9/0+R+cW
	3h990CPMs3SHgT/FpFlH4egG2bD8ovNw0t09n79AP9tQLQf1YwZ0qJREgDPPHFitMXgsUZYNH/sNG
	+7Eg8+frVyj5i0YORSmg0zKz67ByNeN8BQADTXydwGD9TYcvvHqFWUbpAJ9B2WL3D3MbXF34u0zAv
	ymEB1zVFXuVjXo9KOrkZdA7e+sRQp02eFBIjRpR1934l3S1+h5FIquZ1zHM9dc4vCGFLWmodRxkv+
	gpSmFiL4LmYfsZM8eMLFSM6sUazUj56O+3kqkOwZdT7wjM+nIRIT6v5eECmh0enJ1R/gMB+pVwaLF
	StzH4vNxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI5q8-0002S8-43; Wed, 09 Oct 2019 06:52:52 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI5q1-0002Re-Ey
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 06:52:46 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x996qf77116209;
 Wed, 9 Oct 2019 01:52:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570603961;
 bh=ELz4phqV0IVr4qbxwKXEXSVLL2qzr2qRxeZLJHyS5tA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=hmka772CcFmuERw+ck/csUD1tnEodi65nhVIt9Wk1MybE6PthkIYuwCHfh97PPDpP
 eLotFfTk19YypWiZSL9v4uZ/Mk1X8A81eBz3QDXOP5fpNstHKJtMmTN6EIJ6mataUP
 BlBfMMF0iinPdYcK+2pQmo1paQNTXDMKog0l5o20=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x996qfLC034608;
 Wed, 9 Oct 2019 01:52:41 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 9 Oct
 2019 01:52:37 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 9 Oct 2019 01:52:40 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x996qbmb028779;
 Wed, 9 Oct 2019 01:52:38 -0500
Subject: Re: [PATCHv8 1/9] dt-bindings: omap: add new binding for PRM instances
To: Sebastian Reichel <sre@kernel.org>
References: <20191008125544.20679-1-t-kristo@ti.com>
 <20191008125544.20679-2-t-kristo@ti.com>
 <20191008154655.u34wkbqgmelv3aea@earth.universe>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <115ab938-e025-98fa-3b9e-0b3ced39307d@ti.com>
Date: Wed, 9 Oct 2019 09:52:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191008154655.u34wkbqgmelv3aea@earth.universe>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_235245_586618_5C615CE4 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, tony@atomide.com, p.zabel@pengutronix.de,
 ssantosh@kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/10/2019 18:46, Sebastian Reichel wrote:
> Hi,
> 
> On Tue, Oct 08, 2019 at 03:55:36PM +0300, Tero Kristo wrote:
>> +Example:
>> +
>> +prm_dsp2: prm@1b00 {
>> +	compatible = "ti,omap-prm-inst", "ti,dra7-prm-inst";
> 
> Nit: compatible values are sorted the other way around (most
> specific first).

Hmm right, I would not like to re-post the whole series just for this 
seeing all the acks are in place already.

Santosh, do you want to fix this locally or shall we post a separate 
patch later on to fix this?

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
