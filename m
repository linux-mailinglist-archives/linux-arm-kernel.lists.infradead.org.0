Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 744761C0C11
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 04:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJU4bIRxctVkgcXEqe67l4PtBfrGtJo6aAt/CI0DauY=; b=HUoMjmoCgVmeD7
	9dmUpZ3omYmtwUI8AU0esMT9IZhx9a0+hu+lCtVgxq2p6Oajj/NWj3svjv9S8/VK8wmJhemXtSx+L
	i3MOZcOjedI+azD+MTKACiI3dlwRi/7iM9ZLPb+AkZ3lojqX1BolcPIOUWyxGM5a1r64c8yVQcIQT
	ViVVb3lgUKsGlIoiuOuJLGUooZ8iHrFVOJDbC+P2oPPkRVC4K50vEGtplVTx+0nfpLS0/EBt4UcCA
	E3z7jrXKypdUbcezvMQZy00Ajo4As5ZHB6CT23GeIRVx6mDEe1mNHX5P5WTtGuSfA6JqYaNT6aav3
	7thjCEPBCsuo1owwsl7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jULEd-0006Pg-Gn; Fri, 01 May 2020 02:17:03 +0000
Received: from [2002:c35c:fd02::1] (helo=ZenIV.linux.org.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jULES-0006O1-HK; Fri, 01 May 2020 02:16:54 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jULEA-00FWc0-1N; Fri, 01 May 2020 02:16:34 +0000
Date: Fri, 1 May 2020 03:16:34 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: ira.weiny@intel.com
Subject: Re: [PATCH V1 08/10] arch/kmap: Don't hard code kmap_prot values
Message-ID: <20200501021634.GE23230@ZenIV.linux.org.uk>
References: <20200430203845.582900-1-ira.weiny@intel.com>
 <20200430203845.582900-9-ira.weiny@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430203845.582900-9-ira.weiny@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_191652_573186_0A5924DC 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [2002:c35c:fd02:0:0:0:0:1 listed in] [wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Huang Rui <ray.huang@amd.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Helge Deller <deller@gmx.de>, x86@kernel.org, linux-csky@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 01:38:43PM -0700, ira.weiny@intel.com wrote:
> From: Ira Weiny <ira.weiny@intel.com>
> 
> To support kmap_atomic_prot() on all architectures each arch must
> support protections passed in to them.
> 
> Change csky, mips, nds32 and xtensa to use their global kmap_prot value
> rather than a hard coded value which was equal.

Minor nitpick: it's probably worth pointing out that kmap_prot on those
is a constant...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
