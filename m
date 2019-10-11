Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE894D4ACB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 01:15:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SxfPYQsfurhWKhAfZSle2xbqSrkgeB0PhYy98RwLowA=; b=Q5u6MF45sw/4CM
	LuhtT6ihST7OW+Z+It3/xwRC1G/6em95r8Fw9JATowhYsiHSh/wBS1F9wXOkzt5p0StND7Foxc+nw
	XPl5gs+uLZ40qS2t5/nogTZu2cRxB/R4WIJ11Ne8n6gz8lQM3kbwz6BcOirYdB54DDhQL/nCF/4Uq
	AWPjai+uhzQB9XLFxFIK8yZmTKaZhp5iLFxlxSnYUa5kI1Z45aY4BiYxPq/0FTUbZ9HSZI4YUMStE
	PEVwpdnfmJ+VM44eDOZqa+VwOIeoF9XL9/Ynz6+Bsqv6xfwYChUWfx3xcl4Sz/SO3Zr3gbb3+p8oo
	C6LpIsBNDrDy8DyE6mZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ481-0006tD-IL; Fri, 11 Oct 2019 23:15:21 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ47s-0006Is-Kk; Fri, 11 Oct 2019 23:15:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570835365;
 bh=5gB1OCM/eHUoF4+pE9h4tGD6did33KyXZQ7I6/0pCLU=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=I/GOFBvsXIboHGynN2mYSVXzwdIBKfSeUNMbgC3ZmtGfkTIJdQ6Zy84OQojyywLxf
 7eM0YTeCPKP1MEwJY1l+TsumTlgikYB/1d8ntKmy57Jb1TrtezT+djMB13d8BjrS3o
 cyGseQy18NpYsE96j3LAP4l51sQ2RyF9MDbRKy+Y=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M72oH-1iR33i0RZv-008cZL; Sat, 12
 Oct 2019 01:09:25 +0200
Subject: Re: [PATCH v1 3/3] ARM: dts: bcm2711: Enable GENET support for the
 RPi4
To: matthias.bgg@kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 "David S . Miller" <davem@davemloft.net>
References: <20191011184822.866-1-matthias.bgg@kernel.org>
 <20191011184822.866-4-matthias.bgg@kernel.org>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <dfe9062b-1960-f67b-2a9e-864c0680f5d3@gmx.net>
Date: Sat, 12 Oct 2019 01:09:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191011184822.866-4-matthias.bgg@kernel.org>
Content-Language: en-US
X-Provags-ID: V03:K1:hXCsfi0YzRPmoFypWyfnvbO4N7BdVxoeOYAzqfPcBP1vircEceh
 5/gp4HUDZbiVzRFNAraPoYeULEiS7pg/NXBuAyRCOMdrkpXK0OQ4Stl6pf8E52jOsx2fc5u
 qQmvIDtmTSod/RhKuofbxsYfY1Z80h4EbuwqHZFOosz8q3Cr4WkqG08p9zxoXvmye5G59jM
 Pko4MF7b2PlzF2rWIrfmg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hioaaoAal40=:B4AdG8yOarUZYruTvKzKW9
 O6NhUfcFJuvBB6mewzVfICNLAu2JaVBVynV1qeVUxIlbZ753ObmgpRtOPMgt8eThT0m02EyR+
 3yFmPVLKK73vR5RuVxSz4/RaFIph129QOk+XbZk3nS3cB8VfIjtdEQBdnLRlj+DWq95AsRS5M
 JE8yhLb5koUbSkaVFzr1j7TiOekkJqXdujFGg5J41jfPufT0hC4duVn4V5sgVnVRBBffvXAVv
 Li4tHsSziRkTqQkLwRgJQCNZsKBfN1G2p9iNB3QOTFucCBUlJ8KyRiChJpEhsXIu34TCuI47V
 NebesUtHLbV2z/6pZTa9kufjyV6fNgDt7L6Z76Gp9ly5XFXoVGpkDqy0GkFOoH6shacPOm3Uq
 rY8oX2NFt5Our/vUqhO8UJd6Nlb7lVuX1I1ZQvRX5efkPyIMK4MeXZOWYNFd/49fHM6WOu1zr
 jWwJJli4OuJqeTzHxXAjDYXp54pCVVFCJFkoutjoUCJAyuIxoT/pqgje9/jcKywv+UdUpgbYK
 ud7Kql66eDPRukrt5JpZYwUzeOjVyrAkYPsSY0E0u+/glVi2BE0yuI+Lrxt/BpdLZMhVC8ckp
 MBYbrpQTFnn5pdXqQ1aw0R6OcCQPSNM41z/1xpIuKbEVRfFqZuJPssQgXy+rq+VJ0F18b5IOn
 cstZHafaMYsqYylJrOheFRum7c46HvfA+xZhFpFKheFIMHNOefFM90DIKwECxwjnRCJc+A1P5
 hFWlGLh7W27xXLJfkqAWtTec4Bj6tpo0aZ7hfon9/NFLoSWuDC5gTDVcdBeqsUOiKfSVbhfhn
 N+ByNpUvsAgjIXyQ8uow044WCrdAoNMuTUcvXhVfCp6pAZ9RdZhx/XXxNmWEFIWmkyKuIYynB
 m/43Tfr7JqlNYwqtoMcuUGEOK+j4e6aJiXDkNmbpHP3aic2rI5krd/fv3tr6BJAsQS0nquGKA
 v2KGo75smbnL31aNACNvedR8XumobvIoh+YqFDkj9R+KaM1D3HdpqqSXm1Ejt0svl3VgUnv+m
 jc9YWHX+JM0al4G3uyVHqQDZXxCW7fQ0mSWo8LSL8K/eN+9/3v0gyiJID/zMcLlDYOqSMmyMT
 lh1ZcMDGoUXwIpBY5IiaD/fB5tGQs2vJiX4+P5dRyenHg4GITUfq7v9BPMnOz0U2qSyx7Ag2b
 Yi0UneKJUl0KAfeEbGVZUR9vHEW1aSZ0gyCLnYv4B0AstLu4+F0u5q56ceOTgL3FUdXVJGPkR
 zxhRo3oUMEIT18dZOZgN8O7FD44USQk3dfla4R14H0Jtwe2yZN2pEn6NHwrA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_161513_022699_E4B4BE1B 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Matthias Brugger <mbrugger@suse.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 11.10.19 um 20:48 schrieb matthias.bgg@kernel.org:
> From: Matthias Brugger <mbrugger@suse.com>
>
> Enable Gigabit Ethernet support on the Raspberry Pi 4
> Model B.

I asked some questions about genet to the RPi guys [1] which are
relevant to this patch (missing clocks and interrupt, MAC address
assignment) but i didn't get an answer yet.

During my tests with a similiar patch series i noticed that the driver
won't probe without a MAC address.

How does it get into DT (via U-Boot)?

[1] -
https://github.com/raspberrypi/linux/issues/3101#issuecomment-534665860


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
