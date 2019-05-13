Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B55D1B216
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 10:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PivOD7BhuBEWN43OW95ZGKnxf/VH4OFYflLMcN64Igk=; b=iCHfZsEtwueffm
	+dYPMCb9NczbTiT5dgRmvdTy1nPe0DkYBcv49/5xlRf8q23oaw+R5+Yw5kN8f0OX1sA/Gi50T307T
	bFuhV3i0N/9BbeldXXx+Ay+0RiWkEiXES7cEDNbACgtX2uCmWOI4gMV3K8tkp2rgtldPZGCCc/Q6u
	wWhcSC3gMWbGmF9FYkazVOBI+S7GLG49OQ7P/kjah+2nMNsxwpzz75taclAeJXyx2K0f/6/Tx04Pe
	5GNhjOz9d7odwqJ4/TDFI5urkn1PZUF+ksHDD7Q8qlPfnvWoUmCXFHPqONv09GljX+5NOhrB6/V4D
	XwjX3wNXWdIGP0uAOYzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ6dt-0001NM-3j; Mon, 13 May 2019 08:49:05 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ6dk-0001MG-Hh
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 08:48:57 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E4E2BAECD;
 Mon, 13 May 2019 08:48:51 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Yury Norov <yury.norov@gmail.com>
Subject: Re: [PATCH v9 00/24] ILP32 for ARM64
References: <20180516081910.10067-1-ynorov@caviumnetworks.com>
 <20190508225900.GA14091@yury-thinkpad>
X-Yow: Is this ANYWHERE, USA?
Date: Mon, 13 May 2019 10:48:48 +0200
In-Reply-To: <20190508225900.GA14091@yury-thinkpad> (Yury Norov's message of
 "Wed, 8 May 2019 15:59:00 -0700")
Message-ID: <mvmtvdyoi33.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_014856_735515_54ABF64D 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-doc@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Yury Norov <ynorov@caviumnetworks.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Joseph Myers <joseph@codesourcery.com>, linux-arch@vger.kernel.org,
 Steve Ellcey <sellcey@caviumnetworks.com>,
 Prasun Kapoor <Prasun.Kapoor@caviumnetworks.com>,
 Alexander Graf <agraf@suse.de>, Bamvor Zhangjian <bamv2005@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Dave Martin <Dave.Martin@arm.com>,
 Adam Borowski <kilobyte@angband.pl>,
 Manuel Montezelo <manuel.montezelo@gmail.com>,
 James Hogan <james.hogan@imgtec.com>, Chris Metcalf <cmetcalf@mellanox.com>,
 Arnd Bergmann <arnd@arndb.de>, Andrew Pinski <pinskia@gmail.com>,
 Lin Yongting <linyongting@huawei.com>, Alexey Klimov <klimov.linux@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>,
 Florian Weimer <fweimer@redhat.com>, linux-api@vger.kernel.org,
 Nathan_Lynch <Nathan_Lynch@mentor.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.gcc@googlemail.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 "David S . Miller" <davem@davemloft.net>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a problem with the stack size accounting during execve when
there is no stack limit:

$ ulimit -s
8192
$ ./hello.ilp32 
Hello World!
$ ulimit -s unlimited
$ ./hello.ilp32 
Segmentation fault
$ strace ./hello.ilp32 
execve("./hello.ilp32", ["./hello.ilp32"], 0xfffff10548f0 /* 77 vars */) = -1 ENOMEM (Cannot allocate memory)
+++ killed by SIGSEGV +++
Segmentation fault (core dumped)

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
