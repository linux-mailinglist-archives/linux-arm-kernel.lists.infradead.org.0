Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E54D8368
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnmYNgneYzxmYbAY6gg1W8iXAf/WLGaClV+xiCEWzPI=; b=oqW4CX2NsQbxe1
	GjgEJ0u6quV85lrtSizxigMYjH6AZYjZjMbYpgOOVM8EdBmZn0s6qTrfPfQVS7aaalJQ83nJeOwTK
	fhyT5ggwU4jMnxGful5gLwLGzanu3x77akwe47QJry0bB7/R8do4yz5YlLeBqRAhMt/p7PgSy/GBN
	ZloyMMZlpknfz9d0kc9YgR6qX2J4d90/F5GVyFZREWpRAU70vkUOhMHR3tTX7Ji+DGKDLZ6tirbqt
	f/hKzEMUTTnVh1NsZteejPKHH5LYIohN0fiyPvkHvUHwcyheF5DLEE956/ibyhteqpzQBa7Y26foh
	KJ34boavG7OlmqivQtmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKV78-00085A-Jl; Tue, 15 Oct 2019 22:16:22 +0000
Received: from namei.org ([65.99.196.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKV6x-00083s-2N; Tue, 15 Oct 2019 22:16:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by namei.org (8.14.4/8.14.4) with ESMTP id x9FMFdwG018373;
 Tue, 15 Oct 2019 22:15:39 GMT
Date: Wed, 16 Oct 2019 09:15:39 +1100 (AEDT)
From: James Morris <jmorris@namei.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH V4 0/2] Add support for arm64 to carry ima measurement
In-Reply-To: <0053eb68-0905-4679-c97a-00c5cb6f1abb@arm.com>
Message-ID: <alpine.LRH.2.21.1910160914090.11167@namei.org>
References: <20191011003600.22090-1-prsriva@linux.microsoft.com>
 <87d92514-e5e4-a79f-467f-f24a4ed279b6@arm.com>
 <b35b239c-990c-0d5b-0298-8f9e35064e2b@linux.microsoft.com>
 <0053eb68-0905-4679-c97a-00c5cb6f1abb@arm.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_151611_189991_1699E3C7 
X-CRM114-Status: UNSURE (   5.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 yamada.masahiro@socionext.com, sboyd@kernel.org, catalin.marinas@arm.com,
 ard.biesheuvel@linaro.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, zohar@linux.ibm.com,
 prsriva <prsriva@linux.microsoft.com>, takahiro.akashi@linaro.org, duwe@lst.de,
 bauerman@linux.ibm.com, allison@lohutok.net, linux-integrity@vger.kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 15 Oct 2019, James Morse wrote:

> > The IMA logs are event logs for module load time signature validation(based on policies)
> > which are backed by the TPM. No SecureBoot information is present in the log other than
> > the boot aggregate.
> 
> Okay, so SecureBoot is optional with this thing.

Correct. Verified boot is one alternative.


-- 
James Morris
<jmorris@namei.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
