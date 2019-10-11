Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0821AD3D39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:21:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y0zErkqi2vyWCKnj53DeoY9FsrBjx+7hGiw6qJta+4U=; b=mX3MlMQiyyZWgX
	cNaw4qpze2QClGrAMJjZUgKf5tFvhdMSoqsvvHrl6+T3e513YTUt6d6/lbkqedygcx2xYNPROwHZ/
	VfH4fzBdeYBE0CBxCRJ/UTGy6kfzOZASbEBJTiBpIRerIrgMcDvtg+CHvyD5ZAskNEwsGwXpfxx8U
	y6qCIJ/+CRQCj+PSBPt354xlK0yD/5CL0Ci3jaSmVDInI1WZq7T+NMx97vBlG5aml6a3dFaK23cWv
	pm6jla3DsQ9x4MSk+lLixOiluRvtJF2vQAmPw5KFfJs9E8Rrm3alEF45cNCVKtHbzugAy6HLsYaLI
	DPFZBoQGhiACXPRf182Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIs3D-0004sy-PH; Fri, 11 Oct 2019 10:21:35 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIs34-0004sV-OV
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:21:28 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191011102124euoutp022e15a78239ef48702021c1d0ba8db8f4~MkIgx_nsT2095320953euoutp02g
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 10:21:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191011102124euoutp022e15a78239ef48702021c1d0ba8db8f4~MkIgx_nsT2095320953euoutp02g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570789284;
 bh=vVluA6MQRK9yUL5rBCxrD+n/jRYq/J0faE1HgkGlrk8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=rxqOcm44PxjnpQuDef5U8r83h/gyBHHw+aE48N4sAWh8aI+wqBP59nik/n3dbyUnK
 mCjsqRXxvtXOnXWWxVbexc9yYo/0+WtxLRLn41h6Xb56bT/akThw+dg7o7QKW9Chku
 gAorYT7/kz4KO28tLDLQMfxLv9JxyeiaS099X57A=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191011102124eucas1p28bb3916d080b23951a5a6b7bcb367b36~MkIgfttOp1532615326eucas1p2i;
 Fri, 11 Oct 2019 10:21:24 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 51.5A.04469.4A750AD5; Fri, 11
 Oct 2019 11:21:24 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191011102124eucas1p27ebfadf5b16d0b943471129d242728b8~MkIgNOw0e1532715327eucas1p2Y;
 Fri, 11 Oct 2019 10:21:24 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191011102124eusmtrp231ae2a1dd472626b67267c1f6b5d6b6a~MkIgMhQMc2631826318eusmtrp2q;
 Fri, 11 Oct 2019 10:21:24 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-24-5da057a40cfc
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D5.DA.04117.3A750AD5; Fri, 11
 Oct 2019 11:21:24 +0100 (BST)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191011102123eusmtip1ed8d0f667874a637501b5a8d051fe715~MkIf0QRUX1950619506eusmtip1G;
 Fri, 11 Oct 2019 10:21:23 +0000 (GMT)
Subject: Re: ARM Juno r1 + CONFIG_PROVE_LOCKING=y => boot failure
To: Sudeep Holla <sudeep.holla@arm.com>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <d315d99c-ef5d-eae0-86e0-a6d71355ffc1@samsung.com>
Date: Fri, 11 Oct 2019 12:21:23 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191011100521.GA5122@bogus>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKKsWRmVeSWpSXmKPExsWy7djPc7pLwhfEGjz7I2LxflkPo8Wmx9dY
 LS7vmsNmcWBpO4vFm98v2C2Wn9rBYtFyx9SB3WPNvDWMHptWdbJ5bF5S7/F5k1wASxSXTUpq
 TmZZapG+XQJXxpt1LxkLvnBXnL+yiqWBcQNnFyMnh4SAicSah23sXYxcHEICKxglvnZ9YIZw
 vjBKHN62iw3C+cwo0bq4nQ2mZcnq/SwgtpDAckaJ3Q+zIYreMkpsa3oPViQs4CjRMP0WM4gt
 IqAuseTsFkaQImaB94wSH9q+soIk2AQMJbredoE18ArYScyevw1sKouAqkTfltdMILaoQKzE
 vR/HmSFqBCVOznwCVsMpoCWxZfc8MJtZQF5i+9s5zBC2uMStJ/OZQJZJCCxjl/h/vZUF4mwX
 ic7ePewQtrDEq+NboGwZif87YRqaGSUenlvLDuH0MEpcbprBCFFlLXH4+EWgszmAVmhKrN+l
 DxF2lJh78AQTSFhCgE/ixltBiCP4JCZtm84MEeaV6GgTgqhWk5h1fB3c2oMXLjFPYFSaheS1
 WUjemYXknVkIexcwsqxiFE8tLc5NTy02zEst1ytOzC0uzUvXS87P3cQITDyn/x3/tIPx66Wk
 Q4wCHIxKPLwz5OfHCrEmlhVX5h5ilOBgVhLhXTRrTqwQb0piZVVqUX58UWlOavEhRmkOFiVx
 3mqGB9FCAumJJanZqakFqUUwWSYOTqkGRlbXI6dMuyaUKthw6npIcK+0OLXqqu5qs+Dd86Q8
 rSxc3v62Lk76KnLi/JR35xjFeiJM5P35FY4fLZdUftrcI7VbTO3u4k8CDNmskU2ztWy3u//2
 75VN84tsEzlY+9L9qrpp0pRZWzoOXmpIYcncOvl3xOVavn87irYUOf8KaojQuDp342RTJZbi
 jERDLeai4kQAgbnZZjgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKIsWRmVeSWpSXmKPExsVy+t/xu7pLwhfEGkzUt3i/rIfRYtPja6wW
 l3fNYbM4sLSdxeLN7xfsFstP7WCxaLlj6sDusWbeGkaPTas62Tw2L6n3+LxJLoAlSs+mKL+0
 JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384mJTUnsyy1SN8uQS/jzbqXjAVfuCvO
 X1nF0sC4gbOLkZNDQsBEYsnq/SxdjFwcQgJLGSXeXgVxQBIyEienNbBC2MISf651sUEUvWaU
 6D56ACwhLOAo0TD9FjOILSKgLrHk7BZGEJtZ4D2jxLt7khANmxglvh2+BTaVTcBQoustyCRO
 Dl4BO4nZ87eBxVkEVCX6trxm6mLk4BAViJXYtNcMokRQ4uTMJ2AlnAJaElt2z2OBmG8mMW/z
 Q2YIW15i+9s5ULa4xK0n85kmMArNQtI+C0nLLCQts5C0LGBkWcUoklpanJueW2ykV5yYW1ya
 l66XnJ+7iREYZduO/dyyg7HrXfAhRgEORiUe3hny82OFWBPLiitzDzFKcDArifAumjUnVog3
 JbGyKrUoP76oNCe1+BCjKdBvE5mlRJPzgQkgryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpi
 SWp2ampBahFMHxMHp1QDo2JV3ERZrbqsF8YGywVuxcw5ZZI8w2sGZ4LXhwPbq/YIq8pXB/+5
 ncXp53L1w2u+g8F7w1448S+SWn02aXZd5rZ3Kj6Zup8DvlaWq7x1cvqxoS5dyPXCf6Gu3oLW
 A4YayxbV9Z67zvZZZ8PtJfc5epMiTgf3vzW//qtduXat+sbjF/44bUwPUGIpzkg01GIuKk4E
 APyqN8TIAgAA
X-CMS-MailID: 20191011102124eucas1p27ebfadf5b16d0b943471129d242728b8
X-Msg-Generator: CA
X-RootMTR: 20191011092604eucas1p1ca11ab9c4c7508776914b0eb4f35e69b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191011092604eucas1p1ca11ab9c4c7508776914b0eb4f35e69b
References: <CGME20191011092604eucas1p1ca11ab9c4c7508776914b0eb4f35e69b@eucas1p1.samsung.com>
 <33a83dce-e9f0-7814-923b-763d33e70257@samsung.com>
 <20191011100521.GA5122@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_032127_005228_818DCB8D 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

On 11.10.2019 12:05, Sudeep Holla wrote:
> Hi Marek,
>
> On Fri, Oct 11, 2019 at 11:26:04AM +0200, Marek Szyprowski wrote:
>> Hi
>>
>> Recently I've got access to ARM Juno R1 board and did some tests with
>> current mainline kernel on it. I'm a bit surprised that enabling
>> CONFIG_PROVE_LOCKING causes a boot failure on this board. After enabling
>> this Kconfig option, I get no single message from the kernel, although I
>> have earlycon enabled.
>>
> I don't have Juno R1 but I tried defconfig + CONFIG_PROVE_LOCKING and
> it boots fine.
>
> So if you disable CONFIG_PROVE_LOCKING(i.e. defconfig) boots fine ?
> Are you using DTB from the mainline ?

Yes, ARM Juno r1 boots fine with pure defconfig and mainline dtb. 
However a few minutes ago I found that it boots with 
v4.14+PROVE_LOCKING, so I will bisect it and share the results.

>> I've did my test with default defconfig and current linux-next,
>> v5.4-rc1, v5.3 and v4.19. In all cases the result is the same. I'm
>> booting kernel using a precompiled uboot from Linaro release and TFTP
>> download.
>>
> OK, I use UEFI+GRUB but I don't think that should cause any issue.
>
>> Is this a known issue? Other ARM64 boards I have access to (Samsung TM2e
>> and RaspberryPi3) boots fine with the same kernel image.
>>
> Not that I am aware of. If you could send me the bootlog with defconfig
> I can take a look and see if I get any clue.
>
Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
