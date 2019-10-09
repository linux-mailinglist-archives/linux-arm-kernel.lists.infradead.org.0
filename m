Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8C3D0DFE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 13:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++j0bQB/+YHPrIH7s9RF2Cb3kozquTcwSbgbMTUKUac=; b=E8cM5VzpDaVS5N
	96bZp9mNMxboDBCyJIQGyH1KKYidGPiN6kStRWev3tHkmz5GurHXu+2PfBtTxmhPuFUl0UhQfe1eQ
	gi0O6wG2OoTIfUp6Ue7Dyplq3EzfE05AnVLCYiO7a8FrxekialTVrrWkT20WtJMaEAkkwxgmWxMxY
	HXrwAzAVnreYK9QMGr7V4UGc/iN3I1BSG11tOpNFZgMAvDIzrhYoDtQOXgySN/pwlPqVJutEL9Y8+
	w0CdIZCv4eOuhUS7nvRPm0YtQOUjr/1rnlVI3XDnxZ9Q2IQJD10rmTcMe4/QjM5HjWzdBkjDbHrhT
	e7dtc0ShQlf5nyZzvLyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIAW2-0001KT-DC; Wed, 09 Oct 2019 11:52:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIAVt-0001K1-43
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 11:52:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4A49A28;
 Wed,  9 Oct 2019 04:52:16 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 79E563F703;
 Wed,  9 Oct 2019 04:52:15 -0700 (PDT)
Subject: Re: [PATCH v8 01/12] kselftest: arm64: extend toplevel skeleton
 Makefile
To: Dave Martin <Dave.Martin@arm.com>
References: <20191009082611.9441-1-cristian.marussi@arm.com>
 <20191009082611.9441-2-cristian.marussi@arm.com>
 <20191009111513.GA27757@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <9acb0be8-512f-5e32-8dc7-1dd9534dc3fb@arm.com>
Date: Wed, 9 Oct 2019 12:52:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191009111513.GA27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_045217_205233_9AAD1E46 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/10/2019 12:15, Dave Martin wrote:
> On Wed, Oct 09, 2019 at 09:26:00AM +0100, Cristian Marussi wrote:
>> Modify KSFT arm64 toplevel Makefile to maintain arm64 kselftests organized
>> by subsystem, keeping them into distinct subdirectories under arm64 custom
>> KSFT directory: tools/testing/selftests/arm64/
>>
>> Add to such toplevel Makefile a mechanism to guess the effective location
>> of Kernel headers as installed by KSFT framework.
>>
>> Fit existing arm64 tags kselftest into this new schema moving them into
>> their own subdirectory (arm64/tags).
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>> Based on:
>> commit 9ce1263033cd ("selftests, arm64: add a selftest for passing
>> 		     tagged pointers to kernel")
>> ---
>> v6 --> v7
>> - renamed SUBTARGETS to ARM64_SUBTARGETS to avoid name clashes
>> - rebased on v5.4-rc2 accounting for further new patches on top of commit 9ce1263033cd
>> v5 --> v6
>> - using realpath to avoid passing down relative paths
>> - fix commit msg & Copyright
>> - removed unneded Makefile export
>> - added SUBTARGETS specification, to allow building specific only some
>>   arm64 test subsystems
>> v4 --> v5
>> - rebased on arm64/for-next/core
>> - merged this patch with KSFT arm64 tags patch, while moving the latter
>>   into its own subdir
>> - moved kernel header includes search mechanism from KSFT arm64
>>   SIGNAL Makefile
>> - export proper top_srcdir ENV for lib.mk
>> v3 --> v4
>> - comment reword
>> - simplified documentation in README
>> - dropped README about standalone
>> ---
>>  tools/testing/selftests/Makefile              |  1 +
>>  tools/testing/selftests/arm64/Makefile        | 64 +++++++++++++++++--
>>  tools/testing/selftests/arm64/README          | 25 ++++++++
>>  tools/testing/selftests/arm64/tags/Makefile   |  7 ++
>>  .../arm64/{ => tags}/run_tags_test.sh         |  0
>>  .../selftests/arm64/{ => tags}/tags_test.c    |  0
>>  6 files changed, 92 insertions(+), 5 deletions(-)
>>  create mode 100644 tools/testing/selftests/arm64/README
>>  create mode 100644 tools/testing/selftests/arm64/tags/Makefile
>>  rename tools/testing/selftests/arm64/{ => tags}/run_tags_test.sh (100%)
>>  rename tools/testing/selftests/arm64/{ => tags}/tags_test.c (100%)
> 
> Do you need to move the tags_test line in arm64/.gitignore to
> arm64/tags/.gitignore?
> 

Damn...I've not spotted that since it works anyway. I'll fix in v9.

Cristian

> With that change, FWIW:
> 
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
> 
> (i.e., this looks reasonable, but I'm not a kselftest expert...)
> 
> [...]
> 
> Cheers
> ---Dave
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
