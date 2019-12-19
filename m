Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC85126E46
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 20:55:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HnUdOMltPt+O47nyjsVl85OjZw5EI1KKnpv8lSSjlvU=; b=mlky0Z6U/mAedV
	GQu98Eqa2n4WFK1EsrFKZF/qjGL+5A/IJePaiQYwbNLNvSp+v9rvWgVyR1WizqKvOEH+rzcNE58dg
	bEwOwuYa/iaFA72eYEy9TErQlb3eTiWkHOptVt5TuiZvFbnGukz9IxyOzQOdh83o+PSKcY6c0UVYx
	ZnX8UnzN8ismYi1y4db4ByMB6wTUDRl9DwgzTAY2d3Azzc2g9MUrA6+pSA3cDYbumg6StLUXcxmN7
	OzY0p9zPhjpKmOMILrS+9kl2abVx02Ix5NOfJK0dl0J/I8+BvE/+Svz2rc7q+UQA1Qh7eB7Njv8pr
	n3IBdrgY+fZYREjzVk4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii1t7-0005C7-QU; Thu, 19 Dec 2019 19:55:09 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii1sq-0005BQ-Cn
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 19:54:55 +0000
Received: from marcel-macbook.fritz.box (p4FF9F0D1.dip0.t-ipconnect.de
 [79.249.240.209])
 by mail.holtmann.org (Postfix) with ESMTPSA id A0333CECE9;
 Thu, 19 Dec 2019 21:03:50 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [PATCH V4 01/10] bluetooth: hci_bcm: Fix RTS handling during
 startup
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <5bbda434-d0e4-7162-8634-9900a4fa9148@gmx.net>
Date: Thu, 19 Dec 2019 20:54:37 +0100
Message-Id: <BFF8D9F0-235C-4907-8F6C-23C230CD5470@holtmann.org>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
 <1570375708-26965-2-git-send-email-wahrenst@gmx.net>
 <61789264-a4c2-ac85-9d74-d186213ec70a@gmx.net>
 <20191216132509.ofqcdpwxsd7324ql@core.my.home>
 <6f05f4d8-fa84-ae81-ac4f-00ab12fabeea@gmx.net>
 <5bbda434-d0e4-7162-8634-9900a4fa9148@gmx.net>
To: Stefan Wahren <wahrenst@gmx.net>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_115452_875462_4A757F8B 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.132.17 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: =?utf-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, linux-bluetooth@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

>>> Meanwhile i will play with modifications of original patch on the
>>> Raspberry Pi 4 and come back to you.
> 
> could you please test this patch [2] on top of current bluetooth-next?
> 
> This is the solution in case we don't find the cause of this issue. I
> don't prefer this one, because this is next stuff and we need to revert
> the offending patch for Linux 5.5.
> 
> [2] - https://gist.github.com/lategoodbye/3d39e4b07d401f07fa9f9c2f11e1f17d

that patch looks fine to me. Just submit it and we will see how it works out.

Regards

Marcel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
