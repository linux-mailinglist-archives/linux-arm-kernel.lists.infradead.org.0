Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C88173D0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 17:35:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Af2I7QbX7Gl5ALSb9uKBc2MrWvH6awSTtVgeiB3xDj0=; b=mcjrxGU14G4gO8
	SAWnRJ/4lD9hASnNf8fzmrjhdcMa4zpq3fWBbEQjxBBg+tAeZO+koDxSNxRJfYfzzPBaIWR0QYXZ0
	cWC7c/joNJoNYEZqcc4BxdS0KwRxoug9Hbn92UTbElFRAtimadbLGQSSVdFnHRWYcTIRXsdl4/Fp/
	Y03SxPkWBpY8cSOLAZ4iEfhjwEiab9xbHvuzfx8r1KUl6NOhtzB63D+TFPHh9aC5oFdrTBO4dNxCa
	O01Tlbx2gFQ0EFqL0bYCRyke2QXBLtmpYEVQqXdNKf/E6RPWd+t9tbeHu6LgKF0y9gTqoE2ZXXFZM
	rajzUNFzfNCpyp6vIYcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ibf-0004be-Sm; Fri, 28 Feb 2020 16:35:19 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ibS-0003Og-QB; Fri, 28 Feb 2020 16:35:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1582907688;
 bh=YcG6r7F3VVt7DQsFNhV4JbQ/Bh6aKNh0DkfRxFndYAA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=M893la1WZgDW7/xWaBckbU4Odje3StaE2YcrGjt7TLxyK3pbX/Ea23pa9tN/cHEH7
 joHd8VOqO6RSYD0a0SS6Ty3j2XCMW2ucMF+AzxWLxQmzVPStkZStnqrxLMH4lEZRAD
 CzydVU3Wqs7ndlgvC4LH1dlsW2OpHQHQinHzZuGU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [185.53.40.15] ([185.53.40.15]) by web-mail.gmx.net
 (3c-app-gmx-bap21.server.lan [172.19.172.91]) (via HTTP); Fri, 28 Feb 2020
 17:34:47 +0100
MIME-Version: 1.0
Message-ID: <trinity-1aeda07b-567b-4a31-a709-36199975894b-1582907687950@3c-app-gmx-bap21>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Bibby Hsieh" <bibby.hsieh@mediatek.com>
Subject: [BUG] [PATCH v5 3/7] drm/mediatek: update cursors by using async
 atomic update
Date: Fri, 28 Feb 2020 17:34:47 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20191210050526.4437-4-bibby.hsieh@mediatek.com>
References: <20191210050526.4437-1-bibby.hsieh@mediatek.com>
 <20191210050526.4437-4-bibby.hsieh@mediatek.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:2wHSXETBujv7ubTGIwZ5VrMFtJmoX/njL13MkH8s5eovSX+Y+sTe0+BByPkiM5mY2rzQm
 gKpnl5HTR1TX8ZwimXy747VbCYUysGQw+GdtehRIGT5il+WUm2aG81V2Bu0Dpft2U3SY51brmqYE
 H0JgZOtLaL0+tXa8kZMGxWwyoVLkjFO5i3HFnIccGF/d2ihL7iTlHuSy3H9axD1B76whc67PrgRz
 VBlEsXrblvHd0UmCQ6WWGJeRXN83aG2f7ScyhV9hAm1fz/xBSUnehkXcTmbnfvD6ndAjICp0ek9M
 Rc=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:K7AD3qghSCg=:KDuvUtyqh0IxQhZ8dH9kvu
 UkMiaACx+8TarnVTvKLAKYfLysNr+9tfMvPZLRxVtUh1T0O1DBm4Rko4sdLxfCcUGMflBCrDF
 ciX4YIyA6kuUTwucfzx22ITRFECEbD2yoh1WgJbxUXd9NJYwXopioXyMMrwaM6xnYz/nLIr7o
 mUGZMog7Dou+NeR5Em4TB8BEgRtUTLT6+nfdjLNz4ShGizgdYRFKt+/vHZk/V1IW+aFci1vsg
 LHvupXQWPTqlYNA3JS0Km5lF3zWjBdUJIGrdIGympZEuHb5mAtd4vGX9XsCeZH3p1WjQ/MpQY
 4acYwTHnCUAyGf7pGu2tzR8WsBvTvBOIW4Q8I03JkR+4har3qSWjIcdqgk2ff+6RSbEXVjquZ
 C7mZBt3pEMeZjKM+Z1HkvLnv2XrRM8CB/s3gUG3quARYuumwpA7BH7F7fOTjduxgqWlhv3YVO
 mhEDvNNyn9mge3Vz9N5MalwRkGJ5FJFlPEG9tEBlGoHxehlLMAMYcXVl4oE5ffpiFOpSG15y4
 rm2LvOfG+tHze6Pl5a18bTr459tAbHXJYVUGnvmhov147zK1eBq3bFk9JHKV0fMl5up+E2is1
 +YOSmDnrCG2i9TqD76kwDIFdZnprjEY1f1rR8oEq2QgrAsYW0byi74bJRq34xclYgmkooSZsk
 eGfDPVeomp5G0jsWbOdU4oBMCEo7ol8LkDiWjXMdSbjZUOrU62FolI9j7z62bk/OQrp0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_083507_204701_EB4D8656 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: drinkcat@chromium.org, Philipp Zabel <p.zabel@pengutronix.de>,
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, tfiga@chromium.org,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

as talked to Bibby directly, this Patch seems to create a bug with touchscreens. Cursor is displayed on old position if changing its position. e.g. Cursor was on X1,Y1 and i touch to new position X2,Y2 the "click" is recognized on right position (i try to ), but cursor is displayed on X1,Y1

have made a small video and uploaded to my gdrive [1]...

here i use lightdm login manager and selecting the username/password-fields alternately. Focus follows, but cursor is always displayed on prior position

tried to revert this commit [2], but there are many depencies failing the revert, have not yet got all depending commits reverted

regards Frank

[1] https://drive.google.com/open?id=1Qy0tYnbO9zNGdjCWY18O-dMYbFuPrq_i
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=920fffcc891276a855cb3ce1e7361d2e9cb72581

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
