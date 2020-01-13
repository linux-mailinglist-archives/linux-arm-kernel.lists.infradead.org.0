Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E228B139450
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 16:08:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/4+FBEYXWLjtmwjcQabQiQLvKUVxrqK/JZR2Tz9rmA=; b=ioXOxz7+bTu1VQ
	hB4JIfOh9+oj25nyurXO0GZN0GzjiinE1P0uGO0ivV3IDtsgWxxkTpfc10B2NcaucRhgYTgcCsMml
	+oVrzR19u3dSbMPeCg1l7e4qwNNZQEXzG3u+ivRz236N4sOyZBFRR48rGD83D8B0OslhYkZxPZZQL
	UKIlrnXFmQ59mnBIRTW8QKKg2oblgFHfFq/jewSEvk6SWK0GIiVmhVKkVVPcKp3Rn0JlqANwd+yeT
	Afhh74AAOvFpjXLGRsEa5wFmv3E5Zr0/H+11hiipzj5Ogmo4tIBf2pCn6p31QbN5jwxSwqEBCeh3N
	xHZTpyHYpJXCuwyDCGrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir1KR-0000oc-5A; Mon, 13 Jan 2020 15:08:31 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir1KG-0000n4-6v
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 15:08:22 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1ir1K8-0003m8-Or; Mon, 13 Jan 2020 16:08:12 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 50A5D105BF0; Mon, 13 Jan 2020 16:08:12 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Christophe Leroy <christophe.leroy@c-s.fr>, arnd@arndb.de,
 vincenzo.frascino@arm.com, luto@kernel.org
Subject: Re: [PATCH] lib: vdso: mark __cvdso_clock_getres() as static
In-Reply-To: <658045cd-3f97-946d-6920-bea772e9be24@c-s.fr>
References: <e7becc50bee355e3872b84d91cc68ae8d7776bb9.1578764712.git.christophe.leroy@c-s.fr>
 <875zhhsr0h.fsf@nanos.tec.linutronix.de>
 <658045cd-3f97-946d-6920-bea772e9be24@c-s.fr>
Date: Mon, 13 Jan 2020 16:08:12 +0100
Message-ID: <87y2ubqtr7.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_070820_390280_F4F59C0E 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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
Cc: x86@kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christophe Leroy <christophe.leroy@c-s.fr> writes:
> Is there a git tree with the latest VDSO status ?
>
> https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git?h=timers%2Fvdso 
> is 6 monthes old.

Will push a new one later today. I'll let you know.

Thanks,

        tglx


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
