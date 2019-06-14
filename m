Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAD545D74
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:05:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cz3WAln+3rcRakmMAQKJizKpFefXKchjIY9EEZ46a4U=; b=fV7nccGP3vIq4f
	X/ZWxGjzzHEhX/9gO2UPECe8cKMy+hVN/ZuHIGEH4rPwHMlbD7JlyPXPehgePPuvDa0UDkRN0AVBN
	SDsCvgKPZk5f9BBCYaRcJQNtulmYngE65hTMDru0T1TZZUbdsw6omTRyhTocby/W1tb3TG4K7KpAF
	ey5LUXefyFK8kwoxmOBQncr0vRzhS9PVBvXN1P7kYZUV+5Y55NKX/6uTDuG4XC9Xq/TQDy7rW8yQj
	RKmpkIa2/xFZMoAgiEpmG2vTIvUvhpvqLhYUNjdI4/kHCLIXMn+FlJAhH+ItYn+DWT2KJDeNOJ8mM
	1O2wpHImTjQ+707N2WrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbltH-0008BK-EY; Fri, 14 Jun 2019 13:05:11 +0000
Received: from galois.linutronix.de ([2a01:7a0:2:106d:700::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hblsx-0008Av-Se
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 13:04:53 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hblst-0004De-V0; Fri, 14 Jun 2019 15:04:48 +0200
Date: Fri, 14 Jun 2019 15:04:47 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Stephen Kitt <steve@sk2.org>
Subject: Re: [PATCH] Drop unused isa_page_to_bus
In-Reply-To: <20190613161155.16946-1-steve@sk2.org>
Message-ID: <alpine.DEB.2.21.1906141504230.1722@nanos.tec.linutronix.de>
References: <20190613161155.16946-1-steve@sk2.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_060452_065737_1C4386A8 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:7a0:2:106d:700:0:0:1 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: sk2.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: sk2.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: x86@kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-mips@vger.kernel.org, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 13 Jun 2019, Stephen Kitt wrote:

> isa_page_to_bus is deprecated and no longer used anywhere, this patch
> removes it entirely.
> 
> Signed-off-by: Stephen Kitt <steve@sk2.org>

Acked-by: Thomas Gleixner <tglx@linutronix.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
