Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0351132F81
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 20:31:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXSOo35kGEjUsRCFlnQ8eHTYwNsBmdBu7rmNNPX+SsY=; b=bWfujL8TpeSJLF
	H9O2O7JGGgs3Oj6sGvg0lAZ7oLKgFv/JehHtL8rmkDminffm6XC8Z9u/7rvc839bTTyrM0HQUCF44
	G9evR93lHtJR1jRu54yswm2jI/WwY11fnQpSpGMaQ7vTYxnlD0hcBZJXpSy3R/syAWdCl53VQSrfT
	otDefZTOSD3UgIn0/DHiTpAlpAqk2VcuuNbYnXg4Kh4j3zt00+pQqzkUwrQ/Birmd2JAw2pP8D4/O
	pJQ4av5i/z2kYztprPm8wkqFmKKj4Jon6aoQKm/Wy1RGzkeUpIHd29ZSgTtbzWpbXnxx554PkOB3L
	npurYSc47voABpxGbKqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iouZI-0002DU-06; Tue, 07 Jan 2020 19:31:08 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iouZ9-0002Cg-0Q
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 19:31:00 +0000
Received: from ip-109-41-1-29.web.vodafone.de ([109.41.1.29] helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iouZ2-0004Mw-9L; Tue, 07 Jan 2020 19:30:52 +0000
Date: Tue, 7 Jan 2020 20:30:54 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 2/7] arm64: Implement copy_thread_tls
Message-ID: <20200107193054.t2d4txgz3fnrw3gn@wittgenstein>
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200102172413.654385-3-amanieu@gmail.com>
 <20200102180130.hmpipoiiu3zsl2d6@wittgenstein>
 <20200106173953.GB9676@willie-the-truck>
 <CA+y5pbSBYLvZ46nJP0pSYZnRohtPxHitOHPEaLXq23-QrPKk2g@mail.gmail.com>
 <20200107090219.jl4py4u2zvofwnbh@wittgenstein>
 <20200107174508.GC32009@willie-the-truck>
 <202001071011.9517D9C0D@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202001071011.9517D9C0D@keescook>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_113059_189401_4323D3CC 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Amanieu d'Antras <amanieu@gmail.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, "# 3.4.x" <stable@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-kselftest@vger.kernel.org, Will Deacon <will@kernel.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 10:12:39AM -0800, Kees Cook wrote:
> On Tue, Jan 07, 2020 at 05:45:09PM +0000, Will Deacon wrote:
> > On Tue, Jan 07, 2020 at 10:02:27AM +0100, Christian Brauner wrote:
> > > [Cc Kees in case he knows something about where arch specific tests live
> > >  or whether we have a framework for this]
> > > [...]
> > > It feels like we must've run into the "this is architecture
> > > specific"-and-we-want-to-test-this issue before... Do we have a place
> > > where architecture specific selftests live?
> > 
> > For arch-specific selftests there are tools/testing/selftests/$ARCH
> > directories, although in this case maybe it's better to have an #ifdef
> > in a header so that architectures with __builtin_thread_pointer can use
> > that.
> 
> Yup, I agree: that's the current best-practice for arch-specific
> selftests.

Thanks! I think using #ifdef in this case with __builtin_thread_pointer
sounds good.
So the tests can be moved into the clone3() test-suite for those
architectures.

Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
