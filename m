Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF2E8F385
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sCTf+y4Vapm/WM/QLUPvINb4JDTp3yQ/3b50WNJ1l7s=; b=lU2P8pEDEPv+5i4e6Ogt3eYW6v
	IdZyJ6X3F1KYeIUJ1gObJE6Agu+kalfMFUvmp/G+DKTrEKneTXolTDhYAGMdwUS9rdxehPgM91u4Y
	Z/Vhk3/Cz0d3H2fnOZ2xD7qmOreVXcIWaSu9MU8gtU+YNCcP+c4/2YKvJuIQx1U28uzMp6321uIFi
	zvBeq8CEAD7Fjmr8+YUf6+OdQCmaiGmXU/yrmss91++F4srbS8b2T77ilto5ws5r815hjzwpzFLYF
	bbNDMHNh4iqP1SgxnpOyZjR+Vnrhw6VHDDLv5cYXYKMEBF2/MzUdXfNkBMSsyNH4oayns3Wi5yHVv
	JNM8DIjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKaI-0002cK-En; Thu, 15 Aug 2019 18:34:50 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKa4-0002b1-Of; Thu, 15 Aug 2019 18:34:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565894066;
 bh=+2oonmagg4vxfNFfRbEmDPibIdyxVmitLgc60Mm0X5k=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=MSAx+ogl0gftfHW1BIAJ1/IFdXdQ0gK9ydf0+kJWc2FtMpx1HWpbTQ8NASDzBgYAg
 +geBVmow8KWC9N02Bf/dA7MSy76aPqzK+olpc6eJgHYYJNAcX5izUW/6Y5UHZEUv+b
 Q4/jOPhT9KWF7MdlYccvDOFf4yhDnIy1MvfWx0Y4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MIdif-1i1Khr209N-00EbPV; Thu, 15 Aug 2019 20:34:26 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [GIT PULL 2/3] bcm2835-defconfig-next-2019-08-15
Date: Thu, 15 Aug 2019 20:34:02 +0200
Message-Id: <1565894043-5249-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565894043-5249-1-git-send-email-wahrenst@gmx.net>
References: <1565894043-5249-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:pgYfzagC2IHOaULxCptjMluA3Bu2jXR1/IqGOQcWRLxCnf+GbYW
 +oZOSfYhJwPq+poHXPY3Hz37KV1d/BB3WLtkHfpHL2E8773oJMDhFHBNi4p36jd7Yw8Mqgy
 b2IA4xL28luSgWWkenBEyiWtiaz8gxNGdMyb35UXdCoY5Of6dmn0vQ9ugycIMyUwyFBXj7T
 KD84i48STPVi/BI8fXg9g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YH2EV89Ie1M=:XnvyZlsxLzaEAqtKiIPEmD
 gPzgQiYE2mpHxkVrvVeqHxpSQyZdTFZcb4V0KYdlOX/bsVFIi7aORjRIrW4JE5C5zs+rp8HtD
 WgRIaGvPtdBmHs1YyU8341EMrynyhAn5dwTsBn8HuHxhjil22PCMajt/5BRnvT/rV9lMuHXq5
 ux/hpFEUA9UpQ1RuE/PU5biVH9O2dOLk7lYtz/ihU8pV+CNbiclZUkHRtkInqSlUHuEQ1tqFU
 ZV+um0CHj2BZWtAS6oqoWLYZFm2NzwT1VYHWIf2XsjTKVaTNyhMXatabHKdr3VcRJrMZ18F5S
 8a3zYm5B3EMwkqGIgooLs3w97tZq0bCVTekDp+w3MPBxS/RbRifZjBfc6iBM8s4hPaL8KqByw
 jUbuyUYM3llnUV7AQJohbKA26fCC9kMJ1oHrNeR12V9+nbwoENHE112P2T+IKi5YjbjLANDpI
 9IJL7ndm7ZNJhEsB+i1d/66DiFQkzWxLbbARJ3v3+ZpBLbysVremttnsCa2sfgjnWVZSIXXxK
 wTXOsBRkuifa2ED2MBEyolvBNh1Ka2WpD5FKeYYfptuxv1beDB6O4yO5Ht5lMyQvcN0pCDM9P
 VpJKU51xwVp1t5oCc6+j1ptEpbCI4IcqZgv8F5pgg1H75MxbmXeveHhdjaS2ZKrrQb0+D9otr
 oYzaBVZG1WW19m0e71bmCZguY0+o6DElrsuW9OECVbcDuXdI1uIUSn5iW9tIHTWBN+DwbEPjt
 SYZwxBOXj4Uv7Xmi/IlwN4ZTmH+MXNJTuekrHe0mL1dfrFMi9Uey75q+BCeSbTAa33W3+3Dfr
 gf+0bE6wCQg+1SSHxVsDgyBHMeqxFsPNdaRGUFmoSs/pHajN0nLQJJ0B7J+bnR2WGYLpLQJ9i
 +062Vz8n7lWTQctcG1HY6CuzqdcAaqZmGnYMz9OT4wiUwbSO4M8h4fVhDBMTQhhpdXE4hZKKU
 dqJzFEPiLDQFGBLk363s4bFLCIFLBQ9vxV1mDIoTlRVseHmBtv90yz3Wb3sGarhGhtZsCnGHf
 eqaeZXN/ydpyPEUcOLPb1yUsF1jMoq6NvLvz7kHCcT/tEPm0UnIbqZiXP48YlhPG4YZ8EfDvl
 r/S7EFLTsaUA8vfs19J6qQwIOUcwaOKLheR/bydcxT00nyK/oWfGbukkA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113437_101178_C2849BB6 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the git repository at:

  git://github.com/anholt/linux tags/bcm2835-defconfig-next-2019-08-15

for you to fetch changes up to 4c6f5d4038af2c7332630bdd75cfdc0309e97242:

  ARM: defconfig: enable cpufreq driver for RPi (2019-07-23 22:53:35 +0200)

----------------------------------------------------------------
This pull request enables the new RPi cpufreq driver in the 32-bit
defconfigs.

----------------------------------------------------------------
Nicolas Saenz Julienne (1):
      ARM: defconfig: enable cpufreq driver for RPi

 arch/arm/configs/bcm2835_defconfig  | 9 +++++++++
 arch/arm/configs/multi_v7_defconfig | 2 ++
 2 files changed, 11 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
