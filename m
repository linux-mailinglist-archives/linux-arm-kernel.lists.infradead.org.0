Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8390C17B7CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 08:55:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYnmCYPbMQ2iKPE/U53f2DZXUKsE8MhX2g7Qzi4LJN4=; b=G5ZF3da46pSors
	Eln9ie1CEFdSCZ9ym0ijkyDVtDpLbYaRfimYWpUZusYaP9dHoOsgA8D0DtIUto0SmbyAragxex1AD
	pVmapNFExSL66bZ/Koyy7/iI53gpw53v68dTb5sG70giL3yHEXGGhxtyfwdJ1PLaPy01Nj9+VO3ci
	n40y6oXLhdMGwQ0sEKiTWNKjM/lpov2fDJ44pfEqYnZFk1kOjiCqk+0FPHaHc1gy88XtIrPyBvzl3
	gttW1RD12oBdNLQQxqUTF5Z5oePMHr3ZTSFJ7tzlGfgo8XWnRP0baxV99Whx/SKf/WVdFudvTnu/i
	OGoY46UCTJqVJhdMee4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA7ox-0004q7-AH; Fri, 06 Mar 2020 07:54:59 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA7op-0004ot-MT
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 07:54:53 +0000
Received: from mail-qv1-f50.google.com ([209.85.219.50]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MacWq-1jl7Ww0miY-00c6Iv for <linux-arm-kernel@lists.infradead.org>; Fri,
 06 Mar 2020 08:54:44 +0100
Received: by mail-qv1-f50.google.com with SMTP id u17so536719qvv.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 23:54:44 -0800 (PST)
X-Gm-Message-State: ANhLgQ2Mw8Ds8pzcIA7dxegKFmO86sm+HXATeDgyd4iuQIdcvRYv7AZs
 ZCUrJsOls1ShtkGxMu9YjkS0IHwqD9C3+0crLHU=
X-Google-Smtp-Source: ADFU+vtX3UTxvnJXm8eRDDZwtBAu5SswLmAGFT8PgY29/Kcq+WtP9jyt2rMuXfYWDab9OIu69nS0xfEq9MXBkaSYcIE=
X-Received: by 2002:a0c:f647:: with SMTP id s7mr1872718qvm.4.1583481283080;
 Thu, 05 Mar 2020 23:54:43 -0800 (PST)
MIME-Version: 1.0
References: <2e80d7bc-32a0-cc40-00a9-8a383a1966c2@huawei.com>
 <c1489f55-369d-2cff-ff36-b10fb5d3ee79@kernel.org>
 <8207cd51-5b94-2f15-de9f-d85c9c385bca@huawei.com>
 <6115fa56-a471-1e9f-edbb-e643fa4e7e11@kernel.org>
 <7c955142-1fcb-d99e-69e4-1e0d3d9eb8c3@huawei.com>
 <CAK8P3a0f9hnKGd6GJ8qFZSu+J-n4fY23TCGxQkmgJaxbpre50Q@mail.gmail.com>
 <90af535f-00ef-c1e3-ec20-aae2bd2a0d88@kernel.org>
In-Reply-To: <90af535f-00ef-c1e3-ec20-aae2bd2a0d88@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 6 Mar 2020 08:54:26 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2Grd0JsBNsB19oAxrAFtOdpvjrpGcfeArKe7zD_jrUZw@mail.gmail.com>
Message-ID: <CAK8P3a2Grd0JsBNsB19oAxrAFtOdpvjrpGcfeArKe7zD_jrUZw@mail.gmail.com>
Subject: Re: About commit "io: change inX() to have their own IO barrier
 overrides"
To: Sinan Kaya <okaya@kernel.org>
X-Provags-ID: V03:K1:2cWuVomlkbPBHZzemBLs5eLb6y91d5qDOEH6D1GodLB54HGOVbr
 5rQQiLnGYjDo4Oyn5oB/4X18g0rvm9ycq5I8cyHrExgOtKZXb2AbcEWmjb1ifXryfiQ+LS1
 JG+o0YqwhyMJvzJeEWN6w63qX1bwp8qBrTW9LCdEFjVFialn1MVcFnkxeeaT6al8/Idtcjx
 Hxcupwmqr5ApQ/U4bFcyA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uSmyKMQbNS0=:QdOUhpXMsMsOLrBZfpvfDj
 Cwpmb1GgUep8Nxn4aIObyKkZzC3Y44jPwpqiWUOU9oF41NXNnqiB28GMPGosX1ZnJRWuI0KIk
 8H3g7bd6DELNj1DZZ2vAiT3wc5f9/ME+af1GzIgpYaHcbxtmlOdodrI+WoKy1u/NT5NRu7and
 j2Qtq88ZuPAUpRT6ozYLggWSh9+y1PUzkx+CizHW+Fg3mKueFKgR7nyrBar8a6e3510nmXinY
 axuekizLejVEIUa++7UY96lUeTkGC/U1J88PUObPHzdS+MMwEdoWfhd4/RmBSvkohwkTnqMU5
 3CDmYb1z6ziXoErVRADJB1mEPmktYBkXfxt9KcMrg47v4R3G6ls+IG2q7dEt8IXFiNHppXEr7
 ezBNKp4r58MpbsrHtQjVIjMHCY2kmpNnwX+ewjT/4m/JJUyriA5H8/Qzif1koEhKk6CvAhPwq
 nLQKCMRmlGd1bAugfBGPp07hMxV1bln9FpaEABQWykL5BYqT31BvvsmNMUQKFysiqsDJ7C1l6
 etMvJlck8MPdhRlnvzkZHuYMyoWVzluEOnN0sylwZTbNXcd8JamVOQxP7OINPZXbVC757/siG
 LUqmy1NmV0cJ7mS1tFWg6s+bl1XnWeJwp58sOAAw1zObromybYmC49TLvOQl/Whdbf9Ch4DPO
 OZohvQBIBzXwCpJp+WWMcQ2XBvRjjHGMJg96nscdsfFvvybUkRcd85s8PxAylkWlij2FUOzfq
 XmgsUtxNgoh5Y+9nTtY5Uc2ZpSrCVYqbHGl2+7Ow4YmZU1fIgyYvW8fGDcPqAzj08EHdLJYxh
 vKBhDV5UQlBeBTgyUFzmYqdoXI2LolD+ywoujHUwm5MmO3TqmU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_235452_035890_C29841C5 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, "xuwei \(O\)" <xuwei5@hisilicon.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 6, 2020 at 4:44 AM Sinan Kaya <okaya@kernel.org> wrote:
>
> On 3/3/2020 11:40 AM, Arnd Bergmann wrote:
> >> -          ret = read##bw(PCI_IOBASE + addr);
> >> +          __io_pbr();
> >> +          ret = __raw_read##bw(PCI_IOBASE + addr);
> >> +          __io_pbr();
> > __io_par();
> >
>
> Why do we need to change read##bw above?
>
> read##bw already provides strong ordering guarantees across multiple
> architectures.

The exact semantics of inl() and readl() are slightly different, so they
have distinct sets of barriers in the asm-generic/io.h implementation.

For instance, the arm64 architectures defines in_par() as '__iormb(v)',
but defines __io_ar() as a  '__rmb()'. Similarly, riscv defines them
as "fence i,ior" and "fence i,r".

You could argue that the definitions are wrong (I have not checked the
history of the definitions), but as long as the inb() in asm-generic/io.h
uses those, the implementation in lib/logic_pio.c uses the same ones
to make the two behave the same way.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
