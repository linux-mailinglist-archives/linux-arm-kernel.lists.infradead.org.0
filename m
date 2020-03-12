Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 455A31831F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:47:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNsV95OSHoczD59fCs/+JA8nee8wjy1CbdO8V7RhwXk=; b=lf4ufNRX8/5Iq0
	o18fBpxCsFeyfKM8Eu5DANy1C5RNwfNntEqoaXTnu0ubusew0C1v3TBtABNhoPlcPm7g0GhRvu4FU
	A6yolbyePOv+2Y9rIPgBf7SgqbW8soXxOn6cNoMIyECLG/yVhnx9lKmcQQxmLNZn/PBlZrZ+mnxr2
	jgMLWmqA+JgnNnkDb8U2DJZeeuSjgjNBjMSFZhWIc4id6mWDIDt5RE4Q75t+4IP6N1CUpuAHctYvi
	7/vq8CPzH06yHm1vbioUKyLW5Af+ca7nBYsWSb94xeSelJKmccHDh4Cm7B5L9Jzd9HKSl7Jv8pk9I
	d9ZCiKNZ1PRwMwVu+loQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOBL-0004oE-8Q; Thu, 12 Mar 2020 13:47:27 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOBE-0004nd-19
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 13:47:21 +0000
Received: from callcc.thunk.org (pool-72-93-95-157.bstnma.fios.verizon.net
 [72.93.95.157]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 02CDlCBO022469
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 12 Mar 2020 09:47:14 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id BD68C420E5E; Thu, 12 Mar 2020 09:47:12 -0400 (EDT)
Date: Thu, 12 Mar 2020 09:47:12 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH -next 005/491] ARM/UNIPHIER ARCHITECTURE: Use fallthrough; 
Message-ID: <20200312134712.GE7159@mit.edu>
References: <cover.1583896344.git.joe@perches.com>
 <dae0878058223a42c77d725b8d7c5845a7ef9dc0.1583896348.git.joe@perches.com>
 <CAK7LNAS7GAk9yXkPhbS3ByU+n9Gb-rk0PeLcXLCNwpW1B22aeg@mail.gmail.com>
 <891a42ad8d8fd7beca911845108e1ded022ef3f7.camel@perches.com>
 <20200312085606.GA154268@kroah.com>
 <CAK7LNAS98yeCeFZpKgNRRKcFhXSKWQ7Ka4vP90YcY=ufScZRCw@mail.gmail.com>
 <fa07756217b3c033c7e5af495a03ff5655947450.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fa07756217b3c033c7e5af495a03ff5655947450.camel@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_064720_265821_9AAFE2B7 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [18.9.28.11 listed in wl.mailspike.net]
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 02:37:31AM -0700, Joe Perches wrote:
> As I have suggested a few times, better still
> would be to have a mechanism for scripted patches
> applied possibly as single treewide patch.
> 
> Likely applied only at an -rc1.
> 
> The stated negatives to a treewide mechanism
> have been difficulty to backport to -stable.

Any time we do a massive, disruptive change to the code base, it's
going to cause problems to -stable.  It means that bug fix patches
won't necessarily auto-apply, and some will require manual fixups
afterwards

Given that this change doesn't really fix any bugs, I'd have to ask
the question --- is it *worth* it?  We really need to apply a certain
amount of cost/benefit analysis around this.

If it were really important, the thing we could do is to apply a
single treewide patch at some point after the merge window.  I'd
suggest after -rc2, myself, but reasonable people can differ.  And
then, if it were *really* important we could run the same script on
the stable kernels.

But for changing "/* fallthrough */" to "fallthrough;"

Does this ***really*** matter?  Why are we tying ourselves up in knots
trying to do this all at once?

					- Ted

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
