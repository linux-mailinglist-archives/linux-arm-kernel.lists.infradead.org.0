Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F78115594
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 17:37:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76ljkKpkRWU9jPyBHWoPcHzwojfTfXmr2ERDZMwcXNs=; b=CcQYNMSn1XH+L7
	hn7ZSsfthELEINnD5BdGnJkqNX4F6d7Ylo1fMbzoBVYuc8njzdnzOv/zVpo7ll/gSMtGJweNCblL8
	evgjsXD+7CjKN8YxYqc4hcx8CMmr1f4Fsi9n6KwJ8LTkpjmlrJPYQjoaIk5lOBhlpFGrBA5YzNNjm
	nPQGP0I1BqDaEXe6qf/4zlExqqrrq501aPXCPUaltKwFRWEyGrVj/eo2wEG8toDk/hi/EVagc+8Id
	CheZ66MxjaFTyzq8sPRDNjhN0AWcbqtT10xzw56iQPwBAS0Mzc9qZnAHclIA6L4isQq0UphhNEGo9
	3XV1URmar6sbx/7Tx3BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGbs-0002Hm-Ox; Fri, 06 Dec 2019 16:37:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGbc-0002Ec-0b
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 16:37:25 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37F282173E;
 Fri,  6 Dec 2019 16:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575650243;
 bh=yWXoL/mvYsdoAyZ4GxWSyH4/qqGbZpN5M3vSC32W8z8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=giaVFVwPk8xbp68N1BV+SN7k3CdeIblM6jnoapwjNILrTIpk211MmDZh3+fMJPOKj
 DLcZdrnmQqKkleHjhVwXZ/m9dh6I+mVjN0pabmelsfzaCgE9bURHy9IB2cMP7RT59W
 VfTn6ekPBwyXyKyxk3jBWIIgu0mvFpWXfLjV9uKg=
Date: Fri, 6 Dec 2019 17:37:20 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Thomas Renninger <trenn@suse.de>
Subject: Re: [PATCH 3/3] arm64 cpuinfo: implement sysfs nodes for arm64
Message-ID: <20191206163720.GD86904@kroah.com>
References: <20191206162421.15050-1-trenn@suse.de>
 <20191206162421.15050-4-trenn@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206162421.15050-4-trenn@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_083724_124629_FF95BC6E 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Felix Schnizlein <fschnizlein@suse.de>,
 Felix Schnizlein <fschnizlein@suse.com>, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, fschnitzlein@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 05:24:21PM +0100, Thomas Renninger wrote:
> From: Felix Schnizlein <fschnizlein@suse.de>
> 
> Export all information from /proc/cpuinfo to sysfs:
> implementer, architecture, variant, part, revision,
> bogomips and flags are exported.
> 
> Example:
> /sys/devices/system/cpu/cpu1/info/:[0]# head *
> ==> architecture <==
> 8
> 
> ==> bogomips <==
> 40.00
> 
> ==> flags <==
> fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid asimdrdm

Same comments as on the x86 patch :(

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
