Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA466671E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 17:02:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vV2Z0vfMp6vRwehQQdMLLJVYRW5mHrYte6IlBz6P0Jk=; b=WMZgTD6I6xeq02LJWNfoxAmBIA
	9Bob/BG9LIk7dhmyH3Lxto+2Ay59yCEgTBV8nN0217n39ExAszlO5wpsUDswPZ2f4l6KfzP7HAQI4
	OYyx81EeOxP7QEZaBbIScNYOmI39wdhv5sbv7PqB/d4kNexC4RV/sqjhqd0HpASqskk8e7VnKO7La
	sYbquugo0ydMWDEFEmn9mJgSs81R+dWn9KIOHNUcxYe201pv1Z7/y2DT4p4Z+yHyqdSezaQbBAT+D
	2G9eWHsVXoSQmhwFEbJsyGp5HRcM7IH0+T1hIcRMJQuZch+9QBdFzhWqBIKrHrTKQcHaKkV6JCa+O
	kx/sFKqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlx3l-0002pZ-Da; Fri, 12 Jul 2019 15:02:05 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlx2C-0002VN-94; Fri, 12 Jul 2019 15:00:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562943623;
 bh=E5cL1bdBi7a0hqmLo72Y0yY6avSwPZxLDmGyrFDF+rM=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=kcHASYf0slvMpNRcoLpgK8wnPGebUWVk81a0ULw8oRfRI83YS3AC0gCJcwEZfPvEh
 d69WCd8gyiASZNoEewlcq1JAZ7dnHS0R/Aj97/TQnNxAsa+b2jFzCDuDgmTa9jfhxx
 mAJhgyH/7Q0zhUmo1UsT02tvo8yAXKV+u2TZsN1I=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.0.18] ([82.19.195.159]) by mail.gmx.com (mrgmx102
 [212.227.17.174]) with ESMTPSA (Nemesis) id 0MfSrf-1i6fmf3S4B-00P8el; Fri, 12
 Jul 2019 17:00:23 +0200
To: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
From: Alex Dewar <alex.dewar@gmx.co.uk>
Subject: Asus C101P Chromeboot fails to boot with Linux 5.2
Message-ID: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
Date: Fri, 12 Jul 2019 16:00:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:0Ig0jVjRxe82w57gZlwVZDbQhcIXSbWNt1DJ4hbetT0Cc1lQvdN
 b8ALJ7W2IYaz46I3cf/12PmcWQ/7SGlAa0ShLyqFhBW67ahXPawI+LQZEhtnfU3cEhmlnOu
 opUytUCQnokiowehD30do+knYTo1+CobXIv9Y+N4tip4oLVxTWdelYH+LaOLPLgWwMRXq5w
 8WvaCt9acPAHJv7e5Br3Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iK463nS1Ddc=:SRGGTrQxn61hEBHrYiQOSa
 gKJtlJ0rvZ8QJtcIhOx2M62tukG3amv1jueXOZgdWX2vjNFT/f9s7nzZM4tXQ//Z24tMyRB1Q
 ADJuBxmIcSYB3rDQWLhk4z9DxOczCRwTQ4aJ2rZeP3cLxDbWrX3/VLYvNuJzIAwAtKvk4jAnc
 mjTI/tU12DFMC5cKPt/D/K6G+YkXBIkhCaYygZrphMoculRbnmQHwmlRGdtbzzy75YbAtT2jh
 pQIiRhIqFCBoMpKk76fGPfPzXp2GdIrMREuXDjX5K0bIdV/p833+lkUAz0fPv25Htxzc36k4+
 uElhJS0qIePhKAKgzSl9yeWzh268dcKLfAFbJ6rGuhQ7OBmHsIuThKXqhzSrVIqHdcwErrR93
 Ypkgcw0LzpGZSNN1lTI7BL8bdMiDWABtQblbt7n05c9NhV8cHMHW38eZXISDIgoukm0LFT/MM
 uwf43X1nx2YEY7mqwfuD9ZjTHQYFEn3vO6vDZV3c1t4g/BsO3kQXrcIUJn+xs0BPGLYodcGdf
 sXdxQg/KpzEkjGSGKeGg87O+QARGB53+JPjqI/TL/eBDxOa3xBklefJoSYCo5kMCoGwLOcvr1
 QHQCDty/elvvQ45z0cQLF1D8sTEXYTKX/gDFIpwxzBLJ9jBfR3d52msEV8f1b+7C33ncLuuow
 7iBFCMkx/l84ZC1gWaPauKqE6t21ymeS+mE0pwIx36O42EEdlHmObJcTD7c0LyzCdr123jr3/
 O0kYtq9y2PnFBpO5iBYqhACuaKQ5eYhKeucSwbpXyev8pjdGllgJMWEhrA5ZOhDb8rRSPdCiv
 jOHcypjgYZ2wCjErC9c0oZp+OBxtjNfobZvsbrzMjet0fJtq18OPlzN9prqRD8pQw74o/IaGb
 Ut0pKBT4IzAKk1zW0qraIGM08jWlh8wChB0ccPHmi30s2DAmcgDsCKxR4WR7L+xVPnfGFOaxa
 DANqN69dgeeStiFdk1jwZ/Cqepf9dYDYPQdLs6GuCELiAoDNj6ds64CNhcgTyfVgYp4bA1v1N
 M0gx2sapfEMvBRz9fNE3hdL3iIm3G0A8Da+htGH9IlW73ilkH2fy27OgS2En5RiZHeIimr3wu
 8ADicS0W2tHQ3KOQKvTgD/hoDe814ZSxiGg
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_080028_858850_ABDE8658 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Since upgrading to the 5.2 kernel, my Chromebook is failing to boot. The
Asus C101P is based on the RK3399 SoC and uses the rk3399-gru-bob device
tree. It used to boot with the 5.1 kernel and mostly worked, with the
exception of broken suspend and resume.

When I try to boot the screen just gets flooded with messages like this:
http://users.sussex.ac.uk/~ad374/boot_fail.jpg

I'm using Arch Linux ARM's linux-aarch64 package, source here:
https://archlinuxarm.org/packages/aarch64/linux-aarch64/files/PKGBUILD

Best,
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
