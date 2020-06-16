Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5235B1FA78D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 06:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hIbtoU07L6RsCs9+Vvpgb4xrCrFbRBZphZ2LO54YAqc=; b=kmn9Ew6e+mGqjUP1BgiAp/FPB
	FsKvpHtaUJTgZsmBioLV+0VPdgs8uTOtX13UYYktG/WxRwJHFeU0S7DgVliE2zsSiaKEiYY2s94wL
	Tz3odYUj425LgEYHycW4yrb0BpvYbq2SWhJqtkafjZrP12L/ssHhUeh1Bge1awOEIiMlOrM1anAQh
	5GkgE7tdYqQAPeZLxUCUOnmIszSUqqvP55iuAN51jDnctDZxFAZbLIu817bcFyJy+bH1HghqDLBwa
	vL0/oW3I30vC39867wbBcShGs6diWUO/n5U+/H6HWGywJvtT9yzr3L1iuGORF9qZApKIW4S62I5bR
	ceM3r/4Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl39R-0005cE-RO; Tue, 16 Jun 2020 04:24:45 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl39J-0005bU-GQ
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 04:24:38 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05G4OLKx098869;
 Mon, 15 Jun 2020 23:24:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592281461;
 bh=ThaAyWLSMOIe+/0BXs13JX/wpbe2DZuw6Fx9tKINAQQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=AzAk8oMPjuu+vWdMhJ8MbC4IDNo7BwtyMxh1q6OqBbTlyuIFm8P8NsQoc5ZooOZry
 72gBaAj6nqZkOzkmk0PSRIIqoZ3I2zQTBkI6qsbVqZX4qfiLJ5jKKU1NWARC+gnjpq
 9NJQe2x9fTbHubJJ7H6mhDXM7Rfe/ThsrFlExWu0=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05G4OLh7005653
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 15 Jun 2020 23:24:21 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 15
 Jun 2020 23:24:20 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 15 Jun 2020 23:24:20 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05G4OIOs119071;
 Mon, 15 Jun 2020 23:24:19 -0500
Subject: Re: [PATCHv4 0/7] crypto: sa2ul support for TI K3 SoCs
To: Eric Biggers <ebiggers@kernel.org>
References: <20200615071452.25141-1-t-kristo@ti.com>
 <20200615182029.GA85413@gmail.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <b8ac78c4-dbd1-aa47-e41c-89624d1960fa@ti.com>
Date: Tue, 16 Jun 2020 07:24:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200615182029.GA85413@gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_212437_640304_B953A60D 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.19.142 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-crypto@vger.kernel.org, j-keerthy@ti.com, herbert@gondor.apana.org.au,
 linux-arm-kernel@lists.infradead.org, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/06/2020 21:20, Eric Biggers wrote:
> On Mon, Jun 15, 2020 at 10:14:45AM +0300, Tero Kristo wrote:
>> Hi,
>>
>> This is basically just a rebase of v2 to 5.8-rc1, and application of
>> Rob's Ack on the dt-binding patch. No other changes.
>>
>> Only driver side + DT binding should be applied via the crypto tree, DTS
>> patches should be queued separately via ARM SoC tree (I can take care of
>> that myself assuming the driver side gets applied.)
>>
>> -Tero
> 
> Does this driver pass all the crypto self-tests, including with
> CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y?

Yes, this passes full self test suite with no failures at all, including 
the extra tests.

> Please include details about testing in your commits.

I believe I mentioned this on the first iteration of the series.

In addition to self tests I've been testing the driver with tcrypt.ko, 
IPSec, and openssl (via cryptodev.)

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
