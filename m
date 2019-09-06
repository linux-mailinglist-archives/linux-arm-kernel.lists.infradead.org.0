Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9825AB8CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 15:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:References:In-Reply-To:Date:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGumiOZHV+KF6m9j0C+ycSz4TtYURRfSbSB2dV6bxOM=; b=Ls2EHbToncr2DE
	W2OMPNttfFW45OMb22XbuTlddeW7TcUV6wWcCJ+b1jVlLIv+viXoQorYxbGpevQXZUJQFkWIEUG8z
	rydOSGr9f/TjP8IT43AXgVnpmwPM6GoDDV+yjSG45C1YyAHy6Htfs2GhI8+V6lYiPSgd4CeYliXPN
	BBNVvnRnMx40KtskmjoX7ysQK0ii9AsfEIHOofENcO2WqN+S1f5Z3w4+Usc93ZqhGi4Qf5Rzdo7At
	cHoRz7R0Xu0BI2f4lcTpmrLYBOfaDtbi5BhURPst7HmZtn786M2WqiKv9VK+kEbDwmNxIJg05dF2o
	IMRSTv1YdH4PzsHg+FUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Dt9-00058A-AT; Fri, 06 Sep 2019 13:02:55 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Dt2-00057l-QH
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 13:02:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1567774957;
 bh=0OF9nooHaaz9QiSyWV5QXoHDrg/gupxebmNBl1oIx/g=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 From;
 b=ST39D0Dk4QwhDa0VWXCAyopBxquLayUQEEqkt8TNiz7eK9JUXuAx9fidCyGwq5kmP
 SW+FSzSzHWt6b6ooKst6A0njAt6O0twUTF9cWPXuACpMr+DLLy1wjRVHy3wbENrHho
 PqL1x0aVSFecrAUXMhF+AoGNTGY+Eg/Gt+N5B6Qw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.17.198.103] ([80.187.119.108]) by mail.gmx.com (mrgmx003
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MegbQ-1hmKUH2MTA-00OHWx; Fri, 06
 Sep 2019 15:02:37 +0200
Date: Fri, 06 Sep 2019 15:02:34 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20190818160757.8206-1-frank-w@public-files.de>
References: <20190818160757.8206-1-frank-w@public-files.de>
MIME-Version: 1.0
Subject: Re: [PATCH v6 00/13] implement poweroff for mt6323 / bpi-r2
To: linux-arm-kernel@lists.infradead.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <4492B52B-C570-44D2-AAE2-EB7BBD756C16@public-files.de>
X-Provags-ID: V03:K1:+lJjtjDkpB+PBodonRYuWoU9waYYuyl9gmuHvq1oEA9J+LjAeo8
 kfOH28ybhaHWAV/sJhxKkU90ip1/0fdGvNCttuynRRfdnopY5tBaYm9TwO6x4dDxYrWeaRc
 IFzkQFqk5Dzcrwv/S44n1R/K1AkEnILL9Wy3u1JLHZ/mXGHuG9y6ESFlfm5AYTGSgwUp12l
 Styp887EsjECHlVIhk3xQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EGv1cLMAtww=:ieCq0PsmGJ9BXY4k1RMBgl
 C/fabFpb4IqKIdNqsBHR3rTxLWNEAtPSinhuoWh+uj5jV94bpZ0jaRO1CujkCjnvry89aZCEm
 +O3p0r+eh5USxRbGtmu10pDLWENU+t/0BgiZjXac8Ef/zp2Jh6nZ8sHswXZNsj3Ad9ZI0iznA
 wnpybX8ODkSWNdzgV9LEybpQFFubhjyg196TEMoah50Ub5QZYi5KSgvP1gnXy2jKjHkIeFo4W
 REA4IRn3exQu9HP2O+xGNlsYYdxJQBRWkGY67UdXkmXM48O9h/DY/ybhlz1hFcmE0avRnKgW3
 PxqDtNEvrz3+xK0Mh15q8i2onRgIrC0H1PYGWfXqy1QDo699QxOVWFfXF1CibJFPeavHbV5lx
 uVjJKMgPN+iba6mgJA0xzreXA402hxRheUUvQr9k3ElfrqINN7lXbv9fUfVyIs9srH3wNkcPX
 ht6MFd9cPJmNlg8OCgQAZob5i6NLcgKjcbbNwtagLjAFhTW6gm1P1aLCN/0PZXpnICLze+XuI
 mf3vaf/dX/rU9kYyfNX2kK5EsjcyBGr6VrMuJUIQKsvoBw7nkgP+kTWi2GyIR/9g58JmR1khV
 ylUyyXm/18JqBz8R6fIDSZMShg4El6KFF4u8tVI7tKwhgVVEkX8t/slsVLM0CCD+qlrpsIwOq
 oCsOCzEQf5Sej9fji4MADgnfDIGAA875vIkB6QTNk2YFLwk30dXWcBu/VU33j00E5VYHaEp/n
 SeK6+n0aqcddDCv5VztHLLWSMro226gSCEObTBa4KbW9hc8OWZR88pn3Spwx2MUk/P7MGchOI
 6x4IzQmC55c3ohO6s57p1wkL6zAJDEBC3S5m3qmVHZc/EvQ7pFXcV0NN97NGBh79uth074NMS
 klpVAE0n4BBDqBBKyyuKPT3kF7E3fu2+YNWxGP6q7rbLRHQMy46AT9tSBqwYjTKjCHM0AgkoW
 S+YA7cyWlv628WQDyYcjc0kz+T5gaELIG/0E1eGQDSMs6VjD1eZuX0XjJ33irJRdhQbUlnnb8
 6xOE3wKhXmEONVaDXeJk+48whs8NiWxTQ2Qt8F24fmmzutQ2Xwc4zRfCsRVEq0vt677CoqZiq
 ULAmm2vYPHJgRl/cd2GMDeRkR1I/RMXlaN39p9b5Vc9JKmB9QRKWKpAM9UeIED/2TmMo53MAJ
 CYlDQeucxKEiJ+gH+V627O1mtK9/6CHiZIP6d+YNFPeBvmpqzIU6l4LWZlr+9v/mQRUAcf4ui
 GBaziKGKMa3AT5WsI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_060249_186169_1891B583 
X-CRM114-Status: UNSURE (   4.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: frank-w@public-files.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Just a friedly reminder.

MFD-part was applied and visible in linux-next, the other parts acknowledged by maintainers. Is anything additional needed before applying the rtc/power/dts-parts?

Regards Frank

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
