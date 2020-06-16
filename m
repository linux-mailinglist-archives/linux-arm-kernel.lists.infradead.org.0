Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7511FACBE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kte8VPT/nmCuqhIN3LTlGq4/Tg63Z3BVQf/kFpjaCwU=; b=CUL7ynMvfmwpdsZI3YDntQbpd
	C1To4UYMTrawUmDZSPG/Wi3JUuw5JJuzK5TzjtEz7qi54n7vQRPkkGu9C4EGJzBbHZCibHckuRC1M
	4Nx1JMSL0sM3fr1mtQNVxwLPEOzyEK1feTAARem17lLoF/XkvIeWptv4RdyB9qerFlWwEY/WMDJAu
	Qw0gUBMSNawI6WqKv9oLarJyseN3aAlLeTfQ2DwGiJQ1WLmplwaULnNxk0x86CRSvI/XrMOGveGqW
	6zHtCdEb8whzGZ3IMTXm6/JMQ4GNLRd8sDMvzKHd9LKJYFuUv9XSZKPO/gxgNez3ligxX/xiJPmpW
	vENLsZfjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl81u-0002Ea-HP; Tue, 16 Jun 2020 09:37:18 +0000
Received: from out30-44.freemail.mail.aliyun.com ([115.124.30.44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl80k-0001Z8-KV
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:36:10 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R191e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04407;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=19; SR=0;
 TI=SMTPD_---0U.m0p4p_1592300158; 
Received: from 30.27.116.240(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0U.m0p4p_1592300158) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 16 Jun 2020 17:35:59 +0800
Subject: Re: [PATCH v3 0/8] crpyto: introduce OSCCA certificate and SM2
 asymmetric algorithm
To: herbert@gondor.apana.org.au, davem@davemloft.net, dhowells@redhat.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com, jmorris@namei.org,
 serge@hallyn.com, nramas@linux.microsoft.com, tusharsu@linux.microsoft.com,
 zohar@linux.ibm.com, gilad@benyossef.com, pvanleeuwen@rambus.com,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 keyrings@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-security-module@vger.kernel.org,
 zhang.jia@linux.alibaba.com
References: <20200609134855.21431-1-tianjia.zhang@linux.alibaba.com>
 <20200609205837.osganry2tyzwvanz@altlinux.org>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <254bf52e-eeb8-b615-be2a-d5cba976b63a@linux.alibaba.com>
Date: Tue, 16 Jun 2020 17:35:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200609205837.osganry2tyzwvanz@altlinux.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_023606_881582_3C9A93E8 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/6/10 4:58, Vitaly Chikunov wrote:
> Tianjia,
> 
> On Tue, Jun 09, 2020 at 09:48:47PM +0800, Tianjia Zhang wrote:
>> Hello all,
>>
>> This new module implement the OSCCA certificate and SM2 public key
>> algorithm. It was published by State Encryption Management Bureau, China.
>> List of specifications for OSCCA certificate and SM2 elliptic curve
>> public key cryptography:
>>
>> * GM/T 0003.1-2012
>> * GM/T 0003.2-2012
>> * GM/T 0003.3-2012
>> * GM/T 0003.4-2012
>> * GM/T 0003.5-2012
>> * GM/T 0015-2012
>> * GM/T 0009-2012
>>
>> IETF: https://tools.ietf.org/html/draft-shen-sm2-ecdsa-02
>> oscca: http://www.oscca.gov.cn/sca/xxgk/2010-12/17/content_1002386.shtml
>> scctc: http://www.gmbz.org.cn/main/bzlb.html
>>
>> These patchs add the OID object identifier defined by OSCCA. The
>> x509 certificate supports sm2-with-sm3 type certificate parsing
>> and verification.
>>
>> The sm2 algorithm is based on libgcrypt's mpi implementation, and has
>> made some additions to the kernel's original mpi library, and added the
>> implementation of ec to better support elliptic curve-like algorithms.
>>
>> sm2 has good support in both openssl and gnupg projects, and sm3 and sm4
>> of the OSCCA algorithm family have also been implemented in the kernel.
>>
>> Among them, sm3 and sm4 have been well implemented in the kernel.
>> This group of patches has newly introduced sm2. In order to implement
>> sm2 more perfectly, I expanded the mpi library and introduced the
>> ec implementation of the mpi library as the basic algorithm. Compared
>> to the kernel's crypto/ecc.c, the implementation of mpi/ec.c is more
>> complete and elegant, sm2 is implemented based on these algorithms.
> 
> Does it use constant-time algorithms?
> 
> Thanks,
> 

Sorry for not responding in time.
This algorithm is constant-time algorithms, and this logic is 
implemented in ec_mul_point().
Will you consider implementing ecrdsa based on the mpi ec algorithm in 
the future?

Thanks and best,
Tianjia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
