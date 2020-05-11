Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3721CDAAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 15:01:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMHfjJD79yagDH9p0i4eoGvexUf1o8iGmuJpRpI78LQ=; b=YFNYyehZC/eyea
	yhCnQb6jHQUg92bAhTyXkRuufVYiHl1FIIrITSrx4aawPodIoBbbbR6w1vBY00eeyn8ZkFFuf1D94
	bXwGUF/WQ9HO/if663+J5XCu471NLov+2JpLH1Zz1hWvYoGeDIQcrKFFoUHWLNuCdDhQmiTGKa0uH
	jv5DMxi6yre6X9YTDDNr/7S/GrDTiw9J5H1odDoybJ/ApohuT2OmVbz1kZyqSQP5+pVh1oWGi63q5
	B7upnylbEmf9bbCCrbFkPDh2KcKakuOvJNeeCAejOKTXr2tUcmwTMHjSFmS0O/4Mnuk/MF6S5xKO0
	G5BMP5ctMVmSevDsAwxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY83y-0005Fw-6x; Mon, 11 May 2020 13:01:42 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY837-0004e7-9J
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 13:00:50 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5eb94bf70005>; Mon, 11 May 2020 05:58:31 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 11 May 2020 06:00:46 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 11 May 2020 06:00:46 -0700
Received: from [10.26.74.25] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 11 May
 2020 13:00:44 +0000
Subject: Re: [GIT PULL] arm64: tegra: Default configuration fixes for v5.7-rc4
To: Thierry Reding <thierry.reding@gmail.com>, <arm@kernel.org>,
 <soc@kernel.org>
References: <20200430105700.167199-1-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <384ae777-3e3c-8244-0645-13d9c7a8eb37@nvidia.com>
Date: Mon, 11 May 2020 14:00:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430105700.167199-1-thierry.reding@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1589201911; bh=oPxaLJJLXpOzcbjWYs7b5HPDSqzPDCu4tyqmLQjNRvU=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=NMDHjwc+JHurWicn7HXc6nMWUcIgvO7OqXqcZiRmDku1eAOjUrHhjt5VpXiSgBfHa
 SgjawDFB98k6jf+fz8oDHaxsdatYqz4v5LnfaChL4EwPiVkH3YBQ1xl8VEpJMIXA+c
 oDpHheAoPRJhTg8dJhWvKcPhhEL3A2ZFk/r7pnZmc7BWuuS9lBmMs4BlFskZDXi2/W
 hcm9LAHuvgYurmjlwuyeqbSUj41aLJKtqWJoi0MaXr4jCo8abVmigYpx1YZ4OyajMG
 KT49JTsfVblD/ibYhNCLy0ZgWqLsmWZFV59F1Z6Z2O1G8MiZbKhyfPUSmNK2dgRZ7y
 RTOOP8hiNdt3g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_060049_355977_6E897946 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 30/04/2020 11:57, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:
> 
>   Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.7-arm64-defconfig-fixes
> 
> for you to fetch changes up to 90670f0ef690f9c8712f236e8cf14c156c9a6365:
> 
>   arm64: defconfig: Re-enable Tegra PCIe host driver (2020-04-14 16:15:00 +0200)
> 
> Thanks,
> Thierry
> 
> ----------------------------------------------------------------
> arm64: tegra: Default configuration fixes
> 
> This contains a single fix to reenable the Tegra194 PCIe host support by
> default that was inadvertently dropped as a result of the host/endpoint
> mode support that was added in v5.7-rc1.
> 
> ----------------------------------------------------------------
> Jon Hunter (1):
>       arm64: defconfig: Re-enable Tegra PCIe host driver
> 
>  arch/arm64/configs/defconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 


Please can you pick this up for v5.7 fixes?

Thanks!
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
