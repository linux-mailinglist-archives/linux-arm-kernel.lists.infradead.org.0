Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A24C11F841
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 16:02:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNeEZ8Ti0+D9EBE+qDqF32ef6syt7yJ7l5L44VHpUbg=; b=OYNRPVLKmQU/tD
	MjK1ZhtvrxUEC8YZwUZX8JZecW9PXiluIoDLjWNAOXPOEPw1JMw5FeUqkB34ELkbovMmKC3ZtawBC
	kdJlmUu/k+caI6MBcYgRy2P6xTjz00ZdnMEXrDKGZZ0wiSf/q2VqoNTru9lt9qaxmlOMbDRXhjzeV
	VdfrK4YW3sVsO7pT+zg/DRrQsF93pm6YTg9wQFh9mndBjy9gH4RK3QkpKx4McSmt49qutqjtw0JoP
	ZgGha+MCGb02KX66xcPW4Pz/GZmtKj8WHRo3EVaklbr++4GWD2Inm8YcKlFUMbzu7E10iH7/dNRhX
	4QwAK9Twau1KdXI66w2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igVPQ-0001v3-VP; Sun, 15 Dec 2019 15:02:12 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igVPJ-0001uI-5P
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 15:02:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U/ljDlMG6RtqqCH2pF9yaKfI+7M0wbcBVw2/3wgsBRE=; b=SRCgCPuDcfiCH1/T+REBruHIxP
 UEXcmoosDxt12xzCOE+L1lJmf+4GgswosjvzEIwbDJ7eU6pze038h3BGx9Es+lKncWmAa8sPNcxLs
 M5q9Jyd0p1zD7+LDtqHd6q67b6BUOWoXQgIVTPI4ZCYzG+DH4s4J5vq3PJbVsYHoAP/Y=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1igVPA-0004gw-To; Sun, 15 Dec 2019 16:01:56 +0100
Date: Sun, 15 Dec 2019 16:01:56 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 1/2] cpuidle: kirkwood: convert to
 devm_platform_ioremap_resource
Message-ID: <20191215150156.GD22725@lunn.ch>
References: <20191215130206.30265-1-tiny.windzz@gmail.com>
 <20191215130206.30265-2-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191215130206.30265-2-tiny.windzz@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_070205_206092_8EF8957A 
X-CRM114-Status: UNSURE (   5.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
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
Cc: shc_work@mail.ru, linux-pm@vger.kernel.org, daniel.lezcano@linaro.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 15, 2019 at 01:02:06PM +0000, Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
