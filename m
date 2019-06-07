Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF30538A67
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 14:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2nMZ1GaaXBgEq9Occ6WNQDyTINZCsQiLFm/G08fnnOU=; b=gpvZ3A57nPzAr4
	WBcnQahUG3hQcrdd8h7TvSQAOVdHPWmSa0VTIN/OfRTHLRaWH5g0/gHY+lnEmEm+nMVBnvJCy2p8n
	koyG/u2v2oy8lEiUAfFkW6t4oD1ILJmPE6R+r13berJv4ZMl/mHic4gH9cmgCGTCqW/jTPmL5Bam2
	ZOrNToaSA4W4gXNDERK9cbn5bESlTjR1eQO7rW4JxjpmBaeFh6vlFC8fExMCINzI/CIEsQTVRUtV2
	pDXKUW/BaSC+sBWqISpGP9zq6g/HhzmbMETpitOltsJ2qxSn2I59d/XuMaYy0k1b/f02ep+2Sw0bp
	xRT+7chtkdL4BxAsQ29g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZE3i-0006sa-F0; Fri, 07 Jun 2019 12:33:26 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZE3Y-0006rp-Av
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 12:33:18 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190607123312euoutp025b061e9e3359d715e327f0b9671dfe62~l6pnDEuN10250402504euoutp02j
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  7 Jun 2019 12:33:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190607123312euoutp025b061e9e3359d715e327f0b9671dfe62~l6pnDEuN10250402504euoutp02j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559910792;
 bh=8wnpy/r4amIarIKyUKZJdO9TIeHXMh0A0miVAgNTdpk=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=tknfD4LXX2ZxurZEC+g1jy35nR/FujMuRcBjonMUYOiYVLduWJlEzPEN3ObBvDwbF
 U3ZDcZ5/xuKdF0kMEriV8GU5gsc74hxxxXJ/vWvg81t/K4v3DbCKc04HQ6aLBJW+dJ
 aI+2TLr5YyWhcbZJfS3qyBU8WiBpnFO1MeFlBM/U=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190607123311eucas1p2138a022084a5943aa2fe0382621c335d~l6pmojjbH2443324433eucas1p2i;
 Fri,  7 Jun 2019 12:33:11 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 4F.3B.04377.7895AFC5; Fri,  7
 Jun 2019 13:33:11 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190607123310eucas1p17702bc47693555b2e3d4354c2d997d03~l6pl3hAuo0536405364eucas1p1x;
 Fri,  7 Jun 2019 12:33:10 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190607123310eusmtrp21751413f4019d6f4f4c9f43fbc990d4f~l6plmV3ki0991909919eusmtrp2R;
 Fri,  7 Jun 2019 12:33:10 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-6e-5cfa598711d4
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E5.F2.04140.6895AFC5; Fri,  7
 Jun 2019 13:33:10 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190607123310eusmtip2533c3314a7be362f283b58452646ab5a~l6plS6G8N2446724467eusmtip2C;
 Fri,  7 Jun 2019 12:33:10 +0000 (GMT)
Subject: Re: [PATCH] video: fbdev: cyber2000fb: remove superfluous
 CONFIG_PCI ifdef
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
To: Russell King <linux@armlinux.org.uk>
Message-ID: <2bacb06a-eb78-50fa-3e11-76ce20d89d6b@samsung.com>
Date: Fri, 7 Jun 2019 14:33:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <214f05e0-a448-b1cf-7475-4fa7eeaa9949@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJKsWRmVeSWpSXmKPExsWy7djP87rtkb9iDE79EbC48vU9m8Wmx9dY
 LU70fWC1uLxrDpvFoal7GR1YPS5fu8jscb/7OJPH5iX1Hp83yQWwRHHZpKTmZJalFunbJXBl
 LD3fzFiwmbni9an7TA2MT5i6GDk5JARMJBY/2cAGYgsJrGCU+PbZoouRC8j+wijxbsdyZgjn
 M6PE/uk7GLsYOcA6HrcEQsSXM0p8WLufDcJ5yyhxZuYnFpBRwgKhEt/Oz2QGsdkErCQmtq9i
 BLFFBDQkNs74BdbALNDGKPF01hVWkASvgJ3EnI/LwZpZBFQkrr39BnafqECExP1jG6BqBCVO
 znzCAnIFp4C9xLqLziBhZgFxiVtP5jNB2PIS29/OAbtaQmAeu0TD4ecsEH+6SPQd/sIKYQtL
 vDq+hR3ClpH4vxOkGaRhHaPE344XUN3bGSWWT/7HBlFlLXH4+EVWkM3MApoS63fpQ4LCUaLj
 aRyEySdx460gxA18EpO2TWeGCPNKdLQJQcxQk9iwbAMbzNaunSuZJzAqzULy2Cwk38xC8s0s
 hLULGFlWMYqnlhbnpqcWG+WllusVJ+YWl+al6yXn525iBCaY0/+Of9nBuOtP0iFGAQ5GJR5e
 B4afMUKsiWXFlbmHGCU4mJVEeMsu/IgR4k1JrKxKLcqPLyrNSS0+xCjNwaIkzlvN8CBaSCA9
 sSQ1OzW1ILUIJsvEwSnVwGh0fS/LC7vi54b3zLeZ2Sf8F+6W6eoJyDL6d4xjf/+dNYUrnCMu
 SCfot3rLhEafcnR6bDU3/iWndf/VSYnPi32n+tpMZytozLKca5o/M+iBYuqyjN5fZ1hnz9st
 +GNS3v0dlk4/dbcJialOUAhPyHvBmJm+VYjXoX+uZ6Pxu8g7uuoLV6aqKrEUZyQaajEXFScC
 ACaPMxYsAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJIsWRmVeSWpSXmKPExsVy+t/xe7ptkb9iDP70yVpc+fqezWLT42us
 Fif6PrBaXN41h83i0NS9jA6sHpevXWT2uN99nMlj85J6j8+b5AJYovRsivJLS1IVMvKLS2yV
 og0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/TtEvQylp5vZizYzFzx+tR9pgbGJ0xd
 jBwcEgImEo9bArsYOTmEBJYySsz77gIRlpE4vr4MJCwhICzx51oXWxcjF1DJa0aJl9+nsYDU
 CAuESvyZXQVSwyZgJTGxfRUjiC0ioCGxccYvsHpmgTZGiQMzTzNDzLeTOPDuAxOIzQtkz/m4
 nAXEZhFQkbj29htYXFQgQuLM+xUsEDWCEidnPgHbxSlgL7HuojNImFlAXeLPvEvMELa4xK0n
 85kgbHmJ7W/nME9gFJqFpHsWkpZZSFpmIWlZwMiyilEktbQ4Nz232EivODG3uDQvXS85P3cT
 IzCath37uWUHY9e74EOMAhyMSjy8M5h+xgixJpYVV+YeYpTgYFYS4S278CNGiDclsbIqtSg/
 vqg0J7X4EKMp0G8TmaVEk/OBkZ5XEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1
 CKaPiYNTqoHRc8uUQob5X85cU5qvVuipvb17OU+Dc9H3ncZuIo4yd8JPCEkZTNg2JW3TtrPZ
 r9dnmN5geOu9oYEpcqH5/qlPmxemacQ9ef9F3bbn/BnvVe+vX+Y7uosnhfGVZt+bTW76kvLJ
 d5rZAjWOX7v3JlrBtT/vwsczXanbXSfMvL8gUzotq131ReZcJZbijERDLeai4kQA5pEQ5rwC
 AAA=
X-CMS-MailID: 20190607123310eucas1p17702bc47693555b2e3d4354c2d997d03
X-Msg-Generator: CA
X-RootMTR: 20190607123310eucas1p17702bc47693555b2e3d4354c2d997d03
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190607123310eucas1p17702bc47693555b2e3d4354c2d997d03
References: <214f05e0-a448-b1cf-7475-4fa7eeaa9949@samsung.com>
 <CGME20190607123310eucas1p17702bc47693555b2e3d4354c2d997d03@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_053316_670378_DB1DDD7B 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 5/21/19 3:44 PM, Bartlomiej Zolnierkiewicz wrote:
> This is a PCI driver and FB_CYBER2000 depends on PCI in Kconfig so
> there is no need to check for PCI inside the driver code.
> 
> Cc: Russell King <linux@armlinux.org.uk>
> Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>

I queued the patch for v5.3.

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
