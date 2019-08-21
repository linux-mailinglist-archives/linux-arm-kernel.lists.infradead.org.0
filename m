Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E40897FEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 18:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Im/lcDU1zpS4iJ8Nx15l3eM1L+D59K7ShHw+/Rbldu0=; b=RY8xFz2c0WdRWB
	RuJStvpogOCX8+3uRTgSjNrBYlxMM8YwRBnYprjsq5PUrYvn0a82TVLN9UDQfe9moUC6UefsWUJkq
	RBAC1iSeen2/5fHE9SUMvpHOEsOodIPPIUtE1KFIb7wNW0iusmAetGRZISGHYFyj/jw7XPM9p1ldU
	g9HUmhCFDPy0bnBrWwnLmNPaja7pYcXX9miUA7UtRzVpbk2k+2y7K+RUrcaEvn4hVohGutIPHknJv
	o3wY1d1uAnMml5HQ9auu2W7kncXTTc0P0f276n0XIzbLJEPnYoBrlVRv/lqftSF6fs+A/sH2S8/vi
	Uydk7FxxGeWgDuMcxyeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0TN8-0004cX-4T; Wed, 21 Aug 2019 16:22:06 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0TMz-0004cE-LL
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 16:21:59 +0000
Received: from callcc.thunk.org (75-104-87-59.mobility.exede.net
 [75.104.87.59] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7LGLQaP017370
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 21 Aug 2019 12:21:33 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 2CA8742049E; Wed, 21 Aug 2019 12:21:26 -0400 (EDT)
Date: Wed, 21 Aug 2019 12:21:26 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v8 2/3] fdt: add support for rng-seed
Message-ID: <20190821162126.GA2713@mit.edu>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Hsin-Yi Wang <hsinyi@chromium.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 Rob Herring <robh+dt@kernel.org>,
 Devicetree List <devicetree@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
 Miles Chen <miles.chen@mediatek.com>,
 James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Laura Abbott <labbott@redhat.com>,
 Stephen Boyd <swboyd@chromium.org>,
 Kees Cook <keescook@chromium.org>
References: <20190819071602.139014-1-hsinyi@chromium.org>
 <20190819071602.139014-3-hsinyi@chromium.org>
 <20190819181349.GE10349@mit.edu>
 <CAJMQK-ghQ8weMerXW7t0DFZTAg_c5M80Yp5DTAtyY2LA7YpS1A@mail.gmail.com>
 <CAKv+Gu_qJUU2hRujjv6e5yPqPQXRXokBU_2mSGD3civ2d2+xhw@mail.gmail.com>
 <CAJMQK-hdYz+pW5QL41nXkZAX1qiRynaWg7cne48qCaQsuPrSCg@mail.gmail.com>
 <CAKv+Gu-kp-LqCCx=h2TJxzns4KpM-UEjz3md0u3hbVOyp+iFtA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu-kp-LqCCx=h2TJxzns4KpM-UEjz3md0u3hbVOyp+iFtA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_092157_933991_69AB0D4F 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>, Yu Zhao <yuzhao@google.com>,
 Kees Cook <keescook@chromium.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Stephen Boyd <swboyd@chromium.org>, Will Deacon <will.deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Jun Yao <yaojun8558363@gmail.com>, Miles Chen <miles.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, James Morse <james.morse@arm.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 09:39:28AM +0300, Ard Biesheuvel wrote:
> 
> Whether to trust the firmware provided entropy is a policy decision,
> and typically, we try to avoid dictating policy in the kernel, and
> instead, we try to provide a sane default but give the user control
> over it.
> 
> So in this case, we should probably introduce
> add_firmware_randomness() with a Kconfig/cmdline option pair to decide
> whether it should be trusted or not (or reuse the one we have for
> trusting RDRAND etc)

I'd call it add_bootloader_randomness(), since we are trusting the
*bootloader*; it's the bootloader which is vouching for the security /
validity of the passed-in entropy.  Furthermore, the bootloader on
some architectures might be fetching directly from some secure
element.

And for that reason, I'd use a different Kconfig/cmdline option pair
than the one used for trusting CPU-provided randomness.

						- Ted

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
