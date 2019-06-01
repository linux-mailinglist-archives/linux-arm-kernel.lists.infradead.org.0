Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A29320A7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 22:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rW3LLgyfaJn2dzq/LNOEG2qF9xegrVFJdTWdM/6MarU=; b=PSs
	dZUX4X4je5TNEjCt9e6s5zV2xnhVO1+5UMVp14HDXOk5JlUI9qPVI1/bXy8c+avWWaFqUC+en7dYo
	u9S3xKpdAODGit+/80uj1OYuHCJVFFBtgPNCF8VLinP4/FsJqgFJvuZYpaR2TXt2T7N2ilp4akz78
	eWwi2iHEvJ2ntGRiQHRTpB9EcSMNnm8MklskLHVgYYbfOFZaIEzl9BnftAX35OqFfapIgjjwtakrs
	g+rvlwEN71DUsKYcJbqa1bE7T0c1xUCrrEI7ilohXl7fXjZ+fJTi3dmatuYnfIF+sbJjSml0cW9+V
	ZWGQxY7PsFXjRtlAWp8xCm/5cNQ4Qpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXALQ-0003oq-6b; Sat, 01 Jun 2019 20:11:12 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXALK-0003oT-W4
 for linux-arm-kernel@bombadil.infradead.org; Sat, 01 Jun 2019 20:11:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZBuyY7HBp3yI/R4CpvAs2yfNwV98Xq0yQGKMLzYgxTY=; b=juT8ctFQdgZ7tY3FLtdXF+4+p
 vpKnMqDq2y/5NjR2/tBrH1+WfBnr7l9kz1l/vanbDTnqOwJmumgGumVpKob5q2PrlfaTUBuTmd+Na
 kI7eFwQWSjuXKsZUBnjL3uo3Juqf5wG350B75hLQHIQiQPPt2YO2/DFJrkLXhjCE3VlXgcI6794iK
 eqtPFHs12IihQHc9gNWZyCOdeGGi20rVvtJXupmsAhHaNmAVmOG2qRJcdDLfvfoRfHgCtki3dDfZa
 sD/mNlv7+2/DrPH6tcaoOsKpHtw5pLaxv4UlUQxzYarah+2pr+SCi9hCE0SLes+BQVQKOZ7Dqblny
 PmY5iVQ0Q==;
Received: from mout.gmx.net ([212.227.15.18])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXALH-0007ka-DP
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 20:11:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1559419839;
 bh=ICYulOaDDu4Ey1z3HoQ0MCtyYdkzjS3YwLST+w9zPsU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=bNCcX2B//x79pHNtY8cOEAaceA40Cx+193pCmiZXG/MVHAH0VrIqta4/MAqEUQMHI
 XJ3e3FoIg8ZW/h+Dbn4LKYy28Zj9U0929xK4eqWfCMAs8FB0rKvwFrLasgoG/dKTT9
 LpfizzDRK2pJwaNDLfCmfsOYQfwEhECXDEulREWw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.160]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0M9ra4-1hQakY3UaG-00B59S; Sat, 01 Jun 2019 22:10:38 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [GIT PULL 1/1] bcm2835-dt-next-2019-06-01
Date: Sat,  1 Jun 2019 22:09:16 +0200
Message-Id: <1559419756-5941-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:UpB6vwyQzEh9qffJl5eMjGcqLFEdTDWnluw7jib5BIzcUYFCyGy
 OHrdVE6m/vKsFfiB6BEBKhFNczjt3IfyWJPLlK8Vg678EAD4V7reMMCJtMeh0ikLIU7V0tk
 Pkjgy5PbgCf+DAPSeGmFxkfR9aRuHH0ML5POYqjD2DHJFNWUdcF40DL3nbOdSwA1O8nsMH2
 cQexaCt8+CW48XeyCDjsw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Sv38ZiG8aEE=:wn5L+0PqdgvCjvmFTGhfie
 DekkTuNpCynQ98b9RFgxGCwCupwfeUCPM3z5lFI6mNOK1f4MmqgOyWGrmV4PkVZmbPdSyuee4
 VTgQES0bE8wy2LCk5fpzJrPdmo6pCuJNPIer3fZSNM0VxzH2bZDr4KdiEkvxFT2P+hpJJwPC3
 KMzOg5wXQEpt5AkA6tJrD6YGZwbcVIFWcKFsr4xc/1J/KqiwLQMdtBtzDzhwP5e7Zp1IPuMxh
 uJ9UjQ43tZlZCaI3BVt/d52ich3EpvNP26xwJ4PvpfEkrO/lg3JGUmcqY1xVsNs8Nl6DnTyDs
 MCY8yzX5lci77zsfBAyjm4iQz+U75V2w4LIj5MN8cyjnBm0L7JegBPgAAEXApy5E3tExVF9s0
 n6+w/+h7uWMm746Ns7WS+m/NPi6+4Lx6K99zU4TvduOJA6s/RcCHHczzmTB46w5Zxh2nGShYh
 CiODYJiOsOsd6dutZJKluNi6TRFAaGeaALB6vdW+tTHrrW1T0WLEAwIW3eelOYNtH4bu1G7v/
 54kWLwgL6LqbgzAfejccb/mjNb/oBeyKU1+Kn9YsPNPYXVUBFGDVDkqNfKbU/xqwmjH+pUSsn
 MYxjAqQ+k/afoEgPipPO/71IX99Hpsp/ixTBPLfgQXUdPIxglLEFZS+tPs1RMeHbC1OQXWXBI
 4aFnVz/c38YUq6kxoOY2isqeMlhpBUOAatOzU2cyFITwJX4l1zKv/nL7IjIjZ5ewAlMXMuVlP
 DLaeiIxgSgmE72DXsFPXprn0hoxR/OXH0N/k8GLJhe7jgwn13x+PDBziA3h6H9ig3Olb6zVQJ
 pWYwlKGwaHjknUShLbAiMFSMGL+1/QZL9PN/pZltKAqBDpaQnz7hrQtVFwJzvG7sk+mirk/nt
 hEQFjJZY9MSXwYMKSzvhF1IPXYq2W525v6VfhDHwnTQSuwWXvAcELv0OhdS0FjNlDTWfPu+bZ
 sOE97oVN9DiFN3mkVyOfv0yH3lR38HEY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_161103_734817_A825585A 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

the following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  git://github.com/anholt/linux tags/bcm2835-dt-next-2019-06-01

for you to fetch changes up to 08e3c41585386f5cefc91ede8835005742df4ba9:

  ARM: bcm283x: Enable DMA support for SPI controller (2019-05-25 12:50:18 +0200)

----------------------------------------------------------------
This pull requests enables DMA support for the main SPI controller
on all Raspberry Pis.

----------------------------------------------------------------
Lukas Wunner (1):
      ARM: bcm283x: Enable DMA support for SPI controller

 arch/arm/boot/dts/bcm283x.dtsi | 2 ++
 1 file changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
