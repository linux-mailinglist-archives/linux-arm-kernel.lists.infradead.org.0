Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C30C31E9EB6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 09:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRgmdVMAr+Naen69YxdEoLoRmiPCgGv/hsGQFEZUc+o=; b=rP5lmyjaPNsQNH
	F9mQ4a8FOIpMYL5U/ZwYUnt34jci25xVRJGaymBHUz5IIx5SABxguJHV7KBG7hMen80wenVwoIjEw
	oQMFVl75zPfHOSPo/o1Kd3artXofOV1/Zz0wne49ZxkSI0IagtqwCxYXESypdHb5Kx6tonXlHgZn0
	LbpdfWfrPE4itRaDEy7uhqMUi6jNEacLrECwNcHlCSyNmjmHBAhfS+OgeA3GpiGzYvI0JqMlQeuKe
	fNmOwx3RRlsMIVFiRzmZyEUBhdJzO6XEkBe7O7iKzgxq5f1U1LIcgey9Y0YX/ChnRDuhQkyM7+Bi5
	Z8l0MPd+Nf75JBTfsMOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfeTj-0002S1-Jr; Mon, 01 Jun 2020 07:03:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfeTc-0002Rd-ON
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 07:03:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83EFC206E2;
 Mon,  1 Jun 2020 07:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590994996;
 bh=3NPQxs+C0cAbSGdr/kRkh+rf7Tn+bgfW4cso/Z6JYAA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mZqk14igi99/UvLo6UNwsvGYPEZZ9TYfPng3kTjh1CBKpNzc7AB+1QUtHAZ2CQ9nD
 VVC9eP5CxCDTm+kyXa02DaygjLdAObPQlVMq9dJEOCZJRHycu98ACtUfBNulzu67mj
 48dpNX69dLlDeSra+WRvqSuT9gJaZmwjtT0xkgdY=
Date: Mon, 1 Jun 2020 08:03:12 +0100
From: Will Deacon <will@kernel.org>
To: "Lixin (Victor, Kirin)" <victor.lixin@hisilicon.com>
Subject: Re: Please help to confirm the risk if using TPIDRRO_EL0 to save CPU
 number, thanks.
Message-ID: <20200601070311.GA8601@willie-the-truck>
References: <1D289F1E6D91D2489524BBB0B8880A7DA1A39219@dggeml509-mbx.china.huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1D289F1E6D91D2489524BBB0B8880A7DA1A39219@dggeml509-mbx.china.huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_000316_816938_7AF7798F 
X-CRM114-Status: UNSURE (   9.27  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "fujun \(F\)" <oliver.fu@hisilicon.com>,
 Wuxuecheng <wuxuecheng@hisilicon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 09:03:37AM +0000, Lixin (Victor, Kirin) wrote:
>    Intel optimized getcpu syscall on Linux/Android system by using vDSO, =
but
>    ARM doesn't do any optimizations for getcpu syscall.
> =

>    In Apple open source, TPIDRRO_EL0/TPIDRURO is used to save the CPU num=
ber,
>    [1]https://opensource.apple.com/source/xnu/xnu-4570.1.46/osfmk/arm/csw=
itch.s.auto.html
> =

>    =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0Is there any risk if using TPIDRRO_EL=
0/TPIDRURO to implement
>    the vDSO for getcpu? Is there any possible to break any ARM ABI? Can y=
ou
>    help us to confirm the considerations?

Do you have a use-case for high-performance getcpu() that isn't better
suited to rseq()?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
