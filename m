Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B900C1D7C34
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4O3D8iCUNYZxcPlEMYykeJfB3JoZVJljdyG+DGD6Xio=; b=gMVvNbNQqhil95
	/+IBinJ3eSHDw+3Dz4fbjifeNo6BbSuFHnNiPG8x5n0lB5DIi45/paixQ+xT+5km0wqCLL/IoSu1w
	aBILtY7HKbzXCtSotJb1YWTAFaIcuP8tvJX93r3+GF6CmVDzzJJK+GrlPECRMwWoTfeDWqdzsOLCz
	cLoxH4cxOcpgdskN/zNpZ7ZRF09WNhHDu0RYXjSsj8CIXSoYB/4gOS6/hJL6rGSRqiXazpx1Vuzfp
	f/rTpvMGdcelg1EAnUvqca6+fEDWq+h1CxtLep0dHCQu3+3gFN9kftYdewGIJYM76L3BEDKbDMwEk
	B71OMIkYpjIXwtdSvuXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahI1-0005mZ-Gv; Mon, 18 May 2020 15:02:49 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahHj-0005f7-Sk
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:02:33 +0000
X-Originating-IP: 84.210.220.251
Received: from [192.168.1.123] (cm-84.210.220.251.getinternet.no
 [84.210.220.251]) (Authenticated sender: fredrik@strupe.net)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 38FBCC000F;
 Mon, 18 May 2020 15:02:27 +0000 (UTC)
Subject: Re: [PING] [PATCH v2] arm: ptrace: Fix mask for thumb breakpoint hook
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20200413173841.29651-1-fredrik@strupe.net>
 <d7381f90-f597-2a9c-4387-5714b41e02e6@strupe.net>
 <20200518141858.GV1551@shell.armlinux.org.uk>
From: Fredrik Strupe <fredrik@strupe.net>
Message-ID: <0afefde9-f121-c88c-2ceb-7c02f7561979@strupe.net>
Date: Mon, 18 May 2020 17:02:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200518141858.GV1551@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_080232_102251_6ED1BF69 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Oleg Nesterov <oleg@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18.05.2020 16:18, Russell King - ARM Linux admin wrote:
> On Mon, May 18, 2020 at 03:12:06PM +0200, Fredrik Strupe wrote:
>> call_undef_hook() in traps.c applies the same instr_mask for both 16-bit
>> and 32-bit thumb instructions. If instr_mask then is only 16 bits wide
>> (0xffff as opposed to 0xffffffff), the first half-word of 32-bit thumb
>> instructions will be masked out. This makes the function match 32-bit
>> thumb instructions where the second half-word is equal to instr_val,
>> regardless of the first half-word.
>>
>> The result in this case is that all undefined 32-bit thumb instructions
>> with the second half-word equal to de01 (udf #1) work as breakpoints
>> and will raise a SIGTRAP instead of a SIGILL, instead of just the one
>> intended 16-bit instruction. An example of such an instruction is
>> eaa0b650, which is unallocated according to Arm ARM and should raise a
>> SIGILL, but instead raises a SIGTRAP.
>
> How can 0xeaa0b650 match 0xde01 when masked with 0xffff ?
>

Sorry, that is a typo; it should say 0xeaa0de01.

For reference, this is similar to the problem with SETEND emulation that
was fixed in commit fc2266011acc in the mainline kernel
(or as discussed here: https://lkml.org/lkml/2020/4/8/274).

Fredrik


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
