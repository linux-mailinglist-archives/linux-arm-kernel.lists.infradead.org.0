Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EA5DF467
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 19:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PTiEvxiRUeEHj2JZHZMkx9f8iWQYSrNgoE+OVJkDyQg=; b=W7bqEate+qMKa4gg99Wp16kk9
	Tak/DuQXZ9yPKIVz3wxbXuuqUsSE01ysR0bkdIw/sT2zaY0i8JHjCIvJfXRl9DE5kRYn/OPhWRq9U
	0yml9ZEqgmR0QQGZLOH9OeAIqmNb78RJFelc6Tt2K5IuNUnCfy4cW8V02LYcEZYk1sF4ptrrHFbwo
	m7Gjapw9TY/Vv8QdWLfgJO19PNttl6dJPG6hqbQn4r5nXPPFhwT6u46QPiIyO8v2YeLmmiX5MobpN
	qlLHdYEfpmsfkqxKNNYZi6UtsScydVSFy8yoc44KHc4cW0R1rNeczhy8B1DNeOjfthKE7gk0cnYIR
	qAlYWlyRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMbe1-0003QA-LW; Mon, 21 Oct 2019 17:39:01 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMbdl-0003Of-Up; Mon, 21 Oct 2019 17:38:47 +0000
Received: from [10.137.104.46] (unknown [131.107.174.174])
 by linux.microsoft.com (Postfix) with ESMTPSA id AE02B20106BE;
 Mon, 21 Oct 2019 10:38:44 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com AE02B20106BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1571679524;
 bh=OppP3iKDSw2FPx3G6reM8oMns790vjDmP2JsXIZRv10=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=GwxpzdMx19YB+EITwNb0/yASP6lZVpv7uOVBwfLbkTsMI8lKaRMHq8T3aqp94ZyfQ
 1pOpEt6kBoJlE5o+iN+wepjET/nW7/1AwItQl9J0HrOBsfGul2zsQYl2peg2/EVmJi
 f0QCt6DBCuq00I5V+U+IszHLzNa7Vt1yJ5pq+qy4=
Subject: Re: [PATCH V4 0/2] Add support for arm64 to carry ima measurement
To: Pavel Tatashin <pasha.tatashin@soleen.com>,
 James Morse <james.morse@arm.com>
References: <20191011003600.22090-1-prsriva@linux.microsoft.com>
 <87d92514-e5e4-a79f-467f-f24a4ed279b6@arm.com>
 <b35b239c-990c-0d5b-0298-8f9e35064e2b@linux.microsoft.com>
 <0053eb68-0905-4679-c97a-00c5cb6f1abb@arm.com>
 <CA+CK2bBVcE91YbJx1f_BkNqbD03wGLNtyane7PjCnEu8i_cH2Q@mail.gmail.com>
From: prsriva <prsriva@linux.microsoft.com>
Message-ID: <11036cd6-2977-5f78-7fe7-1085ba31f005@linux.microsoft.com>
Date: Mon, 21 Oct 2019 10:38:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CA+CK2bBVcE91YbJx1f_BkNqbD03wGLNtyane7PjCnEu8i_cH2Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_103846_040532_139C1A1C 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -15.6 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, jean-philippe@linaro.org,
 arnd@arndb.de, Ard Biesheuvel <ard.biesheuvel@linaro.org>, sboyd@kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, takahiro.akashi@linaro.org,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, zohar@linux.ibm.com,
 Masahiro Yamada <yamada.masahiro@socionext.com>, duwe@lst.de,
 allison@lohutok.net, linux-integrity@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, bauerman@linux.ibm.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 10/15/19 11:47 AM, Pavel Tatashin wrote:
>> I think the UEFI persistent-memory-reservations thing is a better fit for this [0][1].
> 
> Hi James,
> 
> Thank you for your thought. As I understand you propose the to use the
> existing method as such:
> 1. Use the existing kexec ABI to pass reservation from kernel to
> kernel using EFI the same as is done for GICv3 tables.
> 2. Allow this memory to be reservable only during first Linux boot via
> EFI memory reserve
> 3. Allow to have this memory pre-reserved by firmware or to be
> embedded into device tree.
> 
> A question I have is how to tell that a reserved region is reserved
> for IMA use. With GICv3 it is done by reading the registers, finding
> the interrupt tables memory, and check that the memory ranges are
> indeed pre-reserved.
> 
> Is there a way to name memory with the current ABI that you think is acceptable?
> 
> Thank you,
> Pasha
> 
Friendly ping.

Thanks,
Prakhar Srivastava


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
