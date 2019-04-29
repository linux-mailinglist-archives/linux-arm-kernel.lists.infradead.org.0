Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBB2DA61
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 04:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndPzh+ssGdSfAYCCIqNV+IDgSZq8kKhS2tM0L9nGJFI=; b=pniGF8VeG6JwTO
	Gx6/Th5CAViau0mwTTk3gUZwmG6wcNO+7p/TT9WKJ784Wv8C4J/PZfkYP48+9icMR/cp8s4n7NsGF
	UpJuBN0cPpz6uexk+h8USYW/D6AEPjWvNfmTRg0YHtEEkCjgFsNAuYwyGUgVngvUcl7KLsZLGlVdb
	t8Xa5Y7q3QRerp7wBYd6SXt0x6o9ur+Fbc2EDMR9EunTPtkXkUw2stCy1cINsw4TuEy+Y+bqBlbpy
	IrnvMhlTUxFgStcYzF/2uv8172rpmo/I6NgGxElaWaOGnBbIzLtzAd9rFzH06nC1IZT4DNNcbeYOI
	nw9g3s149m1zGYs5qQRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKvgN-0003oJ-HO; Mon, 29 Apr 2019 02:06:15 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKvgG-0003np-QF
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 02:06:10 +0000
Received: by ozlabs.org (Postfix, from userid 1003)
 id 44sp0j4Vkwz9s7T; Mon, 29 Apr 2019 12:05:57 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ozlabs.org; s=201707;
 t=1556503557; bh=C9jMjFQh8bIIcTLpSucBn3+IOPxRQfPJx62R3f27fHA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZDh+JJdWNbUnjZwYJ2OgXrlC5Te6OdRn22WeQuX4mEFi/3J71pfQo+39F6D6VmfIs
 gN6aTHh8fhD28hDxoQTNfGh80vVwOayHLTgGy/WObYcwr29+LgPtSFjpNYGvpucq7e
 RFvR2OWhFp0B7fWmnkVIVl5FSX1jogLJM1ivdGOqA7fkxhMHaDiTR0CdT1LUZLyBXU
 kNwsUKwXM2eBaXfB8xSfPnOIqb8nOoKndLFvhgA8sb3l7oGWYMgduupXvs/dphOqD1
 8Md0UWqf3a3EcS154gfVMUDHZtwTRPKEseYrZA6+ZANLVUVipPwrDyKTM5PLPIDLER
 jBXEXZZQAZv0g==
Date: Mon, 29 Apr 2019 12:05:55 +1000
From: Paul Mackerras <paulus@ozlabs.org>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v8 05/20] KVM: PPC: Book3S HV: Remove pmd_is_leaf()
Message-ID: <20190429020555.GB11154@blackberry>
References: <20190403141627.11664-1-steven.price@arm.com>
 <20190403141627.11664-6-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190403141627.11664-6-steven.price@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_190609_081132_C90B1501 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 linux-mm@kvack.org, "H. Peter Anvin" <hpa@zytor.com>, "Liang,
 Kan" <kan.liang@linux.intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 kvm-ppc@vger.kernel.org, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 03, 2019 at 03:16:12PM +0100, Steven Price wrote:
> Since pmd_large() is now always available, pmd_is_leaf() is redundant.
> Replace all uses with calls to pmd_large().

NAK.  I don't want to do this, because pmd_is_leaf() is purely about
the guest page tables (the "partition-scoped" radix tree which
specifies the guest physical to host physical translation), not about
anything to do with the Linux process page tables.  The guest page
tables have the same format as the Linux process page tables, but they
are managed separately.

If it makes things clearer, I could rename it to "guest_pmd_is_leaf()"
or something similar.

Paul.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
