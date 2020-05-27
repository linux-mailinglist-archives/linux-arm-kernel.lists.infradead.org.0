Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBC51E4F31
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 22:23:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOEv0WSHmG58rkmq5AGKBz8OEzR3JS9CyjvCiLA0HLo=; b=OA58zfIKio81w1
	4lzZNOgpKI/A3XraZ0EUtazZpI+OVTGkJuKKi2Uz+8jGzW/nc4/y4Nik58h6q8SmQttsv2GmVppwV
	wM9+orD677ReyN6ixn4a5B66smTETkLBfLGS9A8IDcCt8hDMP79uAtuo3weYjQH9UZBLx1ZRSmB7g
	5vd+G5mLU+uJPZrpyXL2+CfyLfq/Atyb51mM8C7nLlWSt/UG90qg35x0BQl/VPpXKgq/nuhBvyJQ9
	KbQXh3hNbXRD4WJ6m+OD9v2ZKeG/z9BB1iBkvnI8eANDfBoqSdfbm+xHUdb+hKcs0DNPBKGUzI4Nw
	XSeEkrvlLEd9lEGsnzWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je2aM-0007Wg-OB; Wed, 27 May 2020 20:23:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je2aC-0007WE-Dl
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 20:23:25 +0000
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net (unknown
 [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74B9B204EF;
 Wed, 27 May 2020 20:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590611004;
 bh=whd5ax6cW2yilyozMSk0cai8e9IPd9MC6dtkaAAIeaQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=1W/ZagWcskvMfGNeYpwXDQ0E6cw7I2krExjORRNnbCOgfUxAw4U3PrBF9MAnP34QK
 pGBpbqhl+ES8lchRtO5oY3o6gCS41OTUTqKpA/8o9HoS+BUrVVPD0eBOPbL4/f/6Pg
 SdPtw4HHGHH8bwupYLAjAdJb8eiiaX6qju2hZUPI=
Date: Wed, 27 May 2020 13:23:21 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Emanuele Giuseppe Esposito <eesposit@redhat.com>
Subject: Re: [PATCH v3 0/7] Statsfs: a new ram-based file system for Linux
 kernel statistics
Message-ID: <20200527132321.54bcdf04@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <6a754b40-b148-867d-071d-8f31c5c0d172@redhat.com>
References: <20200526110318.69006-1-eesposit@redhat.com>
 <20200526153128.448bfb43@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <6a754b40-b148-867d-071d-8f31c5c0d172@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_132324_487275_55353CD9 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-s390@vger.kernel.org, kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org,
 Emanuele Giuseppe Esposito <e.emanuelegiuseppe@gmail.com>,
 linux-kernel@vger.kernel.org, kvm-ppc@vger.kernel.org,
 Jonathan Adams <jwadams@google.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Rientjes <rientjes@google.com>,
 linux-fsdevel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 27 May 2020 15:14:41 +0200 Emanuele Giuseppe Esposito wrote:
> Regarding the config, as I said the idea is to gather multiple 
> subsystems' statistics, therefore there wouldn't be a single 
> configuration method like in netlink.
> For example in kvm there are file descriptors for configuration, and 
> creating them requires no privilege, contrary to the network interfaces.

Enumerating networking interfaces, addresses, and almost all of the
configuration requires no extra privilege. In fact I'd hope that
whatever daemon collects network stats doesn't run as root :)

I think enumerating objects is of primary importance, and statistics 
of those objects are subordinate.

Again, I have little KVM knowledge, but BPF also uses a fd-based API,
and carries stats over the same syscall interface.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
