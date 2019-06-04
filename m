Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D60EE3422A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCQeXoRfJeZbZfazdrcj6U/KoxD2rt698WMNWtdGo5s=; b=NDwBB5oikStG1L
	Zt9QvdWcbHAFKHfsv8RuF0ebJTQXNl0eeb+ADG64j5kjIV6r+j6LCvGUTXmO1f+ZfSYqyV3x1C005
	8ZfA46ORMsunJX3CWSqbGZzX+Qm9zqu9QBUwXCkzkuv/zIXl5xiX24uC/C3raLT8BCkDFz6hcADB0
	FbBJS0OhMVAYP6LzXasupWaYgOn+npgd5RJABe/tW7SG3d6AfcZU4mo1YiJoboyHs79DEL7kVVw9Q
	lrIzUHny3uf3drWEZ+P8dd3oj4oIJ5qWCy7rFm+DN/aGpStQqbzIiDdjSTaA9B6WC335PTQnJGGxw
	ttW6mbOu/cam/ii2uGQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY59p-00021b-F6; Tue, 04 Jun 2019 08:51:01 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY59i-00020t-Ve
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:50:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 67D8EA78;
 Tue,  4 Jun 2019 01:50:54 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B6D53F246;
 Tue,  4 Jun 2019 01:50:53 -0700 (PDT)
Date: Tue, 4 Jun 2019 09:50:51 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] arm64: Silence gcc warnings about arch ABI drift
Message-ID: <20190604085050.GR28398@e103592.cambridge.arm.com>
References: <1559575830-11941-1-git-send-email-Dave.Martin@arm.com>
 <CAHk-=wiETzg3HGNmy1Wc+ZaduU=hKavakfnS3d4AkZ=J8N=1SQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wiETzg3HGNmy1Wc+ZaduU=hKavakfnS3d4AkZ=J8N=1SQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_015055_021190_885198B8 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 10:33:58AM -0700, Linus Torvalds wrote:
> On Mon, Jun 3, 2019 at 8:30 AM Dave Martin <Dave.Martin@arm.com> wrote:
> >
> > From: Linus Torvalds <torvalds@linux-foundation.org>
> 
> That's the wrong author. I have no idea about the -Wno-psabi flag.

Errr.  I have no idea what happened there.

My best guess is a typo'd git commit command, but it still leaves me
scratching my head.

Mind if I steal the patch from you and pretend it's mine?

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
