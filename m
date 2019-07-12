Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C87367672
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 00:13:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7ZjrLssW2nG+Q9cqeDjTMv2SHbM3Wi+0EC9FecHDXtg=; b=tEV4ks4X8W0JgBHHhS1XCcuHk
	O3tCuMrNfyT9u8tqQ1BOE87jwIsZ8DAiYmjob1310gp3TbHAyu92zHs7Vr0bdYmvUSx/7GeEWANDs
	ZTOGx57T3ygVzEKhdDd0zqy6a4Yw6XGfUbq3Bhi/PLEdXV4GK0q402IXhmJo1rsSXsuKn7+mdqIVC
	eNy+CZDFtWlSA58RDB1mDRez1gSTJnSvHUhYebMpmf236y8PsvHVfe310vO1eGnwFitF34RVlJW0s
	Zzsi25fYbSuK2U1sLol7w5J6KFWvobEWrvut/9a24gI1fizlqd3O1klOfhyp4xrWxKLMDGT9xxMLC
	tZdhAQH1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm3mz-0000LK-Fo; Fri, 12 Jul 2019 22:13:13 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm3ml-0000L1-C3
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 22:13:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562969577;
 bh=fq3Eu2ziIA671I7SsmDCF6l1LQRFKArhSLSl56LX2rE=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=UJc3FxX1XSrR45n05Qa8Vg3nDUXWfFVUClz7Doi8BXhDZikqY12aDHGA27ee2JdTs
 ReMcKafCavTxrVZyYcOkGbQy6A9/4utCpWHxPCnBVedhFQI+owXug2HY64CVrIGwPC
 Hafu8vzqlrrA/kgIYRBS7PrUbwrJybHaZ7m34KaU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.0.18] ([82.19.195.159]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MCsQ4-1hdIGB1sga-008olC; Sat, 13
 Jul 2019 00:07:39 +0200
Subject: Re: Asus C101P Chromeboot fails to boot with Linux 5.2
From: Alex Dewar <alex.dewar@gmx.co.uk>
To: Emil Renner Berthing <kernel@esmil.dk>
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <CANBLGcyO5wAHgSVjYFB+hcp+SzaKY9d0QJm-hxqnSYbZ4Yv97g@mail.gmail.com>
 <862e98f3-8a89-a05e-1e85-e6f6004da32b@gmx.co.uk>
Message-ID: <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
Date: Fri, 12 Jul 2019 23:07:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <862e98f3-8a89-a05e-1e85-e6f6004da32b@gmx.co.uk>
Content-Language: en-US
X-Provags-ID: V03:K1:wM6J7pCtfh2xM9icqBRa8aCSzjrU4kNCO9rWjhjgxXlj1P34JwA
 s2sLTX6BkjnBIeUDAYpI0G7I9TSJfUy6Mc2HEGBP+Z8WQUoFiRsGlBqtVHJtbX/7AeCL3h+
 3Nrn1KH6hcjKZbTsmxpNK5FLggvEq2ejKQCmxu9gB4+QcabipEirpdj9LpDrZ6yrqt5gms+
 uLy9VPtyC8f9GRW8+GLig==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XqgLY5YoE7Y=:3zgya4ZaOpT3+qSf+dNEMm
 0UZVXMUwpC0oGCy78+tlLfyacvXlUNhbD3TBHVBWPnDRfScsbGPUllLJrN0lU2A/bRD7La94s
 Bw+FAekxPY7x6GUNNz+pANVsmhETOQVpQFEdFZBur+2xPW9WDnx1EY7FT6jYklKROtAF46/ks
 FHggDpUDzkxFfzXJ5G6T4L4xupmyamzMW+gMQs/jkKTIY1wvxvG+0Ib8mBArpFYH6QaWIWL9W
 4A04fnUJHNGo3OcMnhXHp5z1p718Bz+ElHPDSrK56jluZl+8S3jw4GOv4DPLut1BYGceu/ff6
 Rye8e9d4KExRaDzvDBu2nk6IHbES8Nc58cVdm5K9fT0ApwBp46SXRojsrOXJgmQFHqhfdG4vA
 aDLBP5wGEeuscX+5VRKu8ftj7pNIJflZnFqpN8WCwQRCmb17SG/cUBah81No4mGoKsrNQ+GIh
 nCjxCbMxJbMogAY/CGcEAH6/JndCgG6p6A0wWRnXaPREYmBDfqF7QadvHv8Q+9P+jKzNQBqeM
 XrWsypWc/r72SagDuyHfhPYL8v3RJSl+uH43jULT5xnlyJrLgncvM9tf4KJ/71jFfSOlTSB1a
 Z8i+uuxUaaiIzeYP+jBAvR4lNwTkThAIQXJVKGNIrMEd9LGPVhaK8TAqszataNHAtBQln2gpH
 +3OGQPgT/VD6weO2cYAn5rHaGUy5gmAKAuLMEiF1CjkqrV9uyBtVDj57itleT/pErM+COGzue
 rRCrgbm7M8BK2iee9sHUBFvDeyBjhN6TwhNpdzojK9NiwggEhjTkmtcin1twkfOzjQ7PxJ5qg
 PPUCSZWzEqgiuckx8/zi8Tbive0Ls4/zutawH4FfSDhzzGqdjj6oGYMIkofTaqrQYRPcyGTZb
 7eAbszmrLLoGAKSqEsS/IrhIo/LTppOXc2RCq+AU+KWfwS9YiVRR2u4vZx/hyZlrk5zgB5/+P
 pP3WUEOu4LCLCW6PM0U940Go0Kqdc9r73SyWYTuKoWVTeakcxBvu+CWA9+A8LuMkM2HLrFM7X
 +azqA2ERfnMRtjDlll6Is62y8z9ge/odEIhDr/Rvn8i+EkkcwTtTn8XrBTjYvNjmmPc/OyBze
 f/RiVyvBG5xhkN+2ZNcnIF9jos1lcUV7eRg
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_151259_715193_1D83CD29 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I just built v5.1 and v5.2 from source, without the Arch patches, and
get the same result: 5.1 boots and 5.2 doesn't. I tried adding
ignore_loglevel, but still just get a blinking cursor. So it's
definitely a regression.

I can have a go at bisecting this if it would help? Or is there
something else we could try first?

Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
