Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 059EB11D1FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 17:12:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXcmEbXdECFpYHCY0fKTXAH2IszJ4nmLzZ6TLXVKexA=; b=RXjWgKbFXJkixc
	TGS7yq8g7yW48sgI5X9QoTZmFYRhfaU4Sr3phKFNE7nJ3UtNiAYr40bV1fjAiesgrYjVMb2yHdq5e
	sSwnPz3b64iqdV/pHsF0QVTTcMKpzJt3CBMCPehSguL/B1lc+s36DJVxMCWwYHbJ+8w8OcnSTliCF
	gPpQHqVL/nLg1Nd5wtS4TW/besOyQNGYoPkXpRT8ozNCmBJgwTmS4dufboDEgYSq/9xUvn+iv1+j0
	aFQSn1/dwQaopQS3vZ4iUEQkUjnIzWIzt1jqG+zr3+n9eZToLy5E4ZHrpNqEEUIsxVNROFoWBtl8K
	b9Dk8MZ7rOTTv0qPK0AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifR54-0006bd-3w; Thu, 12 Dec 2019 16:12:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifR4v-0006bA-8y
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 16:12:38 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3296F21655;
 Thu, 12 Dec 2019 16:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576167156;
 bh=Azp4PExRL32fMUK0pwp1jU+NLT+CnzCcl4VucWCqSZ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Zv5XEkmmQalxPyaf7AEc8q81oVHR9o5hdyh6K+8+oY3CzqlqFr6QkOPzEuv2rEdQV
 TD/4IheA0gHL021w1XknTTTw8UYBPbdaOMxk7jJwKGllz+3mFP8lMrGn3lUzcm7dX5
 Kb754qsoSa/vvR05ri5uUEsjmRNviUBKzUlffUJo=
Date: Thu, 12 Dec 2019 17:12:34 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 08/10] tty: serial: samsung_tty: use 'unsigned int' not
 'unsigned'
Message-ID: <20191212161234.GA1673430@kroah.com>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210143706.3928480-8-gregkh@linuxfoundation.org>
 <eb3cf8f9-3606-c2d6-ad90-4388a52c320b@free.fr>
 <20191212110834.GB1490894@kroah.com>
 <20191212160949.GA10815@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212160949.GA10815@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_081237_332159_E1B4933F 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jiri Slaby <jslaby@suse.com>, linux-serial <linux-serial@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 08:09:49AM -0800, Christoph Hellwig wrote:
> On Thu, Dec 12, 2019 at 12:08:34PM +0100, Greg Kroah-Hartman wrote:
> > Yes.  It's a long-time checkpatch warning, it's good to be explicit for
> > this type of thing.
> 
> There is literally no practical benefit going either way.  It is
> just checkpatch forcing one personal opinion on people.

Fair enough, but, I was trying to align up the variables to be the same
type that was then used in a function call.  That's the only reason I
made this change.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
