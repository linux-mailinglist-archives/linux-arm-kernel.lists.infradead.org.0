Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4B218A062
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 17:21:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aRrV44HVVA9YXyq5RtQKjW4EIYfUOODDciENyrdfeuU=; b=NOlv4MdJ25vrfa
	bJiX+3BRdFoI/ynSmFTaXSY2cGfKoGfx4ecPHcN5yImhCA38Hg3QDGRQXP4GN/tWNieskwni58AE7
	t+K4WPGCsBrt9SxWW1k25KPBW2SKL9ZARxBS8fhDmHPuAc8G8F/SaYGZLSpqdTw6DwVfXI+FKbkfY
	ekrwK9IzdM/A8K3ZfzygQ4W8wynItNRckQ3z5WRXEzSqdWkyN4OGui+j4ehw52ktD1Od8kynYC4uY
	jZWZrNkeT2GDvOBxmjFgln1wKYewPaY7QaGnXt2XXTdYqjhqltbMrgC02viLMVCGQRSxG/AAKfD2t
	T3FKEx/4aV4tD+HCQgpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEbRj-0007zh-W0; Wed, 18 Mar 2020 16:21:31 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEbRb-0007yi-W2
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 16:21:25 +0000
Received: from mail-qk1-f173.google.com ([209.85.222.173]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N0F9t-1jSiSE2dU7-00xMDT for <linux-arm-kernel@lists.infradead.org>; Wed,
 18 Mar 2020 17:21:21 +0100
Received: by mail-qk1-f173.google.com with SMTP id j2so26819662qkl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 09:21:21 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0gVLwIAF1HpiwI62CztgpeOBWdymh3q1SsRzzzRdsZb6hjxGME
 qZ6PPlwtEBlM0RF33cE18Tw2FsrKME7erDpUfVc=
X-Google-Smtp-Source: ADFU+vu8uNi3sW2bIHM5SJUX03S5Rg7I2QD/U+Jz3NTgam8OOAlxurtc5VkYhSV2QoEZDq8Ol/sJDXj90P9WjcZD+04=
X-Received: by 2002:a37:6455:: with SMTP id y82mr4978448qkb.286.1584548480309; 
 Wed, 18 Mar 2020 09:21:20 -0700 (PDT)
MIME-Version: 1.0
References: <1584546935-75393-1-git-send-email-john.garry@huawei.com>
In-Reply-To: <1584546935-75393-1-git-send-email-john.garry@huawei.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 18 Mar 2020 17:21:04 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0uxCyOZS0jkWM9DcAeQaKBEjovMC0QudLbu-1WK2i3Yw@mail.gmail.com>
Message-ID: <CAK8P3a0uxCyOZS0jkWM9DcAeQaKBEjovMC0QudLbu-1WK2i3Yw@mail.gmail.com>
Subject: Re: [PATCH 0/3] io.h, logic_pio: Allow barriers for inX() and outX()
 be overridden
To: John Garry <john.garry@huawei.com>
X-Provags-ID: V03:K1:en/Lp9/daY9EmLu16v2Eb0FLXMIkemiSJc0WSXSA+rR7550JQuE
 y/RDpz5bmV99WWxmPUqvoeMQLrSsPqtJJTGbnj4mmqCBjQ5lNgy6twCn9r0xFibiLKv2QG9
 NED170cg6zAGs13xL1yA4xNPvbr5g5qxnQVxjJmg9Pqp0+KLv5/k8Cv8yn0Zxk8jG1IEG2q
 Yn0y+JVuRYuNKwrNUa1uw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:S1FSKP8NnGc=:5tlBZWV4794JP8SlC13mVW
 UqXeg30lSfFRazlQTNTarFZQYc3biwfvwcCmhftSfWwHomWttM3nVCOSK7DECBz0oA0z96c5E
 LCxR82+KSVhaOY+LfeVVaGFR4sbeNAX0wPXNNbV5G7kfw4xENdYquP09RX1Md2bIyZB9tQKz+
 9MRnNyQHvN7vFZ50UD4VnCFtLgSBYCOp3ui/RmtTBtBQDj00QeNREjk3xwD2s7SBwtlXH/WWl
 NzZyWb8971KvIGkdpkt5K14UEGK+tm5Gr89E5u5QsnSmqK4A0gdclGETFvYVrj0gvjrMjk4l5
 pOxPFQtH3jq+WJKK9eVrJIwELLCZZOtsF6RcJg13PAojeDot1lY+1YbnmnG5Qep40DUUw+cBg
 +7FOW0zXjoTcb8jyUUTLw/q0v22mG1dByHtl8EfFKh6ug5Vb2VzacTpLzl6C+xIWfKZWEW90x
 HPOuZIG4rMtTZdVwnDjee/D1xqdLLDY2hpV2pBaJRQpXQv0kXaZ3u0vXucYyroO30PAgmUzU0
 yKtpJM9Hbfr6uA8P38wo8qVHeYSSL+UNC6toFUQLBUvnvhxqluXLhc9w6qPPtyLNV3MrytxNC
 l6+jMuBXyQwotQJ69ZpBPYy/i4hficLWyf3IiVBjk6rEMJkeqRWFwJ/kROFMx/je04xCB2UoV
 dL8oPnczWfVyY5EE1vU3PrhmtfeDEVgwIUu/6n5Ti+5QecrLZj+43x5qk6gJRaX1jbhoz3xNw
 Z2RE+ohmnMCbuh04VV7IUGH28DE5VX3s2zSe611CGMGGpne+TKL3LCblmmfj3U+w2odBVgS10
 9Uwn7uWmXCm8YixFh1DWisb3exDUDSZKS+0mvRSreE6MHmrf+E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_092124_324950_B295BDD6 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Sinan Kaya <okaya@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, Linuxarm <linuxarm@huawei.com>,
 Olof Johansson <olof@lixom.net>, "xuwei \(O\)" <xuwei5@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 4:59 PM John Garry <john.garry@huawei.com> wrote:
>
> Since commits a7851aa54c0c ("io: change outX() to have their own IO
> barrier overrides") and 87fe2d543f81 ("io: change inX() to have their own
> IO barrier overrides"), the outX() and inX() functions have memory
> barriers which can be overridden per-arch.
>
> However, under CONFIG_INDIRECT_PIO, logic_pio defines its own version of
> inX() and outX(), which still use readb et al. For these, the barrier
> after a raw read is weaker than it otherwise would be.
>
> This series generates consistent behaviour for logic_pio, by defining
> generic _inX() and _outX() in asm-generic/io.h, and using those in
> logic_pio. Generic _inX() and _outX() have per-arch overrideable
> barriers.
>
> The topic was discussed there originally:
> https://lore.kernel.org/lkml/2e80d7bc-32a0-cc40-00a9-8a383a1966c2@huawei.com/
>
> A small tidy-up patch is included.
>
> I hope that series can go through the arm-soc tree, as with other recent
> logic_pio changes.

Looks good to me, thanks for the cleanup!

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
