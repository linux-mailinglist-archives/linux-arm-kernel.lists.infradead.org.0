Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D98C4149704
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 18:47:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fx7GzQ3avECStpbZl9Y5kzmwfitUHoBInjk8MGT7zkI=; b=W5A7cEP8vZ8GnC
	V2rLPcABxYssbPT82ineonNgG9PKyk+1QciieuGNgUTdl9vQIlEPznW2L27qVbL7NZ5f0NTx3zqVE
	xLBIs48mLmx0JlRjXMEucIjeZIrgjyf1IN1RqzfLEIa0qE2ZsF+ssiuO7CcWQty3H+G2tG29phw7W
	almdliMRNRDlxob4QCiWQiA2B7vTQkzY5HhjTw7HIKN0gEXTkseR1j1agQMw+kkOIT5zezYC+Pz9K
	JuwbsdUwLF3iDbapbvnPKtFhd6vFj4+kr3xwndydWXbwmJNdt9C8hVLLyaEHgPEBomvTGQj+ohuAo
	OzUN+mDmlhoOJg28EwrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivPWX-0003QN-EC; Sat, 25 Jan 2020 17:47:09 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivPWP-0003Pv-3E
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 17:47:03 +0000
Received: from callcc.thunk.org (rrcs-67-53-201-206.west.biz.rr.com
 [67.53.201.206]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 00PHkXAB020640
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 25 Jan 2020 12:46:36 -0500
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 24C63420324; Sat, 25 Jan 2020 12:46:33 -0500 (EST)
Date: Sat, 25 Jan 2020 12:46:33 -0500
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH v2 00/10] Impveovements for random.h/archrandom.h
Message-ID: <20200125174633.GN1108497@mit.edu>
References: <20200110145422.49141-1-broonie@kernel.org>
 <20200110155153.GG19453@zn.tnic> <20200110170559.GA304349@mit.edu>
 <20200120172627.GH6852@sirena.org.uk>
 <20200120175901.GB576@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120175901.GB576@zn.tnic>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_094701_303611_C3CDA879 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 herbert@gondor.apana.org.au, x86@kernel.org,
 Richard Henderson <richard.henderson@linaro.org>,
 Mark Brown <broonie@kernel.org>, linux-crypto@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 06:59:01PM +0100, Borislav Petkov wrote:
> On Mon, Jan 20, 2020 at 05:26:27PM +0000, Mark Brown wrote:
> > I think the important thing here is that *someone* takes the patches.
> > We've now got Ted and Borislav both saying they're OK applying the
> > patches, an additional proposal that Andrew takes the patches, nobody
> > saying anything negative about applying the patches and yet the patches
> > are not applied.  The random tree sounds like a sensible enough tree to
> > take this so if Ted picks them up perhaps that's most sensible?
> 
> Yes, Ted, pls pick them up so that we're done with this.

I've picked them up and pushed them to the random tree.

     	    	    	       	       - Ted

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
