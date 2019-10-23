Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244A6E14A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 10:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLZZqB9AasZevHoGHNMfXA+tvPQIf/uW7+9KSRBr1Cc=; b=Ge1N205qBBg84f
	gP8BmHcDU+i3qzcHhei95xrMntMyNTepCo3OHVaRbVD9vpeLn59FZi9kPfDgbelVPXelfuwnBSWO8
	glYtAsxgquKmUSMTmFUmW9wCsR3qXmpN6axhTGfVuNgwgxTRNRyB0GcUcun82Fg0OuUtP8eKt7Vj7
	dWCbz5WRcemlhOdsyPzCqlt8RKgiDZ3owPve13PNv0h3nU6kq5mB5yNdNRrbEwaVO9B+nJrXIqnxi
	kkQY+VtnAS3HJE6cmMZlkK2q7sS+yecZPOl0wP4rtyKIOCQu3R7I9vMcFw7/K/6RgymCQ0Z96uXjH
	qVE0JcnOQVy1aak/FC8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNCJm-0005sN-3s; Wed, 23 Oct 2019 08:48:34 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNCJc-0005rX-2f
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 08:48:25 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iNCJQ-0005pZ-KC; Wed, 23 Oct 2019 10:48:12 +0200
Date: Wed, 23 Oct 2019 10:48:11 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Huacai Chen <chenhc@lemote.com>
Subject: Re: [PATCH 110/110] lib/vdso: Improve do_hres() and update vdso data
 unconditionally
In-Reply-To: <CAAhV-H4PEcCgOBL8ksjc+4LC9VPoCRBMtuGEK6ckmdJYXjdcSg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1910231037500.2308@nanos.tec.linutronix.de>
References: <1571662320-1280-1-git-send-email-chenhc@lemote.com>
 <alpine.DEB.2.21.1910211648200.1904@nanos.tec.linutronix.de>
 <alpine.DEB.2.21.1910211658040.1904@nanos.tec.linutronix.de>
 <CAAhV-H4PEcCgOBL8ksjc+4LC9VPoCRBMtuGEK6ckmdJYXjdcSg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_014824_262455_E67AAFFD 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>, "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Andy Lutomirski <luto@kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 22 Oct 2019, Huacai Chen wrote:

  https://people.kernel.org/tglx/notes-about-netiquette

Look for Toppost
 
> If we use (s64)cycles < 0, then how to solve the problem that a 64bit
> counter become negative?

I doubt that you will be able to observe that. A 64bit value becomes
negative after 1<<63 cycles, i.e. at 1GHz thats 292 years of uptime.

What's your problem?

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
