Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 692C81B2129
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U91ppRn314vqPdJGMN2qwhkFW2yGYxrw+YNS2ohXPRY=; b=asn3ccpcnRezf7
	m2GpSqKf4BIVAZja02SWKS8hrQkYINunlI7xYpyjf2iEX6WuQOMR7LIQgj/VWkDhVGhwKeHxSqLC+
	xP0wRieYRuCnr+H3q97GmQgD6e4ezvRkfOcij2OSBCIAdAc9eHZ49hSUj88HRVpsmaKL/ghuq/KcB
	JkYBZdDdRPde5b+bPAe+fRSkhVYHI8ai/0F+aoyHfQeqtbi/OkHJoxMgVntN7r4FzLlc8vJhfqatt
	aZsubaNKOW8KAh1GsK1tRZx3IV+kfYmbu7nbifBNNWrEVQYyFkZgHevV6Q/pUPF9jE+3hAKYsDkmV
	11NYGPHnyHoYZBo3HQqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQo1V-0003Ve-W8; Tue, 21 Apr 2020 08:12:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQo1N-0003Uu-G5
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:12:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E8F922072D;
 Tue, 21 Apr 2020 08:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587456764;
 bh=1H9QwtfRzvccm/6UIO24x9MzqKXa4D8yTbOu4Dq5x/0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MQQ23Uz8YyC72uR7qvCyCB7ongHObzSpaBlt47N0bJsb0h43EUlehbbNsrGKcbkwo
 S4GkkiCVW3f4FEndZ7S2S7FFCj3DxCOrcFEXB4YFOOiUDPtcX+P+IDbA5UIouZRFqe
 EH3cK58csffPTZbDqsgZdaSB2JFDVACIjwNKMkcA=
Date: Tue, 21 Apr 2020 09:12:39 +0100
From: Will Deacon <will@kernel.org>
To: Tian Tao <tiantao6@hisilicon.com>
Subject: Re: [PATCH] arm32: fix flushcache syscall with device address
Message-ID: <20200421081239.GA15439@willie-the-truck>
References: <1587456514-61156-1-git-send-email-tiantao6@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587456514-61156-1-git-send-email-tiantao6@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_011245_554513_D46B081A 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, jonathan.cameron@huawei.com,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
 tglx@linutronix.de, info@metux.net, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 04:08:34PM +0800, Tian Tao wrote:
> An issue has been observed on our Kungpeng916 systems when using a PCI
> express GPU. This occurs when a 32 bit application running on a 64 bit
> kernel issues a cache flush operation to a memory address that is in
> a PCI BAR of the GPU.The results in an illegal operation and
> subsequent crash.

A kernel crash? If so, please can you include the log here?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
