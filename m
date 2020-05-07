Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD531C9662
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:23:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EM4JO8/6cQPimg7h2EevDdXph1rF9VdyF7dEAHbdLLY=; b=F5xA2wyx+0JKbP
	pXqiofUx9Zip3BT+S7SqghN4F9lSYVtI+yg9W3mAhJuAyZVP/ZRJb4YHXf1Zf63ChhxaBO8JhMapO
	1bo2i7FPpa68SzwuajSbRF32UHW66bcU2znmzGu0MXzHuPfwO3nEjAEjY1yYCuH+kvq0DsA/vMM+p
	tw3eAYAg2hFhW0TP+Qoec57AbWdVni3EMYf42vSb5mbYQECPUDaeLlZRtVsoz9ra5unmgUwhSajKZ
	bgnHlMeBDzg+32NSbRVqJM2SyLo/rnh5D32HooEpc09rfBqKpn4KssheUikKfjBGfm/5MO1SUOPiL
	GSoBLYptgk8rczEULKWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjIv-0008TI-Um; Thu, 07 May 2020 16:23:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjI6-0007ka-Cr; Thu, 07 May 2020 16:22:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0612C101E;
 Thu,  7 May 2020 09:22:29 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 780213F71F;
 Thu,  7 May 2020 09:22:21 -0700 (PDT)
Subject: Re: [PATCH v9 12/18] arm64: kexec: arm64_relocate_new_kernel don't
 use x0 as temp
To: Pavel Tatashin <pasha.tatashin@soleen.com>, sashal@kernel.org
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
 <20200326032420.27220-13-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <04f091b1-692d-c204-8a65-9048fb8b5a5e@arm.com>
Date: Thu, 7 May 2020 17:22:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200326032420.27220-13-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_092230_817825_BAB166C8 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, vladimir.murzin@arm.com, corbet@lwn.net,
 catalin.marinas@arm.com, bhsharma@redhat.com, steve.capper@arm.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, jmorris@namei.org,
 linux-mm@kvack.org, rfontana@redhat.com, ebiederm@xmission.com, maz@kernel.org,
 matthias.bgg@gmail.com, tglx@linutronix.de, will@kernel.org,
 selindag@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 26/03/2020 03:24, Pavel Tatashin wrote:
> x0 will contain the only argument to arm64_relocate_new_kernel; don't
> use it as a temp. Reassigned registers to free-up x0.

The missing bit of motivation is _why_ you need x0 keep its value until the end of this code.

With that covered,
Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
