Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BCD13F36
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 13:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4vcFxn75tVRWSH40r2tUUqBGkXeCjwzi8ex3CXwbSw=; b=bFHKNtSRIBV8mv
	CYSRjcAYuLUBXA1fiMpUHUCQrX138eNVmz8wqLyxjn2QYDXYthwa1cYe3YgHth9NTJWLJVnP20smb
	39JJfoKkYgDtHcN4Ho2la3eVHtkHHJEhvjEbyVvU+U4SkaWGCgSbK70HInid07dO5EVH9juGwyauZ
	PT4lFC6OQesyLg+fIfzHpvPHKPWqaY7OacVSF9mMY2yvXEtdiNQkljLV+8M80TijrdhxJtI/BE37o
	wz0n2kLQWN3W8kAf8GjwiITNWHciV93ahu6Q2fqcPdY0js7xS1rwQC4HOpGmdFZH2kSPYMHt5E9T8
	RQ0jeDpRSKIxnxINlCdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNFSy-0000pG-3J; Sun, 05 May 2019 11:38:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNFSq-0000oq-1S; Sun, 05 May 2019 11:37:53 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D214204EC;
 Sun,  5 May 2019 11:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557056270;
 bh=DMn53wlsjx1Bo7lcjI92SD/gY9KTzY+WKobgCXyRZxo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EcrGk5guRVXMzfd2y850B6fr2Sl+xas8qHZiwQiyH5/SXpdJ3A9B4Ha3WfSj1JuAi
 TXTNEeLUkEvCeBQjb8Yo0L+/GjSq56pI3IOUEvb+U3Jn7fTcr70qpBmXaA0+rr6lBt
 vozGH5wkBSLmU6rk/4yWG29WM7ufDzo51vrRMNPY=
Date: Sun, 5 May 2019 12:37:31 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: adc: mt8183: add binding document
Message-ID: <20190505123731.4fda09b8@archlinux>
In-Reply-To: <20190501200125.GA29927@bogus>
References: <20190424011112.14283-1-zhiyong.tao@mediatek.com>
 <20190424011112.14283-2-zhiyong.tao@mediatek.com>
 <20190501200125.GA29927@bogus>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_043752_103802_3842A75C 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, lars@metafoo.de, srv_heupstream@mediatek.com,
 linux-iio@vger.kernel.org, Zhiyong Tao <zhiyong.tao@mediatek.com>,
 erin.lo@mediatek.com, hui.liu@mediatek.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 matthias.bgg@gmail.com, yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 s.hauer@pengutronix.de, sean.wang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 1 May 2019 15:01:25 -0500
Rob Herring <robh@kernel.org> wrote:

> On Wed, 24 Apr 2019 09:11:11 +0800, Zhiyong Tao wrote:
> > The commit adds mt8183 compatible node in binding document.
> > 
> > Signed-off-by: Zhiyong Tao <zhiyong.tao@mediatek.com>
> > ---
> >  Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt | 1 +
> >  1 file changed, 1 insertion(+)
> >   
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to the togreg branch of iio.git and pushed out as testing to
be ignored by the autobuilders. I'll assume the dts patch will go
via the normal soc trees.

Jonathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
