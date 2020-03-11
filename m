Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906DA1814CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 10:28:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fxSg6zADLbd9v7/ZDOpVgLpGBu2JEd5wXj/iXu0UxRg=; b=utSt5NKj9GgxOZ
	H+EllzjR4/0ZOCgLurj3+t+PLdtMXlBdGcytd1Oah0ciE8CYwL6i+IMx1ovTmwkuoJqaN3SXNZcri
	fET9DQjlgDmCenSrFO/guC+xpn/jf0Lz+i4bcbz1DO29VL7vhini4j7T/qR0hxYTNQZ9eOOLOhIvt
	u3s9UraQwUBn3WEQFj1QBWyRwU0MW24IuXXH1IdTy0CVRlRl/W/8W6pNlq+o+/2UhLaAEPg20tkD8
	FGfv8PY+/jiEDec8Zcml09wkEzFRO1Z/7Ol1J12xyD56qGKBUNcPnpN6UtwL+16JGhjdYS8r+GAGK
	EajhheAfBl7wpGZ6fG4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxfA-0008NG-Qy; Wed, 11 Mar 2020 09:28:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxex-0008MU-N1
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 09:28:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC5AE31B;
 Wed, 11 Mar 2020 02:28:14 -0700 (PDT)
Received: from [172.16.1.159] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D1FCB3F67D;
 Wed, 11 Mar 2020 02:28:11 -0700 (PDT)
Subject: Re: [PATCH v6 00/18] arm64: return address signing
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <ae8f900b-6173-5cbb-076e-457994fbe0fe@arm.com>
Date: Wed, 11 Mar 2020 09:28:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_022815_794720_16ECC1AB 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kees Cook <keescook@chromium.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit,

(CC: +Marc)

On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
> This series improves function return address protection for the arm64 kernel, by
> compiling the kernel with ARMv8.3 Pointer Authentication instructions (referred
> ptrauth hereafter). This should help protect the kernel against attacks using
> return-oriented programming.

(as it looks like there may be another version of this:)

Am I right in thinking that after your patch 10 changing
cpu_switch_to(), only the A key is live during kernel execution?

KVM is still save/restoring 4 extra keys around guest-entry/exit. As you
restore all the keys on return to user-space, is this still necessary?

(insert cross-tree headache here)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
