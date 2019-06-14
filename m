Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CE245AE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqDzidijY9P4o4QExNs1iVUZKUfDXZ4LikZTa/ruBiM=; b=d7qdOC0DKEfzjP
	GvbpT8+N65OgShzr6CwZ7UwWKKKHgA05buHF1VYrS/5LKmeIgHeTZFwqV4Chhv84ThwCDrb2OQKPX
	kYjfS+tjKLz0bYSReh3mGyNTG5AaUMTLad4i6hZ9L/A+ol7hVoHuh3NBa/nuH2QZjTcokE8Z59FDI
	uxhjFoq1uk4E3NqsvmPTYNpakwexZCuyZj/J31MsFONHXac2N1ZxBO0ihCfJAw/16xZLWmpSACxNc
	5XgtdDYyqoTI5Opjrp/ej7n2fg35yNYfAyFUSbjFN1o7z1tW5NOGul+fvYaplK+PAwkN7N7Looj9Q
	TLeMIzCED5EpHugvyi3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjl2-0004JX-MW; Fri, 14 Jun 2019 10:48:32 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjkm-0004JA-Sx
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 10:48:18 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5EAlW17075133;
 Fri, 14 Jun 2019 05:47:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560509252;
 bh=VO4FVnd5gxYVdAkdALZM4NQ4Jp0vvZIA2wgd7x8xSUs=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=cQGWrX6FBTtB52WDerOTzhblZJzqENMFCgab3pXXu0aCcVMRLLvEY1IJik3EfWciw
 mzu/3Inn3Jj2XDEyHkbwuF6zomIj//AtSJaz/Ep2KNofCQUQvAVlv1GJLXAkrWLgYm
 Vr90ralp0fpOXHlahbhUZhLPfW3TXkizb0VNSYTA=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5EAlWP7108465
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 14 Jun 2019 05:47:32 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 14
 Jun 2019 05:47:32 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 14 Jun 2019 05:47:32 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5EAlT9V088764;
 Fri, 14 Jun 2019 05:47:30 -0500
Subject: Re: [PATCH] ARM: davinci: da850-evm: call
 regulator_has_full_constraints()
To: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>
References: <20190607090201.5995-1-brgl@bgdev.pl>
 <CACRpkdYjXq-KV=zW=az+02tvjiHVHgUPiC149gNfkWTb4c29PQ@mail.gmail.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <5dcd0189-2283-fb0d-dd7c-4906f4594d69@ti.com>
Date: Fri, 14 Jun 2019 16:17:29 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdYjXq-KV=zW=az+02tvjiHVHgUPiC149gNfkWTb4c29PQ@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_034816_981045_8F3095E1 
X-CRM114-Status: GOOD (  10.05  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 David Lechner <david@lechnology.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/06/19 7:37 PM, Linus Walleij wrote:
> On Fri, Jun 7, 2019 at 11:02 AM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
> 
>> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
>>
>> The BB expander at 0x21 i2c bus 1 fails to probe on da850-evm because
>> the board doesn't set has_full_constraints to true in the regulator
>> API.
>>
>> Call regulator_has_full_constraints() at the end of board registration
>> just like we do in da850-lcdk and da830-evm.
>>
>> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 
> I assume Sekhar will queue this and the LED patch?

Yes, will do. Added this to fixes for v5.2

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
