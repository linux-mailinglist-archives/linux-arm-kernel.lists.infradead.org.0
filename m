Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1AC1036A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 10:31:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6b0ZQv83NzThhJXZAVHMC6c0z0YfslViDOYFPQmFHpU=; b=DICxOlNh1ZzfuW
	Zm8qbC+bgfDOtNoJImBa7UAlgzt/2hYuRmcwhdD43UitDnQxIVa2t6leUFIZ4QSEpcSkbYi2uMxgN
	ISYVixSVGkWQCPMY+E70xrKp3Ocu2fPASJUlIDG+DFXK0LupJdV4Jwt1F2VRXzXprx02pqU6CxKzT
	Qir6fHLq1fU52uDkbAEdkkLtrmLpMRXi7dANq7Bjz/zYpQZ+rKPoi49M4Gt3FJklLENU/8LBGvHNu
	q2RZL8cwdhOk792R+hq1HR53HWJ5LCV4OeT6Te4eCbdYi6LVvMgsVz0t22SxUiNDV9j+hNqMqdNei
	OH9qEbW4czriP0U5drZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXML4-0003FW-FG; Wed, 20 Nov 2019 09:31:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXMKt-0003Ek-Hz; Wed, 20 Nov 2019 09:31:45 +0000
X-UUID: 74db9807a12e4c989173c8fa9876bd76-20191120
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=T3sDLo2K05Z/3ZcFow82bTWpYhK40YdPKIaIHVHrszc=; 
 b=DTMHBhxRDbrLOgWKBS2brxxvhpGLB8+MrbqaGlwukjtDX4hLuuAU+4MnD9g+S+1gss7BmckkkM05Xkvj40a/9EaPRVvSseYF+44Mx0FBD9J0LcQpkwfXNGJKPgR1Og3Cv52WltXw6j2PCsRFHGKz1JwT3jaRr51BBZYQtPRZpcs=;
X-UUID: 74db9807a12e4c989173c8fa9876bd76-20191120
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <luhua.xu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1201085929; Wed, 20 Nov 2019 01:31:35 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 20 Nov 2019 01:31:37 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 20 Nov 2019 17:31:26 +0800
Received: from [10.15.20.246] (10.15.20.246) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 20 Nov 2019 17:31:13 +0800
Message-ID: <1574242283.27063.5.camel@mbjsdccf07>
Subject: Re: [PATCH 2/2] spi: mediatek: add cs timing configuration support
From: luhua xu <luhua.xu@mediatek.com>
To: Mark Brown <broonie@kernel.org>
Date: Wed, 20 Nov 2019 17:31:23 +0800
In-Reply-To: <20191119181930.GF3634@sirena.org.uk>
References: <1574053037-26721-1-git-send-email-luhua.xu@mediatek.com>
 <1574053037-26721-3-git-send-email-luhua.xu@mediatek.com>
 <20191119181930.GF3634@sirena.org.uk>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_013143_601041_61EF555D 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, wsd_upstream@mediatek.com,
 Leilk Liu <leilk.liu@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Thomas
 Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-11-19 at 18:19 +0000, Mark Brown wrote:
> On Mon, Nov 18, 2019 at 12:57:17PM +0800, Luhua Xu wrote:
> > Add configure SPI CS setup/hold/idle delays in terms
> > of clk count support, and use one period of current
> > spi speed as default if setup/hold/idle not indicated.
> 
> We have added a generic way to specify delays like this via the
> set_cs_timing() operation and related fields in the spi_device struct
> which operate in terms of spi_delay - Alexandru Ardelean added them
> recently.  This supports both times and clock cycles as units so should
> fit with what your hardware can do, the interface is new though so there
> may be soem rough edges to worry about.

I find the patch today. It's really a better idear.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
