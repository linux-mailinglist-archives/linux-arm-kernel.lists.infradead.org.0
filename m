Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9835A321
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 20:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPi0I1HV8RM2+TxILklxXpIj3FA4rEQmwz5Fc34r/Bo=; b=dLETolVlOen8Eo
	VdAGgxthDLwjtRaxPsZXAu5++YIRaeP4R5ktEpq+LtI2pxZFQHzHpf/mNrUPHKwMt6MEqNzw8aME+
	SZia3uE3hc8KyNQRyviEwUSqCzvrhPX+9QUyODbzR23tFBZBExA8pAtfuSYoVZ6m91fW7YnkSI6TZ
	kT0wjfnGhDXfTKRdt1CSS3S6oZL9rZS4SSh51UTkEyb1HfUfJq12u76pIwTbZjug02CB/vEVfRzzo
	txopVJoP9b5UAmHp0HGUbhxeor9cGkp+KiI+IkGLAmrNJOkZ90+Nwg5hAgdM+0/aIrJzVetm4fDeH
	oappfOddlwvi/JP3NoTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvFX-0004VQ-UP; Fri, 28 Jun 2019 18:05:27 +0000
Received: from smtp-fw-9101.amazon.com ([207.171.184.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvFM-0004UH-1z
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 18:05:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1561745116; x=1593281116;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=J+7jeQfzr9Moq8Agn+ISSYlrytYaSGG1qD4Mlh6TYn8=;
 b=D++vtz4JAMblEVNsx0gZOdKwLHEF1GifQiX7YeX0A2hJ0pquXb2olbej
 aywfU4ZelEpVi0QV33h1apFedTnJrVUFjOjYC1rh85DhVMDOIa7i9Tvij
 VSrYe6LHS86rAArIpSl7jMAOr4C2iIvUpVjnMHQDUeomOIz6VbuNJE1ii c=;
X-IronPort-AV: E=Sophos;i="5.62,428,1554768000"; d="scan'208";a="813347880"
Received: from sea3-co-svc-lb6-vlan2.sea.amazon.com (HELO
 email-inbound-relay-2b-baacba05.us-west-2.amazon.com) ([10.47.22.34])
 by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP;
 28 Jun 2019 18:05:13 +0000
Received: from EX13MTAUEB001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2b-baacba05.us-west-2.amazon.com (Postfix) with ESMTPS
 id 72AC2A18E5; Fri, 28 Jun 2019 18:05:12 +0000 (UTC)
Received: from EX13D08UEB004.ant.amazon.com (10.43.60.142) by
 EX13MTAUEB001.ant.amazon.com (10.43.60.96) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 28 Jun 2019 18:05:12 +0000
Received: from EX13D02UWC004.ant.amazon.com (10.43.162.236) by
 EX13D08UEB004.ant.amazon.com (10.43.60.142) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 28 Jun 2019 18:05:11 +0000
Received: from EX13D02UWC004.ant.amazon.com ([10.43.162.236]) by
 EX13D02UWC004.ant.amazon.com ([10.43.162.236]) with mapi id 15.00.1367.000;
 Fri, 28 Jun 2019 18:05:10 +0000
From: "Saidi, Ali" <alisaidi@amazon.com>
To: Will Deacon <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 0/3] Add support for Graviton TRNG
Thread-Topic: [PATCH 0/3] Add support for Graviton TRNG
Thread-Index: AQHVGxR9rewpsnhufE+Qj7iDYwflKaaM+/mAgALbeQCAIVaegA==
Date: Fri, 28 Jun 2019 18:05:10 +0000
Message-ID: <3104F396-094F-454C-8308-BF651FAB99AB@amazon.com>
References: <20190604203100.15050-1-alisaidi@amazon.com>
 <20190605122031.GK15030@fuggles.cambridge.arm.com>
 <7EC45708-38A1-4826-BC82-298EFAAE30B1@amazon.com>
In-Reply-To: <7EC45708-38A1-4826-BC82-298EFAAE30B1@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.161.147]
Content-ID: <9B45E3D979865C468A2C17E957CEA6B4@amazon.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_110516_170265_3FD78C63 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Matt Mackall <mpm@selenic.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Rindjunsky,
 Ron" <ronrindj@amazon.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, "Woodhouse,
 David" <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/7/19, 7:59 AM, " Ali Saidi" <alisaidi@amazon.com> wrote:

    
    
    On 6/5/19, 7:20 AM, "Will Deacon" <will.deacon@arm.com> wrote:
    
        On Tue, Jun 04, 2019 at 08:30:57PM +0000, Ali Saidi wrote:
        > AWS Graviton based systems provide an Arm SMC call in the vendor defined
        > hypervisor region to read random numbers from a HW TRNG and return them to the
        > guest. 
        > 
        > We've observed slower guest boot and especially reboot times due to lack of
        > entropy and providing access to a TRNG is meant to address this. 
        
        Curious, but why this over something like virtio-rng?
        
    This interface allows us to provide the functionality from both EL2 and EL3 and support multiple different types of our instances which we unfortunately can't do with virt-io.
    
Will,

Any additional comments?

Mark,

Do you know when you'll have a chance to rebase arm64/smccc-cleanup?

Thanks,
Ali


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
