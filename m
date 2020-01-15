Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E52F13C645
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:37:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yJEjBiPKP4rljJ+U8XSoT5fkN21HP1mapLISRiOIhI0=; b=I9klTisvfHer8B
	Xoj+oWUWrGeTgkP8xovhsAX7h+mQIjX03ho6hAamQTxgwyGknIVTyuzMrp8j6fpP6FUoNFKwx1NGv
	erRcDAOh0tI40qce+FY74Mhyp+V2xivNVa+HSVCLv55ek9M18uikxm1Y1k1XnjcfxPc3sv0/hZMHX
	3AK8aXBYov/R691F/QwFOWKaw60613a/AATaNgjid8kRgl3DYsnogQIgBbCKrUd37fPmLzqnxzHfa
	X/RzF4g0OT1fKfwLT3erK+gCQIaYUFnAt9aZZtMTTUfcCD97SEDlgVr03Fh6N0A2/zBsBHnu/RgWy
	80GHRTx4+JjY2oIjzJrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjms-0004J3-89; Wed, 15 Jan 2020 14:36:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjmZ-0004H3-MS; Wed, 15 Jan 2020 14:36:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11C2931B;
 Wed, 15 Jan 2020 06:36:31 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D2FBC3F68E;
 Wed, 15 Jan 2020 06:36:28 -0800 (PST)
Subject: Re: [PATCH v8 00/25] arm64: MMU enabled kexec relocation
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
 <20200108173225.GA21242@willie-the-truck>
 <CA+CK2bBDhF4YuFOeagzZ48-BigDmOVuBKZTAC8fd6tojcJN-0g@mail.gmail.com>
From: James Morse <james.morse@arm.com>
Message-ID: <033681cb-9fd2-673d-d282-e7c0973e4523@arm.com>
Date: Wed, 15 Jan 2020 14:36:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CA+CK2bBDhF4YuFOeagzZ48-BigDmOVuBKZTAC8fd6tojcJN-0g@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_063631_778296_4D756234 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, steve.capper@arm.com,
 kexec mailing list <kexec@lists.infradead.org>,
 James Morris <jmorris@namei.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-mm <linux-mm@kvack.org>, rfontana@redhat.com,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 08/01/2020 17:59, Pavel Tatashin wrote:
> On Wed, Jan 8, 2020 at 12:32 PM Will Deacon <will@kernel.org> wrote:
>> On Wed, Dec 04, 2019 at 10:59:13AM -0500, Pavel Tatashin wrote:
>>> Many changes compared to version 6, so I decided to send it out now.
>>> James Morse raised an important issue to which I do not have a solution
>>> yet. But would like to discuss it.

(Christmas was badly timed relative to my holiday, so its taken a while for me to catch up)

The memory out of range of the idmap?
I've posted an RFC here[0] that makes hibernate idmap is ttbr0 page. This should let you
reuse that code and test it without a machine with a funny memory layout.


Thanks,

James

[0] https://lore.kernel.org/linux-arm-kernel/20200115143322.214247-1-james.morse@arm.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
