Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE9C1E3E1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h2drNp7+9ewsokOpo7Uu0nptomVLd99CK2p+915hFUA=; b=OVXPdW0KUgeMuW
	Nsf9yCm1z3Iuyt6tgC17VGZ6QCUKIB5LkPRDwpGkm6Jnhza4UybmgjD7fKKPJ1osXClqAXjf50e3T
	Dp0cwANFD/MMzQD5gRPC3aT19uWC4Ny6u7YexxfkXACbF3eOzH3IlqRLn+L3Vx69L3S/Sekm6cIrZ
	ZsWM2w4Y2QwqtD6Hu1A9O4rt8Sc9GFmkQkpH9ildm3/POITgS7wuQ6tV0oLZkK/VsUAZWhyVl/wnp
	1Vryui73slgLJaN8IqrS0OKb1UD4X26HIxbYuXWCX/BCQNmEFCttI3f4OvRcD9SE83WKW5jYLpHnQ
	45EnrqjX9NRfTcgH+7TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdslV-0007DQ-IM; Wed, 27 May 2020 09:54:25 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdslH-0007CG-6c
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:54:12 +0000
Received: from mail-qv1-f43.google.com ([209.85.219.43]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MN5aF-1jLX5s1zgj-00J5LH for <linux-arm-kernel@lists.infradead.org>; Wed,
 27 May 2020 11:54:05 +0200
Received: by mail-qv1-f43.google.com with SMTP id f89so10874203qva.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 02:54:05 -0700 (PDT)
X-Gm-Message-State: AOAM532hrRQM4qQBn/0yRPkljr6yf3LQI/HuRRKOPiGoR1Oz1x767Joq
 3WkFHDOLS/Z8TrOngPmGkYzLu137eW/3TCr8GrI=
X-Google-Smtp-Source: ABdhPJwFY+9e2QwGxBuOVJhyvZzHkmdup67C33Hon0tX+xYCanXD6siiWNyzzW3vpc4K6tTqx9WsMyOJzXh6HoLxoPA=
X-Received: by 2002:a05:6214:370:: with SMTP id
 t16mr24222212qvu.197.1590573244279; 
 Wed, 27 May 2020 02:54:04 -0700 (PDT)
MIME-Version: 1.0
References: <1590493749-13823-1-git-send-email-zhangfei.gao@linaro.org>
 <20200527090007.GA179718@kroah.com>
In-Reply-To: <20200527090007.GA179718@kroah.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 11:53:48 +0200
X-Gmail-Original-Message-ID: <CAK8P3a35fjXt1F2hJygup5gWfjPHZTuU+VD69K5uzrNhhgu0Pw@mail.gmail.com>
Message-ID: <CAK8P3a35fjXt1F2hJygup5gWfjPHZTuU+VD69K5uzrNhhgu0Pw@mail.gmail.com>
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Provags-ID: V03:K1:kZCl8YHfGLgFQHjOPgOVkQw9LXTvWNY8g3Q65r80IpnlM3i+DM9
 f4sldfZ9Qxw5AiZywrZWGjw2BQ1YNjJabpl8gdCKyFUuxgFdXRCVR4xXQerQc5DobNAJuAc
 h8v8hcbwX61NAoYjw4shube7IqQ5IFZYd8yqBiV+CT9IcBQca7I7qRpf1GAGkSe0mthxx9q
 Z0bqMM9W5kvE2XvSsZ+HQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hC5/fc4W6ZM=:6nsaBYyCd3n4+pkkVIQn5f
 /XbWdSOM2++nL02bwK4eJ9+jYkXbvPb0+Wqps6ftPels+tJkcyUwDNDzcw08THkPdLPk0lc52
 xHW+MCRJSsFVmd8AUjV4oGFEX+uVnWEnWLsH0VFhTInsNHqXBr3a7Z9ycD0w8DnRaFFdMC/CJ
 or4BjEu6A3c9rhIU19d/1lSXJ0ik3hkHjmHFBMQltxlkMWCpe2FGniS4B+FZABec0/NAUxpUY
 56H30A9etMKn+oelvNTqeQDyQOWKZv17ViWxIOoXoJwqWKOjcKhkQ3c0VisVAFrtmhsNFiqyA
 Pc9SOYMJBd6fH7g3hC6Gdu7N0Z2IXt9tymPfkbDpkBpZz1aZpQ+5PV6guNzmkIs10IP4f79eQ
 9InP+yQsdS3IndzR43LGMyfdRt8AnNvrt1oIBOc99gpCK+TW2ELudT/isnAfAtWShsS1my3Lv
 Zqa4UceAuxK93EzaMoB0bBmsbkzwxCOE3tyA/BAMLHPoSf2y8Jr37q1E3hUygIsy8rfYBKV/J
 YrTjs2YVRJKDklYMLi0Hd3RcNZ6MA9vzZ4XEOY2EhQqtO1ziz7kVdaGH7XLbyYEPhf+HPC/hG
 AbSAFVz060Y93ax+vAz1STWnXW4vplLQ2ceNePcrzpM1ltkMu8L/b3fpg/r5S1ioNfwgfj0Ir
 No0hpG2DTocCYCyY/ECwN0Bv6PB1eKIrKJ25VU0wSuewHbgXavtTCXJ2yNKpd2nb1sQUpinfn
 MtHK6/KJW0odWsOroD1VI2D+1ZNpdQJyD/efY/f9yShaDIndOIKbEXNhshUkWo/Nh+qDeOnJQ
 qzS6UVAVW6uqcgUJAM8SUA/eNaR+r9QGBIfrdPm2OItJIj6aIY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_025411_535447_21364E7B 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
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
Cc: jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-pci <linux-pci@vger.kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 kenneth-lee-2012@foxmail.com,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Wangzhou <wangzhou1@hisilicon.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Zhangfei Gao <zhangfei.gao@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 11:00 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Tue, May 26, 2020 at 07:49:07PM +0800, Zhangfei Gao wrote:
> > Some platform devices appear as PCI but are actually on the AMBA bus,
>
> Why would these devices not just show up on the AMBA bus and use all of
> that logic instead of being a PCI device and having to go through odd
> fixes like this?

There is a general move to having hardware be discoverable even with
ARM processors. Having on-chip devices be discoverable using PCI config
space is how x86 SoCs usually do it, and that is generally a good thing
as it means we don't need to describe them in DT

I guess as the hardware designers are still learning about it, this is not
always done correctly. In general, we can also describe PCI devices on
DT and do fixups during the probing there, but I suspect that won't work
as easily using ACPI probing, so the fixup is keyed off the hardware ID,
again as is common for x86 on-chip devices.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
